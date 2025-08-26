import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DLCatalog : Tea.TeaModel {
    public var description_: String?

    public var location: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DLColumn : Tea.TeaModel {
    public var comment: String?

    public var name: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DLDatabase : Tea.TeaModel {
    public var catalogName: String?

    public var dbId: Int64?

    public var description_: String?

    public var location: String?

    public var name: String?

    public var parameters: [String: Any]?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbId"] as? Int64 {
            self.dbId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
    }
}

public class DLFunction : Tea.TeaModel {
    public var catalogName: String?

    public var className: String?

    public var createTime: Int32?

    public var creatorId: Int64?

    public var dbName: String?

    public var functionName: String?

    public var functionType: String?

    public var modifierId: Int64?

    public var ownerName: String?

    public var ownerType: String?

    public var resourceUris: [DLResourceUri]?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.className != nil {
            map["ClassName"] = self.className!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.functionType != nil {
            map["FunctionType"] = self.functionType!
        }
        if self.modifierId != nil {
            map["ModifierId"] = self.modifierId!
        }
        if self.ownerName != nil {
            map["OwnerName"] = self.ownerName!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.resourceUris != nil {
            var tmp : [Any] = []
            for k in self.resourceUris! {
                tmp.append(k.toMap())
            }
            map["ResourceUris"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["ClassName"] as? String {
            self.className = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatorId"] as? Int64 {
            self.creatorId = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["FunctionType"] as? String {
            self.functionType = value
        }
        if let value = dict["ModifierId"] as? Int64 {
            self.modifierId = value
        }
        if let value = dict["OwnerName"] as? String {
            self.ownerName = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["ResourceUris"] as? [Any?] {
            var tmp : [DLResourceUri] = []
            for v in value {
                if v != nil {
                    var model = DLResourceUri()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceUris = tmp
        }
    }
}

public class DLFunctionInput : Tea.TeaModel {
    public var className: String?

    public var createTime: Int32?

    public var creatorId: Int64?

    public var functionName: String?

    public var functionType: String?

    public var modifierId: Int64?

    public var ownerName: String?

    public var ownerType: String?

    public var resourceUris: [DLResourceUri]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.className != nil {
            map["ClassName"] = self.className!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.functionType != nil {
            map["FunctionType"] = self.functionType!
        }
        if self.modifierId != nil {
            map["ModifierId"] = self.modifierId!
        }
        if self.ownerName != nil {
            map["OwnerName"] = self.ownerName!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.resourceUris != nil {
            var tmp : [Any] = []
            for k in self.resourceUris! {
                tmp.append(k.toMap())
            }
            map["ResourceUris"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClassName"] as? String {
            self.className = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatorId"] as? Int64 {
            self.creatorId = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["FunctionType"] as? String {
            self.functionType = value
        }
        if let value = dict["ModifierId"] as? Int64 {
            self.modifierId = value
        }
        if let value = dict["OwnerName"] as? String {
            self.ownerName = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["ResourceUris"] as? [Any?] {
            var tmp : [DLResourceUri] = []
            for v in value {
                if v != nil {
                    var model = DLResourceUri()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceUris = tmp
        }
    }
}

public class DLOrder : Tea.TeaModel {
    public var col: String?

    public var order: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.col != nil {
            map["Col"] = self.col!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Col"] as? String {
            self.col = value
        }
        if let value = dict["Order"] as? Int32 {
            self.order = value
        }
    }
}

public class DLPartition : Tea.TeaModel {
    public var catalogName: String?

    public var createTime: Int32?

    public var dbName: String?

    public var lastAccessTime: Int32?

    public var parameters: [String: String]?

    public var sd: DLStorageDescriptor?

    public var tableName: String?

    public var values: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sd?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["CatalogName"] = self.catalogName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.sd != nil {
            map["Sd"] = self.sd?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["Sd"] as? [String: Any?] {
            var model = DLStorageDescriptor()
            model.fromMap(value)
            self.sd = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
    }
}

public class DLPartitionInput : Tea.TeaModel {
    public var createTime: Int32?

    public var lastAccessTime: Int32?

    public var parameters: [String: String]?

    public var storageDescriptor: DLStorageDescriptor?

    public var values: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storageDescriptor?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.storageDescriptor != nil {
            map["StorageDescriptor"] = self.storageDescriptor?.toMap()
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["StorageDescriptor"] as? [String: Any?] {
            var model = DLStorageDescriptor()
            model.fromMap(value)
            self.storageDescriptor = model
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
    }
}

public class DLResourceUri : Tea.TeaModel {
    public var resourceType: String?

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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class DLSerdeInfo : Tea.TeaModel {
    public var description_: String?

    public var deserializerClass: String?

    public var name: String?

    public var parameters: [String: Any]?

    public var serdeType: Int32?

    public var serializationLib: String?

    public var serializerClass: String?

    public override init() {
        super.init()
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
        if self.deserializerClass != nil {
            map["DeserializerClass"] = self.deserializerClass!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.serdeType != nil {
            map["SerdeType"] = self.serdeType!
        }
        if self.serializationLib != nil {
            map["SerializationLib"] = self.serializationLib!
        }
        if self.serializerClass != nil {
            map["SerializerClass"] = self.serializerClass!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeserializerClass"] as? String {
            self.deserializerClass = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["SerdeType"] as? Int32 {
            self.serdeType = value
        }
        if let value = dict["SerializationLib"] as? String {
            self.serializationLib = value
        }
        if let value = dict["SerializerClass"] as? String {
            self.serializerClass = value
        }
    }
}

public class DLSkewedInfo : Tea.TeaModel {
    public var skewedColNames: [String]?

    public var skewedColValueLocationMaps: [String: Any]?

    public var skewedColValues: [[String]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.skewedColNames != nil {
            map["SkewedColNames"] = self.skewedColNames!
        }
        if self.skewedColValueLocationMaps != nil {
            map["SkewedColValueLocationMaps"] = self.skewedColValueLocationMaps!
        }
        if self.skewedColValues != nil {
            map["SkewedColValues"] = self.skewedColValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SkewedColNames"] as? [String] {
            self.skewedColNames = value
        }
        if let value = dict["SkewedColValueLocationMaps"] as? [String: Any] {
            self.skewedColValueLocationMaps = value
        }
        if let value = dict["SkewedColValues"] as? [[String]] {
            self.skewedColValues = value
        }
    }
}

public class DLStorageDescriptor : Tea.TeaModel {
    public var bucketCols: [String]?

    public var columns: [DLColumn]?

    public var inputFormat: String?

    public var isCompressed: Bool?

    public var location: String?

    public var numBuckets: Int32?

    public var originalColumns: [DLColumn]?

    public var outputFormat: String?

    public var parameters: [String: Any]?

    public var serdeInfo: DLSerdeInfo?

    public var skewedInfo: DLSkewedInfo?

    public var sortCols: [DLOrder]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serdeInfo?.validate()
        try self.skewedInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketCols != nil {
            map["BucketCols"] = self.bucketCols!
        }
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["Columns"] = tmp
        }
        if self.inputFormat != nil {
            map["InputFormat"] = self.inputFormat!
        }
        if self.isCompressed != nil {
            map["IsCompressed"] = self.isCompressed!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.numBuckets != nil {
            map["NumBuckets"] = self.numBuckets!
        }
        if self.originalColumns != nil {
            var tmp : [Any] = []
            for k in self.originalColumns! {
                tmp.append(k.toMap())
            }
            map["OriginalColumns"] = tmp
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.serdeInfo != nil {
            map["SerdeInfo"] = self.serdeInfo?.toMap()
        }
        if self.skewedInfo != nil {
            map["SkewedInfo"] = self.skewedInfo?.toMap()
        }
        if self.sortCols != nil {
            var tmp : [Any] = []
            for k in self.sortCols! {
                tmp.append(k.toMap())
            }
            map["SortCols"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketCols"] as? [String] {
            self.bucketCols = value
        }
        if let value = dict["Columns"] as? [Any?] {
            var tmp : [DLColumn] = []
            for v in value {
                if v != nil {
                    var model = DLColumn()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columns = tmp
        }
        if let value = dict["InputFormat"] as? String {
            self.inputFormat = value
        }
        if let value = dict["IsCompressed"] as? Bool {
            self.isCompressed = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["NumBuckets"] as? Int32 {
            self.numBuckets = value
        }
        if let value = dict["OriginalColumns"] as? [Any?] {
            var tmp : [DLColumn] = []
            for v in value {
                if v != nil {
                    var model = DLColumn()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.originalColumns = tmp
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["SerdeInfo"] as? [String: Any?] {
            var model = DLSerdeInfo()
            model.fromMap(value)
            self.serdeInfo = model
        }
        if let value = dict["SkewedInfo"] as? [String: Any?] {
            var model = DLSkewedInfo()
            model.fromMap(value)
            self.skewedInfo = model
        }
        if let value = dict["SortCols"] as? [Any?] {
            var tmp : [DLOrder] = []
            for v in value {
                if v != nil {
                    var model = DLOrder()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sortCols = tmp
        }
    }
}

public class DLTable : Tea.TeaModel {
    public var catalogName: String?

    public var createTime: Int32?

    public var creatorId: Int64?

    public var dbId: Int64?

    public var dbName: String?

    public var description_: String?

    public var lastAccessTime: Int32?

    public var location: String?

    public var modifierId: Int64?

    public var name: String?

    public var owner: String?

    public var ownerType: String?

    public var parameters: [String: Any]?

    public var partitionKeys: [DLColumn]?

    public var retention: Int32?

    public var storageDescriptor: DLStorageDescriptor?

    public var tableType: String?

    public var viewExpandedText: String?

    public var viewOriginalText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storageDescriptor?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["CatalogName"] = self.catalogName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.modifierId != nil {
            map["ModifierId"] = self.modifierId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.partitionKeys != nil {
            var tmp : [Any] = []
            for k in self.partitionKeys! {
                tmp.append(k.toMap())
            }
            map["PartitionKeys"] = tmp
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.storageDescriptor != nil {
            map["StorageDescriptor"] = self.storageDescriptor?.toMap()
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.viewExpandedText != nil {
            map["ViewExpandedText"] = self.viewExpandedText!
        }
        if self.viewOriginalText != nil {
            map["ViewOriginalText"] = self.viewOriginalText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatorId"] as? Int64 {
            self.creatorId = value
        }
        if let value = dict["DbId"] as? Int64 {
            self.dbId = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["ModifierId"] as? Int64 {
            self.modifierId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["PartitionKeys"] as? [Any?] {
            var tmp : [DLColumn] = []
            for v in value {
                if v != nil {
                    var model = DLColumn()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionKeys = tmp
        }
        if let value = dict["Retention"] as? Int32 {
            self.retention = value
        }
        if let value = dict["StorageDescriptor"] as? [String: Any?] {
            var model = DLStorageDescriptor()
            model.fromMap(value)
            self.storageDescriptor = model
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
        if let value = dict["ViewExpandedText"] as? String {
            self.viewExpandedText = value
        }
        if let value = dict["ViewOriginalText"] as? String {
            self.viewOriginalText = value
        }
    }
}

public class DLTableInput : Tea.TeaModel {
    public var createTime: Int32?

    public var creatorId: Int64?

    public var description_: String?

    public var lastAccessTime: Int32?

    public var location: String?

    public var modifierId: Int64?

    public var name: String?

    public var owner: String?

    public var ownerType: String?

    public var parameters: [String: String]?

    public var partitionKeys: [DLColumn]?

    public var retention: Int32?

    public var storageDescriptor: DLStorageDescriptor?

    public var tableType: String?

    public var viewExpandedText: String?

    public var viewOriginalText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storageDescriptor?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.modifierId != nil {
            map["ModifierId"] = self.modifierId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.partitionKeys != nil {
            var tmp : [Any] = []
            for k in self.partitionKeys! {
                tmp.append(k.toMap())
            }
            map["PartitionKeys"] = tmp
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.storageDescriptor != nil {
            map["StorageDescriptor"] = self.storageDescriptor?.toMap()
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.viewExpandedText != nil {
            map["ViewExpandedText"] = self.viewExpandedText!
        }
        if self.viewOriginalText != nil {
            map["ViewOriginalText"] = self.viewOriginalText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatorId"] as? Int64 {
            self.creatorId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["ModifierId"] as? Int64 {
            self.modifierId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["PartitionKeys"] as? [Any?] {
            var tmp : [DLColumn] = []
            for v in value {
                if v != nil {
                    var model = DLColumn()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionKeys = tmp
        }
        if let value = dict["Retention"] as? Int32 {
            self.retention = value
        }
        if let value = dict["StorageDescriptor"] as? [String: Any?] {
            var model = DLStorageDescriptor()
            model.fromMap(value)
            self.storageDescriptor = model
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
        if let value = dict["ViewExpandedText"] as? String {
            self.viewExpandedText = value
        }
        if let value = dict["ViewOriginalText"] as? String {
            self.viewOriginalText = value
        }
    }
}

public class DLTablebaseInfo : Tea.TeaModel {
    public var catalogName: String?

    public var createTime: Int32?

    public var creatorId: Int64?

    public var dbId: Int64?

    public var dbName: String?

    public var description_: String?

    public var lastAccessTime: Int32?

    public var location: String?

    public var modifierId: Int64?

    public var name: String?

    public var owner: String?

    public var ownerType: String?

    public var parameters: [String: Any]?

    public var partitionKeys: [DLColumn]?

    public var retention: Int32?

    public var tableType: String?

    public var viewExpandedText: String?

    public var viewOriginalText: String?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.dbId != nil {
            map["DbId"] = self.dbId!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.modifierId != nil {
            map["ModifierId"] = self.modifierId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.partitionKeys != nil {
            var tmp : [Any] = []
            for k in self.partitionKeys! {
                tmp.append(k.toMap())
            }
            map["PartitionKeys"] = tmp
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.viewExpandedText != nil {
            map["ViewExpandedText"] = self.viewExpandedText!
        }
        if self.viewOriginalText != nil {
            map["ViewOriginalText"] = self.viewOriginalText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatorId"] as? Int64 {
            self.creatorId = value
        }
        if let value = dict["DbId"] as? Int64 {
            self.dbId = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["ModifierId"] as? Int64 {
            self.modifierId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["PartitionKeys"] as? [Any?] {
            var tmp : [DLColumn] = []
            for v in value {
                if v != nil {
                    var model = DLColumn()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionKeys = tmp
        }
        if let value = dict["Retention"] as? Int32 {
            self.retention = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
        if let value = dict["ViewExpandedText"] as? String {
            self.viewExpandedText = value
        }
        if let value = dict["ViewOriginalText"] as? String {
            self.viewOriginalText = value
        }
    }
}

public class ForeignInstance : Tea.TeaModel {
    public var dataLinkName: String?

    public var host: String?

    public var instanceSource: String?

    public var instanceType: String?

    public var port: Int32?

    public var properties: [String: String]?

    public var regionId: String?

    public var sid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataLinkName != nil {
            map["DataLinkName"] = self.dataLinkName!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.instanceSource != nil {
            map["InstanceSource"] = self.instanceSource!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sid != nil {
            map["Sid"] = self.sid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataLinkName"] as? String {
            self.dataLinkName = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["InstanceSource"] as? String {
            self.instanceSource = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["Port"] as? Int32 {
            self.port = value
        }
        if let value = dict["Properties"] as? [String: String] {
            self.properties = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sid"] as? String {
            self.sid = value
        }
    }
}

public class ForeignInstanceCredInfo : Tea.TeaModel {
    public var credInfo: [String: String]?

    public var credType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credInfo != nil {
            map["CredInfo"] = self.credInfo!
        }
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredInfo"] as? [String: String] {
            self.credInfo = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
    }
}

public class PartitionError : Tea.TeaModel {
    public var errorDetail: String?

    public var values: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorDetail"] as? String {
            self.errorDetail = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
    }
}

public class BatchCreateDataLakePartitionsRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var ifNotExists: Bool?

    public var needResult: Bool?

    public var partitionInputs: [DLPartitionInput]?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.ifNotExists != nil {
            map["IfNotExists"] = self.ifNotExists!
        }
        if self.needResult != nil {
            map["NeedResult"] = self.needResult!
        }
        if self.partitionInputs != nil {
            var tmp : [Any] = []
            for k in self.partitionInputs! {
                tmp.append(k.toMap())
            }
            map["PartitionInputs"] = tmp
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["IfNotExists"] as? Bool {
            self.ifNotExists = value
        }
        if let value = dict["NeedResult"] as? Bool {
            self.needResult = value
        }
        if let value = dict["PartitionInputs"] as? [Any?] {
            var tmp : [DLPartitionInput] = []
            for v in value {
                if v != nil {
                    var model = DLPartitionInput()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionInputs = tmp
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class BatchCreateDataLakePartitionsShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var ifNotExists: Bool?

    public var needResult: Bool?

    public var partitionInputsShrink: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.ifNotExists != nil {
            map["IfNotExists"] = self.ifNotExists!
        }
        if self.needResult != nil {
            map["NeedResult"] = self.needResult!
        }
        if self.partitionInputsShrink != nil {
            map["PartitionInputs"] = self.partitionInputsShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["IfNotExists"] as? Bool {
            self.ifNotExists = value
        }
        if let value = dict["NeedResult"] as? Bool {
            self.needResult = value
        }
        if let value = dict["PartitionInputs"] as? String {
            self.partitionInputsShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class BatchCreateDataLakePartitionsResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var partitions: [DLPartition]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.partitions != nil {
            var tmp : [Any] = []
            for k in self.partitions! {
                tmp.append(k.toMap())
            }
            map["Partitions"] = tmp
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["Partitions"] as? [Any?] {
            var tmp : [DLPartition] = []
            for v in value {
                if v != nil {
                    var model = DLPartition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class BatchCreateDataLakePartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCreateDataLakePartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchCreateDataLakePartitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDeleteDataLakePartitionsRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var ifExists: Bool?

    public var partitionValuesList: [[String]]?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.ifExists != nil {
            map["IfExists"] = self.ifExists!
        }
        if self.partitionValuesList != nil {
            map["PartitionValuesList"] = self.partitionValuesList!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["IfExists"] as? Bool {
            self.ifExists = value
        }
        if let value = dict["PartitionValuesList"] as? [[String]] {
            self.partitionValuesList = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class BatchDeleteDataLakePartitionsResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var partitionErrors: [PartitionError]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.partitionErrors != nil {
            var tmp : [Any] = []
            for k in self.partitionErrors! {
                tmp.append(k.toMap())
            }
            map["PartitionErrors"] = tmp
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["PartitionErrors"] as? [Any?] {
            var tmp : [PartitionError] = []
            for v in value {
                if v != nil {
                    var model = PartitionError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionErrors = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class BatchDeleteDataLakePartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteDataLakePartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchDeleteDataLakePartitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchUpdateDataLakePartitionsRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var partitionInputs: [DLPartitionInput]?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.partitionInputs != nil {
            var tmp : [Any] = []
            for k in self.partitionInputs! {
                tmp.append(k.toMap())
            }
            map["PartitionInputs"] = tmp
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["PartitionInputs"] as? [Any?] {
            var tmp : [DLPartitionInput] = []
            for v in value {
                if v != nil {
                    var model = DLPartitionInput()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionInputs = tmp
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class BatchUpdateDataLakePartitionsShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var partitionInputsShrink: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.partitionInputsShrink != nil {
            map["PartitionInputs"] = self.partitionInputsShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["PartitionInputs"] as? String {
            self.partitionInputsShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class BatchUpdateDataLakePartitionsResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var partitionErrors: [PartitionError]?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.partitionErrors != nil {
            var tmp : [Any] = []
            for k in self.partitionErrors! {
                tmp.append(k.toMap())
            }
            map["PartitionErrors"] = tmp
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["PartitionErrors"] as? [Any?] {
            var tmp : [PartitionError] = []
            for v in value {
                if v != nil {
                    var model = PartitionError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionErrors = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchUpdateDataLakePartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUpdateDataLakePartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchUpdateDataLakePartitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAirflowRequest : Tea.TeaModel {
    public var airflowName: String?

    public var appSpec: String?

    public var clientToken: String?

    public var dagsDir: String?

    public var description_: String?

    public var ossBucketName: String?

    public var ossPath: String?

    public var pluginsDir: String?

    public var requirementFile: String?

    public var securityGroupId: String?

    public var startupFile: String?

    public var vSwitchId: String?

    public var vpcId: String?

    public var workerServerlessReplicas: Int32?

    public var workspaceId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.airflowName != nil {
            map["AirflowName"] = self.airflowName!
        }
        if self.appSpec != nil {
            map["AppSpec"] = self.appSpec!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dagsDir != nil {
            map["DagsDir"] = self.dagsDir!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossPath != nil {
            map["OssPath"] = self.ossPath!
        }
        if self.pluginsDir != nil {
            map["PluginsDir"] = self.pluginsDir!
        }
        if self.requirementFile != nil {
            map["RequirementFile"] = self.requirementFile!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.startupFile != nil {
            map["StartupFile"] = self.startupFile!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.workerServerlessReplicas != nil {
            map["WorkerServerlessReplicas"] = self.workerServerlessReplicas!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AirflowName"] as? String {
            self.airflowName = value
        }
        if let value = dict["AppSpec"] as? String {
            self.appSpec = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DagsDir"] as? String {
            self.dagsDir = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssPath"] as? String {
            self.ossPath = value
        }
        if let value = dict["PluginsDir"] as? String {
            self.pluginsDir = value
        }
        if let value = dict["RequirementFile"] as? String {
            self.requirementFile = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["StartupFile"] as? String {
            self.startupFile = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["WorkerServerlessReplicas"] as? Int32 {
            self.workerServerlessReplicas = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateAirflowResponseBody : Tea.TeaModel {
    public class Root : Tea.TeaModel {
        public var airflowId: String?

        public var airflowName: String?

        public var appSpec: String?

        public var appType: String?

        public var dagsDir: String?

        public var deployErrorMsg: String?

        public var description_: String?

        public var gmtCreated: String?

        public var ossBucketName: String?

        public var ossPath: String?

        public var pluginsDir: String?

        public var requirementFile: String?

        public var securityGroupId: String?

        public var startupFile: String?

        public var status: String?

        public var vSwitchId: String?

        public var vpcId: String?

        public var workerServerlessReplicas: Int32?

        public var workspaceId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.airflowId != nil {
                map["AirflowId"] = self.airflowId!
            }
            if self.airflowName != nil {
                map["AirflowName"] = self.airflowName!
            }
            if self.appSpec != nil {
                map["AppSpec"] = self.appSpec!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.dagsDir != nil {
                map["DagsDir"] = self.dagsDir!
            }
            if self.deployErrorMsg != nil {
                map["DeployErrorMsg"] = self.deployErrorMsg!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossPath != nil {
                map["OssPath"] = self.ossPath!
            }
            if self.pluginsDir != nil {
                map["PluginsDir"] = self.pluginsDir!
            }
            if self.requirementFile != nil {
                map["RequirementFile"] = self.requirementFile!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.startupFile != nil {
                map["StartupFile"] = self.startupFile!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.workerServerlessReplicas != nil {
                map["WorkerServerlessReplicas"] = self.workerServerlessReplicas!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AirflowId"] as? String {
                self.airflowId = value
            }
            if let value = dict["AirflowName"] as? String {
                self.airflowName = value
            }
            if let value = dict["AppSpec"] as? String {
                self.appSpec = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["DagsDir"] as? String {
                self.dagsDir = value
            }
            if let value = dict["DeployErrorMsg"] as? String {
                self.deployErrorMsg = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssPath"] as? String {
                self.ossPath = value
            }
            if let value = dict["PluginsDir"] as? String {
                self.pluginsDir = value
            }
            if let value = dict["RequirementFile"] as? String {
                self.requirementFile = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["StartupFile"] as? String {
                self.startupFile = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["WorkerServerlessReplicas"] as? Int32 {
                self.workerServerlessReplicas = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var errorCode: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var root: CreateAirflowResponseBody.Root?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.root?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.root != nil {
            map["Root"] = self.root?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? [String: Any?] {
            var model = CreateAirflowResponseBody.Root()
            model.fromMap(value)
            self.root = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateAirflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAirflowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAirflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAirflowLoginTokenRequest : Tea.TeaModel {
    public var airflowId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.airflowId != nil {
            map["AirflowId"] = self.airflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AirflowId"] as? String {
            self.airflowId = value
        }
    }
}

public class CreateAirflowLoginTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var host: String?

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
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
        }
    }
    public var code: String?

    public var data: CreateAirflowLoginTokenResponseBody.Data?

    public var errorCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
            var model = CreateAirflowLoginTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class CreateAirflowLoginTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAirflowLoginTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAirflowLoginTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataLakeDatabaseRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var description_: String?

    public var location: String?

    public var parameters: [String: String]?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateDataLakeDatabaseShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var description_: String?

    public var location: String?

    public var parametersShrink: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateDataLakeDatabaseResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDataLakeDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataLakeDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDataLakeDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataLakeFunctionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var functionInput: DLFunctionInput?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.functionInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionInput != nil {
            map["FunctionInput"] = self.functionInput?.toMap()
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionInput"] as? [String: Any?] {
            var model = DLFunctionInput()
            model.fromMap(value)
            self.functionInput = model
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateDataLakeFunctionShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var functionInputShrink: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionInputShrink != nil {
            map["FunctionInput"] = self.functionInputShrink!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionInput"] as? String {
            self.functionInputShrink = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateDataLakeFunctionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var function: DLFunction?

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
        try self.function?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.function != nil {
            map["Function"] = self.function?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["Function"] as? [String: Any?] {
            var model = DLFunction()
            model.fromMap(value)
            self.function = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDataLakeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataLakeFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDataLakeFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataLakePartitionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var ifNotExists: Bool?

    public var needResult: Bool?

    public var partitionInput: DLPartitionInput?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.partitionInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.ifNotExists != nil {
            map["IfNotExists"] = self.ifNotExists!
        }
        if self.needResult != nil {
            map["NeedResult"] = self.needResult!
        }
        if self.partitionInput != nil {
            map["PartitionInput"] = self.partitionInput?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["IfNotExists"] as? Bool {
            self.ifNotExists = value
        }
        if let value = dict["NeedResult"] as? Bool {
            self.needResult = value
        }
        if let value = dict["PartitionInput"] as? [String: Any?] {
            var model = DLPartitionInput()
            model.fromMap(value)
            self.partitionInput = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateDataLakePartitionShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var ifNotExists: Bool?

    public var needResult: Bool?

    public var partitionInputShrink: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.ifNotExists != nil {
            map["IfNotExists"] = self.ifNotExists!
        }
        if self.needResult != nil {
            map["NeedResult"] = self.needResult!
        }
        if self.partitionInputShrink != nil {
            map["PartitionInput"] = self.partitionInputShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["IfNotExists"] as? Bool {
            self.ifNotExists = value
        }
        if let value = dict["NeedResult"] as? Bool {
            self.needResult = value
        }
        if let value = dict["PartitionInput"] as? String {
            self.partitionInputShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateDataLakePartitionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var partition: DLPartition?

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
        try self.partition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.partition != nil {
            map["Partition"] = self.partition?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["Partition"] as? [String: Any?] {
            var model = DLPartition()
            model.fromMap(value)
            self.partition = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDataLakePartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataLakePartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDataLakePartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataLakeTableRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var tableInput: DLTableInput?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tableInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.tableInput != nil {
            map["TableInput"] = self.tableInput?.toMap()
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["TableInput"] as? [String: Any?] {
            var model = DLTableInput()
            model.fromMap(value)
            self.tableInput = model
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateDataLakeTableShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var tableInputShrink: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.tableInputShrink != nil {
            map["TableInput"] = self.tableInputShrink!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["TableInput"] as? String {
            self.tableInputShrink = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateDataLakeTableResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var table: DLTable?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.table?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.table != nil {
            map["Table"] = self.table?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Table"] as? [String: Any?] {
            var model = DLTable()
            model.fromMap(value)
            self.table = model
        }
    }
}

public class CreateDataLakeTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataLakeTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDataLakeTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAirflowRequest : Tea.TeaModel {
    public var airflowId: String?

    public var clientToken: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.airflowId != nil {
            map["AirflowId"] = self.airflowId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AirflowId"] as? String {
            self.airflowId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteAirflowResponseBody : Tea.TeaModel {
    public class Root : Tea.TeaModel {
        public class Responses : Tea.TeaModel {
            public var success: Bool?

            public var uuid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.success != nil {
                    map["Success"] = self.success!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
                }
            }
        }
        public var responses: [DeleteAirflowResponseBody.Root.Responses]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.responses != nil {
                var tmp : [Any] = []
                for k in self.responses! {
                    tmp.append(k.toMap())
                }
                map["Responses"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Responses"] as? [Any?] {
                var tmp : [DeleteAirflowResponseBody.Root.Responses] = []
                for v in value {
                    if v != nil {
                        var model = DeleteAirflowResponseBody.Root.Responses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responses = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var errorCode: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var root: DeleteAirflowResponseBody.Root?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.root?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.root != nil {
            map["Root"] = self.root?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? [String: Any?] {
            var model = DeleteAirflowResponseBody.Root()
            model.fromMap(value)
            self.root = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteAirflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAirflowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAirflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataLakeDatabaseRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class DeleteDataLakeDatabaseResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataLakeDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataLakeDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataLakeDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataLakeFunctionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var functionName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class DeleteDataLakeFunctionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataLakeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataLakeFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataLakeFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataLakePartitionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var ifExists: Bool?

    public var partitionValues: [String]?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.ifExists != nil {
            map["IfExists"] = self.ifExists!
        }
        if self.partitionValues != nil {
            map["PartitionValues"] = self.partitionValues!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["IfExists"] as? Bool {
            self.ifExists = value
        }
        if let value = dict["PartitionValues"] as? [String] {
            self.partitionValues = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class DeleteDataLakePartitionShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var ifExists: Bool?

    public var partitionValuesShrink: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.ifExists != nil {
            map["IfExists"] = self.ifExists!
        }
        if self.partitionValuesShrink != nil {
            map["PartitionValues"] = self.partitionValuesShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["IfExists"] as? Bool {
            self.ifExists = value
        }
        if let value = dict["PartitionValues"] as? String {
            self.partitionValuesShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class DeleteDataLakePartitionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataLakePartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataLakePartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataLakePartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataLakeTableRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class DeleteDataLakeTableResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataLakeTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataLakeTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataLakeTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAirflowRequest : Tea.TeaModel {
    public var airflowId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.airflowId != nil {
            map["AirflowId"] = self.airflowId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AirflowId"] as? String {
            self.airflowId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetAirflowResponseBody : Tea.TeaModel {
    public class Root : Tea.TeaModel {
        public var airflowId: String?

        public var airflowName: String?

        public var appSpec: String?

        public var appType: String?

        public var customAirflowCfg: [String]?

        public var dagsDir: String?

        public var deployErrorMsg: String?

        public var description_: String?

        public var gmtCreated: String?

        public var ossBucketName: String?

        public var ossPath: String?

        public var pluginsDir: String?

        public var regionId: String?

        public var requirementFile: String?

        public var securityGroupId: String?

        public var startupFile: String?

        public var status: String?

        public var vSwitchId: String?

        public var vpcId: String?

        public var workerServerlessReplicas: Int32?

        public var workspaceId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.airflowId != nil {
                map["AirflowId"] = self.airflowId!
            }
            if self.airflowName != nil {
                map["AirflowName"] = self.airflowName!
            }
            if self.appSpec != nil {
                map["AppSpec"] = self.appSpec!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.customAirflowCfg != nil {
                map["CustomAirflowCfg"] = self.customAirflowCfg!
            }
            if self.dagsDir != nil {
                map["DagsDir"] = self.dagsDir!
            }
            if self.deployErrorMsg != nil {
                map["DeployErrorMsg"] = self.deployErrorMsg!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossPath != nil {
                map["OssPath"] = self.ossPath!
            }
            if self.pluginsDir != nil {
                map["PluginsDir"] = self.pluginsDir!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.requirementFile != nil {
                map["RequirementFile"] = self.requirementFile!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.startupFile != nil {
                map["StartupFile"] = self.startupFile!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.workerServerlessReplicas != nil {
                map["WorkerServerlessReplicas"] = self.workerServerlessReplicas!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AirflowId"] as? String {
                self.airflowId = value
            }
            if let value = dict["AirflowName"] as? String {
                self.airflowName = value
            }
            if let value = dict["AppSpec"] as? String {
                self.appSpec = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["CustomAirflowCfg"] as? [String] {
                self.customAirflowCfg = value
            }
            if let value = dict["DagsDir"] as? String {
                self.dagsDir = value
            }
            if let value = dict["DeployErrorMsg"] as? String {
                self.deployErrorMsg = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssPath"] as? String {
                self.ossPath = value
            }
            if let value = dict["PluginsDir"] as? String {
                self.pluginsDir = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RequirementFile"] as? String {
                self.requirementFile = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["StartupFile"] as? String {
                self.startupFile = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["WorkerServerlessReplicas"] as? Int32 {
                self.workerServerlessReplicas = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var errorCode: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var root: GetAirflowResponseBody.Root?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.root?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.root != nil {
            map["Root"] = self.root?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? [String: Any?] {
            var model = GetAirflowResponseBody.Root()
            model.fromMap(value)
            self.root = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAirflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAirflowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAirflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataLakeCatalogRequest : Tea.TeaModel {
    public var catalogName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class GetDataLakeCatalogResponseBody : Tea.TeaModel {
    public var catalog: DLCatalog?

    public var errorCode: String?

    public var errorMessage: String?

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
        try self.catalog?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalog != nil {
            map["Catalog"] = self.catalog?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Catalog"] as? [String: Any?] {
            var model = DLCatalog()
            model.fromMap(value)
            self.catalog = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataLakeCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataLakeCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataLakeCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataLakeDatabaseRequest : Tea.TeaModel {
    public var catalogName: String?

    public var name: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class GetDataLakeDatabaseResponseBody : Tea.TeaModel {
    public var database: DLDatabase?

    public var errorCode: String?

    public var errorMessage: String?

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
        try self.database?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.database != nil {
            map["Database"] = self.database?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Database"] as? [String: Any?] {
            var model = DLDatabase()
            model.fromMap(value)
            self.database = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataLakeDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataLakeDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataLakeDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataLakeFunctionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var functionName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class GetDataLakeFunctionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var function: DLFunction?

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
        try self.function?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.function != nil {
            map["Function"] = self.function?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["Function"] as? [String: Any?] {
            var model = DLFunction()
            model.fromMap(value)
            self.function = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataLakeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataLakeFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataLakeFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataLakePartitionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var partitionValues: [String]?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.partitionValues != nil {
            map["PartitionValues"] = self.partitionValues!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["PartitionValues"] as? [String] {
            self.partitionValues = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class GetDataLakePartitionShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var partitionValuesShrink: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.partitionValuesShrink != nil {
            map["PartitionValues"] = self.partitionValuesShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["PartitionValues"] as? String {
            self.partitionValuesShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class GetDataLakePartitionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var partition: DLPartition?

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
        try self.partition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.partition != nil {
            map["Partition"] = self.partition?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["Partition"] as? [String: Any?] {
            var model = DLPartition()
            model.fromMap(value)
            self.partition = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataLakePartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataLakePartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataLakePartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataLakeTableRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var name: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class GetDataLakeTableResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: String?

    public var table: DLTable?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.table?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.table != nil {
            map["Table"] = self.table?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Table"] as? [String: Any?] {
            var model = DLTable()
            model.fromMap(value)
            self.table = model
        }
    }
}

public class GetDataLakeTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataLakeTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataLakeTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAirflowsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageIndex: Int32?

    public var skip: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListAirflowsResponseBody : Tea.TeaModel {
    public class Root : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var airflowId: String?

            public var airflowName: String?

            public var appSpec: String?

            public var appType: String?

            public var customAirflowCfg: [String]?

            public var dagsDir: String?

            public var deployErrorMsg: String?

            public var description_: String?

            public var gmtCreated: String?

            public var ossBucketName: String?

            public var ossPath: String?

            public var pluginsDir: String?

            public var requirementFile: String?

            public var securityGroupId: String?

            public var startupFile: String?

            public var status: String?

            public var vSwitchId: String?

            public var vpcId: String?

            public var workerServerlessReplicas: Int32?

            public var workspaceId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.airflowId != nil {
                    map["AirflowId"] = self.airflowId!
                }
                if self.airflowName != nil {
                    map["AirflowName"] = self.airflowName!
                }
                if self.appSpec != nil {
                    map["AppSpec"] = self.appSpec!
                }
                if self.appType != nil {
                    map["AppType"] = self.appType!
                }
                if self.customAirflowCfg != nil {
                    map["CustomAirflowCfg"] = self.customAirflowCfg!
                }
                if self.dagsDir != nil {
                    map["DagsDir"] = self.dagsDir!
                }
                if self.deployErrorMsg != nil {
                    map["DeployErrorMsg"] = self.deployErrorMsg!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.ossBucketName != nil {
                    map["OssBucketName"] = self.ossBucketName!
                }
                if self.ossPath != nil {
                    map["OssPath"] = self.ossPath!
                }
                if self.pluginsDir != nil {
                    map["PluginsDir"] = self.pluginsDir!
                }
                if self.requirementFile != nil {
                    map["RequirementFile"] = self.requirementFile!
                }
                if self.securityGroupId != nil {
                    map["SecurityGroupId"] = self.securityGroupId!
                }
                if self.startupFile != nil {
                    map["StartupFile"] = self.startupFile!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.workerServerlessReplicas != nil {
                    map["WorkerServerlessReplicas"] = self.workerServerlessReplicas!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AirflowId"] as? String {
                    self.airflowId = value
                }
                if let value = dict["AirflowName"] as? String {
                    self.airflowName = value
                }
                if let value = dict["AppSpec"] as? String {
                    self.appSpec = value
                }
                if let value = dict["AppType"] as? String {
                    self.appType = value
                }
                if let value = dict["CustomAirflowCfg"] as? [String] {
                    self.customAirflowCfg = value
                }
                if let value = dict["DagsDir"] as? String {
                    self.dagsDir = value
                }
                if let value = dict["DeployErrorMsg"] as? String {
                    self.deployErrorMsg = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["GmtCreated"] as? String {
                    self.gmtCreated = value
                }
                if let value = dict["OssBucketName"] as? String {
                    self.ossBucketName = value
                }
                if let value = dict["OssPath"] as? String {
                    self.ossPath = value
                }
                if let value = dict["PluginsDir"] as? String {
                    self.pluginsDir = value
                }
                if let value = dict["RequirementFile"] as? String {
                    self.requirementFile = value
                }
                if let value = dict["SecurityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["StartupFile"] as? String {
                    self.startupFile = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["WorkerServerlessReplicas"] as? Int32 {
                    self.workerServerlessReplicas = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var list: [ListAirflowsResponseBody.Root.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListAirflowsResponseBody.Root.List] = []
                for v in value {
                    if v != nil {
                        var model = ListAirflowsResponseBody.Root.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var errorCode: String?

    public var httpStatusCode: Int64?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var root: ListAirflowsResponseBody.Root?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.root?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.root != nil {
            map["Root"] = self.root?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? [String: Any?] {
            var model = ListAirflowsResponseBody.Root()
            model.fromMap(value)
            self.root = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListAirflowsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAirflowsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAirflowsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakeCatalogRequest : Tea.TeaModel {
    public var searchKey: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SearchKey"] as? String {
            self.searchKey = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakeCatalogResponseBody : Tea.TeaModel {
    public var cataLogList: [DLCatalog]?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.cataLogList != nil {
            var tmp : [Any] = []
            for k in self.cataLogList! {
                tmp.append(k.toMap())
            }
            map["CataLogList"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["CataLogList"] as? [Any?] {
            var tmp : [DLCatalog] = []
            for v in value {
                if v != nil {
                    var model = DLCatalog()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cataLogList = tmp
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataLakeCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakeCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakeCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakeDatabaseRequest : Tea.TeaModel {
    public var catalogName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var searchKey: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SearchKey"] as? String {
            self.searchKey = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakeDatabaseResponseBody : Tea.TeaModel {
    public var databaseList: [DLDatabase]?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.databaseList != nil {
            var tmp : [Any] = []
            for k in self.databaseList! {
                tmp.append(k.toMap())
            }
            map["DatabaseList"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["DatabaseList"] as? [Any?] {
            var tmp : [DLDatabase] = []
            for v in value {
                if v != nil {
                    var model = DLDatabase()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databaseList = tmp
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataLakeDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakeDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakeDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakeFunctionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var functionNamePattern: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionNamePattern != nil {
            map["FunctionNamePattern"] = self.functionNamePattern!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionNamePattern"] as? String {
            self.functionNamePattern = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakeFunctionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var functionList: [DLFunction]?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.functionList != nil {
            var tmp : [Any] = []
            for k in self.functionList! {
                tmp.append(k.toMap())
            }
            map["FunctionList"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["FunctionList"] as? [Any?] {
            var tmp : [DLFunction] = []
            for v in value {
                if v != nil {
                    var model = DLFunction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.functionList = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataLakeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakeFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakeFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakeFunctionNameRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var functionNamePattern: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionNamePattern != nil {
            map["FunctionNamePattern"] = self.functionNamePattern!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionNamePattern"] as? String {
            self.functionNamePattern = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakeFunctionNameResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var functionNameList: [String]?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.functionNameList != nil {
            map["FunctionNameList"] = self.functionNameList!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["FunctionNameList"] as? [String] {
            self.functionNameList = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataLakeFunctionNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakeFunctionNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakeFunctionNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakePartitionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var partNames: [String]?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.partNames != nil {
            map["PartNames"] = self.partNames!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PartNames"] as? [String] {
            self.partNames = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakePartitionShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var partNamesShrink: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.partNamesShrink != nil {
            map["PartNames"] = self.partNamesShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PartNames"] as? String {
            self.partNamesShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakePartitionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var partitionList: [DLPartition]?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.partitionList != nil {
            var tmp : [Any] = []
            for k in self.partitionList! {
                tmp.append(k.toMap())
            }
            map["PartitionList"] = tmp
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PartitionList"] as? [Any?] {
            var tmp : [DLPartition] = []
            for v in value {
                if v != nil {
                    var model = DLPartition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataLakePartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakePartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakePartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakePartitionByFilterRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakePartitionByFilterResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var partitionList: [DLPartition]?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.partitionList != nil {
            var tmp : [Any] = []
            for k in self.partitionList! {
                tmp.append(k.toMap())
            }
            map["PartitionList"] = tmp
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PartitionList"] as? [Any?] {
            var tmp : [DLPartition] = []
            for v in value {
                if v != nil {
                    var model = DLPartition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataLakePartitionByFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakePartitionByFilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakePartitionByFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakePartitionNameRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakePartitionNameResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var partitionNameList: [String]?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.partitionNameList != nil {
            map["PartitionNameList"] = self.partitionNameList!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PartitionNameList"] as? [String] {
            self.partitionNameList = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataLakePartitionNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakePartitionNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakePartitionNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakeTableRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tableNamePattern: String?

    public var tableType: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tableNamePattern != nil {
            map["TableNamePattern"] = self.tableNamePattern!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TableNamePattern"] as? String {
            self.tableNamePattern = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakeTableResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var tableList: [DLTable]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableList != nil {
            var tmp : [Any] = []
            for k in self.tableList! {
                tmp.append(k.toMap())
            }
            map["TableList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TableList"] as? [Any?] {
            var tmp : [DLTable] = []
            for v in value {
                if v != nil {
                    var model = DLTable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableList = tmp
        }
    }
}

public class ListDataLakeTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakeTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakeTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakeTableNameRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var tableNamePattern: String?

    public var tableType: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.tableNamePattern != nil {
            map["TableNamePattern"] = self.tableNamePattern!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TableNamePattern"] as? String {
            self.tableNamePattern = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakeTableNameResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var tableNameList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableNameList != nil {
            map["TableNameList"] = self.tableNameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TableNameList"] as? [String] {
            self.tableNameList = value
        }
    }
}

public class ListDataLakeTableNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakeTableNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakeTableNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLakeTablebaseInfoRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var page: Int32?

    public var rows: Int32?

    public var searchKey: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.rows != nil {
            map["Rows"] = self.rows!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["Rows"] as? Int32 {
            self.rows = value
        }
        if let value = dict["SearchKey"] as? String {
            self.searchKey = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListDataLakeTablebaseInfoResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var tablebaseInfoList: [DLTablebaseInfo]?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tablebaseInfoList != nil {
            var tmp : [Any] = []
            for k in self.tablebaseInfoList! {
                tmp.append(k.toMap())
            }
            map["TablebaseInfoList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TablebaseInfoList"] as? [Any?] {
            var tmp : [DLTablebaseInfo] = []
            for v in value {
                if v != nil {
                    var model = DLTablebaseInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tablebaseInfoList = tmp
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListDataLakeTablebaseInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLakeTablebaseInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataLakeTablebaseInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAirflowRequest : Tea.TeaModel {
    public var airflowId: String?

    public var airflowName: String?

    public var appSpec: String?

    public var clientToken: String?

    public var dagsDir: String?

    public var description_: String?

    public var pluginsDir: String?

    public var requirementFile: String?

    public var startupFile: String?

    public var workerServerlessReplicas: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.airflowId != nil {
            map["AirflowId"] = self.airflowId!
        }
        if self.airflowName != nil {
            map["AirflowName"] = self.airflowName!
        }
        if self.appSpec != nil {
            map["AppSpec"] = self.appSpec!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dagsDir != nil {
            map["DagsDir"] = self.dagsDir!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.pluginsDir != nil {
            map["PluginsDir"] = self.pluginsDir!
        }
        if self.requirementFile != nil {
            map["RequirementFile"] = self.requirementFile!
        }
        if self.startupFile != nil {
            map["StartupFile"] = self.startupFile!
        }
        if self.workerServerlessReplicas != nil {
            map["WorkerServerlessReplicas"] = self.workerServerlessReplicas!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AirflowId"] as? String {
            self.airflowId = value
        }
        if let value = dict["AirflowName"] as? String {
            self.airflowName = value
        }
        if let value = dict["AppSpec"] as? String {
            self.appSpec = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DagsDir"] as? String {
            self.dagsDir = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PluginsDir"] as? String {
            self.pluginsDir = value
        }
        if let value = dict["RequirementFile"] as? String {
            self.requirementFile = value
        }
        if let value = dict["StartupFile"] as? String {
            self.startupFile = value
        }
        if let value = dict["WorkerServerlessReplicas"] as? Int32 {
            self.workerServerlessReplicas = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateAirflowResponseBody : Tea.TeaModel {
    public class Root : Tea.TeaModel {
        public var airflowName: String?

        public var appSpec: String?

        public var appType: String?

        public var customAirflowCfg: [String]?

        public var dagsDir: String?

        public var deployErrorMsg: String?

        public var description_: String?

        public var environments: String?

        public var gmtCreated: String?

        public var ossBucketName: String?

        public var ossPath: String?

        public var pluginsDir: String?

        public var requirementFile: String?

        public var requirements: String?

        public var securityGroupId: String?

        public var startupFile: String?

        public var status: String?

        public var uuid: String?

        public var vSwitchId: String?

        public var vpcId: String?

        public var workerServerlessReplicas: Int32?

        public var workspaceId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.airflowName != nil {
                map["AirflowName"] = self.airflowName!
            }
            if self.appSpec != nil {
                map["AppSpec"] = self.appSpec!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.customAirflowCfg != nil {
                map["CustomAirflowCfg"] = self.customAirflowCfg!
            }
            if self.dagsDir != nil {
                map["DagsDir"] = self.dagsDir!
            }
            if self.deployErrorMsg != nil {
                map["DeployErrorMsg"] = self.deployErrorMsg!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.environments != nil {
                map["Environments"] = self.environments!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossPath != nil {
                map["OssPath"] = self.ossPath!
            }
            if self.pluginsDir != nil {
                map["PluginsDir"] = self.pluginsDir!
            }
            if self.requirementFile != nil {
                map["RequirementFile"] = self.requirementFile!
            }
            if self.requirements != nil {
                map["Requirements"] = self.requirements!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.startupFile != nil {
                map["StartupFile"] = self.startupFile!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.workerServerlessReplicas != nil {
                map["WorkerServerlessReplicas"] = self.workerServerlessReplicas!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AirflowName"] as? String {
                self.airflowName = value
            }
            if let value = dict["AppSpec"] as? String {
                self.appSpec = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["CustomAirflowCfg"] as? [String] {
                self.customAirflowCfg = value
            }
            if let value = dict["DagsDir"] as? String {
                self.dagsDir = value
            }
            if let value = dict["DeployErrorMsg"] as? String {
                self.deployErrorMsg = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Environments"] as? String {
                self.environments = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssPath"] as? String {
                self.ossPath = value
            }
            if let value = dict["PluginsDir"] as? String {
                self.pluginsDir = value
            }
            if let value = dict["RequirementFile"] as? String {
                self.requirementFile = value
            }
            if let value = dict["Requirements"] as? String {
                self.requirements = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["StartupFile"] as? String {
                self.startupFile = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["WorkerServerlessReplicas"] as? Int32 {
                self.workerServerlessReplicas = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var errorCode: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var root: UpdateAirflowResponseBody.Root?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.root?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.root != nil {
            map["Root"] = self.root?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? [String: Any?] {
            var model = UpdateAirflowResponseBody.Root()
            model.fromMap(value)
            self.root = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateAirflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAirflowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAirflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataLakeDatabaseRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var description_: String?

    public var location: String?

    public var parameters: [String: String]?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateDataLakeDatabaseShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var description_: String?

    public var location: String?

    public var parametersShrink: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateDataLakeDatabaseResponseBody : Tea.TeaModel {
    public var database: DLDatabase?

    public var errorCode: String?

    public var errorMessage: String?

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
        try self.database?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.database != nil {
            map["Database"] = self.database?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["Database"] as? [String: Any?] {
            var model = DLDatabase()
            model.fromMap(value)
            self.database = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDataLakeDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataLakeDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataLakeDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataLakeFunctionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var functionInput: DLFunctionInput?

    public var functionName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.functionInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionInput != nil {
            map["FunctionInput"] = self.functionInput?.toMap()
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionInput"] as? [String: Any?] {
            var model = DLFunctionInput()
            model.fromMap(value)
            self.functionInput = model
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateDataLakeFunctionShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var functionInputShrink: String?

    public var functionName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.functionInputShrink != nil {
            map["FunctionInput"] = self.functionInputShrink!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FunctionInput"] as? String {
            self.functionInputShrink = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateDataLakeFunctionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var function: DLFunction?

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
        try self.function?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.function != nil {
            map["Function"] = self.function?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["Function"] as? [String: Any?] {
            var model = DLFunction()
            model.fromMap(value)
            self.function = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDataLakeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataLakeFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataLakeFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataLakePartitionRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var partitionInput: DLPartitionInput?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.partitionInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.partitionInput != nil {
            map["PartitionInput"] = self.partitionInput?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["PartitionInput"] as? [String: Any?] {
            var model = DLPartitionInput()
            model.fromMap(value)
            self.partitionInput = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateDataLakePartitionShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var partitionInputShrink: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.partitionInputShrink != nil {
            map["PartitionInput"] = self.partitionInputShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["PartitionInput"] as? String {
            self.partitionInputShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateDataLakePartitionResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDataLakePartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataLakePartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataLakePartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataLakeTableRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var tableInput: DLTableInput?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tableInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.tableInput != nil {
            map["TableInput"] = self.tableInput?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["TableInput"] as? [String: Any?] {
            var model = DLTableInput()
            model.fromMap(value)
            self.tableInput = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateDataLakeTableShrinkRequest : Tea.TeaModel {
    public var catalogName: String?

    public var dbName: String?

    public var tableInputShrink: String?

    public var tableName: String?

    public var tid: Int64?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
            map["CatalogName"] = self.catalogName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.tableInputShrink != nil {
            map["TableInput"] = self.tableInputShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tid != nil {
            map["Tid"] = self.tid!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["TableInput"] as? String {
            self.tableInputShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Tid"] as? Int64 {
            self.tid = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateDataLakeTableResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var table: DLTable?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.table?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.table != nil {
            map["Table"] = self.table?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Table"] as? [String: Any?] {
            var model = DLTable()
            model.fromMap(value)
            self.table = model
        }
    }
}

public class UpdateDataLakeTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataLakeTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataLakeTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
