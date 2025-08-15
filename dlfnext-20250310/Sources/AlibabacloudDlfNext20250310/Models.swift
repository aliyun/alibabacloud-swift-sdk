import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Catalog : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var id: String?

    public var isShared: Bool?

    public var name: String?

    public var options: [String: String]?

    public var owner: String?

    public var shareId: String?

    public var status: String?

    public var type: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
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
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.isShared != nil {
            map["isShared"] = self.isShared!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.shareId != nil {
            map["shareId"] = self.shareId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["isShared"] as? Bool {
            self.isShared = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["shareId"] as? String {
            self.shareId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class CatalogSummary : Tea.TeaModel {
    public var apiVisitCountMonthly: Int64?

    public var databaseCount: MoMValues?

    public var fileAccessCountMonthly: Int64?

    public var generatedDate: String?

    public var objTypeArchiveSize: Int64?

    public var objTypeColdArchiveSize: Int64?

    public var objTypeIaSize: Int64?

    public var objTypeStandardSize: Int64?

    public var partitionCount: MoMValues?

    public var tableCount: MoMValues?

    public var throughputMonthly: Int64?

    public var totalFileCount: MoMValues?

    public var totalFileSizeInBytes: MoMValues?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.databaseCount?.validate()
        try self.partitionCount?.validate()
        try self.tableCount?.validate()
        try self.totalFileCount?.validate()
        try self.totalFileSizeInBytes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVisitCountMonthly != nil {
            map["apiVisitCountMonthly"] = self.apiVisitCountMonthly!
        }
        if self.databaseCount != nil {
            map["databaseCount"] = self.databaseCount?.toMap()
        }
        if self.fileAccessCountMonthly != nil {
            map["fileAccessCountMonthly"] = self.fileAccessCountMonthly!
        }
        if self.generatedDate != nil {
            map["generatedDate"] = self.generatedDate!
        }
        if self.objTypeArchiveSize != nil {
            map["objTypeArchiveSize"] = self.objTypeArchiveSize!
        }
        if self.objTypeColdArchiveSize != nil {
            map["objTypeColdArchiveSize"] = self.objTypeColdArchiveSize!
        }
        if self.objTypeIaSize != nil {
            map["objTypeIaSize"] = self.objTypeIaSize!
        }
        if self.objTypeStandardSize != nil {
            map["objTypeStandardSize"] = self.objTypeStandardSize!
        }
        if self.partitionCount != nil {
            map["partitionCount"] = self.partitionCount?.toMap()
        }
        if self.tableCount != nil {
            map["tableCount"] = self.tableCount?.toMap()
        }
        if self.throughputMonthly != nil {
            map["throughputMonthly"] = self.throughputMonthly!
        }
        if self.totalFileCount != nil {
            map["totalFileCount"] = self.totalFileCount?.toMap()
        }
        if self.totalFileSizeInBytes != nil {
            map["totalFileSizeInBytes"] = self.totalFileSizeInBytes?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiVisitCountMonthly"] as? Int64 {
            self.apiVisitCountMonthly = value
        }
        if let value = dict["databaseCount"] as? [String: Any?] {
            var model = MoMValues()
            model.fromMap(value)
            self.databaseCount = model
        }
        if let value = dict["fileAccessCountMonthly"] as? Int64 {
            self.fileAccessCountMonthly = value
        }
        if let value = dict["generatedDate"] as? String {
            self.generatedDate = value
        }
        if let value = dict["objTypeArchiveSize"] as? Int64 {
            self.objTypeArchiveSize = value
        }
        if let value = dict["objTypeColdArchiveSize"] as? Int64 {
            self.objTypeColdArchiveSize = value
        }
        if let value = dict["objTypeIaSize"] as? Int64 {
            self.objTypeIaSize = value
        }
        if let value = dict["objTypeStandardSize"] as? Int64 {
            self.objTypeStandardSize = value
        }
        if let value = dict["partitionCount"] as? [String: Any?] {
            var model = MoMValues()
            model.fromMap(value)
            self.partitionCount = model
        }
        if let value = dict["tableCount"] as? [String: Any?] {
            var model = MoMValues()
            model.fromMap(value)
            self.tableCount = model
        }
        if let value = dict["throughputMonthly"] as? Int64 {
            self.throughputMonthly = value
        }
        if let value = dict["totalFileCount"] as? [String: Any?] {
            var model = MoMValues()
            model.fromMap(value)
            self.totalFileCount = model
        }
        if let value = dict["totalFileSizeInBytes"] as? [String: Any?] {
            var model = MoMValues()
            model.fromMap(value)
            self.totalFileSizeInBytes = model
        }
    }
}

public class CatalogSummaryTrend : Tea.TeaModel {
    public var apiVisitCount: [DateSummary]?

    public var fileAccessCount: [DateSummary]?

    public var throughput: [DateSummary]?

    public var totalFileCount: [DateSummary]?

    public var totalFileSizeInBytes: [DateSummary]?

    public var totalMetaCount: [DateSummary]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVisitCount != nil {
            var tmp : [Any] = []
            for k in self.apiVisitCount! {
                tmp.append(k.toMap())
            }
            map["apiVisitCount"] = tmp
        }
        if self.fileAccessCount != nil {
            var tmp : [Any] = []
            for k in self.fileAccessCount! {
                tmp.append(k.toMap())
            }
            map["fileAccessCount"] = tmp
        }
        if self.throughput != nil {
            var tmp : [Any] = []
            for k in self.throughput! {
                tmp.append(k.toMap())
            }
            map["throughput"] = tmp
        }
        if self.totalFileCount != nil {
            var tmp : [Any] = []
            for k in self.totalFileCount! {
                tmp.append(k.toMap())
            }
            map["totalFileCount"] = tmp
        }
        if self.totalFileSizeInBytes != nil {
            var tmp : [Any] = []
            for k in self.totalFileSizeInBytes! {
                tmp.append(k.toMap())
            }
            map["totalFileSizeInBytes"] = tmp
        }
        if self.totalMetaCount != nil {
            var tmp : [Any] = []
            for k in self.totalMetaCount! {
                tmp.append(k.toMap())
            }
            map["totalMetaCount"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiVisitCount"] as? [Any?] {
            var tmp : [DateSummary] = []
            for v in value {
                if v != nil {
                    var model = DateSummary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apiVisitCount = tmp
        }
        if let value = dict["fileAccessCount"] as? [Any?] {
            var tmp : [DateSummary] = []
            for v in value {
                if v != nil {
                    var model = DateSummary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fileAccessCount = tmp
        }
        if let value = dict["throughput"] as? [Any?] {
            var tmp : [DateSummary] = []
            for v in value {
                if v != nil {
                    var model = DateSummary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.throughput = tmp
        }
        if let value = dict["totalFileCount"] as? [Any?] {
            var tmp : [DateSummary] = []
            for v in value {
                if v != nil {
                    var model = DateSummary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.totalFileCount = tmp
        }
        if let value = dict["totalFileSizeInBytes"] as? [Any?] {
            var tmp : [DateSummary] = []
            for v in value {
                if v != nil {
                    var model = DateSummary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.totalFileSizeInBytes = tmp
        }
        if let value = dict["totalMetaCount"] as? [Any?] {
            var tmp : [DateSummary] = []
            for v in value {
                if v != nil {
                    var model = DateSummary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.totalMetaCount = tmp
        }
    }
}

public class DataField : Tea.TeaModel {
    public var description_: String?

    public var id: Int32?

    public var name: String?

    public var type: FullDataType?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.type?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["id"] as? Int32 {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? [String: Any?] {
            var model = FullDataType()
            model.fromMap(value)
            self.type = model
        }
    }
}

public class Database : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var id: String?

    public var location: String?

    public var name: String?

    public var options: [String: String]?

    public var owner: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
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
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["location"] as? String {
            self.location = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class DatabaseSummary : Tea.TeaModel {
    public var createdAt: Int64?

    public var databaseName: String?

    public var generatedDate: String?

    public var location: String?

    public var objTypeArchiveSize: Int64?

    public var objTypeColdArchiveSize: Int64?

    public var objTypeIaSize: Int64?

    public var objTypeStandardSize: Int64?

    public var partitionCount: Int64?

    public var tableCount: Int64?

    public var totalFileCount: Int64?

    public var totalFileSizeInBytes: Int64?

    public override init() {
        super.init()
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
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.generatedDate != nil {
            map["generatedDate"] = self.generatedDate!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.objTypeArchiveSize != nil {
            map["objTypeArchiveSize"] = self.objTypeArchiveSize!
        }
        if self.objTypeColdArchiveSize != nil {
            map["objTypeColdArchiveSize"] = self.objTypeColdArchiveSize!
        }
        if self.objTypeIaSize != nil {
            map["objTypeIaSize"] = self.objTypeIaSize!
        }
        if self.objTypeStandardSize != nil {
            map["objTypeStandardSize"] = self.objTypeStandardSize!
        }
        if self.partitionCount != nil {
            map["partitionCount"] = self.partitionCount!
        }
        if self.tableCount != nil {
            map["tableCount"] = self.tableCount!
        }
        if self.totalFileCount != nil {
            map["totalFileCount"] = self.totalFileCount!
        }
        if self.totalFileSizeInBytes != nil {
            map["totalFileSizeInBytes"] = self.totalFileSizeInBytes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["generatedDate"] as? String {
            self.generatedDate = value
        }
        if let value = dict["location"] as? String {
            self.location = value
        }
        if let value = dict["objTypeArchiveSize"] as? Int64 {
            self.objTypeArchiveSize = value
        }
        if let value = dict["objTypeColdArchiveSize"] as? Int64 {
            self.objTypeColdArchiveSize = value
        }
        if let value = dict["objTypeIaSize"] as? Int64 {
            self.objTypeIaSize = value
        }
        if let value = dict["objTypeStandardSize"] as? Int64 {
            self.objTypeStandardSize = value
        }
        if let value = dict["partitionCount"] as? Int64 {
            self.partitionCount = value
        }
        if let value = dict["tableCount"] as? Int64 {
            self.tableCount = value
        }
        if let value = dict["totalFileCount"] as? Int64 {
            self.totalFileCount = value
        }
        if let value = dict["totalFileSizeInBytes"] as? Int64 {
            self.totalFileSizeInBytes = value
        }
    }
}

public class DateSummary : Tea.TeaModel {
    public var date: String?

    public var value: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["date"] as? String {
            self.date = value
        }
        if let value = dict["value"] as? Int64 {
            self.value = value
        }
    }
}

public class ErrorResponse : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var resourceName: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.resourceName != nil {
            map["resourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["resourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class FailurePermission : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var permission: Permission?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.permission?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.permission != nil {
            map["permission"] = self.permission?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["permission"] as? [String: Any?] {
            var model = Permission()
            model.fromMap(value)
            self.permission = model
        }
    }
}

public class FullDataType : Tea.TeaModel {
    public var element: FullDataType?

    public var fields: [DataField]?

    public var key: FullDataType?

    public var type: String?

    public var value: FullDataType?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.element?.validate()
        try self.key?.validate()
        try self.value?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.element != nil {
            map["element"] = self.element?.toMap()
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["fields"] = tmp
        }
        if self.key != nil {
            map["key"] = self.key?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["element"] as? [String: Any?] {
            var model = FullDataType()
            model.fromMap(value)
            self.element = model
        }
        if let value = dict["fields"] as? [Any?] {
            var tmp : [DataField] = []
            for v in value {
                if v != nil {
                    var model = DataField()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["key"] as? [String: Any?] {
            var model = FullDataType()
            model.fromMap(value)
            self.key = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["value"] as? [String: Any?] {
            var model = FullDataType()
            model.fromMap(value)
            self.value = model
        }
    }
}

public class FullInstant : Tea.TeaModel {
    public var snapshotId: Int64?

    public var tagName: String?

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
        if self.snapshotId != nil {
            map["snapshotId"] = self.snapshotId!
        }
        if self.tagName != nil {
            map["tagName"] = self.tagName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["snapshotId"] as? Int64 {
            self.snapshotId = value
        }
        if let value = dict["tagName"] as? String {
            self.tagName = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class FullSchemaChange : Tea.TeaModel {
    public var action: String?

    public var comment: String?

    public var dataType: FullDataType?

    public var fieldNames: [String]?

    public var keepNullability: Bool?

    public var key: String?

    public var move: Move?

    public var newComment: String?

    public var newDataType: FullDataType?

    public var newName: String?

    public var newNullability: Bool?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataType?.validate()
        try self.move?.validate()
        try self.newDataType?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType?.toMap()
        }
        if self.fieldNames != nil {
            map["fieldNames"] = self.fieldNames!
        }
        if self.keepNullability != nil {
            map["keepNullability"] = self.keepNullability!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.move != nil {
            map["move"] = self.move?.toMap()
        }
        if self.newComment != nil {
            map["newComment"] = self.newComment!
        }
        if self.newDataType != nil {
            map["newDataType"] = self.newDataType?.toMap()
        }
        if self.newName != nil {
            map["newName"] = self.newName!
        }
        if self.newNullability != nil {
            map["newNullability"] = self.newNullability!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["dataType"] as? [String: Any?] {
            var model = FullDataType()
            model.fromMap(value)
            self.dataType = model
        }
        if let value = dict["fieldNames"] as? [String] {
            self.fieldNames = value
        }
        if let value = dict["keepNullability"] as? Bool {
            self.keepNullability = value
        }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["move"] as? [String: Any?] {
            var model = Move()
            model.fromMap(value)
            self.move = model
        }
        if let value = dict["newComment"] as? String {
            self.newComment = value
        }
        if let value = dict["newDataType"] as? [String: Any?] {
            var model = FullDataType()
            model.fromMap(value)
            self.newDataType = model
        }
        if let value = dict["newName"] as? String {
            self.newName = value
        }
        if let value = dict["newNullability"] as? Bool {
            self.newNullability = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class IcebergNestedField : Tea.TeaModel {
    public var doc: String?

    public var id: Int64?

    public var name: String?

    public var optional_: Bool?

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
        if self.doc != nil {
            map["doc"] = self.doc!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.optional_ != nil {
            map["optional"] = self.optional_!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["doc"] as? String {
            self.doc = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["optional"] as? Bool {
            self.optional_ = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class IcebergPartitionField : Tea.TeaModel {
    public var fieldId: Int64?

    public var name: String?

    public var sourceId: Int64?

    public var transform: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fieldId != nil {
            map["fieldId"] = self.fieldId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.transform != nil {
            map["transform"] = self.transform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fieldId"] as? Int64 {
            self.fieldId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sourceId"] as? Int64 {
            self.sourceId = value
        }
        if let value = dict["transform"] as? String {
            self.transform = value
        }
    }
}

public class IcebergSnapshot : Tea.TeaModel {
    public var addedRows: Int64?

    public var id: Int64?

    public var operation: String?

    public var parentId: Int64?

    public var schemaId: Int64?

    public var sequenceNumber: Int64?

    public var summary: [String: String]?

    public var timestampMillis: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addedRows != nil {
            map["addedRows"] = self.addedRows!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.operation != nil {
            map["operation"] = self.operation!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.schemaId != nil {
            map["schemaId"] = self.schemaId!
        }
        if self.sequenceNumber != nil {
            map["sequenceNumber"] = self.sequenceNumber!
        }
        if self.summary != nil {
            map["summary"] = self.summary!
        }
        if self.timestampMillis != nil {
            map["timestampMillis"] = self.timestampMillis!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addedRows"] as? Int64 {
            self.addedRows = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["operation"] as? String {
            self.operation = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["schemaId"] as? Int64 {
            self.schemaId = value
        }
        if let value = dict["sequenceNumber"] as? Int64 {
            self.sequenceNumber = value
        }
        if let value = dict["summary"] as? [String: String] {
            self.summary = value
        }
        if let value = dict["timestampMillis"] as? Int64 {
            self.timestampMillis = value
        }
    }
}

public class IcebergTable : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var icebergTableMetadata: IcebergTableMetadata?

    public var id: String?

    public var name: String?

    public var owner: String?

    public var path: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public var version: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.icebergTableMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.icebergTableMetadata != nil {
            map["icebergTableMetadata"] = self.icebergTableMetadata?.toMap()
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["icebergTableMetadata"] as? [String: Any?] {
            var model = IcebergTableMetadata()
            model.fromMap(value)
            self.icebergTableMetadata = model
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
        if let value = dict["version"] as? Int64 {
            self.version = value
        }
    }
}

public class IcebergTableMetadata : Tea.TeaModel {
    public var currentSnapshot: IcebergSnapshot?

    public var fields: [IcebergNestedField]?

    public var partitionFields: [IcebergPartitionField]?

    public var properties: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.currentSnapshot?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentSnapshot != nil {
            map["currentSnapshot"] = self.currentSnapshot?.toMap()
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["fields"] = tmp
        }
        if self.partitionFields != nil {
            var tmp : [Any] = []
            for k in self.partitionFields! {
                tmp.append(k.toMap())
            }
            map["partitionFields"] = tmp
        }
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentSnapshot"] as? [String: Any?] {
            var model = IcebergSnapshot()
            model.fromMap(value)
            self.currentSnapshot = model
        }
        if let value = dict["fields"] as? [Any?] {
            var tmp : [IcebergNestedField] = []
            for v in value {
                if v != nil {
                    var model = IcebergNestedField()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["partitionFields"] as? [Any?] {
            var tmp : [IcebergPartitionField] = []
            for v in value {
                if v != nil {
                    var model = IcebergPartitionField()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionFields = tmp
        }
        if let value = dict["properties"] as? [String: String] {
            self.properties = value
        }
    }
}

public class Identifier : Tea.TeaModel {
    public var database: String?

    public var object: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.database != nil {
            map["database"] = self.database!
        }
        if self.object != nil {
            map["object"] = self.object!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["database"] as? String {
            self.database = value
        }
        if let value = dict["object"] as? String {
            self.object = value
        }
    }
}

public class MoMValues : Tea.TeaModel {
    public var currentValue: Int64?

    public var lastDayValue: Int64?

    public var lastMonthValue: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentValue != nil {
            map["currentValue"] = self.currentValue!
        }
        if self.lastDayValue != nil {
            map["lastDayValue"] = self.lastDayValue!
        }
        if self.lastMonthValue != nil {
            map["lastMonthValue"] = self.lastMonthValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentValue"] as? Int64 {
            self.currentValue = value
        }
        if let value = dict["lastDayValue"] as? Int64 {
            self.lastDayValue = value
        }
        if let value = dict["lastMonthValue"] as? Int64 {
            self.lastMonthValue = value
        }
    }
}

public class Move : Tea.TeaModel {
    public var fieldName: String?

    public var referenceFieldName: String?

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
        if self.fieldName != nil {
            map["fieldName"] = self.fieldName!
        }
        if self.referenceFieldName != nil {
            map["referenceFieldName"] = self.referenceFieldName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fieldName"] as? String {
            self.fieldName = value
        }
        if let value = dict["referenceFieldName"] as? String {
            self.referenceFieldName = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class Namespace : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var id: String?

    public var location: String?

    public var name: String?

    public var options: [String: String]?

    public var owner: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
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
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["location"] as? String {
            self.location = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class Partition : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var done: Bool?

    public var fileCount: Int64?

    public var fileSizeInBytes: Int64?

    public var lastFileCreationTime: Int64?

    public var recordCount: Int64?

    public var spec: [String: Any]?

    public var storageAction: String?

    public var storageActionTimestamp: Int64?

    public var storageClass: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
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
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.done != nil {
            map["done"] = self.done!
        }
        if self.fileCount != nil {
            map["fileCount"] = self.fileCount!
        }
        if self.fileSizeInBytes != nil {
            map["fileSizeInBytes"] = self.fileSizeInBytes!
        }
        if self.lastFileCreationTime != nil {
            map["lastFileCreationTime"] = self.lastFileCreationTime!
        }
        if self.recordCount != nil {
            map["recordCount"] = self.recordCount!
        }
        if self.spec != nil {
            map["spec"] = self.spec!
        }
        if self.storageAction != nil {
            map["storageAction"] = self.storageAction!
        }
        if self.storageActionTimestamp != nil {
            map["storageActionTimestamp"] = self.storageActionTimestamp!
        }
        if self.storageClass != nil {
            map["storageClass"] = self.storageClass!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["done"] as? Bool {
            self.done = value
        }
        if let value = dict["fileCount"] as? Int64 {
            self.fileCount = value
        }
        if let value = dict["fileSizeInBytes"] as? Int64 {
            self.fileSizeInBytes = value
        }
        if let value = dict["lastFileCreationTime"] as? Int64 {
            self.lastFileCreationTime = value
        }
        if let value = dict["recordCount"] as? Int64 {
            self.recordCount = value
        }
        if let value = dict["spec"] as? [String: Any] {
            self.spec = value
        }
        if let value = dict["storageAction"] as? String {
            self.storageAction = value
        }
        if let value = dict["storageActionTimestamp"] as? Int64 {
            self.storageActionTimestamp = value
        }
        if let value = dict["storageClass"] as? String {
            self.storageClass = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class PartitionSummaries : Tea.TeaModel {
    public var nextPageToken: String?

    public var partitions: [PartitionSummary]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.partitions != nil {
            var tmp : [Any] = []
            for k in self.partitions! {
                tmp.append(k.toMap())
            }
            map["partitions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["partitions"] as? [Any?] {
            var tmp : [PartitionSummary] = []
            for v in value {
                if v != nil {
                    var model = PartitionSummary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitions = tmp
        }
    }
}

public class PartitionSummary : Tea.TeaModel {
    public var createdAt: Int64?

    public var databaseName: String?

    public var lastAccessTime: Int64?

    public var partitionName: String?

    public var storageActionParams: [String: String]?

    public var storageActionTimestamp: Int64?

    public var storageClass: String?

    public var tableName: String?

    public var totalFileCount: Int64?

    public var totalFileSizeInBytes: Int64?

    public var updatedAt: Int64?

    public override init() {
        super.init()
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
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.lastAccessTime != nil {
            map["lastAccessTime"] = self.lastAccessTime!
        }
        if self.partitionName != nil {
            map["partitionName"] = self.partitionName!
        }
        if self.storageActionParams != nil {
            map["storageActionParams"] = self.storageActionParams!
        }
        if self.storageActionTimestamp != nil {
            map["storageActionTimestamp"] = self.storageActionTimestamp!
        }
        if self.storageClass != nil {
            map["storageClass"] = self.storageClass!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.totalFileCount != nil {
            map["totalFileCount"] = self.totalFileCount!
        }
        if self.totalFileSizeInBytes != nil {
            map["totalFileSizeInBytes"] = self.totalFileSizeInBytes!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["lastAccessTime"] as? Int64 {
            self.lastAccessTime = value
        }
        if let value = dict["partitionName"] as? String {
            self.partitionName = value
        }
        if let value = dict["storageActionParams"] as? [String: String] {
            self.storageActionParams = value
        }
        if let value = dict["storageActionTimestamp"] as? Int64 {
            self.storageActionTimestamp = value
        }
        if let value = dict["storageClass"] as? String {
            self.storageClass = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
        if let value = dict["totalFileCount"] as? Int64 {
            self.totalFileCount = value
        }
        if let value = dict["totalFileSizeInBytes"] as? Int64 {
            self.totalFileSizeInBytes = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class Permission : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public var columnNames: [String]?

        public var excludedColumnNames: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columnNames != nil {
                map["columnNames"] = self.columnNames!
            }
            if self.excludedColumnNames != nil {
                map["excludedColumnNames"] = self.excludedColumnNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["columnNames"] as? [String] {
                self.columnNames = value
            }
            if let value = dict["excludedColumnNames"] as? [String] {
                self.excludedColumnNames = value
            }
        }
    }
    public var access: String?

    public var columns: Permission.Columns?

    public var database: String?

    public var function: String?

    public var principal: String?

    public var resourceType: String?

    public var table: String?

    public var view: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columns?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.access != nil {
            map["access"] = self.access!
        }
        if self.columns != nil {
            map["columns"] = self.columns?.toMap()
        }
        if self.database != nil {
            map["database"] = self.database!
        }
        if self.function != nil {
            map["function"] = self.function!
        }
        if self.principal != nil {
            map["principal"] = self.principal!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        if self.view != nil {
            map["view"] = self.view!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["access"] as? String {
            self.access = value
        }
        if let value = dict["columns"] as? [String: Any?] {
            var model = Permission.Columns()
            model.fromMap(value)
            self.columns = model
        }
        if let value = dict["database"] as? String {
            self.database = value
        }
        if let value = dict["function"] as? String {
            self.function = value
        }
        if let value = dict["principal"] as? String {
            self.principal = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
        if let value = dict["view"] as? String {
            self.view = value
        }
    }
}

public class ReceivedShare : Tea.TeaModel {
    public var catalogName: String?

    public var comment: String?

    public var createdAt: Int64?

    public var createdBy: String?

    public var owner: String?

    public var providerTenantId: Int64?

    public var shareId: String?

    public var shareName: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["catalogName"] = self.catalogName!
        }
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.providerTenantId != nil {
            map["providerTenantId"] = self.providerTenantId!
        }
        if self.shareId != nil {
            map["shareId"] = self.shareId!
        }
        if self.shareName != nil {
            map["shareName"] = self.shareName!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["providerTenantId"] as? Int64 {
            self.providerTenantId = value
        }
        if let value = dict["shareId"] as? String {
            self.shareId = value
        }
        if let value = dict["shareName"] as? String {
            self.shareName = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class Receiver : Tea.TeaModel {
    public var comment: String?

    public var createdAt: Int64?

    public var createdBy: String?

    public var receiverName: String?

    public var receiverTenantId: Int64?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.receiverName != nil {
            map["receiverName"] = self.receiverName!
        }
        if self.receiverTenantId != nil {
            map["receiverTenantId"] = self.receiverTenantId!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["receiverName"] as? String {
            self.receiverName = value
        }
        if let value = dict["receiverTenantId"] as? Int64 {
            self.receiverTenantId = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class Role : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var description_: String?

    public var displayName: String?

    public var isPredefined: String?

    public var roleName: String?

    public var rolePrincipal: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public var users: [User]?

    public override init() {
        super.init()
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
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.isPredefined != nil {
            map["isPredefined"] = self.isPredefined!
        }
        if self.roleName != nil {
            map["roleName"] = self.roleName!
        }
        if self.rolePrincipal != nil {
            map["rolePrincipal"] = self.rolePrincipal!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["isPredefined"] as? String {
            self.isPredefined = value
        }
        if let value = dict["roleName"] as? String {
            self.roleName = value
        }
        if let value = dict["rolePrincipal"] as? String {
            self.rolePrincipal = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
        if let value = dict["users"] as? [Any?] {
            var tmp : [User] = []
            for v in value {
                if v != nil {
                    var model = User()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class Schema : Tea.TeaModel {
    public var comment: String?

    public var fields: [DataField]?

    public var options: [String: String]?

    public var partitionKeys: [String]?

    public var primaryKeys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["fields"] = tmp
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.partitionKeys != nil {
            map["partitionKeys"] = self.partitionKeys!
        }
        if self.primaryKeys != nil {
            map["primaryKeys"] = self.primaryKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["fields"] as? [Any?] {
            var tmp : [DataField] = []
            for v in value {
                if v != nil {
                    var model = DataField()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
        }
        if let value = dict["partitionKeys"] as? [String] {
            self.partitionKeys = value
        }
        if let value = dict["primaryKeys"] as? [String] {
            self.primaryKeys = value
        }
    }
}

public class Share : Tea.TeaModel {
    public var comment: String?

    public var createdAt: Int64?

    public var createdBy: String?

    public var owner: String?

    public var providerTenantId: Int64?

    public var shareId: String?

    public var shareName: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.providerTenantId != nil {
            map["providerTenantId"] = self.providerTenantId!
        }
        if self.shareId != nil {
            map["shareId"] = self.shareId!
        }
        if self.shareName != nil {
            map["shareName"] = self.shareName!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["providerTenantId"] as? Int64 {
            self.providerTenantId = value
        }
        if let value = dict["shareId"] as? String {
            self.shareId = value
        }
        if let value = dict["shareName"] as? String {
            self.shareName = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class ShareResource : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var databaseName: String?

    public var shareType: String?

    public var tableName: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
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
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.shareType != nil {
            map["shareType"] = self.shareType!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["shareType"] as? String {
            self.shareType = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class Snapshot : Tea.TeaModel {
    public var baseManifestList: String?

    public var changelogManifestList: String?

    public var changelogRecordCount: Int64?

    public var commitIdentifier: Int64?

    public var commitKind: String?

    public var commitUser: String?

    public var deltaManifestList: String?

    public var deltaRecordCount: Int64?

    public var id: Int64?

    public var indexManifest: String?

    public var logOffsets: [String: Int64]?

    public var schemaId: Int64?

    public var statistics: String?

    public var timeMillis: Int64?

    public var totalRecordCount: Int64?

    public var version: Int32?

    public var watermark: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseManifestList != nil {
            map["baseManifestList"] = self.baseManifestList!
        }
        if self.changelogManifestList != nil {
            map["changelogManifestList"] = self.changelogManifestList!
        }
        if self.changelogRecordCount != nil {
            map["changelogRecordCount"] = self.changelogRecordCount!
        }
        if self.commitIdentifier != nil {
            map["commitIdentifier"] = self.commitIdentifier!
        }
        if self.commitKind != nil {
            map["commitKind"] = self.commitKind!
        }
        if self.commitUser != nil {
            map["commitUser"] = self.commitUser!
        }
        if self.deltaManifestList != nil {
            map["deltaManifestList"] = self.deltaManifestList!
        }
        if self.deltaRecordCount != nil {
            map["deltaRecordCount"] = self.deltaRecordCount!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.indexManifest != nil {
            map["indexManifest"] = self.indexManifest!
        }
        if self.logOffsets != nil {
            map["logOffsets"] = self.logOffsets!
        }
        if self.schemaId != nil {
            map["schemaId"] = self.schemaId!
        }
        if self.statistics != nil {
            map["statistics"] = self.statistics!
        }
        if self.timeMillis != nil {
            map["timeMillis"] = self.timeMillis!
        }
        if self.totalRecordCount != nil {
            map["totalRecordCount"] = self.totalRecordCount!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.watermark != nil {
            map["watermark"] = self.watermark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["baseManifestList"] as? String {
            self.baseManifestList = value
        }
        if let value = dict["changelogManifestList"] as? String {
            self.changelogManifestList = value
        }
        if let value = dict["changelogRecordCount"] as? Int64 {
            self.changelogRecordCount = value
        }
        if let value = dict["commitIdentifier"] as? Int64 {
            self.commitIdentifier = value
        }
        if let value = dict["commitKind"] as? String {
            self.commitKind = value
        }
        if let value = dict["commitUser"] as? String {
            self.commitUser = value
        }
        if let value = dict["deltaManifestList"] as? String {
            self.deltaManifestList = value
        }
        if let value = dict["deltaRecordCount"] as? Int64 {
            self.deltaRecordCount = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["indexManifest"] as? String {
            self.indexManifest = value
        }
        if let value = dict["logOffsets"] as? [String: Int64] {
            self.logOffsets = value
        }
        if let value = dict["schemaId"] as? Int64 {
            self.schemaId = value
        }
        if let value = dict["statistics"] as? String {
            self.statistics = value
        }
        if let value = dict["timeMillis"] as? Int64 {
            self.timeMillis = value
        }
        if let value = dict["totalRecordCount"] as? Int64 {
            self.totalRecordCount = value
        }
        if let value = dict["version"] as? Int32 {
            self.version = value
        }
        if let value = dict["watermark"] as? Int64 {
            self.watermark = value
        }
    }
}

public class Table : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var id: String?

    public var isExternal: Bool?

    public var name: String?

    public var owner: String?

    public var path: String?

    public var schema: Schema?

    public var schemaId: Int64?

    public var storageAction: String?

    public var storageActionTimestamp: Int64?

    public var storageClass: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.isExternal != nil {
            map["isExternal"] = self.isExternal!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        if self.schemaId != nil {
            map["schemaId"] = self.schemaId!
        }
        if self.storageAction != nil {
            map["storageAction"] = self.storageAction!
        }
        if self.storageActionTimestamp != nil {
            map["storageActionTimestamp"] = self.storageActionTimestamp!
        }
        if self.storageClass != nil {
            map["storageClass"] = self.storageClass!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["isExternal"] as? Bool {
            self.isExternal = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["schema"] as? [String: Any?] {
            var model = Schema()
            model.fromMap(value)
            self.schema = model
        }
        if let value = dict["schemaId"] as? Int64 {
            self.schemaId = value
        }
        if let value = dict["storageAction"] as? String {
            self.storageAction = value
        }
        if let value = dict["storageActionTimestamp"] as? Int64 {
            self.storageActionTimestamp = value
        }
        if let value = dict["storageClass"] as? String {
            self.storageClass = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
    }
}

public class TableCompaction : Tea.TeaModel {
    public var catalogId: String?

    public var cuUsage: Double?

    public var lastCompactedFileTime: Int64?

    public var maxLevel0FileCount: String?

    public var tableId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["catalogId"] = self.catalogId!
        }
        if self.cuUsage != nil {
            map["cuUsage"] = self.cuUsage!
        }
        if self.lastCompactedFileTime != nil {
            map["lastCompactedFileTime"] = self.lastCompactedFileTime!
        }
        if self.maxLevel0FileCount != nil {
            map["maxLevel0FileCount"] = self.maxLevel0FileCount!
        }
        if self.tableId != nil {
            map["tableId"] = self.tableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["cuUsage"] as? Double {
            self.cuUsage = value
        }
        if let value = dict["lastCompactedFileTime"] as? Int64 {
            self.lastCompactedFileTime = value
        }
        if let value = dict["maxLevel0FileCount"] as? String {
            self.maxLevel0FileCount = value
        }
        if let value = dict["tableId"] as? String {
            self.tableId = value
        }
    }
}

public class TableSnapshot : Tea.TeaModel {
    public var fileCount: Int64?

    public var fileSizeInBytes: Int64?

    public var lastFileCreationTime: Int64?

    public var recordCount: Int64?

    public var snapshot: Snapshot?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.snapshot?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileCount != nil {
            map["fileCount"] = self.fileCount!
        }
        if self.fileSizeInBytes != nil {
            map["fileSizeInBytes"] = self.fileSizeInBytes!
        }
        if self.lastFileCreationTime != nil {
            map["lastFileCreationTime"] = self.lastFileCreationTime!
        }
        if self.recordCount != nil {
            map["recordCount"] = self.recordCount!
        }
        if self.snapshot != nil {
            map["snapshot"] = self.snapshot?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileCount"] as? Int64 {
            self.fileCount = value
        }
        if let value = dict["fileSizeInBytes"] as? Int64 {
            self.fileSizeInBytes = value
        }
        if let value = dict["lastFileCreationTime"] as? Int64 {
            self.lastFileCreationTime = value
        }
        if let value = dict["recordCount"] as? Int64 {
            self.recordCount = value
        }
        if let value = dict["snapshot"] as? [String: Any?] {
            var model = Snapshot()
            model.fromMap(value)
            self.snapshot = model
        }
    }
}

public class TableSummary : Tea.TeaModel {
    public var createdAt: Int64?

    public var databaseName: String?

    public var generatedDate: String?

    public var lastAccessTime: Int64?

    public var objTypeArchiveSize: Int64?

    public var objTypeColdArchiveSize: Int64?

    public var objTypeIaSize: Int64?

    public var objTypeStandardSize: Int64?

    public var partitionCount: Int64?

    public var path: String?

    public var storageActionParams: [String: String]?

    public var storageActionTimestamp: Int64?

    public var storageClass: String?

    public var tableName: String?

    public var totalFileCount: Int64?

    public var totalFileSizeInBytes: Int64?

    public var updatedAt: Int64?

    public override init() {
        super.init()
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
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.generatedDate != nil {
            map["generatedDate"] = self.generatedDate!
        }
        if self.lastAccessTime != nil {
            map["lastAccessTime"] = self.lastAccessTime!
        }
        if self.objTypeArchiveSize != nil {
            map["objTypeArchiveSize"] = self.objTypeArchiveSize!
        }
        if self.objTypeColdArchiveSize != nil {
            map["objTypeColdArchiveSize"] = self.objTypeColdArchiveSize!
        }
        if self.objTypeIaSize != nil {
            map["objTypeIaSize"] = self.objTypeIaSize!
        }
        if self.objTypeStandardSize != nil {
            map["objTypeStandardSize"] = self.objTypeStandardSize!
        }
        if self.partitionCount != nil {
            map["partitionCount"] = self.partitionCount!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.storageActionParams != nil {
            map["storageActionParams"] = self.storageActionParams!
        }
        if self.storageActionTimestamp != nil {
            map["storageActionTimestamp"] = self.storageActionTimestamp!
        }
        if self.storageClass != nil {
            map["storageClass"] = self.storageClass!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.totalFileCount != nil {
            map["totalFileCount"] = self.totalFileCount!
        }
        if self.totalFileSizeInBytes != nil {
            map["totalFileSizeInBytes"] = self.totalFileSizeInBytes!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["generatedDate"] as? String {
            self.generatedDate = value
        }
        if let value = dict["lastAccessTime"] as? Int64 {
            self.lastAccessTime = value
        }
        if let value = dict["objTypeArchiveSize"] as? Int64 {
            self.objTypeArchiveSize = value
        }
        if let value = dict["objTypeColdArchiveSize"] as? Int64 {
            self.objTypeColdArchiveSize = value
        }
        if let value = dict["objTypeIaSize"] as? Int64 {
            self.objTypeIaSize = value
        }
        if let value = dict["objTypeStandardSize"] as? Int64 {
            self.objTypeStandardSize = value
        }
        if let value = dict["partitionCount"] as? Int64 {
            self.partitionCount = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["storageActionParams"] as? [String: String] {
            self.storageActionParams = value
        }
        if let value = dict["storageActionTimestamp"] as? Int64 {
            self.storageActionTimestamp = value
        }
        if let value = dict["storageClass"] as? String {
            self.storageClass = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
        if let value = dict["totalFileCount"] as? Int64 {
            self.totalFileCount = value
        }
        if let value = dict["totalFileSizeInBytes"] as? Int64 {
            self.totalFileSizeInBytes = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class User : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var displayName: String?

    public var type: String?

    public var updatedAt: Int64?

    public var updatedBy: String?

    public var userId: String?

    public var userName: String?

    public var userPrincipal: String?

    public override init() {
        super.init()
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
        if self.createdBy != nil {
            map["createdBy"] = self.createdBy!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.updatedBy != nil {
            map["updatedBy"] = self.updatedBy!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        if self.userPrincipal != nil {
            map["userPrincipal"] = self.userPrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["createdBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
        if let value = dict["userPrincipal"] as? String {
            self.userPrincipal = value
        }
    }
}

public class AlterCatalogRequest : Tea.TeaModel {
    public var removals: [String]?

    public var updates: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.removals != nil {
            map["removals"] = self.removals!
        }
        if self.updates != nil {
            map["updates"] = self.updates!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["removals"] as? [String] {
            self.removals = value
        }
        if let value = dict["updates"] as? [String: String] {
            self.updates = value
        }
    }
}

public class AlterCatalogResponseBody : Tea.TeaModel {
    public var missing: [String]?

    public var removed: [String]?

    public var updated: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.missing != nil {
            map["missing"] = self.missing!
        }
        if self.removed != nil {
            map["removed"] = self.removed!
        }
        if self.updated != nil {
            map["updated"] = self.updated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["missing"] as? [String] {
            self.missing = value
        }
        if let value = dict["removed"] as? [String] {
            self.removed = value
        }
        if let value = dict["updated"] as? [String] {
            self.updated = value
        }
    }
}

public class AlterCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AlterCatalogResponseBody?

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
            var model = AlterCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AlterDatabaseRequest : Tea.TeaModel {
    public var removals: [String]?

    public var updates: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.removals != nil {
            map["removals"] = self.removals!
        }
        if self.updates != nil {
            map["updates"] = self.updates!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["removals"] as? [String] {
            self.removals = value
        }
        if let value = dict["updates"] as? [String: String] {
            self.updates = value
        }
    }
}

public class AlterDatabaseResponseBody : Tea.TeaModel {
    public var missing: [String]?

    public var removed: [String]?

    public var updated: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.missing != nil {
            map["missing"] = self.missing!
        }
        if self.removed != nil {
            map["removed"] = self.removed!
        }
        if self.updated != nil {
            map["updated"] = self.updated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["missing"] as? [String] {
            self.missing = value
        }
        if let value = dict["removed"] as? [String] {
            self.removed = value
        }
        if let value = dict["updated"] as? [String] {
            self.updated = value
        }
    }
}

public class AlterDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AlterDatabaseResponseBody?

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
            var model = AlterDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AlterReceiverRequest : Tea.TeaModel {
    public var comment: String?

    public var receiverName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.receiverName != nil {
            map["receiverName"] = self.receiverName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["receiverName"] as? String {
            self.receiverName = value
        }
    }
}

public class AlterReceiverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class AlterShareRequest : Tea.TeaModel {
    public var comment: String?

    public var shareName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.shareName != nil {
            map["shareName"] = self.shareName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["shareName"] as? String {
            self.shareName = value
        }
    }
}

public class AlterShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class AlterShareReceiversRequest : Tea.TeaModel {
    public var addedReceivers: [String]?

    public var removedReceivers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addedReceivers != nil {
            map["addedReceivers"] = self.addedReceivers!
        }
        if self.removedReceivers != nil {
            map["removedReceivers"] = self.removedReceivers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addedReceivers"] as? [String] {
            self.addedReceivers = value
        }
        if let value = dict["removedReceivers"] as? [String] {
            self.removedReceivers = value
        }
    }
}

public class AlterShareReceiversResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class AlterShareResourcesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var shareResourceList: [ShareResource]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["catalogId"] = self.catalogId!
        }
        if self.shareResourceList != nil {
            var tmp : [Any] = []
            for k in self.shareResourceList! {
                tmp.append(k.toMap())
            }
            map["shareResourceList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["shareResourceList"] as? [Any?] {
            var tmp : [ShareResource] = []
            for v in value {
                if v != nil {
                    var model = ShareResource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.shareResourceList = tmp
        }
    }
}

public class AlterShareResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class AlterTableRequest : Tea.TeaModel {
    public var changes: [FullSchemaChange]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changes != nil {
            var tmp : [Any] = []
            for k in self.changes! {
                tmp.append(k.toMap())
            }
            map["changes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["changes"] as? [Any?] {
            var tmp : [FullSchemaChange] = []
            for v in value {
                if v != nil {
                    var model = FullSchemaChange()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.changes = tmp
        }
    }
}

public class AlterTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class BatchGrantPermissionsRequest : Tea.TeaModel {
    public var permissions: [Permission]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["permissions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["permissions"] as? [Any?] {
            var tmp : [Permission] = []
            for v in value {
                if v != nil {
                    var model = Permission()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
    }
}

public class BatchGrantPermissionsResponseBody : Tea.TeaModel {
    public var errorMessage: String?

    public var failurePermissions: [FailurePermission]?

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
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.failurePermissions != nil {
            var tmp : [Any] = []
            for k in self.failurePermissions! {
                tmp.append(k.toMap())
            }
            map["failurePermissions"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["failurePermissions"] as? [Any?] {
            var tmp : [FailurePermission] = []
            for v in value {
                if v != nil {
                    var model = FailurePermission()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failurePermissions = tmp
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchGrantPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGrantPermissionsResponseBody?

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
            var model = BatchGrantPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchRevokePermissionsRequest : Tea.TeaModel {
    public var permissions: [Permission]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["permissions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["permissions"] as? [Any?] {
            var tmp : [Permission] = []
            for v in value {
                if v != nil {
                    var model = Permission()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
    }
}

public class BatchRevokePermissionsResponseBody : Tea.TeaModel {
    public var errorMessage: String?

    public var failurePermissions: [FailurePermission]?

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
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.failurePermissions != nil {
            var tmp : [Any] = []
            for k in self.failurePermissions! {
                tmp.append(k.toMap())
            }
            map["failurePermissions"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["failurePermissions"] as? [Any?] {
            var tmp : [FailurePermission] = []
            for v in value {
                if v != nil {
                    var model = FailurePermission()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failurePermissions = tmp
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchRevokePermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchRevokePermissionsResponseBody?

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
            var model = BatchRevokePermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCatalogRequest : Tea.TeaModel {
    public var isShared: Bool?

    public var name: String?

    public var options: [String: String]?

    public var shareId: String?

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
        if self.isShared != nil {
            map["isShared"] = self.isShared!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.shareId != nil {
            map["shareId"] = self.shareId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["isShared"] as? Bool {
            self.isShared = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
        }
        if let value = dict["shareId"] as? String {
            self.shareId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class CreateDatabaseRequest : Tea.TeaModel {
    public var name: String?

    public var options: [String: String]?

    public override init() {
        super.init()
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
        if self.options != nil {
            map["options"] = self.options!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
        }
    }
}

public class CreateDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class CreateReceiverRequest : Tea.TeaModel {
    public var comment: String?

    public var receiverName: String?

    public var receiverTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.receiverName != nil {
            map["receiverName"] = self.receiverName!
        }
        if self.receiverTenantId != nil {
            map["receiverTenantId"] = self.receiverTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["receiverName"] as? String {
            self.receiverName = value
        }
        if let value = dict["receiverTenantId"] as? Int64 {
            self.receiverTenantId = value
        }
    }
}

public class CreateReceiverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class CreateRoleRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var roleName: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.roleName != nil {
            map["roleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["roleName"] as? String {
            self.roleName = value
        }
    }
}

public class CreateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class CreateShareRequest : Tea.TeaModel {
    public var comment: String?

    public var shareName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.shareName != nil {
            map["shareName"] = self.shareName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["shareName"] as? String {
            self.shareName = value
        }
    }
}

public class CreateShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class CreateTableRequest : Tea.TeaModel {
    public var identifier: Identifier?

    public var schema: Schema?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.identifier?.validate()
        try self.schema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["identifier"] = self.identifier?.toMap()
        }
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["identifier"] as? [String: Any?] {
            var model = Identifier()
            model.fromMap(value)
            self.identifier = model
        }
        if let value = dict["schema"] as? [String: Any?] {
            var model = Schema()
            model.fromMap(value)
            self.schema = model
        }
    }
}

public class CreateTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DeleteRoleRequest : Tea.TeaModel {
    public var rolePrincipal: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rolePrincipal != nil {
            map["rolePrincipal"] = self.rolePrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["rolePrincipal"] as? String {
            self.rolePrincipal = value
        }
    }
}

public class DeleteRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var showName: String?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.showName != nil {
                map["showName"] = self.showName!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["showName"] as? String {
                self.showName = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["regions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DropCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DropDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DropReceiverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DropShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DropTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class GetCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Catalog?

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
            var model = Catalog()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCatalogByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Catalog?

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
            var model = Catalog()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCatalogSummaryRequest : Tea.TeaModel {
    public var date: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.date != nil {
            map["date"] = self.date!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["date"] as? String {
            self.date = value
        }
    }
}

public class GetCatalogSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CatalogSummary?

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
            var model = CatalogSummary()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCatalogSummaryTrendRequest : Tea.TeaModel {
    public var endDate: String?

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
        if self.endDate != nil {
            map["endDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endDate"] as? String {
            self.endDate = value
        }
        if let value = dict["startDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetCatalogSummaryTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CatalogSummaryTrend?

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
            var model = CatalogSummaryTrend()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCatalogTokenResponseBody : Tea.TeaModel {
    public var expiresAtMillis: Int64?

    public var token: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expiresAtMillis != nil {
            map["expiresAtMillis"] = self.expiresAtMillis!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["expiresAtMillis"] as? Int64 {
            self.expiresAtMillis = value
        }
        if let value = dict["token"] as? [String: String] {
            self.token = value
        }
    }
}

public class GetCatalogTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCatalogTokenResponseBody?

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
            var model = GetCatalogTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Database?

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
            var model = Database()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatabaseSummaryRequest : Tea.TeaModel {
    public var date: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.date != nil {
            map["date"] = self.date!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["date"] as? String {
            self.date = value
        }
    }
}

public class GetDatabaseSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DatabaseSummary?

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
            var model = DatabaseSummary()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIcebergNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Namespace?

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
            var model = Namespace()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIcebergTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IcebergTable?

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
            var model = IcebergTable()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetReceiverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Receiver?

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
            var model = Receiver()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRegionStatusResponseBody : Tea.TeaModel {
    public var serviceRoleExists: Bool?

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
        if self.serviceRoleExists != nil {
            map["serviceRoleExists"] = self.serviceRoleExists!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["serviceRoleExists"] as? Bool {
            self.serviceRoleExists = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class GetRegionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegionStatusResponseBody?

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
            var model = GetRegionStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRoleRequest : Tea.TeaModel {
    public var rolePrincipal: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rolePrincipal != nil {
            map["rolePrincipal"] = self.rolePrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["rolePrincipal"] as? String {
            self.rolePrincipal = value
        }
    }
}

public class GetRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Role?

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
            var model = Role()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Share?

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
            var model = Share()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Table?

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
            var model = Table()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TableSnapshot?

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
            var model = TableSnapshot()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableSummaryRequest : Tea.TeaModel {
    public var date: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.date != nil {
            map["date"] = self.date!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["date"] as? String {
            self.date = value
        }
    }
}

public class GetTableSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TableSummary?

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
            var model = TableSummary()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var userPrincipal: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPrincipal != nil {
            map["userPrincipal"] = self.userPrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["userPrincipal"] as? String {
            self.userPrincipal = value
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: User?

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
            var model = User()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantRoleToUsersRequest : Tea.TeaModel {
    public var rolePrincipal: String?

    public var userPrincipals: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rolePrincipal != nil {
            map["rolePrincipal"] = self.rolePrincipal!
        }
        if self.userPrincipals != nil {
            map["userPrincipals"] = self.userPrincipals!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["rolePrincipal"] as? String {
            self.rolePrincipal = value
        }
        if let value = dict["userPrincipals"] as? [String] {
            self.userPrincipals = value
        }
    }
}

public class GrantRoleToUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class ListCatalogsRequest : Tea.TeaModel {
    public var catalogNamePattern: String?

    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogNamePattern != nil {
            map["catalogNamePattern"] = self.catalogNamePattern!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogNamePattern"] as? String {
            self.catalogNamePattern = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListCatalogsResponseBody : Tea.TeaModel {
    public var catalogs: [Catalog]?

    public var nextPageToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogs != nil {
            var tmp : [Any] = []
            for k in self.catalogs! {
                tmp.append(k.toMap())
            }
            map["catalogs"] = tmp
        }
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogs"] as? [Any?] {
            var tmp : [Catalog] = []
            for v in value {
                if v != nil {
                    var model = Catalog()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.catalogs = tmp
        }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
    }
}

public class ListCatalogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCatalogsResponseBody?

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
            var model = ListCatalogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatabaseDetailsRequest : Tea.TeaModel {
    public var databaseNamePattern: String?

    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseNamePattern != nil {
            map["databaseNamePattern"] = self.databaseNamePattern!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databaseNamePattern"] as? String {
            self.databaseNamePattern = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListDatabaseDetailsResponseBody : Tea.TeaModel {
    public var databaseDetails: [Database]?

    public var nextPageToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseDetails != nil {
            var tmp : [Any] = []
            for k in self.databaseDetails! {
                tmp.append(k.toMap())
            }
            map["databaseDetails"] = tmp
        }
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databaseDetails"] as? [Any?] {
            var tmp : [Database] = []
            for v in value {
                if v != nil {
                    var model = Database()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databaseDetails = tmp
        }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
    }
}

public class ListDatabaseDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabaseDetailsResponseBody?

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
            var model = ListDatabaseDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatabasesRequest : Tea.TeaModel {
    public var databaseNamePattern: String?

    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseNamePattern != nil {
            map["databaseNamePattern"] = self.databaseNamePattern!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databaseNamePattern"] as? String {
            self.databaseNamePattern = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListDatabasesResponseBody : Tea.TeaModel {
    public var databases: [String]?

    public var nextPageToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            map["databases"] = self.databases!
        }
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databases"] as? [String] {
            self.databases = value
        }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
    }
}

public class ListDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabasesResponseBody?

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
            var model = ListDatabasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIcebergNamespaceDetailsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var namespaceNamePattern: String?

    public var pageToken: String?

    public override init() {
        super.init()
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
        if self.namespaceNamePattern != nil {
            map["namespaceNamePattern"] = self.namespaceNamePattern!
        }
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["namespaceNamePattern"] as? String {
            self.namespaceNamePattern = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListIcebergNamespaceDetailsResponseBody : Tea.TeaModel {
    public var namespaceDetails: [Namespace]?

    public var nextPageToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceDetails != nil {
            var tmp : [Any] = []
            for k in self.namespaceDetails! {
                tmp.append(k.toMap())
            }
            map["namespaceDetails"] = tmp
        }
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["namespaceDetails"] as? [Any?] {
            var tmp : [Namespace] = []
            for v in value {
                if v != nil {
                    var model = Namespace()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.namespaceDetails = tmp
        }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
    }
}

public class ListIcebergNamespaceDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIcebergNamespaceDetailsResponseBody?

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
            var model = ListIcebergNamespaceDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIcebergSnapshotsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListIcebergSnapshotsResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var snapshots: [IcebergSnapshot]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.snapshots != nil {
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["snapshots"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["snapshots"] as? [Any?] {
            var tmp : [IcebergSnapshot] = []
            for v in value {
                if v != nil {
                    var model = IcebergSnapshot()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.snapshots = tmp
        }
    }
}

public class ListIcebergSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIcebergSnapshotsResponseBody?

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
            var model = ListIcebergSnapshotsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIcebergTableDetailsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var tableNamePattern: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.tableNamePattern != nil {
            map["tableNamePattern"] = self.tableNamePattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["tableNamePattern"] as? String {
            self.tableNamePattern = value
        }
    }
}

public class ListIcebergTableDetailsResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var tableDetails: [IcebergTable]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.tableDetails != nil {
            var tmp : [Any] = []
            for k in self.tableDetails! {
                tmp.append(k.toMap())
            }
            map["tableDetails"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["tableDetails"] as? [Any?] {
            var tmp : [IcebergTable] = []
            for v in value {
                if v != nil {
                    var model = IcebergTable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableDetails = tmp
        }
    }
}

public class ListIcebergTableDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIcebergTableDetailsResponseBody?

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
            var model = ListIcebergTableDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPartitionSummariesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var partitionNamePattern: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.partitionNamePattern != nil {
            map["partitionNamePattern"] = self.partitionNamePattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["partitionNamePattern"] as? String {
            self.partitionNamePattern = value
        }
    }
}

public class ListPartitionSummariesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PartitionSummaries?

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
            var model = PartitionSummaries()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPermissionsRequest : Tea.TeaModel {
    public var database: String?

    public var function: String?

    public var maxResults: Int32?

    public var pageToken: String?

    public var principal: String?

    public var resourceType: String?

    public var table: String?

    public var view: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.database != nil {
            map["database"] = self.database!
        }
        if self.function != nil {
            map["function"] = self.function!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.principal != nil {
            map["principal"] = self.principal!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        if self.view != nil {
            map["view"] = self.view!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["database"] as? String {
            self.database = value
        }
        if let value = dict["function"] as? String {
            self.function = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["principal"] as? String {
            self.principal = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
        if let value = dict["view"] as? String {
            self.view = value
        }
    }
}

public class ListPermissionsResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var permissions: [Permission]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["permissions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["permissions"] as? [Any?] {
            var tmp : [Permission] = []
            for v in value {
                if v != nil {
                    var model = Permission()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
    }
}

public class ListPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPermissionsResponseBody?

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
            var model = ListPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProvidedSharesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListProvidedSharesResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var shares: [Share]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.shares != nil {
            var tmp : [Any] = []
            for k in self.shares! {
                tmp.append(k.toMap())
            }
            map["shares"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["shares"] as? [Any?] {
            var tmp : [Share] = []
            for v in value {
                if v != nil {
                    var model = Share()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.shares = tmp
        }
    }
}

public class ListProvidedSharesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProvidedSharesResponseBody?

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
            var model = ListProvidedSharesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListReceivedSharesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListReceivedSharesResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var shares: [ReceivedShare]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.shares != nil {
            var tmp : [Any] = []
            for k in self.shares! {
                tmp.append(k.toMap())
            }
            map["shares"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["shares"] as? [Any?] {
            var tmp : [ReceivedShare] = []
            for v in value {
                if v != nil {
                    var model = ReceivedShare()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.shares = tmp
        }
    }
}

public class ListReceivedSharesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListReceivedSharesResponseBody?

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
            var model = ListReceivedSharesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListReceiversRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var receiverName: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.receiverName != nil {
            map["receiverName"] = self.receiverName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["receiverName"] as? String {
            self.receiverName = value
        }
    }
}

public class ListReceiversResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var receivers: [Receiver]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.receivers != nil {
            var tmp : [Any] = []
            for k in self.receivers! {
                tmp.append(k.toMap())
            }
            map["receivers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["receivers"] as? [Any?] {
            var tmp : [Receiver] = []
            for v in value {
                if v != nil {
                    var model = Receiver()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.receivers = tmp
        }
    }
}

public class ListReceiversResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListReceiversResponseBody?

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
            var model = ListReceiversResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRoleUsersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var rolePrincipal: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.rolePrincipal != nil {
            map["rolePrincipal"] = self.rolePrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["rolePrincipal"] as? String {
            self.rolePrincipal = value
        }
    }
}

public class ListRoleUsersResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var users: [User]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["users"] as? [Any?] {
            var tmp : [User] = []
            for v in value {
                if v != nil {
                    var model = User()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class ListRoleUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRoleUsersResponseBody?

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
            var model = ListRoleUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRolesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var roleName: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.roleName != nil {
            map["roleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["roleName"] as? String {
            self.roleName = value
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var roles: [Role]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.roles != nil {
            var tmp : [Any] = []
            for k in self.roles! {
                tmp.append(k.toMap())
            }
            map["roles"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["roles"] as? [Any?] {
            var tmp : [Role] = []
            for v in value {
                if v != nil {
                    var model = Role()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roles = tmp
        }
    }
}

public class ListRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRolesResponseBody?

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
            var model = ListRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListShareReceiversRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListShareReceiversResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var receivers: [Receiver]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.receivers != nil {
            var tmp : [Any] = []
            for k in self.receivers! {
                tmp.append(k.toMap())
            }
            map["receivers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["receivers"] as? [Any?] {
            var tmp : [Receiver] = []
            for v in value {
                if v != nil {
                    var model = Receiver()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.receivers = tmp
        }
    }
}

public class ListShareReceiversResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListShareReceiversResponseBody?

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
            var model = ListShareReceiversResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListShareResourcesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListShareResourcesResponseBody : Tea.TeaModel {
    public var catalogId: String?

    public var nextPageToken: String?

    public var shareResources: [ShareResource]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["catalogId"] = self.catalogId!
        }
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.shareResources != nil {
            var tmp : [Any] = []
            for k in self.shareResources! {
                tmp.append(k.toMap())
            }
            map["shareResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["shareResources"] as? [Any?] {
            var tmp : [ShareResource] = []
            for v in value {
                if v != nil {
                    var model = ShareResource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.shareResources = tmp
        }
    }
}

public class ListShareResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListShareResourcesResponseBody?

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
            var model = ListShareResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSnapshotsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
    }
}

public class ListSnapshotsResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var snapshots: [Snapshot]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.snapshots != nil {
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["snapshots"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["snapshots"] as? [Any?] {
            var tmp : [Snapshot] = []
            for v in value {
                if v != nil {
                    var model = Snapshot()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.snapshots = tmp
        }
    }
}

public class ListSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSnapshotsResponseBody?

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
            var model = ListSnapshotsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTableDetailsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var tableNamePattern: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.tableNamePattern != nil {
            map["tableNamePattern"] = self.tableNamePattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["tableNamePattern"] as? String {
            self.tableNamePattern = value
        }
    }
}

public class ListTableDetailsResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var tableDetails: [Table]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.tableDetails != nil {
            var tmp : [Any] = []
            for k in self.tableDetails! {
                tmp.append(k.toMap())
            }
            map["tableDetails"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["tableDetails"] as? [Any?] {
            var tmp : [Table] = []
            for v in value {
                if v != nil {
                    var model = Table()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableDetails = tmp
        }
    }
}

public class ListTableDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTableDetailsResponseBody?

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
            var model = ListTableDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTablesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var tableNamePattern: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.tableNamePattern != nil {
            map["tableNamePattern"] = self.tableNamePattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["tableNamePattern"] as? String {
            self.tableNamePattern = value
        }
    }
}

public class ListTablesResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var tables: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.tables != nil {
            map["tables"] = self.tables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["tables"] as? [String] {
            self.tables = value
        }
    }
}

public class ListTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTablesResponseBody?

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
            var model = ListTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserRolesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var userPrincipal: String?

    public override init() {
        super.init()
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
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.userPrincipal != nil {
            map["userPrincipal"] = self.userPrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["userPrincipal"] as? String {
            self.userPrincipal = value
        }
    }
}

public class ListUserRolesResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var roles: [Role]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.roles != nil {
            var tmp : [Any] = []
            for k in self.roles! {
                tmp.append(k.toMap())
            }
            map["roles"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["roles"] as? [Any?] {
            var tmp : [Role] = []
            for v in value {
                if v != nil {
                    var model = Role()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roles = tmp
        }
    }
}

public class ListUserRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserRolesResponseBody?

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
            var model = ListUserRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var pageToken: String?

    public var type: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.pageToken != nil {
            map["pageToken"] = self.pageToken!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["pageToken"] as? String {
            self.pageToken = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public var nextPageToken: String?

    public var users: [User]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["nextPageToken"] = self.nextPageToken!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["users"] as? [Any?] {
            var tmp : [User] = []
            for v in value {
                if v != nil {
                    var model = User()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

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
            var model = ListUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RefreshUserSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class RevokeRoleFromUsersRequest : Tea.TeaModel {
    public var rolePrincipal: String?

    public var userPrincipals: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rolePrincipal != nil {
            map["rolePrincipal"] = self.rolePrincipal!
        }
        if self.userPrincipals != nil {
            map["userPrincipals"] = self.userPrincipals!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["rolePrincipal"] as? String {
            self.rolePrincipal = value
        }
        if let value = dict["userPrincipals"] as? [String] {
            self.userPrincipals = value
        }
    }
}

public class RevokeRoleFromUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class RollbackTableRequest : Tea.TeaModel {
    public var instant: FullInstant?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instant?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instant != nil {
            map["instant"] = self.instant?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instant"] as? [String: Any?] {
            var model = FullInstant()
            model.fromMap(value)
            self.instant = model
        }
    }
}

public class RollbackTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class SubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class UpdateRoleRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var rolePrincipal: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.rolePrincipal != nil {
            map["rolePrincipal"] = self.rolePrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["rolePrincipal"] as? String {
            self.rolePrincipal = value
        }
    }
}

public class UpdateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class UpdateRoleUsersRequest : Tea.TeaModel {
    public var rolePrincipal: String?

    public var userPrincipals: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rolePrincipal != nil {
            map["rolePrincipal"] = self.rolePrincipal!
        }
        if self.userPrincipals != nil {
            map["userPrincipals"] = self.userPrincipals!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["rolePrincipal"] as? String {
            self.rolePrincipal = value
        }
        if let value = dict["userPrincipals"] as? [String] {
            self.userPrincipals = value
        }
    }
}

public class UpdateRoleUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}
