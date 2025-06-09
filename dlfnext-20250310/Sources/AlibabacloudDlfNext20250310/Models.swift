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

    public var name: String?

    public var options: [String: String]?

    public var owner: String?

    public var status: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.status != nil {
            map["status"] = self.status!
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
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

    public var generatedDate: String?

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
        if self.generatedDate != nil {
            map["generatedDate"] = self.generatedDate!
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
        if let value = dict["generatedDate"] as? String {
            self.generatedDate = value
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

public class Partition : Tea.TeaModel {
    public var createdAt: Int64?

    public var createdBy: String?

    public var done: Bool?

    public var fileCount: Int64?

    public var fileSizeInBytes: Int64?

    public var lastFileCreationTime: Int64?

    public var recordCount: Int64?

    public var spec: [String: Any]?

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
    public var access: String?

    public var database: String?

    public var principal: String?

    public var resourceType: String?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.access != nil {
            map["access"] = self.access!
        }
        if self.database != nil {
            map["database"] = self.database!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["access"] as? String {
            self.access = value
        }
        if let value = dict["database"] as? String {
            self.database = value
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
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["updatedBy"] as? String {
            self.updatedBy = value
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

    public var partitionCount: Int64?

    public var path: String?

    public var tableName: String?

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
        if self.lastAccessTime != nil {
            map["lastAccessTime"] = self.lastAccessTime!
        }
        if self.partitionCount != nil {
            map["partitionCount"] = self.partitionCount!
        }
        if self.path != nil {
            map["path"] = self.path!
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
        if let value = dict["partitionCount"] as? Int64 {
            self.partitionCount = value
        }
        if let value = dict["path"] as? String {
            self.path = value
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
    public var name: String?

    public var optimizationConfig: [String: String]?

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
        if self.optimizationConfig != nil {
            map["optimizationConfig"] = self.optimizationConfig!
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
        if let value = dict["optimizationConfig"] as? [String: String] {
            self.optimizationConfig = value
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
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

    public var maxResults: Int32?

    public var pageToken: String?

    public var principal: String?

    public var resourceType: String?

    public var table: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["database"] as? String {
            self.database = value
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

public class ListRoleUsersRequest : Tea.TeaModel {
    public var maxResults: String?

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
        if let value = dict["maxResults"] as? String {
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

public class ListUserRolesRequest : Tea.TeaModel {
    public var maxResults: String?

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
        if let value = dict["maxResults"] as? String {
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
