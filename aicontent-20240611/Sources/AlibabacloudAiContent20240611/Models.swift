import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AliyunConsoleServiceInfoDTO : Tea.TeaModel {
    public var buyUrl: String?

    public var documentUrl: String?

    public var freeConcurrencyCount: Int32?

    public var freeCount: Int32?

    public var serviceCode: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyUrl != nil {
            map["buyUrl"] = self.buyUrl!
        }
        if self.documentUrl != nil {
            map["documentUrl"] = self.documentUrl!
        }
        if self.freeConcurrencyCount != nil {
            map["freeConcurrencyCount"] = self.freeConcurrencyCount!
        }
        if self.freeCount != nil {
            map["freeCount"] = self.freeCount!
        }
        if self.serviceCode != nil {
            map["serviceCode"] = self.serviceCode!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buyUrl"] as? String {
            self.buyUrl = value
        }
        if let value = dict["documentUrl"] as? String {
            self.documentUrl = value
        }
        if let value = dict["freeConcurrencyCount"] as? Int32 {
            self.freeConcurrencyCount = value
        }
        if let value = dict["freeCount"] as? Int32 {
            self.freeCount = value
        }
        if let value = dict["serviceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["serviceName"] as? String {
            self.serviceName = value
        }
    }
}

public class ApiKeyCreateCmd : Tea.TeaModel {
    public var clientId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
    }
}

public class ApiKeyDTO : Tea.TeaModel {
    public var client: ClientDTO?

    public var clientId: Int64?

    public var deleteTag: Int32?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var key: String?

    public var keyPreview: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.client?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.client != nil {
            map["client"] = self.client?.toMap()
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.deleteTag != nil {
            map["deleteTag"] = self.deleteTag!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.keyPreview != nil {
            map["keyPreview"] = self.keyPreview!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["client"] as? [String: Any?] {
            var model = ClientDTO()
            model.fromMap(value)
            self.client = model
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["deleteTag"] as? Int32 {
            self.deleteTag = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["keyPreview"] as? String {
            self.keyPreview = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ApiKeyDecryptedDTO : Tea.TeaModel {
    public var client: ClientDTO?

    public var clientId: Int64?

    public var deleteTag: Int32?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var key: String?

    public var keyPreview: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.client?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.client != nil {
            map["client"] = self.client?.toMap()
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.deleteTag != nil {
            map["deleteTag"] = self.deleteTag!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.keyPreview != nil {
            map["keyPreview"] = self.keyPreview!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["client"] as? [String: Any?] {
            var model = ClientDTO()
            model.fromMap(value)
            self.client = model
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["deleteTag"] as? Int32 {
            self.deleteTag = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["keyPreview"] as? String {
            self.keyPreview = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ApiKeyListQry : Tea.TeaModel {
    public var clientId: Int64?

    public var keyword: String?

    public var page: Int32?

    public var pageSize: Int32?

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
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ApiKeyUpdateCmd : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ClientCreateCmd : Tea.TeaModel {
    public var address: String?

    public var allowedModels: String?

    public var contact: String?

    public var name: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.allowedModels != nil {
            map["allowedModels"] = self.allowedModels!
        }
        if self.contact != nil {
            map["contact"] = self.contact!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["allowedModels"] as? String {
            self.allowedModels = value
        }
        if let value = dict["contact"] as? String {
            self.contact = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class ClientDTO : Tea.TeaModel {
    public var address: String?

    public var allowedModels: String?

    public var clientUuid: String?

    public var contact: String?

    public var deleteTag: Int32?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var main: Int32?

    public var name: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.allowedModels != nil {
            map["allowedModels"] = self.allowedModels!
        }
        if self.clientUuid != nil {
            map["clientUuid"] = self.clientUuid!
        }
        if self.contact != nil {
            map["contact"] = self.contact!
        }
        if self.deleteTag != nil {
            map["deleteTag"] = self.deleteTag!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.main != nil {
            map["main"] = self.main!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["allowedModels"] as? String {
            self.allowedModels = value
        }
        if let value = dict["clientUuid"] as? String {
            self.clientUuid = value
        }
        if let value = dict["contact"] as? String {
            self.contact = value
        }
        if let value = dict["deleteTag"] as? Int32 {
            self.deleteTag = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["main"] as? Int32 {
            self.main = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class ClientListQry : Tea.TeaModel {
    public var keyword: String?

    public var page: Int32?

    public var pageSize: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ClientTreeDTO : Tea.TeaModel {
    public var address: String?

    public var allowedModels: String?

    public var children: [ClientTreeDTO]?

    public var clientUuid: String?

    public var contact: String?

    public var deleteTag: Int32?

    public var discount: Double?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var level: Int32?

    public var main: Int32?

    public var name: String?

    public var parentId: Int64?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.allowedModels != nil {
            map["allowedModels"] = self.allowedModels!
        }
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["children"] = tmp
        }
        if self.clientUuid != nil {
            map["clientUuid"] = self.clientUuid!
        }
        if self.contact != nil {
            map["contact"] = self.contact!
        }
        if self.deleteTag != nil {
            map["deleteTag"] = self.deleteTag!
        }
        if self.discount != nil {
            map["discount"] = self.discount!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.level != nil {
            map["level"] = self.level!
        }
        if self.main != nil {
            map["main"] = self.main!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["allowedModels"] as? String {
            self.allowedModels = value
        }
        if let value = dict["children"] as? [Any?] {
            var tmp : [ClientTreeDTO] = []
            for v in value {
                if v != nil {
                    var model = ClientTreeDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["clientUuid"] as? String {
            self.clientUuid = value
        }
        if let value = dict["contact"] as? String {
            self.contact = value
        }
        if let value = dict["deleteTag"] as? Int32 {
            self.deleteTag = value
        }
        if let value = dict["discount"] as? Double {
            self.discount = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["level"] as? Int32 {
            self.level = value
        }
        if let value = dict["main"] as? Int32 {
            self.main = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class ClientUpdateCmd : Tea.TeaModel {
    public var address: String?

    public var allowedModels: String?

    public var contact: String?

    public var name: String?

    public var remark: String?

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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.allowedModels != nil {
            map["allowedModels"] = self.allowedModels!
        }
        if self.contact != nil {
            map["contact"] = self.contact!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["allowedModels"] as? String {
            self.allowedModels = value
        }
        if let value = dict["contact"] as? String {
            self.contact = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ConversationCreateCmd : Tea.TeaModel {
    public var chatData: String?

    public var modelIds: String?

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
        if self.chatData != nil {
            map["chatData"] = self.chatData!
        }
        if self.modelIds != nil {
            map["modelIds"] = self.modelIds!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatData"] as? String {
            self.chatData = value
        }
        if let value = dict["modelIds"] as? String {
            self.modelIds = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class ConversationDTO : Tea.TeaModel {
    public var chatData: String?

    public var deleteTag: Int32?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var messageCount: Int32?

    public var modelIds: String?

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
        if self.chatData != nil {
            map["chatData"] = self.chatData!
        }
        if self.deleteTag != nil {
            map["deleteTag"] = self.deleteTag!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.messageCount != nil {
            map["messageCount"] = self.messageCount!
        }
        if self.modelIds != nil {
            map["modelIds"] = self.modelIds!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatData"] as? String {
            self.chatData = value
        }
        if let value = dict["deleteTag"] as? Int32 {
            self.deleteTag = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["messageCount"] as? Int32 {
            self.messageCount = value
        }
        if let value = dict["modelIds"] as? String {
            self.modelIds = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class ConversationListQry : Tea.TeaModel {
    public var keyword: String?

    public var page: Int32?

    public var pageSize: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ConversationUpdateCmd : Tea.TeaModel {
    public var chatData: String?

    public var messageCount: Int32?

    public var modelIds: String?

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
        if self.chatData != nil {
            map["chatData"] = self.chatData!
        }
        if self.messageCount != nil {
            map["messageCount"] = self.messageCount!
        }
        if self.modelIds != nil {
            map["modelIds"] = self.modelIds!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatData"] as? String {
            self.chatData = value
        }
        if let value = dict["messageCount"] as? Int32 {
            self.messageCount = value
        }
        if let value = dict["modelIds"] as? String {
            self.modelIds = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class CostModelDetailRespDTO : Tea.TeaModel {
    public var columns: [MetricDefRespDTO]?

    public var granularity: String?

    public var modelId: Int64?

    public var modelName: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var rows: [CostModelDetailRowDTO]?

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
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["columns"] = tmp
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.rows != nil {
            var tmp : [Any] = []
            for k in self.rows! {
                tmp.append(k.toMap())
            }
            map["rows"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columns"] as? [Any?] {
            var tmp : [MetricDefRespDTO] = []
            for v in value {
                if v != nil {
                    var model = MetricDefRespDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columns = tmp
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["rows"] as? [Any?] {
            var tmp : [CostModelDetailRowDTO] = []
            for v in value {
                if v != nil {
                    var model = CostModelDetailRowDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rows = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class CostModelDetailRowDTO : Tea.TeaModel {
    public var timestamp: Int64?

    public var values: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.timestamp != nil {
            map["timestamp"] = self.timestamp!
        }
        if self.values != nil {
            map["values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["timestamp"] as? Int64 {
            self.timestamp = value
        }
        if let value = dict["values"] as? String {
            self.values = value
        }
    }
}

public class CostQueryModelsDTO : Tea.TeaModel {
    public var columns: [MetricDefRespDTO]?

    public var idField: String?

    public var nameField: String?

    public var rows: [ModelRowDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["columns"] = tmp
        }
        if self.idField != nil {
            map["idField"] = self.idField!
        }
        if self.nameField != nil {
            map["nameField"] = self.nameField!
        }
        if self.rows != nil {
            var tmp : [Any] = []
            for k in self.rows! {
                tmp.append(k.toMap())
            }
            map["rows"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columns"] as? [Any?] {
            var tmp : [MetricDefRespDTO] = []
            for v in value {
                if v != nil {
                    var model = MetricDefRespDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columns = tmp
        }
        if let value = dict["idField"] as? String {
            self.idField = value
        }
        if let value = dict["nameField"] as? String {
            self.nameField = value
        }
        if let value = dict["rows"] as? [Any?] {
            var tmp : [ModelRowDTO] = []
            for v in value {
                if v != nil {
                    var model = ModelRowDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rows = tmp
        }
    }
}

public class CostQueryTrendDTO : Tea.TeaModel {
    public var defaultMetric: String?

    public var granularity: String?

    public var metrics: [MetricDefRespDTO]?

    public var points: [TrendPointDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultMetric != nil {
            map["defaultMetric"] = self.defaultMetric!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["metrics"] = tmp
        }
        if self.points != nil {
            var tmp : [Any] = []
            for k in self.points! {
                tmp.append(k.toMap())
            }
            map["points"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["defaultMetric"] as? String {
            self.defaultMetric = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["metrics"] as? [Any?] {
            var tmp : [MetricDefRespDTO] = []
            for v in value {
                if v != nil {
                    var model = MetricDefRespDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["points"] as? [Any?] {
            var tmp : [TrendPointDTO] = []
            for v in value {
                if v != nil {
                    var model = TrendPointDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.points = tmp
        }
    }
}

public class CostTabDTO : Tea.TeaModel {
    public var key: String?

    public var label: String?

    public var modelTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.label != nil {
            map["label"] = self.label!
        }
        if self.modelTypes != nil {
            map["modelTypes"] = self.modelTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["label"] as? String {
            self.label = value
        }
        if let value = dict["modelTypes"] as? [String] {
            self.modelTypes = value
        }
    }
}

public class MetricDefRespDTO : Tea.TeaModel {
    public var key: String?

    public var label: String?

    public var sortable: Bool?

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
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.label != nil {
            map["label"] = self.label!
        }
        if self.sortable != nil {
            map["sortable"] = self.sortable!
        }
        if self.unit != nil {
            map["unit"] = self.unit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["label"] as? String {
            self.label = value
        }
        if let value = dict["sortable"] as? Bool {
            self.sortable = value
        }
        if let value = dict["unit"] as? String {
            self.unit = value
        }
    }
}

public class MetricValueDTO : Tea.TeaModel {
    public var key: String?

    public var label: String?

    public var unit: String?

    public var value: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.label != nil {
            map["label"] = self.label!
        }
        if self.unit != nil {
            map["unit"] = self.unit!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["label"] as? String {
            self.label = value
        }
        if let value = dict["unit"] as? String {
            self.unit = value
        }
        if let value = dict["value"] as? Double {
            self.value = value
        }
    }
}

public class ModelCreateCmd : Tea.TeaModel {
    public var apiKey: String?

    public var baseUrl: String?

    public var description_: String?

    public var maxInputLength: String?

    public var maxOutputLength: String?

    public var modelId: String?

    public var modelType: String?

    public var name: String?

    public var symbol: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.baseUrl != nil {
            map["baseUrl"] = self.baseUrl!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.maxInputLength != nil {
            map["maxInputLength"] = self.maxInputLength!
        }
        if self.maxOutputLength != nil {
            map["maxOutputLength"] = self.maxOutputLength!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.symbol != nil {
            map["symbol"] = self.symbol!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["baseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["maxInputLength"] as? String {
            self.maxInputLength = value
        }
        if let value = dict["maxOutputLength"] as? String {
            self.maxOutputLength = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["symbol"] as? String {
            self.symbol = value
        }
        if let value = dict["tags"] as? String {
            self.tags = value
        }
    }
}

public class ModelDTO : Tea.TeaModel {
    public var apiKeyPreview: String?

    public var baseUrl: String?

    public var deleteTag: Int32?

    public var description_: String?

    public var extensions: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var hasBillingRule: Bool?

    public var id: Int64?

    public var inOut_: String?

    public var isCustom: Bool?

    public var maxInputLength: String?

    public var maxOutputLength: String?

    public var modelCode: String?

    public var modelType: String?

    public var name: String?

    public var symbol: String?

    public var tagNames: String?

    public var tags: String?

    public var version: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyPreview != nil {
            map["apiKeyPreview"] = self.apiKeyPreview!
        }
        if self.baseUrl != nil {
            map["baseUrl"] = self.baseUrl!
        }
        if self.deleteTag != nil {
            map["deleteTag"] = self.deleteTag!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.extensions != nil {
            map["extensions"] = self.extensions!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.hasBillingRule != nil {
            map["hasBillingRule"] = self.hasBillingRule!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.inOut_ != nil {
            map["inOut"] = self.inOut_!
        }
        if self.isCustom != nil {
            map["isCustom"] = self.isCustom!
        }
        if self.maxInputLength != nil {
            map["maxInputLength"] = self.maxInputLength!
        }
        if self.maxOutputLength != nil {
            map["maxOutputLength"] = self.maxOutputLength!
        }
        if self.modelCode != nil {
            map["modelCode"] = self.modelCode!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.symbol != nil {
            map["symbol"] = self.symbol!
        }
        if self.tagNames != nil {
            map["tagNames"] = self.tagNames!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyPreview"] as? String {
            self.apiKeyPreview = value
        }
        if let value = dict["baseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["deleteTag"] as? Int32 {
            self.deleteTag = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["extensions"] as? String {
            self.extensions = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["hasBillingRule"] as? Bool {
            self.hasBillingRule = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["inOut"] as? String {
            self.inOut_ = value
        }
        if let value = dict["isCustom"] as? Bool {
            self.isCustom = value
        }
        if let value = dict["maxInputLength"] as? String {
            self.maxInputLength = value
        }
        if let value = dict["maxOutputLength"] as? String {
            self.maxOutputLength = value
        }
        if let value = dict["modelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["symbol"] as? String {
            self.symbol = value
        }
        if let value = dict["tagNames"] as? String {
            self.tagNames = value
        }
        if let value = dict["tags"] as? String {
            self.tags = value
        }
        if let value = dict["version"] as? Int32 {
            self.version = value
        }
    }
}

public class ModelListQry : Tea.TeaModel {
    public var keyword: String?

    public var page: Int32?

    public var pageSize: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ModelMetricsDTO : Tea.TeaModel {
    public var avgResponseTime: Double?

    public var inputTokens: Int64?

    public var outputTokens: Int64?

    public var successRate: Double?

    public var totalCalls: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avgResponseTime != nil {
            map["avgResponseTime"] = self.avgResponseTime!
        }
        if self.inputTokens != nil {
            map["inputTokens"] = self.inputTokens!
        }
        if self.outputTokens != nil {
            map["outputTokens"] = self.outputTokens!
        }
        if self.successRate != nil {
            map["successRate"] = self.successRate!
        }
        if self.totalCalls != nil {
            map["totalCalls"] = self.totalCalls!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["avgResponseTime"] as? Double {
            self.avgResponseTime = value
        }
        if let value = dict["inputTokens"] as? Int64 {
            self.inputTokens = value
        }
        if let value = dict["outputTokens"] as? Int64 {
            self.outputTokens = value
        }
        if let value = dict["successRate"] as? Double {
            self.successRate = value
        }
        if let value = dict["totalCalls"] as? Int64 {
            self.totalCalls = value
        }
    }
}

public class ModelRowDTO : Tea.TeaModel {
    public var modelCode: String?

    public var modelId: Int64?

    public var modelName: String?

    public var values: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelCode != nil {
            map["modelCode"] = self.modelCode!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.values != nil {
            map["values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["values"] as? String {
            self.values = value
        }
    }
}

public class ModelUpdateCmd : Tea.TeaModel {
    public var apiKey: String?

    public var baseUrl: String?

    public var description_: String?

    public var maxInputLength: String?

    public var maxOutputLength: String?

    public var modelId: String?

    public var modelType: String?

    public var name: String?

    public var status: Int32?

    public var symbol: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.baseUrl != nil {
            map["baseUrl"] = self.baseUrl!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.maxInputLength != nil {
            map["maxInputLength"] = self.maxInputLength!
        }
        if self.maxOutputLength != nil {
            map["maxOutputLength"] = self.maxOutputLength!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.symbol != nil {
            map["symbol"] = self.symbol!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["baseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["maxInputLength"] as? String {
            self.maxInputLength = value
        }
        if let value = dict["maxOutputLength"] as? String {
            self.maxOutputLength = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["symbol"] as? String {
            self.symbol = value
        }
        if let value = dict["tags"] as? String {
            self.tags = value
        }
    }
}

public class ObservationChartsDTO : Tea.TeaModel {
    public class SuccessRate : Tea.TeaModel {
        public var label: String?

        public var timestamp: String?

        public var value: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["label"] as? String {
                self.label = value
            }
            if let value = dict["timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["value"] as? Any {
                self.value = value
            }
        }
    }
    public var callVolume: [TimeSeriesPointDTO]?

    public var concurrency: [TimeSeriesPointDTO]?

    public var qpm: [TimeSeriesPointDTO]?

    public var responseTime: [TimeSeriesPointDTO]?

    public var successRate: [ObservationChartsDTO.SuccessRate]?

    public var tpm: [TimeSeriesPointDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callVolume != nil {
            var tmp : [Any] = []
            for k in self.callVolume! {
                tmp.append(k.toMap())
            }
            map["callVolume"] = tmp
        }
        if self.concurrency != nil {
            var tmp : [Any] = []
            for k in self.concurrency! {
                tmp.append(k.toMap())
            }
            map["concurrency"] = tmp
        }
        if self.qpm != nil {
            var tmp : [Any] = []
            for k in self.qpm! {
                tmp.append(k.toMap())
            }
            map["qpm"] = tmp
        }
        if self.responseTime != nil {
            var tmp : [Any] = []
            for k in self.responseTime! {
                tmp.append(k.toMap())
            }
            map["responseTime"] = tmp
        }
        if self.successRate != nil {
            var tmp : [Any] = []
            for k in self.successRate! {
                tmp.append(k.toMap())
            }
            map["successRate"] = tmp
        }
        if self.tpm != nil {
            var tmp : [Any] = []
            for k in self.tpm! {
                tmp.append(k.toMap())
            }
            map["tpm"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["callVolume"] as? [Any?] {
            var tmp : [TimeSeriesPointDTO] = []
            for v in value {
                if v != nil {
                    var model = TimeSeriesPointDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.callVolume = tmp
        }
        if let value = dict["concurrency"] as? [Any?] {
            var tmp : [TimeSeriesPointDTO] = []
            for v in value {
                if v != nil {
                    var model = TimeSeriesPointDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.concurrency = tmp
        }
        if let value = dict["qpm"] as? [Any?] {
            var tmp : [TimeSeriesPointDTO] = []
            for v in value {
                if v != nil {
                    var model = TimeSeriesPointDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.qpm = tmp
        }
        if let value = dict["responseTime"] as? [Any?] {
            var tmp : [TimeSeriesPointDTO] = []
            for v in value {
                if v != nil {
                    var model = TimeSeriesPointDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.responseTime = tmp
        }
        if let value = dict["successRate"] as? [Any?] {
            var tmp : [ObservationChartsDTO.SuccessRate] = []
            for v in value {
                if v != nil {
                    var model = ObservationChartsDTO.SuccessRate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.successRate = tmp
        }
        if let value = dict["tpm"] as? [Any?] {
            var tmp : [TimeSeriesPointDTO] = []
            for v in value {
                if v != nil {
                    var model = TimeSeriesPointDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tpm = tmp
        }
    }
}

public class ObservationLogListQry : Tea.TeaModel {
    public var apiKeyId: Int64?

    public var clientId: Int64?

    public var endTime: String?

    public var modelId: Int64?

    public var page: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyId != nil {
            map["apiKeyId"] = self.apiKeyId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? Int64 {
            self.apiKeyId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class ObservationQry : Tea.TeaModel {
    public var apiKeyId: Int64?

    public var clientId: Int64?

    public var endTime: String?

    public var modelId: Int64?

    public var startTime: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyId != nil {
            map["apiKeyId"] = self.apiKeyId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? Int64 {
            self.apiKeyId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class OpenApiMultiResponse : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InferenceJobList : Tea.TeaModel {
            public var createTime: String?

            public var id: String?

            public var jobStatus: String?

            public var jobTrainProgress: Double?

            public var modelId: String?

            public var promptId: String?

            public var resultImageUrl: [String]?

            public override init() {
                super.init()
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
                if self.jobStatus != nil {
                    map["jobStatus"] = self.jobStatus!
                }
                if self.jobTrainProgress != nil {
                    map["jobTrainProgress"] = self.jobTrainProgress!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.promptId != nil {
                    map["promptId"] = self.promptId!
                }
                if self.resultImageUrl != nil {
                    map["resultImageUrl"] = self.resultImageUrl!
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
                if let value = dict["jobStatus"] as? String {
                    self.jobStatus = value
                }
                if let value = dict["jobTrainProgress"] as? Double {
                    self.jobTrainProgress = value
                }
                if let value = dict["modelId"] as? String {
                    self.modelId = value
                }
                if let value = dict["promptId"] as? String {
                    self.promptId = value
                }
                if let value = dict["resultImageUrl"] as? [String] {
                    self.resultImageUrl = value
                }
            }
        }
        public var createTime: String?

        public var id: String?

        public var imageUrl: [String]?

        public var inferenceImageCount: Int32?

        public var inferenceJobList: [OpenApiMultiResponse.Data.InferenceJobList]?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var name: String?

        public var objectType: String?

        public override init() {
            super.init()
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
            if self.imageUrl != nil {
                map["imageUrl"] = self.imageUrl!
            }
            if self.inferenceImageCount != nil {
                map["inferenceImageCount"] = self.inferenceImageCount!
            }
            if self.inferenceJobList != nil {
                var tmp : [Any] = []
                for k in self.inferenceJobList! {
                    tmp.append(k.toMap())
                }
                map["inferenceJobList"] = tmp
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
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
            if let value = dict["imageUrl"] as? [String] {
                self.imageUrl = value
            }
            if let value = dict["inferenceImageCount"] as? Int32 {
                self.inferenceImageCount = value
            }
            if let value = dict["inferenceJobList"] as? [Any?] {
                var tmp : [OpenApiMultiResponse.Data.InferenceJobList] = []
                for v in value {
                    if v != nil {
                        var model = OpenApiMultiResponse.Data.InferenceJobList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inferenceJobList = tmp
            }
            if let value = dict["jobStatus"] as? String {
                self.jobStatus = value
            }
            if let value = dict["jobTrainProgress"] as? Double {
                self.jobTrainProgress = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
        }
    }
    public var data: [OpenApiMultiResponse.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [OpenApiMultiResponse.Data] = []
            for v in value {
                if v != nil {
                    var model = OpenApiMultiResponse.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class OpenApiSingleResponse : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modelTrainStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelTrainStatus != nil {
                map["modelTrainStatus"] = self.modelTrainStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelTrainStatus"] as? String {
                self.modelTrainStatus = value
            }
        }
    }
    public var data: OpenApiSingleResponse.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = OpenApiSingleResponse.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class OralEvaluationStatisticsCallsCountRequest : Tea.TeaModel {
    public var applicationAccessId: String?

    public var endTime: String?

    public var granularity: String?

    public var projectId: String?

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
        if self.applicationAccessId != nil {
            map["applicationAccessId"] = self.applicationAccessId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationAccessId"] as? String {
            self.applicationAccessId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class OralEvaluationStatisticsCallsCountResponse : Tea.TeaModel {
    public class ProjectData : Tea.TeaModel {
        public class ApplicationData : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["count"] = self.count!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["count"] as? Int32 {
                        self.count = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public var data: [OralEvaluationStatisticsCallsCountResponse.ProjectData.ApplicationData.Data]?

            public var applicationAccessId: String?

            public override init() {
                super.init()
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
                    map["Data"] = tmp
                }
                if self.applicationAccessId != nil {
                    map["applicationAccessId"] = self.applicationAccessId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Any?] {
                    var tmp : [OralEvaluationStatisticsCallsCountResponse.ProjectData.ApplicationData.Data] = []
                    for v in value {
                        if v != nil {
                            var model = OralEvaluationStatisticsCallsCountResponse.ProjectData.ApplicationData.Data()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.data = tmp
                }
                if let value = dict["applicationAccessId"] as? String {
                    self.applicationAccessId = value
                }
            }
        }
        public var applicationData: [OralEvaluationStatisticsCallsCountResponse.ProjectData.ApplicationData]?

        public var applicationInternalId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationData != nil {
                var tmp : [Any] = []
                for k in self.applicationData! {
                    tmp.append(k.toMap())
                }
                map["ApplicationData"] = tmp
            }
            if self.applicationInternalId != nil {
                map["applicationInternalId"] = self.applicationInternalId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationData"] as? [Any?] {
                var tmp : [OralEvaluationStatisticsCallsCountResponse.ProjectData.ApplicationData] = []
                for v in value {
                    if v != nil {
                        var model = OralEvaluationStatisticsCallsCountResponse.ProjectData.ApplicationData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applicationData = tmp
            }
            if let value = dict["applicationInternalId"] as? String {
                self.applicationInternalId = value
            }
        }
    }
    public var projectData: OralEvaluationStatisticsCallsCountResponse.ProjectData?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.projectData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectData != nil {
            map["projectData"] = self.projectData?.toMap()
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectData"] as? [String: Any?] {
            var model = OralEvaluationStatisticsCallsCountResponse.ProjectData()
            model.fromMap(value)
            self.projectData = model
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
    }
}

public class OralEvaluationStatisticsConcurrentCountRequest : Tea.TeaModel {
    public var applicationAccessId: String?

    public var endTime: String?

    public var granularity: String?

    public var projectId: String?

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
        if self.applicationAccessId != nil {
            map["applicationAccessId"] = self.applicationAccessId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationAccessId"] as? String {
            self.applicationAccessId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class OralEvaluationStatisticsConcurrentCountResponse : Tea.TeaModel {
    public class ProjectData : Tea.TeaModel {
        public class ApplicationData : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["count"] = self.count!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["count"] as? Int32 {
                        self.count = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public var data: [OralEvaluationStatisticsConcurrentCountResponse.ProjectData.ApplicationData.Data]?

            public var applicationAccessId: String?

            public override init() {
                super.init()
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
                    map["Data"] = tmp
                }
                if self.applicationAccessId != nil {
                    map["applicationAccessId"] = self.applicationAccessId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Any?] {
                    var tmp : [OralEvaluationStatisticsConcurrentCountResponse.ProjectData.ApplicationData.Data] = []
                    for v in value {
                        if v != nil {
                            var model = OralEvaluationStatisticsConcurrentCountResponse.ProjectData.ApplicationData.Data()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.data = tmp
                }
                if let value = dict["applicationAccessId"] as? String {
                    self.applicationAccessId = value
                }
            }
        }
        public var applicationData: [OralEvaluationStatisticsConcurrentCountResponse.ProjectData.ApplicationData]?

        public var applicationInternalId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationData != nil {
                var tmp : [Any] = []
                for k in self.applicationData! {
                    tmp.append(k.toMap())
                }
                map["ApplicationData"] = tmp
            }
            if self.applicationInternalId != nil {
                map["applicationInternalId"] = self.applicationInternalId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationData"] as? [Any?] {
                var tmp : [OralEvaluationStatisticsConcurrentCountResponse.ProjectData.ApplicationData] = []
                for v in value {
                    if v != nil {
                        var model = OralEvaluationStatisticsConcurrentCountResponse.ProjectData.ApplicationData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applicationData = tmp
            }
            if let value = dict["applicationInternalId"] as? String {
                self.applicationInternalId = value
            }
        }
    }
    public var projectData: OralEvaluationStatisticsConcurrentCountResponse.ProjectData?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.projectData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectData != nil {
            map["projectData"] = self.projectData?.toMap()
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectData"] as? [String: Any?] {
            var model = OralEvaluationStatisticsConcurrentCountResponse.ProjectData()
            model.fromMap(value)
            self.projectData = model
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
    }
}

public class OralEvaluationStatisticsErrorCountRequest : Tea.TeaModel {
    public var applicationAccessId: String?

    public var endTime: String?

    public var errorCode: [String]?

    public var granularity: String?

    public var projectId: String?

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
        if self.applicationAccessId != nil {
            map["applicationAccessId"] = self.applicationAccessId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationAccessId"] as? String {
            self.applicationAccessId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["errorCode"] as? [String] {
            self.errorCode = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class OralEvaluationStatisticsErrorCountResponse : Tea.TeaModel {
    public class ProjectData : Tea.TeaModel {
        public class ApplicationData : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public class Data : Tea.TeaModel {
                    public var count: Int32?

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
                        if self.count != nil {
                            map["count"] = self.count!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["count"] as? Int32 {
                            self.count = value
                        }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                    }
                }
                public var data: [OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData.Data.Data]?

                public var errorCode: String?

                public var errorMessage: String?

                public override init() {
                    super.init()
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
                        map["Data"] = tmp
                    }
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? [Any?] {
                        var tmp : [OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData.Data.Data] = []
                        for v in value {
                            if v != nil {
                                var model = OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData.Data.Data()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.data = tmp
                    }
                    if let value = dict["ErrorCode"] as? String {
                        self.errorCode = value
                    }
                    if let value = dict["ErrorMessage"] as? String {
                        self.errorMessage = value
                    }
                }
            }
            public var data: [OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData.Data]?

            public var applicationAccessId: String?

            public override init() {
                super.init()
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
                    map["Data"] = tmp
                }
                if self.applicationAccessId != nil {
                    map["applicationAccessId"] = self.applicationAccessId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Any?] {
                    var tmp : [OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData.Data] = []
                    for v in value {
                        if v != nil {
                            var model = OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData.Data()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.data = tmp
                }
                if let value = dict["applicationAccessId"] as? String {
                    self.applicationAccessId = value
                }
            }
        }
        public var applicationData: [OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData]?

        public var applicationInternalId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationData != nil {
                var tmp : [Any] = []
                for k in self.applicationData! {
                    tmp.append(k.toMap())
                }
                map["ApplicationData"] = tmp
            }
            if self.applicationInternalId != nil {
                map["applicationInternalId"] = self.applicationInternalId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationData"] as? [Any?] {
                var tmp : [OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData] = []
                for v in value {
                    if v != nil {
                        var model = OralEvaluationStatisticsErrorCountResponse.ProjectData.ApplicationData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applicationData = tmp
            }
            if let value = dict["applicationInternalId"] as? String {
                self.applicationInternalId = value
            }
        }
    }
    public var projectData: OralEvaluationStatisticsErrorCountResponse.ProjectData?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.projectData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectData != nil {
            map["ProjectData"] = self.projectData?.toMap()
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectData"] as? [String: Any?] {
            var model = OralEvaluationStatisticsErrorCountResponse.ProjectData()
            model.fromMap(value)
            self.projectData = model
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
    }
}

public class OrgInitResultDTO : Tea.TeaModel {
    public var apiKey: String?

    public var clientId: Int64?

    public var clientUuid: String?

    public var isNew: Bool?

    public var orgId: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.clientUuid != nil {
            map["clientUuid"] = self.clientUuid!
        }
        if self.isNew != nil {
            map["isNew"] = self.isNew!
        }
        if self.orgId != nil {
            map["orgId"] = self.orgId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["clientUuid"] as? String {
            self.clientUuid = value
        }
        if let value = dict["isNew"] as? Bool {
            self.isNew = value
        }
        if let value = dict["orgId"] as? Int64 {
            self.orgId = value
        }
        if let value = dict["userId"] as? Int64 {
            self.userId = value
        }
    }
}

public class PaidResourceDTO : Tea.TeaModel {
    public var effectiveTime: String?

    public var expireTime: String?

    public var instanceId: String?

    public var quantity: Int32?

    public var remainQuantity: Int32?

    public var resourceCatalogCode: String?

    public var resourceCatalogName: String?

    public var resourcePackageCode: String?

    public var resourcePackageName: String?

    public var resourceStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.effectiveTime != nil {
            map["effectiveTime"] = self.effectiveTime!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.remainQuantity != nil {
            map["remainQuantity"] = self.remainQuantity!
        }
        if self.resourceCatalogCode != nil {
            map["resourceCatalogCode"] = self.resourceCatalogCode!
        }
        if self.resourceCatalogName != nil {
            map["resourceCatalogName"] = self.resourceCatalogName!
        }
        if self.resourcePackageCode != nil {
            map["resourcePackageCode"] = self.resourcePackageCode!
        }
        if self.resourcePackageName != nil {
            map["resourcePackageName"] = self.resourcePackageName!
        }
        if self.resourceStatus != nil {
            map["resourceStatus"] = self.resourceStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["effectiveTime"] as? String {
            self.effectiveTime = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["remainQuantity"] as? Int32 {
            self.remainQuantity = value
        }
        if let value = dict["resourceCatalogCode"] as? String {
            self.resourceCatalogCode = value
        }
        if let value = dict["resourceCatalogName"] as? String {
            self.resourceCatalogName = value
        }
        if let value = dict["resourcePackageCode"] as? String {
            self.resourcePackageCode = value
        }
        if let value = dict["resourcePackageName"] as? String {
            self.resourcePackageName = value
        }
        if let value = dict["resourceStatus"] as? String {
            self.resourceStatus = value
        }
    }
}

public class PaidResourceQry : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceStatus: String?

    public override init() {
        super.init()
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
        if self.resourceStatus != nil {
            map["resourceStatus"] = self.resourceStatus!
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
        if let value = dict["resourceStatus"] as? String {
            self.resourceStatus = value
        }
    }
}

public class Personalizedtxt2imgAddInferenceJobCmd : Tea.TeaModel {
    public var imageNumber: Int32?

    public var modelId: String?

    public var prompt: String?

    public var seed: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNumber != nil {
            map["imageNumber"] = self.imageNumber!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.seed != nil {
            map["seed"] = self.seed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["imageNumber"] as? Int32 {
            self.imageNumber = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["seed"] as? Int32 {
            self.seed = value
        }
    }
}

public class Personalizedtxt2imgAddModelTrainJobCmd : Tea.TeaModel {
    public var imageUrl: [String]?

    public var name: String?

    public var objectType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["imageUrl"] as? [String] {
            self.imageUrl = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["objectType"] as? String {
            self.objectType = value
        }
    }
}

public class Personalizedtxt2imgInferenceJobInfoDTO : Tea.TeaModel {
    public var createUserId: String?

    public var id: String?

    public var jobStatus: String?

    public var modelId: String?

    public var resultImageUrl: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createUserId != nil {
            map["createUserId"] = self.createUserId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.jobStatus != nil {
            map["jobStatus"] = self.jobStatus!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.resultImageUrl != nil {
            map["resultImageUrl"] = self.resultImageUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createUserId"] as? String {
            self.createUserId = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["jobStatus"] as? String {
            self.jobStatus = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["resultImageUrl"] as? [String] {
            self.resultImageUrl = value
        }
    }
}

public class Personalizedtxt2imgModelTrainJobInfoDTO : Tea.TeaModel {
    public var createTime: String?

    public var createUserId: String?

    public var imageUrl: [String]?

    public var inferenceJobList: [Personalizedtxt2imgInferenceJobInfoDTO]?

    public var jobStatus: String?

    public var name: String?

    public var objectType: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.inferenceJobList != nil {
            var tmp : [Any] = []
            for k in self.inferenceJobList! {
                tmp.append(k.toMap())
            }
            map["InferenceJobList"] = tmp
        }
        if self.jobStatus != nil {
            map["JobStatus"] = self.jobStatus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateUserId"] as? String {
            self.createUserId = value
        }
        if let value = dict["ImageUrl"] as? [String] {
            self.imageUrl = value
        }
        if let value = dict["InferenceJobList"] as? [Any?] {
            var tmp : [Personalizedtxt2imgInferenceJobInfoDTO] = []
            for v in value {
                if v != nil {
                    var model = Personalizedtxt2imgInferenceJobInfoDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inferenceJobList = tmp
        }
        if let value = dict["JobStatus"] as? String {
            self.jobStatus = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
    }
}

public class RequestLogDTO : Tea.TeaModel {
    public var apiKeyId: Int64?

    public var clientId: Int64?

    public var clientUuid: String?

    public var completionTokens: Int32?

    public var deleteTag: Int32?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var modelCode: String?

    public var modelId: Int64?

    public var modelName: String?

    public var modelType: String?

    public var promptTokens: Int32?

    public var requestBody: String?

    public var requestId: String?

    public var requestTime: String?

    public var responseBody: String?

    public var responseTimeMs: Int32?

    public var status: String?

    public var statusCode: Int32?

    public var symbol: String?

    public var totalTokens: Int32?

    public var usage: UsageInfoDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyId != nil {
            map["apiKeyId"] = self.apiKeyId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.clientUuid != nil {
            map["clientUuid"] = self.clientUuid!
        }
        if self.completionTokens != nil {
            map["completionTokens"] = self.completionTokens!
        }
        if self.deleteTag != nil {
            map["deleteTag"] = self.deleteTag!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.modelCode != nil {
            map["modelCode"] = self.modelCode!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.promptTokens != nil {
            map["promptTokens"] = self.promptTokens!
        }
        if self.requestBody != nil {
            map["requestBody"] = self.requestBody!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.requestTime != nil {
            map["requestTime"] = self.requestTime!
        }
        if self.responseBody != nil {
            map["responseBody"] = self.responseBody!
        }
        if self.responseTimeMs != nil {
            map["responseTimeMs"] = self.responseTimeMs!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.symbol != nil {
            map["symbol"] = self.symbol!
        }
        if self.totalTokens != nil {
            map["totalTokens"] = self.totalTokens!
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? Int64 {
            self.apiKeyId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["clientUuid"] as? String {
            self.clientUuid = value
        }
        if let value = dict["completionTokens"] as? Int32 {
            self.completionTokens = value
        }
        if let value = dict["deleteTag"] as? Int32 {
            self.deleteTag = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["modelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["promptTokens"] as? Int32 {
            self.promptTokens = value
        }
        if let value = dict["requestBody"] as? String {
            self.requestBody = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["requestTime"] as? String {
            self.requestTime = value
        }
        if let value = dict["responseBody"] as? String {
            self.responseBody = value
        }
        if let value = dict["responseTimeMs"] as? Int32 {
            self.responseTimeMs = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["symbol"] as? String {
            self.symbol = value
        }
        if let value = dict["totalTokens"] as? Int32 {
            self.totalTokens = value
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = UsageInfoDTO()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class RequestLogListQry : Tea.TeaModel {
    public var keyword: String?

    public var page: Int32?

    public var pageSize: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class TimeSeriesPointDTO : Tea.TeaModel {
    public var label: String?

    public var timestamp: String?

    public var value: Any?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.label != nil {
            map["label"] = self.label!
        }
        if self.timestamp != nil {
            map["timestamp"] = self.timestamp!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["label"] as? String {
            self.label = value
        }
        if let value = dict["timestamp"] as? String {
            self.timestamp = value
        }
        if let value = dict["value"] as? Any {
            self.value = value
        }
    }
}

public class TrendPointDTO : Tea.TeaModel {
    public var timestamp: Int64?

    public var values: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.timestamp != nil {
            map["timestamp"] = self.timestamp!
        }
        if self.values != nil {
            map["values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["timestamp"] as? Int64 {
            self.timestamp = value
        }
        if let value = dict["values"] as? String {
            self.values = value
        }
    }
}

public class UsageInfoDTO : Tea.TeaModel {
    public var completionTokens: Int32?

    public var imageCount: Int32?

    public var promptTokens: Int32?

    public var totalTokens: Int32?

    public var videoCount: Int32?

    public var videoDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.completionTokens != nil {
            map["completionTokens"] = self.completionTokens!
        }
        if self.imageCount != nil {
            map["imageCount"] = self.imageCount!
        }
        if self.promptTokens != nil {
            map["promptTokens"] = self.promptTokens!
        }
        if self.totalTokens != nil {
            map["totalTokens"] = self.totalTokens!
        }
        if self.videoCount != nil {
            map["videoCount"] = self.videoCount!
        }
        if self.videoDuration != nil {
            map["videoDuration"] = self.videoDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["completionTokens"] as? Int32 {
            self.completionTokens = value
        }
        if let value = dict["imageCount"] as? Int32 {
            self.imageCount = value
        }
        if let value = dict["promptTokens"] as? Int32 {
            self.promptTokens = value
        }
        if let value = dict["totalTokens"] as? Int32 {
            self.totalTokens = value
        }
        if let value = dict["videoCount"] as? Int32 {
            self.videoCount = value
        }
        if let value = dict["videoDuration"] as? Int32 {
            self.videoDuration = value
        }
    }
}

public class AITeacherExpansionPracticeTaskGenerateRequest : Tea.TeaModel {
    public var grade: String?

    public var keySentences: [String]?

    public var keyWords: [String]?

    public var learningObject: String?

    public var textContent: String?

    public var textbook: String?

    public var topic: String?

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
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.keySentences != nil {
            map["keySentences"] = self.keySentences!
        }
        if self.keyWords != nil {
            map["keyWords"] = self.keyWords!
        }
        if self.learningObject != nil {
            map["learningObject"] = self.learningObject!
        }
        if self.textContent != nil {
            map["textContent"] = self.textContent!
        }
        if self.textbook != nil {
            map["textbook"] = self.textbook!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["grade"] as? String {
            self.grade = value
        }
        if let value = dict["keySentences"] as? [String] {
            self.keySentences = value
        }
        if let value = dict["keyWords"] as? [String] {
            self.keyWords = value
        }
        if let value = dict["learningObject"] as? String {
            self.learningObject = value
        }
        if let value = dict["textContent"] as? String {
            self.textContent = value
        }
        if let value = dict["textbook"] as? String {
            self.textbook = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class AITeacherExpansionPracticeTaskGenerateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RoleSet : Tea.TeaModel {
            public var assistant: String?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assistant != nil {
                    map["assistant"] = self.assistant!
                }
                if self.user != nil {
                    map["user"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["assistant"] as? String {
                    self.assistant = value
                }
                if let value = dict["user"] as? String {
                    self.user = value
                }
            }
        }
        public class TaskContent : Tea.TeaModel {
            public var assistant: String?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assistant != nil {
                    map["assistant"] = self.assistant!
                }
                if self.user != nil {
                    map["user"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["assistant"] as? String {
                    self.assistant = value
                }
                if let value = dict["user"] as? String {
                    self.user = value
                }
            }
        }
        public var backgroundDescription: String?

        public var roleSet: AITeacherExpansionPracticeTaskGenerateResponseBody.Data.RoleSet?

        public var startSentence: String?

        public var taskContent: [AITeacherExpansionPracticeTaskGenerateResponseBody.Data.TaskContent]?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.roleSet?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundDescription != nil {
                map["backgroundDescription"] = self.backgroundDescription!
            }
            if self.roleSet != nil {
                map["roleSet"] = self.roleSet?.toMap()
            }
            if self.startSentence != nil {
                map["startSentence"] = self.startSentence!
            }
            if self.taskContent != nil {
                var tmp : [Any] = []
                for k in self.taskContent! {
                    tmp.append(k.toMap())
                }
                map["taskContent"] = tmp
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["backgroundDescription"] as? String {
                self.backgroundDescription = value
            }
            if let value = dict["roleSet"] as? [String: Any?] {
                var model = AITeacherExpansionPracticeTaskGenerateResponseBody.Data.RoleSet()
                model.fromMap(value)
                self.roleSet = model
            }
            if let value = dict["startSentence"] as? String {
                self.startSentence = value
            }
            if let value = dict["taskContent"] as? [Any?] {
                var tmp : [AITeacherExpansionPracticeTaskGenerateResponseBody.Data.TaskContent] = []
                for v in value {
                    if v != nil {
                        var model = AITeacherExpansionPracticeTaskGenerateResponseBody.Data.TaskContent()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskContent = tmp
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var data: AITeacherExpansionPracticeTaskGenerateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = AITeacherExpansionPracticeTaskGenerateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AITeacherExpansionPracticeTaskGenerateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AITeacherExpansionPracticeTaskGenerateResponseBody?

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
            var model = AITeacherExpansionPracticeTaskGenerateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AITeacherSyncPracticeTaskGenerateRequest : Tea.TeaModel {
    public var grade: String?

    public var keySentences: [String]?

    public var keyWords: [String]?

    public var learningObject: String?

    public var textContent: String?

    public var textbook: String?

    public var topic: String?

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
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.keySentences != nil {
            map["keySentences"] = self.keySentences!
        }
        if self.keyWords != nil {
            map["keyWords"] = self.keyWords!
        }
        if self.learningObject != nil {
            map["learningObject"] = self.learningObject!
        }
        if self.textContent != nil {
            map["textContent"] = self.textContent!
        }
        if self.textbook != nil {
            map["textbook"] = self.textbook!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["grade"] as? String {
            self.grade = value
        }
        if let value = dict["keySentences"] as? [String] {
            self.keySentences = value
        }
        if let value = dict["keyWords"] as? [String] {
            self.keyWords = value
        }
        if let value = dict["learningObject"] as? String {
            self.learningObject = value
        }
        if let value = dict["textContent"] as? String {
            self.textContent = value
        }
        if let value = dict["textbook"] as? String {
            self.textbook = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class AITeacherSyncPracticeTaskGenerateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskContent : Tea.TeaModel {
            public var assistant: String?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assistant != nil {
                    map["assistant"] = self.assistant!
                }
                if self.user != nil {
                    map["user"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["assistant"] as? String {
                    self.assistant = value
                }
                if let value = dict["user"] as? String {
                    self.user = value
                }
            }
        }
        public var taskContent: [AITeacherSyncPracticeTaskGenerateResponseBody.Data.TaskContent]?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskContent != nil {
                var tmp : [Any] = []
                for k in self.taskContent! {
                    tmp.append(k.toMap())
                }
                map["taskContent"] = tmp
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskContent"] as? [Any?] {
                var tmp : [AITeacherSyncPracticeTaskGenerateResponseBody.Data.TaskContent] = []
                for v in value {
                    if v != nil {
                        var model = AITeacherSyncPracticeTaskGenerateResponseBody.Data.TaskContent()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskContent = tmp
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var data: AITeacherSyncPracticeTaskGenerateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = AITeacherSyncPracticeTaskGenerateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AITeacherSyncPracticeTaskGenerateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AITeacherSyncPracticeTaskGenerateResponseBody?

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
            var model = AITeacherSyncPracticeTaskGenerateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var freeConcurrencyCount: Int32?

        public var freeCount: Int32?

        public var serviceCode: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.freeConcurrencyCount != nil {
                map["FreeConcurrencyCount"] = self.freeConcurrencyCount!
            }
            if self.freeCount != nil {
                map["FreeCount"] = self.freeCount!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FreeConcurrencyCount"] as? Int32 {
                self.freeConcurrencyCount = value
            }
            if let value = dict["FreeCount"] as? Int32 {
                self.freeCount = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
        }
    }
    public var data: [AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody?

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
            var model = AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody : Tea.TeaModel {
    public var data: [AliyunConsoleServiceInfoDTO]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [AliyunConsoleServiceInfoDTO] = []
            for v in value {
                if v != nil {
                    var model = AliyunConsoleServiceInfoDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody?

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
            var model = AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AliyunConsoleOpenApiQueryPaidResourceRequest : Tea.TeaModel {
    public var groupBy: String?

    public var maxResults: Int32?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class AliyunConsoleOpenApiQueryPaidResourceResponseBody : Tea.TeaModel {
    public var data: [PaidResourceDTO]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var skip: Int32?

    public var success: Bool?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skip != nil {
            map["skip"] = self.skip!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [PaidResourceDTO] = []
            for v in value {
                if v != nil {
                    var model = PaidResourceDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class AliyunConsoleOpenApiQueryPaidResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AliyunConsoleOpenApiQueryPaidResourceResponseBody?

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
            var model = AliyunConsoleOpenApiQueryPaidResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CountOralEvaluationStatisticsCallsRequest : Tea.TeaModel {
    public var body: OralEvaluationStatisticsCallsCountRequest?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = OralEvaluationStatisticsCallsCountRequest()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CountOralEvaluationStatisticsCallsResponseBody : Tea.TeaModel {
    public var data: [OralEvaluationStatisticsCallsCountResponse]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [OralEvaluationStatisticsCallsCountResponse] = []
            for v in value {
                if v != nil {
                    var model = OralEvaluationStatisticsCallsCountResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CountOralEvaluationStatisticsCallsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountOralEvaluationStatisticsCallsResponseBody?

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
            var model = CountOralEvaluationStatisticsCallsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CountOralEvaluationStatisticsConcurrentRequest : Tea.TeaModel {
    public var body: OralEvaluationStatisticsConcurrentCountRequest?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = OralEvaluationStatisticsConcurrentCountRequest()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CountOralEvaluationStatisticsConcurrentResponseBody : Tea.TeaModel {
    public var data: [OralEvaluationStatisticsConcurrentCountResponse]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [OralEvaluationStatisticsConcurrentCountResponse] = []
            for v in value {
                if v != nil {
                    var model = OralEvaluationStatisticsConcurrentCountResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CountOralEvaluationStatisticsConcurrentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountOralEvaluationStatisticsConcurrentResponseBody?

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
            var model = CountOralEvaluationStatisticsConcurrentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CountOralEvaluationStatisticsErrorRequest : Tea.TeaModel {
    public var body: OralEvaluationStatisticsErrorCountRequest?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = OralEvaluationStatisticsErrorCountRequest()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CountOralEvaluationStatisticsErrorResponseBody : Tea.TeaModel {
    public var data: [OralEvaluationStatisticsErrorCountResponse]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [OralEvaluationStatisticsErrorCountResponse] = []
            for v in value {
                if v != nil {
                    var model = OralEvaluationStatisticsErrorCountResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CountOralEvaluationStatisticsErrorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountOralEvaluationStatisticsErrorResponseBody?

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
            var model = CountOralEvaluationStatisticsErrorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccessWarrantRequest : Tea.TeaModel {
    public var appId: String?

    public var requestSign: String?

    public var timestamp: String?

    public var userClientIp: String?

    public var userId: String?

    public var warrantAvailable: Int32?

    public override init() {
        super.init()
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
        if self.requestSign != nil {
            map["requestSign"] = self.requestSign!
        }
        if self.timestamp != nil {
            map["timestamp"] = self.timestamp!
        }
        if self.userClientIp != nil {
            map["userClientIp"] = self.userClientIp!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.warrantAvailable != nil {
            map["warrantAvailable"] = self.warrantAvailable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["requestSign"] as? String {
            self.requestSign = value
        }
        if let value = dict["timestamp"] as? String {
            self.timestamp = value
        }
        if let value = dict["userClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["warrantAvailable"] as? Int32 {
            self.warrantAvailable = value
        }
    }
}

public class CreateAccessWarrantResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessToken: String?

        public var accessWarrantId: String?

        public var applicationAccessId: String?

        public var createTime: String?

        public var expireTime: String?

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
            if self.accessToken != nil {
                map["AccessToken"] = self.accessToken!
            }
            if self.accessWarrantId != nil {
                map["AccessWarrantId"] = self.accessWarrantId!
            }
            if self.applicationAccessId != nil {
                map["ApplicationAccessId"] = self.applicationAccessId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessToken"] as? String {
                self.accessToken = value
            }
            if let value = dict["AccessWarrantId"] as? String {
                self.accessWarrantId = value
            }
            if let value = dict["ApplicationAccessId"] as? String {
                self.applicationAccessId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var data: CreateAccessWarrantResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateAccessWarrantResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateAccessWarrantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessWarrantResponseBody?

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
            var model = CreateAccessWarrantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var projectName: String?

    public var projectType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.projectType != nil {
            map["projectType"] = self.projectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["projectType"] as? String {
            self.projectType = value
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProjectApps : Tea.TeaModel {
            public class ApplicationAccessIds : Tea.TeaModel {
                public var applicationAccessId: String?

                public var applicationAccessSecret: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applicationAccessId != nil {
                        map["applicationAccessId"] = self.applicationAccessId!
                    }
                    if self.applicationAccessSecret != nil {
                        map["applicationAccessSecret"] = self.applicationAccessSecret!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["applicationAccessId"] as? String {
                        self.applicationAccessId = value
                    }
                    if let value = dict["applicationAccessSecret"] as? String {
                        self.applicationAccessSecret = value
                    }
                }
            }
            public var applicationAccessIds: [CreateProjectResponseBody.Data.ProjectApps.ApplicationAccessIds]?

            public var id: String?

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
                if self.applicationAccessIds != nil {
                    var tmp : [Any] = []
                    for k in self.applicationAccessIds! {
                        tmp.append(k.toMap())
                    }
                    map["ApplicationAccessIds"] = tmp
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApplicationAccessIds"] as? [Any?] {
                    var tmp : [CreateProjectResponseBody.Data.ProjectApps.ApplicationAccessIds] = []
                    for v in value {
                        if v != nil {
                            var model = CreateProjectResponseBody.Data.ProjectApps.ApplicationAccessIds()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.applicationAccessIds = tmp
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["ProjectId"] as? String {
                    self.projectId = value
                }
            }
        }
        public class ProjectSDK : Tea.TeaModel {
            public var createTime: String?

            public var demoUrl: String?

            public var deployMode: String?

            public var developLanguage: String?

            public var docUrl: String?

            public var sdkName: String?

            public var sdkUrl: String?

            public var sdkVersion: String?

            public override init() {
                super.init()
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
                if self.demoUrl != nil {
                    map["DemoUrl"] = self.demoUrl!
                }
                if self.deployMode != nil {
                    map["DeployMode"] = self.deployMode!
                }
                if self.developLanguage != nil {
                    map["DevelopLanguage"] = self.developLanguage!
                }
                if self.docUrl != nil {
                    map["DocUrl"] = self.docUrl!
                }
                if self.sdkName != nil {
                    map["SdkName"] = self.sdkName!
                }
                if self.sdkUrl != nil {
                    map["SdkUrl"] = self.sdkUrl!
                }
                if self.sdkVersion != nil {
                    map["SdkVersion"] = self.sdkVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DemoUrl"] as? String {
                    self.demoUrl = value
                }
                if let value = dict["DeployMode"] as? String {
                    self.deployMode = value
                }
                if let value = dict["DevelopLanguage"] as? String {
                    self.developLanguage = value
                }
                if let value = dict["DocUrl"] as? String {
                    self.docUrl = value
                }
                if let value = dict["SdkName"] as? String {
                    self.sdkName = value
                }
                if let value = dict["SdkUrl"] as? String {
                    self.sdkUrl = value
                }
                if let value = dict["SdkVersion"] as? String {
                    self.sdkVersion = value
                }
            }
        }
        public var createTime: String?

        public var projectApps: [CreateProjectResponseBody.Data.ProjectApps]?

        public var projectId: String?

        public var projectName: String?

        public var projectSDK: [CreateProjectResponseBody.Data.ProjectSDK]?

        public var projectType: String?

        public override init() {
            super.init()
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
            if self.projectApps != nil {
                var tmp : [Any] = []
                for k in self.projectApps! {
                    tmp.append(k.toMap())
                }
                map["ProjectApps"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectSDK != nil {
                var tmp : [Any] = []
                for k in self.projectSDK! {
                    tmp.append(k.toMap())
                }
                map["ProjectSDK"] = tmp
            }
            if self.projectType != nil {
                map["ProjectType"] = self.projectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ProjectApps"] as? [Any?] {
                var tmp : [CreateProjectResponseBody.Data.ProjectApps] = []
                for v in value {
                    if v != nil {
                        var model = CreateProjectResponseBody.Data.ProjectApps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.projectApps = tmp
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["ProjectSDK"] as? [Any?] {
                var tmp : [CreateProjectResponseBody.Data.ProjectSDK] = []
                for v in value {
                    if v != nil {
                        var model = CreateProjectResponseBody.Data.ProjectSDK()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.projectSDK = tmp
            }
            if let value = dict["ProjectType"] as? String {
                self.projectType = value
            }
        }
    }
    public var data: CreateProjectResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateProjectResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

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
            var model = CreateProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherChineseCompositionTutoringWorkflowRunRequest : Tea.TeaModel {
    public var essayOutline: String?

    public var essayRequirements: String?

    public var essayTopic: String?

    public var essayType: String?

    public var essayWordCount: Int64?

    public var grade: Int64?

    public var responseMode: String?

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
        if self.essayOutline != nil {
            map["essayOutline"] = self.essayOutline!
        }
        if self.essayRequirements != nil {
            map["essayRequirements"] = self.essayRequirements!
        }
        if self.essayTopic != nil {
            map["essayTopic"] = self.essayTopic!
        }
        if self.essayType != nil {
            map["essayType"] = self.essayType!
        }
        if self.essayWordCount != nil {
            map["essayWordCount"] = self.essayWordCount!
        }
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.responseMode != nil {
            map["responseMode"] = self.responseMode!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["essayOutline"] as? String {
            self.essayOutline = value
        }
        if let value = dict["essayRequirements"] as? String {
            self.essayRequirements = value
        }
        if let value = dict["essayTopic"] as? String {
            self.essayTopic = value
        }
        if let value = dict["essayType"] as? String {
            self.essayType = value
        }
        if let value = dict["essayWordCount"] as? Int64 {
            self.essayWordCount = value
        }
        if let value = dict["grade"] as? Int64 {
            self.grade = value
        }
        if let value = dict["responseMode"] as? String {
            self.responseMode = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherChineseCompositionTutoringWorkflowRunResponseBody : Tea.TeaModel {
    public var content: String?

    public var event: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.event != nil {
            map["event"] = self.event!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["event"] as? String {
            self.event = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExecuteAITeacherChineseCompositionTutoringWorkflowRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherChineseCompositionTutoringWorkflowRunResponseBody?

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
            var model = ExecuteAITeacherChineseCompositionTutoringWorkflowRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherEnglishCompositionTutoringWorkflowRunRequest : Tea.TeaModel {
    public var essayOutline: String?

    public var essayRequirements: String?

    public var essayTopic: String?

    public var essayType: String?

    public var essayWordCount: Int64?

    public var grade: Int64?

    public var responseMode: String?

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
        if self.essayOutline != nil {
            map["essayOutline"] = self.essayOutline!
        }
        if self.essayRequirements != nil {
            map["essayRequirements"] = self.essayRequirements!
        }
        if self.essayTopic != nil {
            map["essayTopic"] = self.essayTopic!
        }
        if self.essayType != nil {
            map["essayType"] = self.essayType!
        }
        if self.essayWordCount != nil {
            map["essayWordCount"] = self.essayWordCount!
        }
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.responseMode != nil {
            map["responseMode"] = self.responseMode!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["essayOutline"] as? String {
            self.essayOutline = value
        }
        if let value = dict["essayRequirements"] as? String {
            self.essayRequirements = value
        }
        if let value = dict["essayTopic"] as? String {
            self.essayTopic = value
        }
        if let value = dict["essayType"] as? String {
            self.essayType = value
        }
        if let value = dict["essayWordCount"] as? Int64 {
            self.essayWordCount = value
        }
        if let value = dict["grade"] as? Int64 {
            self.grade = value
        }
        if let value = dict["responseMode"] as? String {
            self.responseMode = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherEnglishCompositionTutoringWorkflowRunResponseBody : Tea.TeaModel {
    public var content: String?

    public var event: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.event != nil {
            map["event"] = self.event!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["event"] as? String {
            self.event = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExecuteAITeacherEnglishCompositionTutoringWorkflowRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherEnglishCompositionTutoringWorkflowRunResponseBody?

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
            var model = ExecuteAITeacherEnglishCompositionTutoringWorkflowRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherEnglishParaphraseChatMessageRequest : Tea.TeaModel {
    public var chatId: String?

    public var content: String?

    public var grade: Int64?

    public var questionId: String?

    public var questionInfo: String?

    public var responseMode: String?

    public var userAnswer: String?

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
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.questionId != nil {
            map["questionId"] = self.questionId!
        }
        if self.questionInfo != nil {
            map["questionInfo"] = self.questionInfo!
        }
        if self.responseMode != nil {
            map["responseMode"] = self.responseMode!
        }
        if self.userAnswer != nil {
            map["userAnswer"] = self.userAnswer!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["grade"] as? Int64 {
            self.grade = value
        }
        if let value = dict["questionId"] as? String {
            self.questionId = value
        }
        if let value = dict["questionInfo"] as? String {
            self.questionInfo = value
        }
        if let value = dict["responseMode"] as? String {
            self.responseMode = value
        }
        if let value = dict["userAnswer"] as? String {
            self.userAnswer = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherEnglishParaphraseChatMessageResponseBody : Tea.TeaModel {
    public var content: String?

    public var event: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.event != nil {
            map["event"] = self.event!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["event"] as? String {
            self.event = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExecuteAITeacherEnglishParaphraseChatMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherEnglishParaphraseChatMessageResponseBody?

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
            var model = ExecuteAITeacherEnglishParaphraseChatMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherExpansionDialogueRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["assistantTranslate"] as? String {
                self.assistantTranslate = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["isOffTopicControl"] as? Bool {
                self.isOffTopicControl = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class RoleInfo : Tea.TeaModel {
        public var assistant: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public var background: String?

    public var dialogueTasks: [ExecuteAITeacherExpansionDialogueRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [ExecuteAITeacherExpansionDialogueRequest.Records]?

    public var roleInfo: ExecuteAITeacherExpansionDialogueRequest.RoleInfo?

    public var startSentence: String?

    public var topic: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.background != nil {
            map["background"] = self.background!
        }
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.roleInfo != nil {
            map["roleInfo"] = self.roleInfo?.toMap()
        }
        if self.startSentence != nil {
            map["startSentence"] = self.startSentence!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["background"] as? String {
            self.background = value
        }
        if let value = dict["dialogueTasks"] as? [Any?] {
            var tmp : [ExecuteAITeacherExpansionDialogueRequest.DialogueTasks] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherExpansionDialogueRequest.DialogueTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dialogueTasks = tmp
        }
        if let value = dict["languageCode"] as? String {
            self.languageCode = value
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [ExecuteAITeacherExpansionDialogueRequest.Records] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherExpansionDialogueRequest.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["roleInfo"] as? [String: Any?] {
            var model = ExecuteAITeacherExpansionDialogueRequest.RoleInfo()
            model.fromMap(value)
            self.roleInfo = model
        }
        if let value = dict["startSentence"] as? String {
            self.startSentence = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherExpansionDialogueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chineseResult: String?

        public var englishResult: String?

        public var isFinish: Bool?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var questionIndex: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chineseResult != nil {
                map["chineseResult"] = self.chineseResult!
            }
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            if self.isFinish != nil {
                map["isFinish"] = self.isFinish!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.questionIndex != nil {
                map["questionIndex"] = self.questionIndex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chineseResult"] as? String {
                self.chineseResult = value
            }
            if let value = dict["englishResult"] as? String {
                self.englishResult = value
            }
            if let value = dict["isFinish"] as? Bool {
                self.isFinish = value
            }
            if let value = dict["isOffTopicControl"] as? Bool {
                self.isOffTopicControl = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["questionIndex"] as? Int32 {
                self.questionIndex = value
            }
        }
    }
    public var data: ExecuteAITeacherExpansionDialogueResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteAITeacherExpansionDialogueResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteAITeacherExpansionDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherExpansionDialogueResponseBody?

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
            var model = ExecuteAITeacherExpansionDialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherExpansionDialogueRefineRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["assistantTranslate"] as? String {
                self.assistantTranslate = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["isOffTopicControl"] as? Bool {
                self.isOffTopicControl = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class RoleInfo : Tea.TeaModel {
        public var assistant: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public var background: String?

    public var dialogueTasks: [ExecuteAITeacherExpansionDialogueRefineRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [ExecuteAITeacherExpansionDialogueRefineRequest.Records]?

    public var roleInfo: ExecuteAITeacherExpansionDialogueRefineRequest.RoleInfo?

    public var startSentence: String?

    public var topic: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.background != nil {
            map["background"] = self.background!
        }
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.roleInfo != nil {
            map["roleInfo"] = self.roleInfo?.toMap()
        }
        if self.startSentence != nil {
            map["startSentence"] = self.startSentence!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["background"] as? String {
            self.background = value
        }
        if let value = dict["dialogueTasks"] as? [Any?] {
            var tmp : [ExecuteAITeacherExpansionDialogueRefineRequest.DialogueTasks] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherExpansionDialogueRefineRequest.DialogueTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dialogueTasks = tmp
        }
        if let value = dict["languageCode"] as? String {
            self.languageCode = value
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [ExecuteAITeacherExpansionDialogueRefineRequest.Records] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherExpansionDialogueRefineRequest.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["roleInfo"] as? [String: Any?] {
            var model = ExecuteAITeacherExpansionDialogueRefineRequest.RoleInfo()
            model.fromMap(value)
            self.roleInfo = model
        }
        if let value = dict["startSentence"] as? String {
            self.startSentence = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherExpansionDialogueRefineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? String {
                self.result = value
            }
        }
    }
    public var data: ExecuteAITeacherExpansionDialogueRefineResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteAITeacherExpansionDialogueRefineResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteAITeacherExpansionDialogueRefineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherExpansionDialogueRefineResponseBody?

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
            var model = ExecuteAITeacherExpansionDialogueRefineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherExpansionDialogueTranslateRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["assistantTranslate"] as? String {
                self.assistantTranslate = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["isOffTopicControl"] as? Bool {
                self.isOffTopicControl = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class RoleInfo : Tea.TeaModel {
        public var assistant: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public var background: String?

    public var dialogueTasks: [ExecuteAITeacherExpansionDialogueTranslateRequest.DialogueTasks]?

    public var records: [ExecuteAITeacherExpansionDialogueTranslateRequest.Records]?

    public var roleInfo: ExecuteAITeacherExpansionDialogueTranslateRequest.RoleInfo?

    public var startSentence: String?

    public var topic: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.background != nil {
            map["background"] = self.background!
        }
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.roleInfo != nil {
            map["roleInfo"] = self.roleInfo?.toMap()
        }
        if self.startSentence != nil {
            map["startSentence"] = self.startSentence!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["background"] as? String {
            self.background = value
        }
        if let value = dict["dialogueTasks"] as? [Any?] {
            var tmp : [ExecuteAITeacherExpansionDialogueTranslateRequest.DialogueTasks] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherExpansionDialogueTranslateRequest.DialogueTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dialogueTasks = tmp
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [ExecuteAITeacherExpansionDialogueTranslateRequest.Records] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherExpansionDialogueTranslateRequest.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["roleInfo"] as? [String: Any?] {
            var model = ExecuteAITeacherExpansionDialogueTranslateRequest.RoleInfo()
            model.fromMap(value)
            self.roleInfo = model
        }
        if let value = dict["startSentence"] as? String {
            self.startSentence = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherExpansionDialogueTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? String {
                self.result = value
            }
        }
    }
    public var data: ExecuteAITeacherExpansionDialogueTranslateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteAITeacherExpansionDialogueTranslateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteAITeacherExpansionDialogueTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherExpansionDialogueTranslateResponseBody?

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
            var model = ExecuteAITeacherExpansionDialogueTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherGrammarCheckRequest : Tea.TeaModel {
    public var content: String?

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
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherGrammarCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var analysis: String?

        public var correction: String?

        public var correctionStatus: String?

        public var errorReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysis != nil {
                map["analysis"] = self.analysis!
            }
            if self.correction != nil {
                map["correction"] = self.correction!
            }
            if self.correctionStatus != nil {
                map["correctionStatus"] = self.correctionStatus!
            }
            if self.errorReason != nil {
                map["errorReason"] = self.errorReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analysis"] as? String {
                self.analysis = value
            }
            if let value = dict["correction"] as? String {
                self.correction = value
            }
            if let value = dict["correctionStatus"] as? String {
                self.correctionStatus = value
            }
            if let value = dict["errorReason"] as? String {
                self.errorReason = value
            }
        }
    }
    public var data: ExecuteAITeacherGrammarCheckResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteAITeacherGrammarCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteAITeacherGrammarCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherGrammarCheckResponseBody?

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
            var model = ExecuteAITeacherGrammarCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherSyncDialogueRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["assistantTranslate"] as? String {
                self.assistantTranslate = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["isOffTopicControl"] as? Bool {
                self.isOffTopicControl = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public var dialogueTasks: [ExecuteAITeacherSyncDialogueRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [ExecuteAITeacherSyncDialogueRequest.Records]?

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
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dialogueTasks"] as? [Any?] {
            var tmp : [ExecuteAITeacherSyncDialogueRequest.DialogueTasks] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherSyncDialogueRequest.DialogueTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dialogueTasks = tmp
        }
        if let value = dict["languageCode"] as? String {
            self.languageCode = value
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [ExecuteAITeacherSyncDialogueRequest.Records] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherSyncDialogueRequest.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherSyncDialogueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var englishResult: String?

        public var isFinish: Bool?

        public var isOnTopic: Bool?

        public var questionIndex: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            if self.isFinish != nil {
                map["isFinish"] = self.isFinish!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.questionIndex != nil {
                map["questionIndex"] = self.questionIndex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["englishResult"] as? String {
                self.englishResult = value
            }
            if let value = dict["isFinish"] as? Bool {
                self.isFinish = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["questionIndex"] as? Int32 {
                self.questionIndex = value
            }
        }
    }
    public var data: ExecuteAITeacherSyncDialogueResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteAITeacherSyncDialogueResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteAITeacherSyncDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherSyncDialogueResponseBody?

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
            var model = ExecuteAITeacherSyncDialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteAITeacherSyncDialogueTranslateRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["assistantTranslate"] as? String {
                self.assistantTranslate = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["isOffTopicControl"] as? Bool {
                self.isOffTopicControl = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public var dialogueTasks: [ExecuteAITeacherSyncDialogueTranslateRequest.DialogueTasks]?

    public var records: [ExecuteAITeacherSyncDialogueTranslateRequest.Records]?

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
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dialogueTasks"] as? [Any?] {
            var tmp : [ExecuteAITeacherSyncDialogueTranslateRequest.DialogueTasks] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherSyncDialogueTranslateRequest.DialogueTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dialogueTasks = tmp
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [ExecuteAITeacherSyncDialogueTranslateRequest.Records] = []
            for v in value {
                if v != nil {
                    var model = ExecuteAITeacherSyncDialogueTranslateRequest.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class ExecuteAITeacherSyncDialogueTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? String {
                self.result = value
            }
        }
    }
    public var data: ExecuteAITeacherSyncDialogueTranslateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteAITeacherSyncDialogueTranslateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteAITeacherSyncDialogueTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteAITeacherSyncDialogueTranslateResponseBody?

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
            var model = ExecuteAITeacherSyncDialogueTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantDialogueRequest : Tea.TeaModel {
    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public var userMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.userMessage != nil {
            map["userMessage"] = self.userMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
        if let value = dict["userMessage"] as? String {
            self.userMessage = value
        }
    }
}

public class ExecuteTextbookAssistantDialogueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var chineseResult: String?

            public var englishResult: String?

            public var isFinish: Bool?

            public var isTaskCompleted: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chineseResult != nil {
                    map["chineseResult"] = self.chineseResult!
                }
                if self.englishResult != nil {
                    map["englishResult"] = self.englishResult!
                }
                if self.isFinish != nil {
                    map["isFinish"] = self.isFinish!
                }
                if self.isTaskCompleted != nil {
                    map["isTaskCompleted"] = self.isTaskCompleted!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chineseResult"] as? String {
                    self.chineseResult = value
                }
                if let value = dict["englishResult"] as? String {
                    self.englishResult = value
                }
                if let value = dict["isFinish"] as? Bool {
                    self.isFinish = value
                }
                if let value = dict["isTaskCompleted"] as? Bool {
                    self.isTaskCompleted = value
                }
            }
        }
        public var assistant: String?

        public var chatId: String?

        public var result: ExecuteTextbookAssistantDialogueResponseBody.Data.Result?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.chatId != nil {
                map["chatId"] = self.chatId!
            }
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["chatId"] as? String {
                self.chatId = value
            }
            if let value = dict["result"] as? [String: Any?] {
                var model = ExecuteTextbookAssistantDialogueResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public var data: ExecuteTextbookAssistantDialogueResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: String?

    public var requestId: String?

    public var success: String?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantDialogueResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class ExecuteTextbookAssistantDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantDialogueResponseBody?

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
            var model = ExecuteTextbookAssistantDialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantDifficultyRequest : Tea.TeaModel {
    public var action: String?

    public var assistant: String?

    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public override init() {
        super.init()
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
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["assistant"] as? String {
            self.assistant = value
        }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
    }
}

public class ExecuteTextbookAssistantDifficultyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var result: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.result != nil {
                    map["result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["result"] as? String {
                    self.result = value
                }
            }
        }
        public var result: ExecuteTextbookAssistantDifficultyResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? [String: Any?] {
                var model = ExecuteTextbookAssistantDifficultyResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantDifficultyResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantDifficultyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteTextbookAssistantDifficultyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantDifficultyResponseBody?

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
            var model = ExecuteTextbookAssistantDifficultyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantGrammarCheckRequest : Tea.TeaModel {
    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.user != nil {
            map["user"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
        if let value = dict["user"] as? String {
            self.user = value
        }
    }
}

public class ExecuteTextbookAssistantGrammarCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var analysis: String?

            public var correction: String?

            public var correctionStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.analysis != nil {
                    map["analysis"] = self.analysis!
                }
                if self.correction != nil {
                    map["correction"] = self.correction!
                }
                if self.correctionStatus != nil {
                    map["correctionStatus"] = self.correctionStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["analysis"] as? String {
                    self.analysis = value
                }
                if let value = dict["correction"] as? String {
                    self.correction = value
                }
                if let value = dict["correctionStatus"] as? String {
                    self.correctionStatus = value
                }
            }
        }
        public var result: ExecuteTextbookAssistantGrammarCheckResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? [String: Any?] {
                var model = ExecuteTextbookAssistantGrammarCheckResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantGrammarCheckResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantGrammarCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteTextbookAssistantGrammarCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantGrammarCheckResponseBody?

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
            var model = ExecuteTextbookAssistantGrammarCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantRefineByContextRequest : Tea.TeaModel {
    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.user != nil {
            map["user"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
        if let value = dict["user"] as? String {
            self.user = value
        }
    }
}

public class ExecuteTextbookAssistantRefineByContextResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var result: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.result != nil {
                    map["result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["result"] as? String {
                    self.result = value
                }
            }
        }
        public var result: ExecuteTextbookAssistantRefineByContextResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? [String: Any?] {
                var model = ExecuteTextbookAssistantRefineByContextResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantRefineByContextResponseBody.Data?

    public var errCode: String?

    public var errMessage: Int32?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantRefineByContextResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? Int32 {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteTextbookAssistantRefineByContextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantRefineByContextResponseBody?

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
            var model = ExecuteTextbookAssistantRefineByContextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantRetryConversationRequest : Tea.TeaModel {
    public var assistant: String?

    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["assistant"] as? String {
            self.assistant = value
        }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
    }
}

public class ExecuteTextbookAssistantRetryConversationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var chineseResult: String?

            public var englishResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chineseResult != nil {
                    map["chineseResult"] = self.chineseResult!
                }
                if self.englishResult != nil {
                    map["englishResult"] = self.englishResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chineseResult"] as? String {
                    self.chineseResult = value
                }
                if let value = dict["englishResult"] as? String {
                    self.englishResult = value
                }
            }
        }
        public var assistant: String?

        public var chatId: String?

        public var result: ExecuteTextbookAssistantRetryConversationResponseBody.Data.Result?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.chatId != nil {
                map["chatId"] = self.chatId!
            }
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["chatId"] as? String {
                self.chatId = value
            }
            if let value = dict["result"] as? [String: Any?] {
                var model = ExecuteTextbookAssistantRetryConversationResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public var data: ExecuteTextbookAssistantRetryConversationResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantRetryConversationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteTextbookAssistantRetryConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantRetryConversationResponseBody?

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
            var model = ExecuteTextbookAssistantRetryConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantSseDialogueRequest : Tea.TeaModel {
    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public var userMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.userMessage != nil {
            map["userMessage"] = self.userMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
        if let value = dict["userMessage"] as? String {
            self.userMessage = value
        }
    }
}

public class ExecuteTextbookAssistantSseDialogueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var englishResult: String?

        public var isFinish: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            if self.isFinish != nil {
                map["isFinish"] = self.isFinish!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["englishResult"] as? String {
                self.englishResult = value
            }
            if let value = dict["isFinish"] as? Bool {
                self.isFinish = value
            }
        }
    }
    public var assistant: String?

    public var chatId: String?

    public var data: ExecuteTextbookAssistantSseDialogueResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var user: String?

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
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.user != nil {
            map["user"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["assistant"] as? String {
            self.assistant = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantSseDialogueResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["user"] as? String {
            self.user = value
        }
    }
}

public class ExecuteTextbookAssistantSseDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantSseDialogueResponseBody?

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
            var model = ExecuteTextbookAssistantSseDialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantStartConversationRequest : Tea.TeaModel {
    public var articleId: String?

    public var authToken: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.articleId != nil {
            map["articleId"] = self.articleId!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["articleId"] as? String {
            self.articleId = value
        }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
    }
}

public class ExecuteTextbookAssistantStartConversationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var chineseResult: String?

            public var englishResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chineseResult != nil {
                    map["chineseResult"] = self.chineseResult!
                }
                if self.englishResult != nil {
                    map["englishResult"] = self.englishResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chineseResult"] as? String {
                    self.chineseResult = value
                }
                if let value = dict["englishResult"] as? String {
                    self.englishResult = value
                }
            }
        }
        public var assistant: String?

        public var chatId: String?

        public var result: ExecuteTextbookAssistantStartConversationResponseBody.Data.Result?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.chatId != nil {
                map["chatId"] = self.chatId!
            }
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["chatId"] as? String {
                self.chatId = value
            }
            if let value = dict["result"] as? [String: Any?] {
                var model = ExecuteTextbookAssistantStartConversationResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public var data: ExecuteTextbookAssistantStartConversationResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantStartConversationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteTextbookAssistantStartConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantStartConversationResponseBody?

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
            var model = ExecuteTextbookAssistantStartConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantSuggestionRequest : Tea.TeaModel {
    public var assistant: String?

    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["assistant"] as? String {
            self.assistant = value
        }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
    }
}

public class ExecuteTextbookAssistantSuggestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var chineseResult: String?

            public var englishResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chineseResult != nil {
                    map["chineseResult"] = self.chineseResult!
                }
                if self.englishResult != nil {
                    map["englishResult"] = self.englishResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chineseResult"] as? String {
                    self.chineseResult = value
                }
                if let value = dict["englishResult"] as? String {
                    self.englishResult = value
                }
            }
        }
        public var result: ExecuteTextbookAssistantSuggestionResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? [String: Any?] {
                var model = ExecuteTextbookAssistantSuggestionResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantSuggestionResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpstatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpstatusCode != nil {
            map["httpstatusCode"] = self.httpstatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantSuggestionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpstatusCode"] as? Int32 {
            self.httpstatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteTextbookAssistantSuggestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantSuggestionResponseBody?

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
            var model = ExecuteTextbookAssistantSuggestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTextbookAssistantTranslateRequest : Tea.TeaModel {
    public var assistant: String?

    public var authToken: String?

    public var chatId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assistant != nil {
            map["assistant"] = self.assistant!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["assistant"] as? String {
            self.assistant = value
        }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
    }
}

public class ExecuteTextbookAssistantTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var result: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.result != nil {
                    map["result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["result"] as? String {
                    self.result = value
                }
            }
        }
        public var result: ExecuteTextbookAssistantTranslateResponseBody.Data.Result?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? [String: Any?] {
                var model = ExecuteTextbookAssistantTranslateResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
        }
    }
    public var data: ExecuteTextbookAssistantTranslateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ExecuteTextbookAssistantTranslateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteTextbookAssistantTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTextbookAssistantTranslateResponseBody?

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
            var model = ExecuteTextbookAssistantTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAITeacherExpansionDialogueSuggestionRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["assistantTranslate"] as? String {
                self.assistantTranslate = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["isOffTopicControl"] as? Bool {
                self.isOffTopicControl = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class RoleInfo : Tea.TeaModel {
        public var assistant: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public var background: String?

    public var dialogueTasks: [GetAITeacherExpansionDialogueSuggestionRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [GetAITeacherExpansionDialogueSuggestionRequest.Records]?

    public var roleInfo: GetAITeacherExpansionDialogueSuggestionRequest.RoleInfo?

    public var startSentence: String?

    public var topic: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.background != nil {
            map["background"] = self.background!
        }
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.roleInfo != nil {
            map["roleInfo"] = self.roleInfo?.toMap()
        }
        if self.startSentence != nil {
            map["startSentence"] = self.startSentence!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["background"] as? String {
            self.background = value
        }
        if let value = dict["dialogueTasks"] as? [Any?] {
            var tmp : [GetAITeacherExpansionDialogueSuggestionRequest.DialogueTasks] = []
            for v in value {
                if v != nil {
                    var model = GetAITeacherExpansionDialogueSuggestionRequest.DialogueTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dialogueTasks = tmp
        }
        if let value = dict["languageCode"] as? String {
            self.languageCode = value
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [GetAITeacherExpansionDialogueSuggestionRequest.Records] = []
            for v in value {
                if v != nil {
                    var model = GetAITeacherExpansionDialogueSuggestionRequest.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["roleInfo"] as? [String: Any?] {
            var model = GetAITeacherExpansionDialogueSuggestionRequest.RoleInfo()
            model.fromMap(value)
            self.roleInfo = model
        }
        if let value = dict["startSentence"] as? String {
            self.startSentence = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GetAITeacherExpansionDialogueSuggestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chineseResult: String?

        public var englishResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chineseResult != nil {
                map["chineseResult"] = self.chineseResult!
            }
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chineseResult"] as? String {
                self.chineseResult = value
            }
            if let value = dict["englishResult"] as? String {
                self.englishResult = value
            }
        }
    }
    public var data: GetAITeacherExpansionDialogueSuggestionResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAITeacherExpansionDialogueSuggestionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAITeacherExpansionDialogueSuggestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAITeacherExpansionDialogueSuggestionResponseBody?

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
            var model = GetAITeacherExpansionDialogueSuggestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAITeacherSyncDialogueSuggestionRequest : Tea.TeaModel {
    public class DialogueTasks : Tea.TeaModel {
        public var assistant: String?

        public var assistantTranslate: String?

        public var order: Int32?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assistant != nil {
                map["assistant"] = self.assistant!
            }
            if self.assistantTranslate != nil {
                map["assistantTranslate"] = self.assistantTranslate!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assistant"] as? String {
                self.assistant = value
            }
            if let value = dict["assistantTranslate"] as? String {
                self.assistantTranslate = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var content: String?

        public var isOffTopicControl: Bool?

        public var isOnTopic: Bool?

        public var order: Int32?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.isOffTopicControl != nil {
                map["isOffTopicControl"] = self.isOffTopicControl!
            }
            if self.isOnTopic != nil {
                map["isOnTopic"] = self.isOnTopic!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["isOffTopicControl"] as? Bool {
                self.isOffTopicControl = value
            }
            if let value = dict["isOnTopic"] as? Bool {
                self.isOnTopic = value
            }
            if let value = dict["order"] as? Int32 {
                self.order = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public var dialogueTasks: [GetAITeacherSyncDialogueSuggestionRequest.DialogueTasks]?

    public var languageCode: String?

    public var records: [GetAITeacherSyncDialogueSuggestionRequest.Records]?

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
        if self.dialogueTasks != nil {
            var tmp : [Any] = []
            for k in self.dialogueTasks! {
                tmp.append(k.toMap())
            }
            map["dialogueTasks"] = tmp
        }
        if self.languageCode != nil {
            map["languageCode"] = self.languageCode!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dialogueTasks"] as? [Any?] {
            var tmp : [GetAITeacherSyncDialogueSuggestionRequest.DialogueTasks] = []
            for v in value {
                if v != nil {
                    var model = GetAITeacherSyncDialogueSuggestionRequest.DialogueTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dialogueTasks = tmp
        }
        if let value = dict["languageCode"] as? String {
            self.languageCode = value
        }
        if let value = dict["records"] as? [Any?] {
            var tmp : [GetAITeacherSyncDialogueSuggestionRequest.Records] = []
            for v in value {
                if v != nil {
                    var model = GetAITeacherSyncDialogueSuggestionRequest.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GetAITeacherSyncDialogueSuggestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chineseResult: String?

        public var englishResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chineseResult != nil {
                map["chineseResult"] = self.chineseResult!
            }
            if self.englishResult != nil {
                map["englishResult"] = self.englishResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chineseResult"] as? String {
                self.chineseResult = value
            }
            if let value = dict["englishResult"] as? String {
                self.englishResult = value
            }
        }
    }
    public var data: GetAITeacherSyncDialogueSuggestionResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAITeacherSyncDialogueSuggestionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAITeacherSyncDialogueSuggestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAITeacherSyncDialogueSuggestionResponseBody?

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
            var model = GetAITeacherSyncDialogueSuggestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTextbookAssistantTokenRequest : Tea.TeaModel {
    public var deviceId: String?

    public var model: String?

    public override init() {
        super.init()
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
            map["deviceId"] = self.deviceId!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
    }
}

public class GetTextbookAssistantTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authToken: String?

        public var expire: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authToken != nil {
                map["authToken"] = self.authToken!
            }
            if self.expire != nil {
                map["expire"] = self.expire!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["authToken"] as? String {
                self.authToken = value
            }
            if let value = dict["expire"] as? Int32 {
                self.expire = value
            }
        }
    }
    public var data: GetTextbookAssistantTokenResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTextbookAssistantTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTextbookAssistantTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTextbookAssistantTokenResponseBody?

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
            var model = GetTextbookAssistantTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTextbookAssistantArticleDetailsRequest : Tea.TeaModel {
    public var articleIdList: [String]?

    public var authToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.articleIdList != nil {
            map["articleIdList"] = self.articleIdList!
        }
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["articleIdList"] as? [String] {
            self.articleIdList = value
        }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
    }
}

public class ListTextbookAssistantArticleDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QuestionList : Tea.TeaModel {
            public var answer: String?

            public var question: String?

            public var questionTranslate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answer != nil {
                    map["answer"] = self.answer!
                }
                if self.question != nil {
                    map["question"] = self.question!
                }
                if self.questionTranslate != nil {
                    map["questionTranslate"] = self.questionTranslate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answer"] as? String {
                    self.answer = value
                }
                if let value = dict["question"] as? String {
                    self.question = value
                }
                if let value = dict["questionTranslate"] as? String {
                    self.questionTranslate = value
                }
            }
        }
        public class SceneList : Tea.TeaModel {
            public var scene: String?

            public var sceneId: String?

            public var sceneImageList: [String]?

            public var sceneTranslate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.scene != nil {
                    map["scene"] = self.scene!
                }
                if self.sceneId != nil {
                    map["sceneId"] = self.sceneId!
                }
                if self.sceneImageList != nil {
                    map["sceneImageList"] = self.sceneImageList!
                }
                if self.sceneTranslate != nil {
                    map["sceneTranslate"] = self.sceneTranslate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["scene"] as? String {
                    self.scene = value
                }
                if let value = dict["sceneId"] as? String {
                    self.sceneId = value
                }
                if let value = dict["sceneImageList"] as? [String] {
                    self.sceneImageList = value
                }
                if let value = dict["sceneTranslate"] as? String {
                    self.sceneTranslate = value
                }
            }
        }
        public class SentenceList : Tea.TeaModel {
            public var sentenceAnalysis: String?

            public var sentenceId: String?

            public var sentenceText: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sentenceAnalysis != nil {
                    map["sentenceAnalysis"] = self.sentenceAnalysis!
                }
                if self.sentenceId != nil {
                    map["sentenceId"] = self.sentenceId!
                }
                if self.sentenceText != nil {
                    map["sentenceText"] = self.sentenceText!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["sentenceAnalysis"] as? String {
                    self.sentenceAnalysis = value
                }
                if let value = dict["sentenceId"] as? String {
                    self.sentenceId = value
                }
                if let value = dict["sentenceText"] as? String {
                    self.sentenceText = value
                }
            }
        }
        public class Theme : Tea.TeaModel {
            public var themeImageList: [String]?

            public var themeName: String?

            public var themeTranslate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.themeImageList != nil {
                    map["themeImageList"] = self.themeImageList!
                }
                if self.themeName != nil {
                    map["themeName"] = self.themeName!
                }
                if self.themeTranslate != nil {
                    map["themeTranslate"] = self.themeTranslate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["themeImageList"] as? [String] {
                    self.themeImageList = value
                }
                if let value = dict["themeName"] as? String {
                    self.themeName = value
                }
                if let value = dict["themeTranslate"] as? String {
                    self.themeTranslate = value
                }
            }
        }
        public class Topic : Tea.TeaModel {
            public var topicImageList: [String]?

            public var topicName: String?

            public var topicTranslate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.topicImageList != nil {
                    map["topicImageList"] = self.topicImageList!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                if self.topicTranslate != nil {
                    map["topicTranslate"] = self.topicTranslate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["topicImageList"] as? [String] {
                    self.topicImageList = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["topicTranslate"] as? String {
                    self.topicTranslate = value
                }
            }
        }
        public class WordList : Tea.TeaModel {
            public var wordAnalysis: String?

            public var wordId: String?

            public var wordText: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.wordAnalysis != nil {
                    map["wordAnalysis"] = self.wordAnalysis!
                }
                if self.wordId != nil {
                    map["wordId"] = self.wordId!
                }
                if self.wordText != nil {
                    map["wordText"] = self.wordText!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["wordAnalysis"] as? String {
                    self.wordAnalysis = value
                }
                if let value = dict["wordId"] as? String {
                    self.wordId = value
                }
                if let value = dict["wordText"] as? String {
                    self.wordText = value
                }
            }
        }
        public var articleId: String?

        public var questionList: [ListTextbookAssistantArticleDetailsResponseBody.Data.QuestionList]?

        public var sceneList: [ListTextbookAssistantArticleDetailsResponseBody.Data.SceneList]?

        public var sentenceList: [ListTextbookAssistantArticleDetailsResponseBody.Data.SentenceList]?

        public var target: String?

        public var theme: ListTextbookAssistantArticleDetailsResponseBody.Data.Theme?

        public var topic: ListTextbookAssistantArticleDetailsResponseBody.Data.Topic?

        public var wordList: [ListTextbookAssistantArticleDetailsResponseBody.Data.WordList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.theme?.validate()
            try self.topic?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.articleId != nil {
                map["articleId"] = self.articleId!
            }
            if self.questionList != nil {
                var tmp : [Any] = []
                for k in self.questionList! {
                    tmp.append(k.toMap())
                }
                map["questionList"] = tmp
            }
            if self.sceneList != nil {
                var tmp : [Any] = []
                for k in self.sceneList! {
                    tmp.append(k.toMap())
                }
                map["sceneList"] = tmp
            }
            if self.sentenceList != nil {
                var tmp : [Any] = []
                for k in self.sentenceList! {
                    tmp.append(k.toMap())
                }
                map["sentenceList"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            if self.theme != nil {
                map["theme"] = self.theme?.toMap()
            }
            if self.topic != nil {
                map["topic"] = self.topic?.toMap()
            }
            if self.wordList != nil {
                var tmp : [Any] = []
                for k in self.wordList! {
                    tmp.append(k.toMap())
                }
                map["wordList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["articleId"] as? String {
                self.articleId = value
            }
            if let value = dict["questionList"] as? [Any?] {
                var tmp : [ListTextbookAssistantArticleDetailsResponseBody.Data.QuestionList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantArticleDetailsResponseBody.Data.QuestionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.questionList = tmp
            }
            if let value = dict["sceneList"] as? [Any?] {
                var tmp : [ListTextbookAssistantArticleDetailsResponseBody.Data.SceneList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantArticleDetailsResponseBody.Data.SceneList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sceneList = tmp
            }
            if let value = dict["sentenceList"] as? [Any?] {
                var tmp : [ListTextbookAssistantArticleDetailsResponseBody.Data.SentenceList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantArticleDetailsResponseBody.Data.SentenceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sentenceList = tmp
            }
            if let value = dict["target"] as? String {
                self.target = value
            }
            if let value = dict["theme"] as? [String: Any?] {
                var model = ListTextbookAssistantArticleDetailsResponseBody.Data.Theme()
                model.fromMap(value)
                self.theme = model
            }
            if let value = dict["topic"] as? [String: Any?] {
                var model = ListTextbookAssistantArticleDetailsResponseBody.Data.Topic()
                model.fromMap(value)
                self.topic = model
            }
            if let value = dict["wordList"] as? [Any?] {
                var tmp : [ListTextbookAssistantArticleDetailsResponseBody.Data.WordList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantArticleDetailsResponseBody.Data.WordList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wordList = tmp
            }
        }
    }
    public var data: [ListTextbookAssistantArticleDetailsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListTextbookAssistantArticleDetailsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTextbookAssistantArticleDetailsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTextbookAssistantArticleDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantArticleDetailsResponseBody?

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
            var model = ListTextbookAssistantArticleDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTextbookAssistantArticlesRequest : Tea.TeaModel {
    public var authToken: String?

    public var directoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
    }
}

public class ListTextbookAssistantArticlesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var articleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.articleId != nil {
                map["articleId"] = self.articleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["articleId"] as? String {
                self.articleId = value
            }
        }
    }
    public var data: [ListTextbookAssistantArticlesResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListTextbookAssistantArticlesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTextbookAssistantArticlesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTextbookAssistantArticlesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantArticlesResponseBody?

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
            var model = ListTextbookAssistantArticlesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTextbookAssistantBookDirectoriesRequest : Tea.TeaModel {
    public var authToken: String?

    public var bookId: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.bookId != nil {
            map["bookId"] = self.bookId!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["bookId"] as? String {
            self.bookId = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
    }
}

public class ListTextbookAssistantBookDirectoriesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DirectoryTree : Tea.TeaModel {
            public class Topic : Tea.TeaModel {
                public var labelId: String?

                public var labelName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.labelId != nil {
                        map["labelId"] = self.labelId!
                    }
                    if self.labelName != nil {
                        map["labelName"] = self.labelName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["labelId"] as? String {
                        self.labelId = value
                    }
                    if let value = dict["labelName"] as? String {
                        self.labelName = value
                    }
                }
            }
            public class Unit : Tea.TeaModel {
                public class Section : Tea.TeaModel {
                    public class Topic : Tea.TeaModel {
                        public var labelId: String?

                        public var labelName: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.labelId != nil {
                                map["labelId"] = self.labelId!
                            }
                            if self.labelName != nil {
                                map["labelName"] = self.labelName!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["labelId"] as? String {
                                self.labelId = value
                            }
                            if let value = dict["labelName"] as? String {
                                self.labelName = value
                            }
                        }
                    }
                    public var children: Any?

                    public var directoryId: String?

                    public var directoryName: String?

                    public var topic: [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Section.Topic]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.children != nil {
                            map["children"] = self.children!
                        }
                        if self.directoryId != nil {
                            map["directoryId"] = self.directoryId!
                        }
                        if self.directoryName != nil {
                            map["directoryName"] = self.directoryName!
                        }
                        if self.topic != nil {
                            var tmp : [Any] = []
                            for k in self.topic! {
                                tmp.append(k.toMap())
                            }
                            map["topic"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["children"] as? Any {
                            self.children = value
                        }
                        if let value = dict["directoryId"] as? String {
                            self.directoryId = value
                        }
                        if let value = dict["directoryName"] as? String {
                            self.directoryName = value
                        }
                        if let value = dict["topic"] as? [Any?] {
                            var tmp : [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Section.Topic] = []
                            for v in value {
                                if v != nil {
                                    var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Section.Topic()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.topic = tmp
                        }
                    }
                }
                public class Topic : Tea.TeaModel {
                    public var labelId: String?

                    public var labelName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.labelId != nil {
                            map["labelId"] = self.labelId!
                        }
                        if self.labelName != nil {
                            map["labelName"] = self.labelName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["labelId"] as? String {
                            self.labelId = value
                        }
                        if let value = dict["labelName"] as? String {
                            self.labelName = value
                        }
                    }
                }
                public var directoryId: String?

                public var directoryName: String?

                public var section: [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Section]?

                public var topic: [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Topic]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.directoryId != nil {
                        map["directoryId"] = self.directoryId!
                    }
                    if self.directoryName != nil {
                        map["directoryName"] = self.directoryName!
                    }
                    if self.section != nil {
                        var tmp : [Any] = []
                        for k in self.section! {
                            tmp.append(k.toMap())
                        }
                        map["section"] = tmp
                    }
                    if self.topic != nil {
                        var tmp : [Any] = []
                        for k in self.topic! {
                            tmp.append(k.toMap())
                        }
                        map["topic"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["directoryId"] as? String {
                        self.directoryId = value
                    }
                    if let value = dict["directoryName"] as? String {
                        self.directoryName = value
                    }
                    if let value = dict["section"] as? [Any?] {
                        var tmp : [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Section] = []
                        for v in value {
                            if v != nil {
                                var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Section()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.section = tmp
                    }
                    if let value = dict["topic"] as? [Any?] {
                        var tmp : [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Topic] = []
                        for v in value {
                            if v != nil {
                                var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit.Topic()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.topic = tmp
                    }
                }
            }
            public var directoryId: String?

            public var directoryName: String?

            public var topic: [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Topic]?

            public var unit: [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.directoryId != nil {
                    map["directoryId"] = self.directoryId!
                }
                if self.directoryName != nil {
                    map["directoryName"] = self.directoryName!
                }
                if self.topic != nil {
                    var tmp : [Any] = []
                    for k in self.topic! {
                        tmp.append(k.toMap())
                    }
                    map["topic"] = tmp
                }
                if self.unit != nil {
                    var tmp : [Any] = []
                    for k in self.unit! {
                        tmp.append(k.toMap())
                    }
                    map["unit"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["directoryId"] as? String {
                    self.directoryId = value
                }
                if let value = dict["directoryName"] as? String {
                    self.directoryName = value
                }
                if let value = dict["topic"] as? [Any?] {
                    var tmp : [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Topic] = []
                    for v in value {
                        if v != nil {
                            var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Topic()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.topic = tmp
                }
                if let value = dict["unit"] as? [Any?] {
                    var tmp : [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit] = []
                    for v in value {
                        if v != nil {
                            var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree.Unit()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.unit = tmp
                }
            }
        }
        public class EditionInfo : Tea.TeaModel {
            public var bookId: String?

            public var bookVolume: String?

            public var edition: String?

            public var grade: String?

            public var impression: String?

            public var isbn: String?

            public var publisher: String?

            public var subject: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bookId != nil {
                    map["bookId"] = self.bookId!
                }
                if self.bookVolume != nil {
                    map["bookVolume"] = self.bookVolume!
                }
                if self.edition != nil {
                    map["edition"] = self.edition!
                }
                if self.grade != nil {
                    map["grade"] = self.grade!
                }
                if self.impression != nil {
                    map["impression"] = self.impression!
                }
                if self.isbn != nil {
                    map["isbn"] = self.isbn!
                }
                if self.publisher != nil {
                    map["publisher"] = self.publisher!
                }
                if self.subject != nil {
                    map["subject"] = self.subject!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bookId"] as? String {
                    self.bookId = value
                }
                if let value = dict["bookVolume"] as? String {
                    self.bookVolume = value
                }
                if let value = dict["edition"] as? String {
                    self.edition = value
                }
                if let value = dict["grade"] as? String {
                    self.grade = value
                }
                if let value = dict["impression"] as? String {
                    self.impression = value
                }
                if let value = dict["isbn"] as? String {
                    self.isbn = value
                }
                if let value = dict["publisher"] as? String {
                    self.publisher = value
                }
                if let value = dict["subject"] as? String {
                    self.subject = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public var directoryTree: [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree]?

        public var editionInfo: ListTextbookAssistantBookDirectoriesResponseBody.Data.EditionInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.editionInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.directoryTree != nil {
                var tmp : [Any] = []
                for k in self.directoryTree! {
                    tmp.append(k.toMap())
                }
                map["directoryTree"] = tmp
            }
            if self.editionInfo != nil {
                map["editionInfo"] = self.editionInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["directoryTree"] as? [Any?] {
                var tmp : [ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.DirectoryTree()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.directoryTree = tmp
            }
            if let value = dict["editionInfo"] as? [String: Any?] {
                var model = ListTextbookAssistantBookDirectoriesResponseBody.Data.EditionInfo()
                model.fromMap(value)
                self.editionInfo = model
            }
        }
    }
    public var data: ListTextbookAssistantBookDirectoriesResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ListTextbookAssistantBookDirectoriesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTextbookAssistantBookDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantBookDirectoriesResponseBody?

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
            var model = ListTextbookAssistantBookDirectoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTextbookAssistantBooksRequest : Tea.TeaModel {
    public var authToken: String?

    public var bookId: String?

    public var grade: String?

    public var maxResults: String?

    public var page: String?

    public var version: String?

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
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.bookId != nil {
            map["bookId"] = self.bookId!
        }
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.volume != nil {
            map["volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["bookId"] as? String {
            self.bookId = value
        }
        if let value = dict["grade"] as? String {
            self.grade = value
        }
        if let value = dict["maxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["page"] as? String {
            self.page = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
        if let value = dict["volume"] as? String {
            self.volume = value
        }
    }
}

public class ListTextbookAssistantBooksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BookList : Tea.TeaModel {
            public var author: String?

            public var bookId: String?

            public var bookName: String?

            public var coverImage: String?

            public var edition: String?

            public var grade: String?

            public var impression: String?

            public var isbn: String?

            public var publisher: String?

            public var subject: String?

            public var version: String?

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
                if self.author != nil {
                    map["author"] = self.author!
                }
                if self.bookId != nil {
                    map["bookId"] = self.bookId!
                }
                if self.bookName != nil {
                    map["bookName"] = self.bookName!
                }
                if self.coverImage != nil {
                    map["coverImage"] = self.coverImage!
                }
                if self.edition != nil {
                    map["edition"] = self.edition!
                }
                if self.grade != nil {
                    map["grade"] = self.grade!
                }
                if self.impression != nil {
                    map["impression"] = self.impression!
                }
                if self.isbn != nil {
                    map["isbn"] = self.isbn!
                }
                if self.publisher != nil {
                    map["publisher"] = self.publisher!
                }
                if self.subject != nil {
                    map["subject"] = self.subject!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["author"] as? String {
                    self.author = value
                }
                if let value = dict["bookId"] as? String {
                    self.bookId = value
                }
                if let value = dict["bookName"] as? String {
                    self.bookName = value
                }
                if let value = dict["coverImage"] as? String {
                    self.coverImage = value
                }
                if let value = dict["edition"] as? String {
                    self.edition = value
                }
                if let value = dict["grade"] as? String {
                    self.grade = value
                }
                if let value = dict["impression"] as? String {
                    self.impression = value
                }
                if let value = dict["isbn"] as? String {
                    self.isbn = value
                }
                if let value = dict["publisher"] as? String {
                    self.publisher = value
                }
                if let value = dict["subject"] as? String {
                    self.subject = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
                if let value = dict["volume"] as? String {
                    self.volume = value
                }
            }
        }
        public class PaginationData : Tea.TeaModel {
            public var currentPage: Int32?

            public var maxResults: Int32?

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
                if self.currentPage != nil {
                    map["currentPage"] = self.currentPage!
                }
                if self.maxResults != nil {
                    map["maxResults"] = self.maxResults!
                }
                if self.totalCount != nil {
                    map["totalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["currentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["maxResults"] as? Int32 {
                    self.maxResults = value
                }
                if let value = dict["totalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var bookList: [ListTextbookAssistantBooksResponseBody.Data.BookList]?

        public var paginationData: ListTextbookAssistantBooksResponseBody.Data.PaginationData?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.paginationData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bookList != nil {
                var tmp : [Any] = []
                for k in self.bookList! {
                    tmp.append(k.toMap())
                }
                map["bookList"] = tmp
            }
            if self.paginationData != nil {
                map["paginationData"] = self.paginationData?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bookList"] as? [Any?] {
                var tmp : [ListTextbookAssistantBooksResponseBody.Data.BookList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantBooksResponseBody.Data.BookList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bookList = tmp
            }
            if let value = dict["paginationData"] as? [String: Any?] {
                var model = ListTextbookAssistantBooksResponseBody.Data.PaginationData()
                model.fromMap(value)
                self.paginationData = model
            }
        }
    }
    public var data: ListTextbookAssistantBooksResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ListTextbookAssistantBooksResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTextbookAssistantBooksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantBooksResponseBody?

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
            var model = ListTextbookAssistantBooksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTextbookAssistantGradeVolumesRequest : Tea.TeaModel {
    public var authToken: String?

    public var scenario: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["scenario"] as? String {
            self.scenario = value
        }
    }
}

public class ListTextbookAssistantGradeVolumesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GradeVolumes : Tea.TeaModel {
            public var grade: String?

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
                if self.grade != nil {
                    map["grade"] = self.grade!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["grade"] as? String {
                    self.grade = value
                }
                if let value = dict["volume"] as? String {
                    self.volume = value
                }
            }
        }
        public var gradeVolumes: [ListTextbookAssistantGradeVolumesResponseBody.Data.GradeVolumes]?

        public var textbookVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gradeVolumes != nil {
                var tmp : [Any] = []
                for k in self.gradeVolumes! {
                    tmp.append(k.toMap())
                }
                map["gradeVolumes"] = tmp
            }
            if self.textbookVersion != nil {
                map["textbookVersion"] = self.textbookVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gradeVolumes"] as? [Any?] {
                var tmp : [ListTextbookAssistantGradeVolumesResponseBody.Data.GradeVolumes] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantGradeVolumesResponseBody.Data.GradeVolumes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.gradeVolumes = tmp
            }
            if let value = dict["textbookVersion"] as? String {
                self.textbookVersion = value
            }
        }
    }
    public var data: [ListTextbookAssistantGradeVolumesResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListTextbookAssistantGradeVolumesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTextbookAssistantGradeVolumesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTextbookAssistantGradeVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantGradeVolumesResponseBody?

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
            var model = ListTextbookAssistantGradeVolumesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTextbookAssistantSceneDetailsRequest : Tea.TeaModel {
    public var authToken: String?

    public var sceneIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authToken != nil {
            map["authToken"] = self.authToken!
        }
        if self.sceneIdList != nil {
            map["sceneIdList"] = self.sceneIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authToken"] as? String {
            self.authToken = value
        }
        if let value = dict["sceneIdList"] as? [String] {
            self.sceneIdList = value
        }
    }
}

public class ListTextbookAssistantSceneDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RoleList : Tea.TeaModel {
            public var introduction: String?

            public var introductionTranslate: String?

            public var promoting: String?

            public var promotingTranslate: String?

            public var roleName: String?

            public var roleNameTranslate: String?

            public var roleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.introduction != nil {
                    map["introduction"] = self.introduction!
                }
                if self.introductionTranslate != nil {
                    map["introductionTranslate"] = self.introductionTranslate!
                }
                if self.promoting != nil {
                    map["promoting"] = self.promoting!
                }
                if self.promotingTranslate != nil {
                    map["promotingTranslate"] = self.promotingTranslate!
                }
                if self.roleName != nil {
                    map["roleName"] = self.roleName!
                }
                if self.roleNameTranslate != nil {
                    map["roleNameTranslate"] = self.roleNameTranslate!
                }
                if self.roleType != nil {
                    map["roleType"] = self.roleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["introduction"] as? String {
                    self.introduction = value
                }
                if let value = dict["introductionTranslate"] as? String {
                    self.introductionTranslate = value
                }
                if let value = dict["promoting"] as? String {
                    self.promoting = value
                }
                if let value = dict["promotingTranslate"] as? String {
                    self.promotingTranslate = value
                }
                if let value = dict["roleName"] as? String {
                    self.roleName = value
                }
                if let value = dict["roleNameTranslate"] as? String {
                    self.roleNameTranslate = value
                }
                if let value = dict["roleType"] as? String {
                    self.roleType = value
                }
            }
        }
        public class SceneTaskList : Tea.TeaModel {
            public var sceneTask: String?

            public var sceneTaskTranslate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sceneTask != nil {
                    map["sceneTask"] = self.sceneTask!
                }
                if self.sceneTaskTranslate != nil {
                    map["sceneTaskTranslate"] = self.sceneTaskTranslate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["sceneTask"] as? String {
                    self.sceneTask = value
                }
                if let value = dict["sceneTaskTranslate"] as? String {
                    self.sceneTaskTranslate = value
                }
            }
        }
        public class SentenceList : Tea.TeaModel {
            public var sentenceAnalysis: String?

            public var sentenceId: String?

            public var sentenceText: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sentenceAnalysis != nil {
                    map["sentenceAnalysis"] = self.sentenceAnalysis!
                }
                if self.sentenceId != nil {
                    map["sentenceId"] = self.sentenceId!
                }
                if self.sentenceText != nil {
                    map["sentenceText"] = self.sentenceText!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["sentenceAnalysis"] as? String {
                    self.sentenceAnalysis = value
                }
                if let value = dict["sentenceId"] as? String {
                    self.sentenceId = value
                }
                if let value = dict["sentenceText"] as? String {
                    self.sentenceText = value
                }
            }
        }
        public class Theme : Tea.TeaModel {
            public var themeImageList: [String]?

            public var themeName: String?

            public var themeTranslate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.themeImageList != nil {
                    map["themeImageList"] = self.themeImageList!
                }
                if self.themeName != nil {
                    map["themeName"] = self.themeName!
                }
                if self.themeTranslate != nil {
                    map["themeTranslate"] = self.themeTranslate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["themeImageList"] as? [String] {
                    self.themeImageList = value
                }
                if let value = dict["themeName"] as? String {
                    self.themeName = value
                }
                if let value = dict["themeTranslate"] as? String {
                    self.themeTranslate = value
                }
            }
        }
        public class Topic : Tea.TeaModel {
            public var topicImageList: [String]?

            public var topicName: String?

            public var topicTranslate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.topicImageList != nil {
                    map["topicImageList"] = self.topicImageList!
                }
                if self.topicName != nil {
                    map["topicName"] = self.topicName!
                }
                if self.topicTranslate != nil {
                    map["topicTranslate"] = self.topicTranslate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["topicImageList"] as? [String] {
                    self.topicImageList = value
                }
                if let value = dict["topicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["topicTranslate"] as? String {
                    self.topicTranslate = value
                }
            }
        }
        public class WordList : Tea.TeaModel {
            public var wordAnalysis: String?

            public var wordId: String?

            public var wordText: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.wordAnalysis != nil {
                    map["wordAnalysis"] = self.wordAnalysis!
                }
                if self.wordId != nil {
                    map["wordId"] = self.wordId!
                }
                if self.wordText != nil {
                    map["wordText"] = self.wordText!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["wordAnalysis"] as? String {
                    self.wordAnalysis = value
                }
                if let value = dict["wordId"] as? String {
                    self.wordId = value
                }
                if let value = dict["wordText"] as? String {
                    self.wordText = value
                }
            }
        }
        public var roleList: [ListTextbookAssistantSceneDetailsResponseBody.Data.RoleList]?

        public var scene: String?

        public var sceneId: String?

        public var sceneImageList: [String]?

        public var sceneTaskList: [ListTextbookAssistantSceneDetailsResponseBody.Data.SceneTaskList]?

        public var sceneTranslate: String?

        public var sentenceList: [ListTextbookAssistantSceneDetailsResponseBody.Data.SentenceList]?

        public var target: String?

        public var theme: ListTextbookAssistantSceneDetailsResponseBody.Data.Theme?

        public var topic: ListTextbookAssistantSceneDetailsResponseBody.Data.Topic?

        public var wordList: [ListTextbookAssistantSceneDetailsResponseBody.Data.WordList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.theme?.validate()
            try self.topic?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roleList != nil {
                var tmp : [Any] = []
                for k in self.roleList! {
                    tmp.append(k.toMap())
                }
                map["roleList"] = tmp
            }
            if self.scene != nil {
                map["scene"] = self.scene!
            }
            if self.sceneId != nil {
                map["sceneId"] = self.sceneId!
            }
            if self.sceneImageList != nil {
                map["sceneImageList"] = self.sceneImageList!
            }
            if self.sceneTaskList != nil {
                var tmp : [Any] = []
                for k in self.sceneTaskList! {
                    tmp.append(k.toMap())
                }
                map["sceneTaskList"] = tmp
            }
            if self.sceneTranslate != nil {
                map["sceneTranslate"] = self.sceneTranslate!
            }
            if self.sentenceList != nil {
                var tmp : [Any] = []
                for k in self.sentenceList! {
                    tmp.append(k.toMap())
                }
                map["sentenceList"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            if self.theme != nil {
                map["theme"] = self.theme?.toMap()
            }
            if self.topic != nil {
                map["topic"] = self.topic?.toMap()
            }
            if self.wordList != nil {
                var tmp : [Any] = []
                for k in self.wordList! {
                    tmp.append(k.toMap())
                }
                map["wordList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["roleList"] as? [Any?] {
                var tmp : [ListTextbookAssistantSceneDetailsResponseBody.Data.RoleList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantSceneDetailsResponseBody.Data.RoleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.roleList = tmp
            }
            if let value = dict["scene"] as? String {
                self.scene = value
            }
            if let value = dict["sceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["sceneImageList"] as? [String] {
                self.sceneImageList = value
            }
            if let value = dict["sceneTaskList"] as? [Any?] {
                var tmp : [ListTextbookAssistantSceneDetailsResponseBody.Data.SceneTaskList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantSceneDetailsResponseBody.Data.SceneTaskList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sceneTaskList = tmp
            }
            if let value = dict["sceneTranslate"] as? String {
                self.sceneTranslate = value
            }
            if let value = dict["sentenceList"] as? [Any?] {
                var tmp : [ListTextbookAssistantSceneDetailsResponseBody.Data.SentenceList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantSceneDetailsResponseBody.Data.SentenceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sentenceList = tmp
            }
            if let value = dict["target"] as? String {
                self.target = value
            }
            if let value = dict["theme"] as? [String: Any?] {
                var model = ListTextbookAssistantSceneDetailsResponseBody.Data.Theme()
                model.fromMap(value)
                self.theme = model
            }
            if let value = dict["topic"] as? [String: Any?] {
                var model = ListTextbookAssistantSceneDetailsResponseBody.Data.Topic()
                model.fromMap(value)
                self.topic = model
            }
            if let value = dict["wordList"] as? [Any?] {
                var tmp : [ListTextbookAssistantSceneDetailsResponseBody.Data.WordList] = []
                for v in value {
                    if v != nil {
                        var model = ListTextbookAssistantSceneDetailsResponseBody.Data.WordList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wordList = tmp
            }
        }
    }
    public var data: [ListTextbookAssistantSceneDetailsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListTextbookAssistantSceneDetailsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTextbookAssistantSceneDetailsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTextbookAssistantSceneDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTextbookAssistantSceneDetailsResponseBody?

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
            var model = ListTextbookAssistantSceneDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterBillingCostTabsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
    }
}

public class ModelRouterBillingCostTabsResponseBody : Tea.TeaModel {
    public var data: [CostTabDTO]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [CostTabDTO] = []
            for v in value {
                if v != nil {
                    var model = CostTabDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterBillingCostTabsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterBillingCostTabsResponseBody?

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
            var model = ModelRouterBillingCostTabsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterChatCompletionsRequest : Tea.TeaModel {
    public var body: Any?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? Any {
            self.body = value
        }
    }
}

public class ModelRouterChatCompletionsResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterChatCompletionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterChatCompletionsResponseBody?

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
            var model = ModelRouterChatCompletionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterCopyApiKeyResponseBody : Tea.TeaModel {
    public var data: ApiKeyDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ApiKeyDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterCopyApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterCopyApiKeyResponseBody?

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
            var model = ModelRouterCopyApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterCreateApiKeyRequest : Tea.TeaModel {
    public var clientId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
    }
}

public class ModelRouterCreateApiKeyResponseBody : Tea.TeaModel {
    public var data: ApiKeyDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ApiKeyDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterCreateApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterCreateApiKeyResponseBody?

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
            var model = ModelRouterCreateApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterCreateBillingRuleRequest : Tea.TeaModel {
    public var billingType: String?

    public var effectiveTime: String?

    public var expireTime: String?

    public var modelId: Int64?

    public var pricingConfig: Any?

    public var version: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingType != nil {
            map["billingType"] = self.billingType!
        }
        if self.effectiveTime != nil {
            map["effectiveTime"] = self.effectiveTime!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.pricingConfig != nil {
            map["pricingConfig"] = self.pricingConfig!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["billingType"] as? String {
            self.billingType = value
        }
        if let value = dict["effectiveTime"] as? String {
            self.effectiveTime = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["pricingConfig"] as? Any {
            self.pricingConfig = value
        }
        if let value = dict["version"] as? Int32 {
            self.version = value
        }
    }
}

public class ModelRouterCreateBillingRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var billingType: String?

        public var deleteTag: Int32?

        public var effectiveTime: String?

        public var expireTime: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var modelCode: String?

        public var modelId: Int64?

        public var modelName: String?

        public var modelType: String?

        public var pricingConfig: Any?

        public var symbol: String?

        public var version: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingType != nil {
                map["billingType"] = self.billingType!
            }
            if self.deleteTag != nil {
                map["deleteTag"] = self.deleteTag!
            }
            if self.effectiveTime != nil {
                map["effectiveTime"] = self.effectiveTime!
            }
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modelCode != nil {
                map["modelCode"] = self.modelCode!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.modelType != nil {
                map["modelType"] = self.modelType!
            }
            if self.pricingConfig != nil {
                map["pricingConfig"] = self.pricingConfig!
            }
            if self.symbol != nil {
                map["symbol"] = self.symbol!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["billingType"] as? String {
                self.billingType = value
            }
            if let value = dict["deleteTag"] as? Int32 {
                self.deleteTag = value
            }
            if let value = dict["effectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["expireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["modelCode"] as? String {
                self.modelCode = value
            }
            if let value = dict["modelId"] as? Int64 {
                self.modelId = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["modelType"] as? String {
                self.modelType = value
            }
            if let value = dict["pricingConfig"] as? Any {
                self.pricingConfig = value
            }
            if let value = dict["symbol"] as? String {
                self.symbol = value
            }
            if let value = dict["version"] as? Int32 {
                self.version = value
            }
        }
    }
    public var data: ModelRouterCreateBillingRuleResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelRouterCreateBillingRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterCreateBillingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterCreateBillingRuleResponseBody?

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
            var model = ModelRouterCreateBillingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterCreateClientRequest : Tea.TeaModel {
    public var address: String?

    public var allowedModels: String?

    public var contact: String?

    public var discount: Double?

    public var name: String?

    public var parentId: Int64?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.allowedModels != nil {
            map["allowedModels"] = self.allowedModels!
        }
        if self.contact != nil {
            map["contact"] = self.contact!
        }
        if self.discount != nil {
            map["discount"] = self.discount!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["allowedModels"] as? String {
            self.allowedModels = value
        }
        if let value = dict["contact"] as? String {
            self.contact = value
        }
        if let value = dict["discount"] as? Double {
            self.discount = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class ModelRouterCreateClientResponseBody : Tea.TeaModel {
    public var data: ClientDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ClientDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterCreateClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterCreateClientResponseBody?

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
            var model = ModelRouterCreateClientResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterCreateConversationRequest : Tea.TeaModel {
    public var chatData: String?

    public var modelIds: String?

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
        if self.chatData != nil {
            map["chatData"] = self.chatData!
        }
        if self.modelIds != nil {
            map["modelIds"] = self.modelIds!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatData"] as? String {
            self.chatData = value
        }
        if let value = dict["modelIds"] as? String {
            self.modelIds = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class ModelRouterCreateConversationResponseBody : Tea.TeaModel {
    public var data: ConversationDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ConversationDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterCreateConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterCreateConversationResponseBody?

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
            var model = ModelRouterCreateConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterCreateModelRequest : Tea.TeaModel {
    public var apiKey: String?

    public var baseUrl: String?

    public var description_: String?

    public var extensions: String?

    public var inOut_: String?

    public var maxInputLength: String?

    public var maxOutputLength: String?

    public var modelId: String?

    public var modelType: String?

    public var name: String?

    public var symbol: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.baseUrl != nil {
            map["baseUrl"] = self.baseUrl!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.extensions != nil {
            map["extensions"] = self.extensions!
        }
        if self.inOut_ != nil {
            map["inOut"] = self.inOut_!
        }
        if self.maxInputLength != nil {
            map["maxInputLength"] = self.maxInputLength!
        }
        if self.maxOutputLength != nil {
            map["maxOutputLength"] = self.maxOutputLength!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.symbol != nil {
            map["symbol"] = self.symbol!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["baseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["extensions"] as? String {
            self.extensions = value
        }
        if let value = dict["inOut"] as? String {
            self.inOut_ = value
        }
        if let value = dict["maxInputLength"] as? String {
            self.maxInputLength = value
        }
        if let value = dict["maxOutputLength"] as? String {
            self.maxOutputLength = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["symbol"] as? String {
            self.symbol = value
        }
        if let value = dict["tags"] as? String {
            self.tags = value
        }
    }
}

public class ModelRouterCreateModelResponseBody : Tea.TeaModel {
    public var data: ModelDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterCreateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterCreateModelResponseBody?

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
            var model = ModelRouterCreateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterDeleteApiKeyResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterDeleteApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterDeleteApiKeyResponseBody?

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
            var model = ModelRouterDeleteApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterDeleteClientResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterDeleteClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterDeleteClientResponseBody?

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
            var model = ModelRouterDeleteClientResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterDeleteConversationResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterDeleteConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterDeleteConversationResponseBody?

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
            var model = ModelRouterDeleteConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterDeleteModelResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterDeleteModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterDeleteModelResponseBody?

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
            var model = ModelRouterDeleteModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryApiKeyResponseBody : Tea.TeaModel {
    public var data: ApiKeyDecryptedDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ApiKeyDecryptedDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryApiKeyResponseBody?

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
            var model = ModelRouterQueryApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryApiKeyListRequest : Tea.TeaModel {
    public var clientId: Int64?

    public var groupBy: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ModelRouterQueryApiKeyListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [ApiKeyDTO]?

        public var maxResult: String?

        public var nextToken: String?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.maxResult != nil {
                map["maxResult"] = self.maxResult!
            }
            if self.nextToken != nil {
                map["nextToken"] = self.nextToken!
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ApiKeyDTO] = []
                for v in value {
                    if v != nil {
                        var model = ApiKeyDTO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["maxResult"] as? String {
                self.maxResult = value
            }
            if let value = dict["nextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["page"] as? Int32 {
                self.page = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var data: ModelRouterQueryApiKeyListResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelRouterQueryApiKeyListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryApiKeyListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryApiKeyListResponseBody?

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
            var model = ModelRouterQueryApiKeyListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryBillingRuleListRequest : Tea.TeaModel {
    public var activeOnly: Bool?

    public var maxResults: Int32?

    public var modelCode: String?

    public var modelId: Int32?

    public var modelType: String?

    public var nextToken: String?

    public var page: Int32?

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
        if self.activeOnly != nil {
            map["activeOnly"] = self.activeOnly!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelCode != nil {
            map["modelCode"] = self.modelCode!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
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
        if let value = dict["activeOnly"] as? Bool {
            self.activeOnly = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["modelId"] as? Int32 {
            self.modelId = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ModelRouterQueryBillingRuleListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var billingType: String?

            public var deleteTag: Int32?

            public var effectiveTime: String?

            public var expireTime: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var modelCode: String?

            public var modelId: Int64?

            public var modelName: String?

            public var modelType: String?

            public var pricingConfig: Any?

            public var symbol: String?

            public var version: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingType != nil {
                    map["billingType"] = self.billingType!
                }
                if self.deleteTag != nil {
                    map["deleteTag"] = self.deleteTag!
                }
                if self.effectiveTime != nil {
                    map["effectiveTime"] = self.effectiveTime!
                }
                if self.expireTime != nil {
                    map["expireTime"] = self.expireTime!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.modelCode != nil {
                    map["modelCode"] = self.modelCode!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                if self.modelType != nil {
                    map["modelType"] = self.modelType!
                }
                if self.pricingConfig != nil {
                    map["pricingConfig"] = self.pricingConfig!
                }
                if self.symbol != nil {
                    map["symbol"] = self.symbol!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["billingType"] as? String {
                    self.billingType = value
                }
                if let value = dict["deleteTag"] as? Int32 {
                    self.deleteTag = value
                }
                if let value = dict["effectiveTime"] as? String {
                    self.effectiveTime = value
                }
                if let value = dict["expireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["modelCode"] as? String {
                    self.modelCode = value
                }
                if let value = dict["modelId"] as? Int64 {
                    self.modelId = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["modelType"] as? String {
                    self.modelType = value
                }
                if let value = dict["pricingConfig"] as? Any {
                    self.pricingConfig = value
                }
                if let value = dict["symbol"] as? String {
                    self.symbol = value
                }
                if let value = dict["version"] as? Int32 {
                    self.version = value
                }
            }
        }
        public var list: [ModelRouterQueryBillingRuleListResponseBody.Data.List]?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ModelRouterQueryBillingRuleListResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ModelRouterQueryBillingRuleListResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["page"] as? Int32 {
                self.page = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var data: ModelRouterQueryBillingRuleListResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelRouterQueryBillingRuleListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterQueryBillingRuleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryBillingRuleListResponseBody?

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
            var model = ModelRouterQueryBillingRuleListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryClientDiscountLogsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
    }
}

public class ModelRouterQueryClientDiscountLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clientId: Int64?

        public var deleteTag: Int64?

        public var discount: Double?

        public var effectiveTime: String?

        public var expireTime: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var remark: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["clientId"] = self.clientId!
            }
            if self.deleteTag != nil {
                map["deleteTag"] = self.deleteTag!
            }
            if self.discount != nil {
                map["discount"] = self.discount!
            }
            if self.effectiveTime != nil {
                map["effectiveTime"] = self.effectiveTime!
            }
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["clientId"] as? Int64 {
                self.clientId = value
            }
            if let value = dict["deleteTag"] as? Int64 {
                self.deleteTag = value
            }
            if let value = dict["discount"] as? Double {
                self.discount = value
            }
            if let value = dict["effectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["expireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
        }
    }
    public var data: [ModelRouterQueryClientDiscountLogsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ModelRouterQueryClientDiscountLogsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ModelRouterQueryClientDiscountLogsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterQueryClientDiscountLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryClientDiscountLogsResponseBody?

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
            var model = ModelRouterQueryClientDiscountLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryClientListRequest : Tea.TeaModel {
    public var groupBy: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ModelRouterQueryClientListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [ClientDTO]?

        public var maxResults: String?

        public var nextToken: String?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.maxResults != nil {
                map["maxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["nextToken"] = self.nextToken!
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ClientDTO] = []
                for v in value {
                    if v != nil {
                        var model = ClientDTO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["maxResults"] as? String {
                self.maxResults = value
            }
            if let value = dict["nextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["page"] as? Int32 {
                self.page = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var data: ModelRouterQueryClientListResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelRouterQueryClientListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryClientListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryClientListResponseBody?

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
            var model = ModelRouterQueryClientListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryClientTreeRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
    }
}

public class ModelRouterQueryClientTreeResponseBody : Tea.TeaModel {
    public var data: [ClientTreeDTO]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ClientTreeDTO] = []
            for v in value {
                if v != nil {
                    var model = ClientTreeDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterQueryClientTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryClientTreeResponseBody?

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
            var model = ModelRouterQueryClientTreeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryConversationResponseBody : Tea.TeaModel {
    public var data: ConversationDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ConversationDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryConversationResponseBody?

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
            var model = ModelRouterQueryConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryConversationListRequest : Tea.TeaModel {
    public var groupBy: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ModelRouterQueryConversationListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [ConversationDTO]?

        public var maxResult: String?

        public var nextToken: String?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.maxResult != nil {
                map["maxResult"] = self.maxResult!
            }
            if self.nextToken != nil {
                map["nextToken"] = self.nextToken!
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ConversationDTO] = []
                for v in value {
                    if v != nil {
                        var model = ConversationDTO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["maxResult"] as? String {
                self.maxResult = value
            }
            if let value = dict["nextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["page"] as? Int32 {
                self.page = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var data: ModelRouterQueryConversationListResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelRouterQueryConversationListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryConversationListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryConversationListResponseBody?

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
            var model = ModelRouterQueryConversationListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryCostModelDetailRequest : Tea.TeaModel {
    public var clientId: Int64?

    public var endTime: Int64?

    public var maxResults: Int32?

    public var modelId: Int64?

    public var nextToken: String?

    public var page: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ModelRouterQueryCostModelDetailResponseBody : Tea.TeaModel {
    public var data: CostModelDetailRespDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CostModelDetailRespDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterQueryCostModelDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryCostModelDetailResponseBody?

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
            var model = ModelRouterQueryCostModelDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryCostModelListRequest : Tea.TeaModel {
    public var clientId: Int64?

    public var endTime: Int64?

    public var granularity: String?

    public var maxResults: Int32?

    public var modelTypes: String?

    public var nextToken: String?

    public var search: String?

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
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelTypes != nil {
            map["modelTypes"] = self.modelTypes!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.search != nil {
            map["search"] = self.search!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelTypes"] as? String {
            self.modelTypes = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["search"] as? String {
            self.search = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ModelRouterQueryCostModelListResponseBody : Tea.TeaModel {
    public var data: CostQueryModelsDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CostQueryModelsDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterQueryCostModelListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryCostModelListResponseBody?

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
            var model = ModelRouterQueryCostModelListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryCostOverviewMetricsRequest : Tea.TeaModel {
    public var clientId: Int64?

    public var endTime: Int64?

    public var granularity: String?

    public var maxResults: Int32?

    public var modelTypes: String?

    public var nextToken: String?

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
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelTypes != nil {
            map["modelTypes"] = self.modelTypes!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelTypes"] as? String {
            self.modelTypes = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ModelRouterQueryCostOverviewMetricsResponseBody : Tea.TeaModel {
    public var data: [MetricValueDTO]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [MetricValueDTO] = []
            for v in value {
                if v != nil {
                    var model = MetricValueDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterQueryCostOverviewMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryCostOverviewMetricsResponseBody?

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
            var model = ModelRouterQueryCostOverviewMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryCostTrendMetricsRequest : Tea.TeaModel {
    public var clientId: Int64?

    public var endTime: Int64?

    public var granularity: String?

    public var maxResults: Int32?

    public var modelTypes: String?

    public var nextToken: String?

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
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["granularity"] = self.granularity!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelTypes != nil {
            map["modelTypes"] = self.modelTypes!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelTypes"] as? String {
            self.modelTypes = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ModelRouterQueryCostTrendMetricsResponseBody : Tea.TeaModel {
    public var data: CostQueryTrendDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CostQueryTrendDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterQueryCostTrendMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryCostTrendMetricsResponseBody?

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
            var model = ModelRouterQueryCostTrendMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryModelResponseBody : Tea.TeaModel {
    public var data: ModelDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryModelResponseBody?

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
            var model = ModelRouterQueryModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryModelListRequest : Tea.TeaModel {
    public var groupBy: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var modelType: String?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ModelRouterQueryModelListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [ModelDTO]?

        public var maxResults: String?

        public var nextToken: String?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.maxResults != nil {
                map["maxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["nextToken"] = self.nextToken!
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ModelDTO] = []
                for v in value {
                    if v != nil {
                        var model = ModelDTO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["maxResults"] as? String {
                self.maxResults = value
            }
            if let value = dict["nextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["page"] as? Int32 {
                self.page = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? String {
                self.total = value
            }
        }
    }
    public var data: ModelRouterQueryModelListResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelRouterQueryModelListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryModelListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryModelListResponseBody?

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
            var model = ModelRouterQueryModelListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryNacosProvidersRequest : Tea.TeaModel {
    public var groupBy: String?

    public var maxResults: Int32?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

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
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
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
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ModelRouterQueryNacosProvidersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Models : Tea.TeaModel {
            public class Extensions : Tea.TeaModel {
                public var async: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.async != nil {
                        map["async"] = self.async!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["async"] as? Bool {
                        self.async = value
                    }
                }
            }
            public var extensions: ModelRouterQueryNacosProvidersResponseBody.Data.Models.Extensions?

            public var identifier: String?

            public var inOut_: String?

            public var inputToken: String?

            public var outputToken: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.extensions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extensions != nil {
                    map["extensions"] = self.extensions?.toMap()
                }
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.inOut_ != nil {
                    map["inOut"] = self.inOut_!
                }
                if self.inputToken != nil {
                    map["inputToken"] = self.inputToken!
                }
                if self.outputToken != nil {
                    map["outputToken"] = self.outputToken!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["extensions"] as? [String: Any?] {
                    var model = ModelRouterQueryNacosProvidersResponseBody.Data.Models.Extensions()
                    model.fromMap(value)
                    self.extensions = model
                }
                if let value = dict["identifier"] as? String {
                    self.identifier = value
                }
                if let value = dict["inOut"] as? String {
                    self.inOut_ = value
                }
                if let value = dict["inputToken"] as? String {
                    self.inputToken = value
                }
                if let value = dict["outputToken"] as? String {
                    self.outputToken = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var baseUrl: String?

        public var models: [ModelRouterQueryNacosProvidersResponseBody.Data.Models]?

        public var name: String?

        public var symbol: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baseUrl != nil {
                map["baseUrl"] = self.baseUrl!
            }
            if self.models != nil {
                var tmp : [Any] = []
                for k in self.models! {
                    tmp.append(k.toMap())
                }
                map["models"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.symbol != nil {
                map["symbol"] = self.symbol!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["baseUrl"] as? String {
                self.baseUrl = value
            }
            if let value = dict["models"] as? [Any?] {
                var tmp : [ModelRouterQueryNacosProvidersResponseBody.Data.Models] = []
                for v in value {
                    if v != nil {
                        var model = ModelRouterQueryNacosProvidersResponseBody.Data.Models()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.models = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["symbol"] as? String {
                self.symbol = value
            }
        }
    }
    public var data: [ModelRouterQueryNacosProvidersResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ModelRouterQueryNacosProvidersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ModelRouterQueryNacosProvidersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryNacosProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryNacosProvidersResponseBody?

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
            var model = ModelRouterQueryNacosProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryNacosTagsRequest : Tea.TeaModel {
    public var configType: String?

    public var groupBy: String?

    public var maxResults: Int32?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

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
        if self.configType != nil {
            map["configType"] = self.configType!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
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
        if let value = dict["configType"] as? String {
            self.configType = value
        }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ModelRouterQueryNacosTagsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var label: String?

        public var tag: String?

        public var tagName: String?

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
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["label"] as? String {
                self.label = value
            }
            if let value = dict["tag"] as? String {
                self.tag = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var data: [ModelRouterQueryNacosTagsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ModelRouterQueryNacosTagsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ModelRouterQueryNacosTagsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryNacosTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryNacosTagsResponseBody?

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
            var model = ModelRouterQueryNacosTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryObservationChartsRequest : Tea.TeaModel {
    public var apiKeyId: Int64?

    public var clientId: Int64?

    public var endTime: String?

    public var modelId: Int64?

    public var startTime: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyId != nil {
            map["apiKeyId"] = self.apiKeyId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? Int64 {
            self.apiKeyId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class ModelRouterQueryObservationChartsResponseBody : Tea.TeaModel {
    public var data: ObservationChartsDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ObservationChartsDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryObservationChartsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryObservationChartsResponseBody?

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
            var model = ModelRouterQueryObservationChartsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryObservationLogsRequest : Tea.TeaModel {
    public var apiKeyId: Int64?

    public var clientId: Int64?

    public var endTime: String?

    public var groupBy: String?

    public var maxResults: Int32?

    public var modelId: Int64?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyId != nil {
            map["apiKeyId"] = self.apiKeyId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? Int64 {
            self.apiKeyId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class ModelRouterQueryObservationLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [RequestLogDTO]?

        public var maxResults: Int32?

        public var nextToken: Int32?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.maxResults != nil {
                map["maxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["nextToken"] = self.nextToken!
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [RequestLogDTO] = []
                for v in value {
                    if v != nil {
                        var model = RequestLogDTO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["maxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["nextToken"] as? Int32 {
                self.nextToken = value
            }
            if let value = dict["page"] as? Int32 {
                self.page = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var data: ModelRouterQueryObservationLogsResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelRouterQueryObservationLogsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
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

public class ModelRouterQueryObservationLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryObservationLogsResponseBody?

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
            var model = ModelRouterQueryObservationLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterQueryObservationMetricsRequest : Tea.TeaModel {
    public var apiKeyId: Int64?

    public var clientId: Int64?

    public var endTime: String?

    public var groupBy: String?

    public var maxResults: Int32?

    public var modelId: Int64?

    public var needTotalCount: Bool?

    public var nextToken: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyId != nil {
            map["apiKeyId"] = self.apiKeyId!
        }
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? Int64 {
            self.apiKeyId = value
        }
        if let value = dict["clientId"] as? Int64 {
            self.clientId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class ModelRouterQueryObservationMetricsResponseBody : Tea.TeaModel {
    public var data: ModelMetricsDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelMetricsDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterQueryObservationMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterQueryObservationMetricsResponseBody?

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
            var model = ModelRouterQueryObservationMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterUpdateBillingRuleRequest : Tea.TeaModel {
    public var billingType: String?

    public var effectiveTime: String?

    public var expireTime: String?

    public var pricingConfig: Any?

    public var status: Int32?

    public var version: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingType != nil {
            map["billingType"] = self.billingType!
        }
        if self.effectiveTime != nil {
            map["effectiveTime"] = self.effectiveTime!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.pricingConfig != nil {
            map["pricingConfig"] = self.pricingConfig!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["billingType"] as? String {
            self.billingType = value
        }
        if let value = dict["effectiveTime"] as? String {
            self.effectiveTime = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["pricingConfig"] as? Any {
            self.pricingConfig = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["version"] as? Int32 {
            self.version = value
        }
    }
}

public class ModelRouterUpdateBillingRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var billingType: String?

        public var deleteTag: Int32?

        public var effectiveTime: String?

        public var expireTime: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var modelCode: String?

        public var modelId: Int64?

        public var modelName: String?

        public var modelType: String?

        public var pricingConfig: Any?

        public var symbol: String?

        public var version: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingType != nil {
                map["billingType"] = self.billingType!
            }
            if self.deleteTag != nil {
                map["deleteTag"] = self.deleteTag!
            }
            if self.effectiveTime != nil {
                map["effectiveTime"] = self.effectiveTime!
            }
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modelCode != nil {
                map["modelCode"] = self.modelCode!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.modelType != nil {
                map["modelType"] = self.modelType!
            }
            if self.pricingConfig != nil {
                map["pricingConfig"] = self.pricingConfig!
            }
            if self.symbol != nil {
                map["symbol"] = self.symbol!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["billingType"] as? String {
                self.billingType = value
            }
            if let value = dict["deleteTag"] as? Int32 {
                self.deleteTag = value
            }
            if let value = dict["effectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["expireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["modelCode"] as? String {
                self.modelCode = value
            }
            if let value = dict["modelId"] as? Int64 {
                self.modelId = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["modelType"] as? String {
                self.modelType = value
            }
            if let value = dict["pricingConfig"] as? Any {
                self.pricingConfig = value
            }
            if let value = dict["symbol"] as? String {
                self.symbol = value
            }
            if let value = dict["version"] as? Int32 {
                self.version = value
            }
        }
    }
    public var data: ModelRouterUpdateBillingRuleResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelRouterUpdateBillingRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterUpdateBillingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterUpdateBillingRuleResponseBody?

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
            var model = ModelRouterUpdateBillingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterUpdateClientRequest : Tea.TeaModel {
    public var address: String?

    public var allowedModels: String?

    public var contact: String?

    public var discount: Double?

    public var name: String?

    public var remark: String?

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
        if self.address != nil {
            map["address"] = self.address!
        }
        if self.allowedModels != nil {
            map["allowedModels"] = self.allowedModels!
        }
        if self.contact != nil {
            map["contact"] = self.contact!
        }
        if self.discount != nil {
            map["discount"] = self.discount!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["address"] as? String {
            self.address = value
        }
        if let value = dict["allowedModels"] as? String {
            self.allowedModels = value
        }
        if let value = dict["contact"] as? String {
            self.contact = value
        }
        if let value = dict["discount"] as? Double {
            self.discount = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ModelRouterUpdateClientResponseBody : Tea.TeaModel {
    public var data: ClientDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ClientDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterUpdateClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterUpdateClientResponseBody?

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
            var model = ModelRouterUpdateClientResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterUpdateConversationRequest : Tea.TeaModel {
    public var chatData: String?

    public var messageCount: Int32?

    public var modelIds: String?

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
        if self.chatData != nil {
            map["chatData"] = self.chatData!
        }
        if self.messageCount != nil {
            map["messageCount"] = self.messageCount!
        }
        if self.modelIds != nil {
            map["modelIds"] = self.modelIds!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatData"] as? String {
            self.chatData = value
        }
        if let value = dict["messageCount"] as? Int32 {
            self.messageCount = value
        }
        if let value = dict["modelIds"] as? String {
            self.modelIds = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class ModelRouterUpdateConversationResponseBody : Tea.TeaModel {
    public var data: ConversationDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ConversationDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterUpdateConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterUpdateConversationResponseBody?

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
            var model = ModelRouterUpdateConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModelRouterUpdateModelRequest : Tea.TeaModel {
    public var apiKey: String?

    public var baseUrl: String?

    public var description_: String?

    public var maxInputLength: String?

    public var maxOutputLength: String?

    public var modelId: String?

    public var modelType: String?

    public var name: String?

    public var status: Int32?

    public var symbol: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.baseUrl != nil {
            map["baseUrl"] = self.baseUrl!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.maxInputLength != nil {
            map["maxInputLength"] = self.maxInputLength!
        }
        if self.maxOutputLength != nil {
            map["maxOutputLength"] = self.maxOutputLength!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.symbol != nil {
            map["symbol"] = self.symbol!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["baseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["maxInputLength"] as? String {
            self.maxInputLength = value
        }
        if let value = dict["maxOutputLength"] as? String {
            self.maxOutputLength = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["symbol"] as? String {
            self.symbol = value
        }
        if let value = dict["tags"] as? String {
            self.tags = value
        }
    }
}

public class ModelRouterUpdateModelResponseBody : Tea.TeaModel {
    public var data: ModelDTO?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ModelDTO()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ModelRouterUpdateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelRouterUpdateModelResponseBody?

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
            var model = ModelRouterUpdateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PersonalizedTextToImageAddInferenceJobRequest : Tea.TeaModel {
    public var imageNumber: Int32?

    public var imageUrl: [String]?

    public var prompt: String?

    public var seed: Int64?

    public var strength: Double?

    public var trainSteps: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNumber != nil {
            map["imageNumber"] = self.imageNumber!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.seed != nil {
            map["seed"] = self.seed!
        }
        if self.strength != nil {
            map["strength"] = self.strength!
        }
        if self.trainSteps != nil {
            map["trainSteps"] = self.trainSteps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["imageNumber"] as? Int32 {
            self.imageNumber = value
        }
        if let value = dict["imageUrl"] as? [String] {
            self.imageUrl = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["seed"] as? Int64 {
            self.seed = value
        }
        if let value = dict["strength"] as? Double {
            self.strength = value
        }
        if let value = dict["trainSteps"] as? Int32 {
            self.trainSteps = value
        }
    }
}

public class PersonalizedTextToImageAddInferenceJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var id: String?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var promptId: String?

        public var resultImageUrl: [String]?

        public override init() {
            super.init()
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
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.promptId != nil {
                map["promptId"] = self.promptId!
            }
            if self.resultImageUrl != nil {
                map["resultImageUrl"] = self.resultImageUrl!
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
            if let value = dict["jobStatus"] as? String {
                self.jobStatus = value
            }
            if let value = dict["jobTrainProgress"] as? Double {
                self.jobTrainProgress = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["promptId"] as? String {
                self.promptId = value
            }
            if let value = dict["resultImageUrl"] as? [String] {
                self.resultImageUrl = value
            }
        }
    }
    public var data: PersonalizedTextToImageAddInferenceJobResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = PersonalizedTextToImageAddInferenceJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class PersonalizedTextToImageAddInferenceJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PersonalizedTextToImageAddInferenceJobResponseBody?

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
            var model = PersonalizedTextToImageAddInferenceJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PersonalizedTextToImageQueryImageAssetRequest : Tea.TeaModel {
    public var encodeFormat: String?

    public var imageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encodeFormat != nil {
            map["encodeFormat"] = self.encodeFormat!
        }
        if self.imageId != nil {
            map["imageId"] = self.imageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["encodeFormat"] as? String {
            self.encodeFormat = value
        }
        if let value = dict["imageId"] as? String {
            self.imageId = value
        }
    }
}

public class PersonalizedTextToImageQueryImageAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Any?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
            map["body"] = self.body!
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
        if let value = dict["body"] as? Any {
            self.body = value
        }
    }
}

public class PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest : Tea.TeaModel {
    public var inferenceJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inferenceJobId != nil {
            map["inferenceJobId"] = self.inferenceJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["inferenceJobId"] as? String {
            self.inferenceJobId = value
        }
    }
}

public class PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var id: String?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var promptId: String?

        public var resultImageUrl: [String]?

        public override init() {
            super.init()
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
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.promptId != nil {
                map["promptId"] = self.promptId!
            }
            if self.resultImageUrl != nil {
                map["resultImageUrl"] = self.resultImageUrl!
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
            if let value = dict["jobStatus"] as? String {
                self.jobStatus = value
            }
            if let value = dict["jobTrainProgress"] as? Double {
                self.jobTrainProgress = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["promptId"] as? String {
                self.promptId = value
            }
            if let value = dict["resultImageUrl"] as? [String] {
                self.resultImageUrl = value
            }
        }
    }
    public var data: PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody?

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
            var model = PersonalizedTextToImageQueryPreModelInferenceJobInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Personalizedtxt2imgAddInferenceJobRequest : Tea.TeaModel {
    public var imageNumber: Int32?

    public var modelId: String?

    public var prompt: String?

    public var seed: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNumber != nil {
            map["imageNumber"] = self.imageNumber!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.seed != nil {
            map["seed"] = self.seed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["imageNumber"] as? Int32 {
            self.imageNumber = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["seed"] as? Int64 {
            self.seed = value
        }
    }
}

public class Personalizedtxt2imgAddInferenceJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var id: String?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var promptId: String?

        public var resultImageUrl: [String]?

        public override init() {
            super.init()
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
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.promptId != nil {
                map["promptId"] = self.promptId!
            }
            if self.resultImageUrl != nil {
                map["resultImageUrl"] = self.resultImageUrl!
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
            if let value = dict["jobStatus"] as? String {
                self.jobStatus = value
            }
            if let value = dict["jobTrainProgress"] as? Double {
                self.jobTrainProgress = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["promptId"] as? String {
                self.promptId = value
            }
            if let value = dict["resultImageUrl"] as? [String] {
                self.resultImageUrl = value
            }
        }
    }
    public var data: Personalizedtxt2imgAddInferenceJobResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = Personalizedtxt2imgAddInferenceJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class Personalizedtxt2imgAddInferenceJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgAddInferenceJobResponseBody?

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
            var model = Personalizedtxt2imgAddInferenceJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Personalizedtxt2imgAddModelTrainJobRequest : Tea.TeaModel {
    public var imageUrl: [String]?

    public var name: String?

    public var objectType: String?

    public var trainSteps: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        if self.trainSteps != nil {
            map["trainSteps"] = self.trainSteps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["imageUrl"] as? [String] {
            self.imageUrl = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["objectType"] as? String {
            self.objectType = value
        }
        if let value = dict["trainSteps"] as? Int32 {
            self.trainSteps = value
        }
    }
}

public class Personalizedtxt2imgAddModelTrainJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InferenceJobList : Tea.TeaModel {
            public var createTime: String?

            public var id: String?

            public var jobStatus: String?

            public var jobTrainProgress: Double?

            public var modelId: String?

            public var promptId: String?

            public var resultImageUrl: [String]?

            public override init() {
                super.init()
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
                if self.jobStatus != nil {
                    map["jobStatus"] = self.jobStatus!
                }
                if self.jobTrainProgress != nil {
                    map["jobTrainProgress"] = self.jobTrainProgress!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.promptId != nil {
                    map["promptId"] = self.promptId!
                }
                if self.resultImageUrl != nil {
                    map["resultImageUrl"] = self.resultImageUrl!
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
                if let value = dict["jobStatus"] as? String {
                    self.jobStatus = value
                }
                if let value = dict["jobTrainProgress"] as? Double {
                    self.jobTrainProgress = value
                }
                if let value = dict["modelId"] as? String {
                    self.modelId = value
                }
                if let value = dict["promptId"] as? String {
                    self.promptId = value
                }
                if let value = dict["resultImageUrl"] as? [String] {
                    self.resultImageUrl = value
                }
            }
        }
        public var createTime: String?

        public var id: String?

        public var imageUrl: [String]?

        public var inferenceImageCount: Int32?

        public var inferenceJobList: [Personalizedtxt2imgAddModelTrainJobResponseBody.Data.InferenceJobList]?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var name: String?

        public var objectType: String?

        public override init() {
            super.init()
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
            if self.imageUrl != nil {
                map["imageUrl"] = self.imageUrl!
            }
            if self.inferenceImageCount != nil {
                map["inferenceImageCount"] = self.inferenceImageCount!
            }
            if self.inferenceJobList != nil {
                var tmp : [Any] = []
                for k in self.inferenceJobList! {
                    tmp.append(k.toMap())
                }
                map["inferenceJobList"] = tmp
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
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
            if let value = dict["imageUrl"] as? [String] {
                self.imageUrl = value
            }
            if let value = dict["inferenceImageCount"] as? Int32 {
                self.inferenceImageCount = value
            }
            if let value = dict["inferenceJobList"] as? [Any?] {
                var tmp : [Personalizedtxt2imgAddModelTrainJobResponseBody.Data.InferenceJobList] = []
                for v in value {
                    if v != nil {
                        var model = Personalizedtxt2imgAddModelTrainJobResponseBody.Data.InferenceJobList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inferenceJobList = tmp
            }
            if let value = dict["jobStatus"] as? String {
                self.jobStatus = value
            }
            if let value = dict["jobTrainProgress"] as? Double {
                self.jobTrainProgress = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
        }
    }
    public var data: Personalizedtxt2imgAddModelTrainJobResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = Personalizedtxt2imgAddModelTrainJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class Personalizedtxt2imgAddModelTrainJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgAddModelTrainJobResponseBody?

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
            var model = Personalizedtxt2imgAddModelTrainJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Personalizedtxt2imgQueryImageAssetRequest : Tea.TeaModel {
    public var encodeFormat: String?

    public var imageId: String?

    public var modelId: String?

    public var promptId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encodeFormat != nil {
            map["encodeFormat"] = self.encodeFormat!
        }
        if self.imageId != nil {
            map["imageId"] = self.imageId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.promptId != nil {
            map["promptId"] = self.promptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["encodeFormat"] as? String {
            self.encodeFormat = value
        }
        if let value = dict["imageId"] as? String {
            self.imageId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["promptId"] as? String {
            self.promptId = value
        }
    }
}

public class Personalizedtxt2imgQueryImageAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Any?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
            map["body"] = self.body!
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
        if let value = dict["body"] as? Any {
            self.body = value
        }
    }
}

public class Personalizedtxt2imgQueryInferenceJobInfoRequest : Tea.TeaModel {
    public var inferenceJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inferenceJobId != nil {
            map["inferenceJobId"] = self.inferenceJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["inferenceJobId"] as? String {
            self.inferenceJobId = value
        }
    }
}

public class Personalizedtxt2imgQueryInferenceJobInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var id: String?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var promptId: String?

        public var resultImageUrl: [String]?

        public override init() {
            super.init()
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
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.promptId != nil {
                map["promptId"] = self.promptId!
            }
            if self.resultImageUrl != nil {
                map["resultImageUrl"] = self.resultImageUrl!
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
            if let value = dict["jobStatus"] as? String {
                self.jobStatus = value
            }
            if let value = dict["jobTrainProgress"] as? Double {
                self.jobTrainProgress = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["promptId"] as? String {
                self.promptId = value
            }
            if let value = dict["resultImageUrl"] as? [String] {
                self.resultImageUrl = value
            }
        }
    }
    public var data: Personalizedtxt2imgQueryInferenceJobInfoResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = Personalizedtxt2imgQueryInferenceJobInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class Personalizedtxt2imgQueryInferenceJobInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgQueryInferenceJobInfoResponseBody?

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
            var model = Personalizedtxt2imgQueryInferenceJobInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainJobListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InferenceJobList : Tea.TeaModel {
            public var createTime: String?

            public var id: String?

            public var jobStatus: String?

            public var jobTrainProgress: Double?

            public var modelId: String?

            public var promptId: String?

            public var resultImageUrl: [String]?

            public override init() {
                super.init()
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
                if self.jobStatus != nil {
                    map["jobStatus"] = self.jobStatus!
                }
                if self.jobTrainProgress != nil {
                    map["jobTrainProgress"] = self.jobTrainProgress!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.promptId != nil {
                    map["promptId"] = self.promptId!
                }
                if self.resultImageUrl != nil {
                    map["resultImageUrl"] = self.resultImageUrl!
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
                if let value = dict["jobStatus"] as? String {
                    self.jobStatus = value
                }
                if let value = dict["jobTrainProgress"] as? Double {
                    self.jobTrainProgress = value
                }
                if let value = dict["modelId"] as? String {
                    self.modelId = value
                }
                if let value = dict["promptId"] as? String {
                    self.promptId = value
                }
                if let value = dict["resultImageUrl"] as? [String] {
                    self.resultImageUrl = value
                }
            }
        }
        public var createTime: String?

        public var id: String?

        public var imageUrl: [String]?

        public var inferenceImageCount: Int32?

        public var inferenceJobList: [Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data.InferenceJobList]?

        public var jobStatus: String?

        public var jobTrainProgress: Double?

        public var modelId: String?

        public var name: String?

        public var objectType: String?

        public override init() {
            super.init()
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
            if self.imageUrl != nil {
                map["imageUrl"] = self.imageUrl!
            }
            if self.inferenceImageCount != nil {
                map["inferenceImageCount"] = self.inferenceImageCount!
            }
            if self.inferenceJobList != nil {
                var tmp : [Any] = []
                for k in self.inferenceJobList! {
                    tmp.append(k.toMap())
                }
                map["inferenceJobList"] = tmp
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.jobTrainProgress != nil {
                map["jobTrainProgress"] = self.jobTrainProgress!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
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
            if let value = dict["imageUrl"] as? [String] {
                self.imageUrl = value
            }
            if let value = dict["inferenceImageCount"] as? Int32 {
                self.inferenceImageCount = value
            }
            if let value = dict["inferenceJobList"] as? [Any?] {
                var tmp : [Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data.InferenceJobList] = []
                for v in value {
                    if v != nil {
                        var model = Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data.InferenceJobList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inferenceJobList = tmp
            }
            if let value = dict["jobStatus"] as? String {
                self.jobStatus = value
            }
            if let value = dict["jobTrainProgress"] as? Double {
                self.jobTrainProgress = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
        }
    }
    public var data: [Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = Personalizedtxt2imgQueryModelTrainJobListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainJobListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgQueryModelTrainJobListResponseBody?

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
            var model = Personalizedtxt2imgQueryModelTrainJobListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainStatusRequest : Tea.TeaModel {
    public var modelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modelTrainStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelTrainStatus != nil {
                map["modelTrainStatus"] = self.modelTrainStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelTrainStatus"] as? String {
                self.modelTrainStatus = value
            }
        }
    }
    public var data: Personalizedtxt2imgQueryModelTrainStatusResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = Personalizedtxt2imgQueryModelTrainStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class Personalizedtxt2imgQueryModelTrainStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Personalizedtxt2imgQueryModelTrainStatusResponseBody?

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
            var model = Personalizedtxt2imgQueryModelTrainStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryApplicationAccessIdRequest : Tea.TeaModel {
    public var applicationAccessId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationAccessId != nil {
            map["applicationAccessId"] = self.applicationAccessId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationAccessId"] as? String {
            self.applicationAccessId = value
        }
    }
}

public class QueryApplicationAccessIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var applicationAccessId: String?

        public var applicationAccessSecret: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationAccessId != nil {
                map["applicationAccessId"] = self.applicationAccessId!
            }
            if self.applicationAccessSecret != nil {
                map["applicationAccessSecret"] = self.applicationAccessSecret!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["applicationAccessId"] as? String {
                self.applicationAccessId = value
            }
            if let value = dict["applicationAccessSecret"] as? String {
                self.applicationAccessSecret = value
            }
        }
    }
    public var data: QueryApplicationAccessIdResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryApplicationAccessIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryApplicationAccessIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryApplicationAccessIdResponseBody?

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
            var model = QueryApplicationAccessIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryProjectRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
    }
}

public class QueryProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProjectApps : Tea.TeaModel {
            public class ApplicationAccessIds : Tea.TeaModel {
                public var applicationAccessId: String?

                public var applicationAccessSecret: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applicationAccessId != nil {
                        map["applicationAccessId"] = self.applicationAccessId!
                    }
                    if self.applicationAccessSecret != nil {
                        map["applicationAccessSecret"] = self.applicationAccessSecret!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["applicationAccessId"] as? String {
                        self.applicationAccessId = value
                    }
                    if let value = dict["applicationAccessSecret"] as? String {
                        self.applicationAccessSecret = value
                    }
                }
            }
            public var applicationAccessIds: [QueryProjectResponseBody.Data.ProjectApps.ApplicationAccessIds]?

            public var id: String?

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
                if self.applicationAccessIds != nil {
                    var tmp : [Any] = []
                    for k in self.applicationAccessIds! {
                        tmp.append(k.toMap())
                    }
                    map["ApplicationAccessIds"] = tmp
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApplicationAccessIds"] as? [Any?] {
                    var tmp : [QueryProjectResponseBody.Data.ProjectApps.ApplicationAccessIds] = []
                    for v in value {
                        if v != nil {
                            var model = QueryProjectResponseBody.Data.ProjectApps.ApplicationAccessIds()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.applicationAccessIds = tmp
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["ProjectId"] as? String {
                    self.projectId = value
                }
            }
        }
        public class ProjectSDK : Tea.TeaModel {
            public var createTime: String?

            public var demoUrl: String?

            public var deployMode: String?

            public var developLanguage: String?

            public var docUrl: String?

            public var sdkName: String?

            public var sdkUrl: String?

            public var sdkVersion: String?

            public override init() {
                super.init()
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
                if self.demoUrl != nil {
                    map["DemoUrl"] = self.demoUrl!
                }
                if self.deployMode != nil {
                    map["DeployMode"] = self.deployMode!
                }
                if self.developLanguage != nil {
                    map["DevelopLanguage"] = self.developLanguage!
                }
                if self.docUrl != nil {
                    map["DocUrl"] = self.docUrl!
                }
                if self.sdkName != nil {
                    map["SdkName"] = self.sdkName!
                }
                if self.sdkUrl != nil {
                    map["SdkUrl"] = self.sdkUrl!
                }
                if self.sdkVersion != nil {
                    map["SdkVersion"] = self.sdkVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DemoUrl"] as? String {
                    self.demoUrl = value
                }
                if let value = dict["DeployMode"] as? String {
                    self.deployMode = value
                }
                if let value = dict["DevelopLanguage"] as? String {
                    self.developLanguage = value
                }
                if let value = dict["DocUrl"] as? String {
                    self.docUrl = value
                }
                if let value = dict["SdkName"] as? String {
                    self.sdkName = value
                }
                if let value = dict["SdkUrl"] as? String {
                    self.sdkUrl = value
                }
                if let value = dict["SdkVersion"] as? String {
                    self.sdkVersion = value
                }
            }
        }
        public var createTime: String?

        public var projectApps: [QueryProjectResponseBody.Data.ProjectApps]?

        public var projectId: String?

        public var projectName: String?

        public var projectSDK: [QueryProjectResponseBody.Data.ProjectSDK]?

        public var projectType: String?

        public override init() {
            super.init()
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
            if self.projectApps != nil {
                var tmp : [Any] = []
                for k in self.projectApps! {
                    tmp.append(k.toMap())
                }
                map["ProjectApps"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectSDK != nil {
                var tmp : [Any] = []
                for k in self.projectSDK! {
                    tmp.append(k.toMap())
                }
                map["ProjectSDK"] = tmp
            }
            if self.projectType != nil {
                map["ProjectType"] = self.projectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ProjectApps"] as? [Any?] {
                var tmp : [QueryProjectResponseBody.Data.ProjectApps] = []
                for v in value {
                    if v != nil {
                        var model = QueryProjectResponseBody.Data.ProjectApps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.projectApps = tmp
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["ProjectSDK"] as? [Any?] {
                var tmp : [QueryProjectResponseBody.Data.ProjectSDK] = []
                for v in value {
                    if v != nil {
                        var model = QueryProjectResponseBody.Data.ProjectSDK()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.projectSDK = tmp
            }
            if let value = dict["ProjectType"] as? String {
                self.projectType = value
            }
        }
    }
    public var data: QueryProjectResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = QueryProjectResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProjectResponseBody?

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
            var model = QueryProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryProjectListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProjectApps : Tea.TeaModel {
            public class ApplicationAccessIds : Tea.TeaModel {
                public var applicationAccessId: String?

                public var applicationAccessSecret: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applicationAccessId != nil {
                        map["applicationAccessId"] = self.applicationAccessId!
                    }
                    if self.applicationAccessSecret != nil {
                        map["applicationAccessSecret"] = self.applicationAccessSecret!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["applicationAccessId"] as? String {
                        self.applicationAccessId = value
                    }
                    if let value = dict["applicationAccessSecret"] as? String {
                        self.applicationAccessSecret = value
                    }
                }
            }
            public var applicationAccessIds: [QueryProjectListResponseBody.Data.ProjectApps.ApplicationAccessIds]?

            public var id: String?

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
                if self.applicationAccessIds != nil {
                    var tmp : [Any] = []
                    for k in self.applicationAccessIds! {
                        tmp.append(k.toMap())
                    }
                    map["ApplicationAccessIds"] = tmp
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApplicationAccessIds"] as? [Any?] {
                    var tmp : [QueryProjectListResponseBody.Data.ProjectApps.ApplicationAccessIds] = []
                    for v in value {
                        if v != nil {
                            var model = QueryProjectListResponseBody.Data.ProjectApps.ApplicationAccessIds()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.applicationAccessIds = tmp
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["ProjectId"] as? String {
                    self.projectId = value
                }
            }
        }
        public class ProjectSDK : Tea.TeaModel {
            public var createTime: String?

            public var demoUrl: String?

            public var deployMode: String?

            public var developLanguage: String?

            public var docUrl: String?

            public var sdkName: String?

            public var sdkUrl: String?

            public var sdkVersion: String?

            public override init() {
                super.init()
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
                if self.demoUrl != nil {
                    map["DemoUrl"] = self.demoUrl!
                }
                if self.deployMode != nil {
                    map["DeployMode"] = self.deployMode!
                }
                if self.developLanguage != nil {
                    map["DevelopLanguage"] = self.developLanguage!
                }
                if self.docUrl != nil {
                    map["DocUrl"] = self.docUrl!
                }
                if self.sdkName != nil {
                    map["SdkName"] = self.sdkName!
                }
                if self.sdkUrl != nil {
                    map["SdkUrl"] = self.sdkUrl!
                }
                if self.sdkVersion != nil {
                    map["SdkVersion"] = self.sdkVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DemoUrl"] as? String {
                    self.demoUrl = value
                }
                if let value = dict["DeployMode"] as? String {
                    self.deployMode = value
                }
                if let value = dict["DevelopLanguage"] as? String {
                    self.developLanguage = value
                }
                if let value = dict["DocUrl"] as? String {
                    self.docUrl = value
                }
                if let value = dict["SdkName"] as? String {
                    self.sdkName = value
                }
                if let value = dict["SdkUrl"] as? String {
                    self.sdkUrl = value
                }
                if let value = dict["SdkVersion"] as? String {
                    self.sdkVersion = value
                }
            }
        }
        public var createTime: String?

        public var projectApps: [QueryProjectListResponseBody.Data.ProjectApps]?

        public var projectId: String?

        public var projectName: String?

        public var projectSDK: [QueryProjectListResponseBody.Data.ProjectSDK]?

        public var projectType: String?

        public override init() {
            super.init()
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
            if self.projectApps != nil {
                var tmp : [Any] = []
                for k in self.projectApps! {
                    tmp.append(k.toMap())
                }
                map["ProjectApps"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectSDK != nil {
                var tmp : [Any] = []
                for k in self.projectSDK! {
                    tmp.append(k.toMap())
                }
                map["ProjectSDK"] = tmp
            }
            if self.projectType != nil {
                map["ProjectType"] = self.projectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ProjectApps"] as? [Any?] {
                var tmp : [QueryProjectListResponseBody.Data.ProjectApps] = []
                for v in value {
                    if v != nil {
                        var model = QueryProjectListResponseBody.Data.ProjectApps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.projectApps = tmp
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["ProjectSDK"] as? [Any?] {
                var tmp : [QueryProjectListResponseBody.Data.ProjectSDK] = []
                for v in value {
                    if v != nil {
                        var model = QueryProjectListResponseBody.Data.ProjectSDK()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.projectSDK = tmp
            }
            if let value = dict["ProjectType"] as? String {
                self.projectType = value
            }
        }
    }
    public var data: [QueryProjectListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [QueryProjectListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryProjectListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryProjectListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProjectListResponseBody?

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
            var model = QueryProjectListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPurchasedServiceResponseBody : Tea.TeaModel {
    public var data: [AliyunConsoleServiceInfoDTO]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [AliyunConsoleServiceInfoDTO] = []
            for v in value {
                if v != nil {
                    var model = AliyunConsoleServiceInfoDTO()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPurchasedServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPurchasedServiceResponseBody?

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
            var model = QueryPurchasedServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public var projectName: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProjectApps : Tea.TeaModel {
            public class ApplicationAccessIds : Tea.TeaModel {
                public var applicationAccessId: String?

                public var applicationAccessSecret: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applicationAccessId != nil {
                        map["applicationAccessId"] = self.applicationAccessId!
                    }
                    if self.applicationAccessSecret != nil {
                        map["applicationAccessSecret"] = self.applicationAccessSecret!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["applicationAccessId"] as? String {
                        self.applicationAccessId = value
                    }
                    if let value = dict["applicationAccessSecret"] as? String {
                        self.applicationAccessSecret = value
                    }
                }
            }
            public var applicationAccessIds: [UpdateProjectResponseBody.Data.ProjectApps.ApplicationAccessIds]?

            public var id: String?

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
                if self.applicationAccessIds != nil {
                    var tmp : [Any] = []
                    for k in self.applicationAccessIds! {
                        tmp.append(k.toMap())
                    }
                    map["ApplicationAccessIds"] = tmp
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApplicationAccessIds"] as? [Any?] {
                    var tmp : [UpdateProjectResponseBody.Data.ProjectApps.ApplicationAccessIds] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateProjectResponseBody.Data.ProjectApps.ApplicationAccessIds()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.applicationAccessIds = tmp
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["ProjectId"] as? String {
                    self.projectId = value
                }
            }
        }
        public class ProjectSDK : Tea.TeaModel {
            public var createTime: String?

            public var demoUrl: String?

            public var deployMode: String?

            public var developLanguage: String?

            public var docUrl: String?

            public var sdkName: String?

            public var sdkUrl: String?

            public var sdkVersion: String?

            public override init() {
                super.init()
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
                if self.demoUrl != nil {
                    map["DemoUrl"] = self.demoUrl!
                }
                if self.deployMode != nil {
                    map["DeployMode"] = self.deployMode!
                }
                if self.developLanguage != nil {
                    map["DevelopLanguage"] = self.developLanguage!
                }
                if self.docUrl != nil {
                    map["DocUrl"] = self.docUrl!
                }
                if self.sdkName != nil {
                    map["SdkName"] = self.sdkName!
                }
                if self.sdkUrl != nil {
                    map["SdkUrl"] = self.sdkUrl!
                }
                if self.sdkVersion != nil {
                    map["SdkVersion"] = self.sdkVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DemoUrl"] as? String {
                    self.demoUrl = value
                }
                if let value = dict["DeployMode"] as? String {
                    self.deployMode = value
                }
                if let value = dict["DevelopLanguage"] as? String {
                    self.developLanguage = value
                }
                if let value = dict["DocUrl"] as? String {
                    self.docUrl = value
                }
                if let value = dict["SdkName"] as? String {
                    self.sdkName = value
                }
                if let value = dict["SdkUrl"] as? String {
                    self.sdkUrl = value
                }
                if let value = dict["SdkVersion"] as? String {
                    self.sdkVersion = value
                }
            }
        }
        public var createTime: String?

        public var projectApps: [UpdateProjectResponseBody.Data.ProjectApps]?

        public var projectId: String?

        public var projectName: String?

        public var projectSDK: [UpdateProjectResponseBody.Data.ProjectSDK]?

        public var projectType: String?

        public override init() {
            super.init()
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
            if self.projectApps != nil {
                var tmp : [Any] = []
                for k in self.projectApps! {
                    tmp.append(k.toMap())
                }
                map["ProjectApps"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectSDK != nil {
                var tmp : [Any] = []
                for k in self.projectSDK! {
                    tmp.append(k.toMap())
                }
                map["ProjectSDK"] = tmp
            }
            if self.projectType != nil {
                map["ProjectType"] = self.projectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ProjectApps"] as? [Any?] {
                var tmp : [UpdateProjectResponseBody.Data.ProjectApps] = []
                for v in value {
                    if v != nil {
                        var model = UpdateProjectResponseBody.Data.ProjectApps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.projectApps = tmp
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["ProjectSDK"] as? [Any?] {
                var tmp : [UpdateProjectResponseBody.Data.ProjectSDK] = []
                for v in value {
                    if v != nil {
                        var model = UpdateProjectResponseBody.Data.ProjectSDK()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.projectSDK = tmp
            }
            if let value = dict["ProjectType"] as? String {
                self.projectType = value
            }
        }
    }
    public var data: UpdateProjectResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateProjectResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

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
            var model = UpdateProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
