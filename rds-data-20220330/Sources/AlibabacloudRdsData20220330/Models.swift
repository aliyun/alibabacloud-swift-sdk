import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchExecuteStatementResult : Tea.TeaModel {
    public var generatedFieldsList: [[Field]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.generatedFieldsList != nil {
            var tmp : [Any] = []
            for k in self.generatedFieldsList! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["GeneratedFieldsList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GeneratedFieldsList") && dict["GeneratedFieldsList"] != nil {
            var tmp : [[Field]] = []
            for v in dict["GeneratedFieldsList"] as! [Any] {
                var l1 : [Field] = []
                for v1 in v as! [Any] {
                    var model = Field()
                    if v1 != nil {
                        model.fromMap(v1 as! [String: Any])
                    }
                    l1.append(model)
                }
                tmp.append(l1)
            }
            self.generatedFieldsList = tmp
        }
    }
}

public class BeginTransactionResult : Tea.TeaModel {
    public var transactionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class ColumnMetadata : Tea.TeaModel {
    public var arrayBaseColumnType: Int32?

    public var isAutoIncrement: Bool?

    public var isCaseSensitive: Bool?

    public var isCurrency: Bool?

    public var isSigned: Bool?

    public var label: String?

    public var name: String?

    public var nullable: Int32?

    public var precision: Int32?

    public var scale: Int32?

    public var schemaName: String?

    public var tableName: String?

    public var type: Int32?

    public var typeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayBaseColumnType != nil {
            map["ArrayBaseColumnType"] = self.arrayBaseColumnType!
        }
        if self.isAutoIncrement != nil {
            map["IsAutoIncrement"] = self.isAutoIncrement!
        }
        if self.isCaseSensitive != nil {
            map["IsCaseSensitive"] = self.isCaseSensitive!
        }
        if self.isCurrency != nil {
            map["IsCurrency"] = self.isCurrency!
        }
        if self.isSigned != nil {
            map["IsSigned"] = self.isSigned!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nullable != nil {
            map["Nullable"] = self.nullable!
        }
        if self.precision != nil {
            map["Precision"] = self.precision!
        }
        if self.scale != nil {
            map["Scale"] = self.scale!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayBaseColumnType") && dict["ArrayBaseColumnType"] != nil {
            self.arrayBaseColumnType = dict["ArrayBaseColumnType"] as! Int32
        }
        if dict.keys.contains("IsAutoIncrement") && dict["IsAutoIncrement"] != nil {
            self.isAutoIncrement = dict["IsAutoIncrement"] as! Bool
        }
        if dict.keys.contains("IsCaseSensitive") && dict["IsCaseSensitive"] != nil {
            self.isCaseSensitive = dict["IsCaseSensitive"] as! Bool
        }
        if dict.keys.contains("IsCurrency") && dict["IsCurrency"] != nil {
            self.isCurrency = dict["IsCurrency"] as! Bool
        }
        if dict.keys.contains("IsSigned") && dict["IsSigned"] != nil {
            self.isSigned = dict["IsSigned"] as! Bool
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Nullable") && dict["Nullable"] != nil {
            self.nullable = dict["Nullable"] as! Int32
        }
        if dict.keys.contains("Precision") && dict["Precision"] != nil {
            self.precision = dict["Precision"] as! Int32
        }
        if dict.keys.contains("Scale") && dict["Scale"] != nil {
            self.scale = dict["Scale"] as! Int32
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("TypeName") && dict["TypeName"] != nil {
            self.typeName = dict["TypeName"] as! String
        }
    }
}

public class CommitTransactionResult : Tea.TeaModel {
    public var transactionStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.transactionStatus != nil {
            map["TransactionStatus"] = self.transactionStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TransactionStatus") && dict["TransactionStatus"] != nil {
            self.transactionStatus = dict["TransactionStatus"] as! String
        }
    }
}

public class DeleteResult : Tea.TeaModel {
    public var numberOfRecordsUpdated: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.numberOfRecordsUpdated != nil {
            map["NumberOfRecordsUpdated"] = self.numberOfRecordsUpdated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NumberOfRecordsUpdated") && dict["NumberOfRecordsUpdated"] != nil {
            self.numberOfRecordsUpdated = dict["NumberOfRecordsUpdated"] as! Int64
        }
    }
}

public class ExecuteStatementResult : Tea.TeaModel {
    public var columnMetadata: [ColumnMetadata]?

    public var formattedRecords: String?

    public var generatedFields: [Field]?

    public var numberOfRecordsUpdated: Int64?

    public var records: [[Field]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnMetadata != nil {
            var tmp : [Any] = []
            for k in self.columnMetadata! {
                tmp.append(k.toMap())
            }
            map["ColumnMetadata"] = tmp
        }
        if self.formattedRecords != nil {
            map["FormattedRecords"] = self.formattedRecords!
        }
        if self.generatedFields != nil {
            var tmp : [Any] = []
            for k in self.generatedFields! {
                tmp.append(k.toMap())
            }
            map["GeneratedFields"] = tmp
        }
        if self.numberOfRecordsUpdated != nil {
            map["NumberOfRecordsUpdated"] = self.numberOfRecordsUpdated!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["Records"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ColumnMetadata") && dict["ColumnMetadata"] != nil {
            var tmp : [ColumnMetadata] = []
            for v in dict["ColumnMetadata"] as! [Any] {
                var model = ColumnMetadata()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.columnMetadata = tmp
        }
        if dict.keys.contains("FormattedRecords") && dict["FormattedRecords"] != nil {
            self.formattedRecords = dict["FormattedRecords"] as! String
        }
        if dict.keys.contains("GeneratedFields") && dict["GeneratedFields"] != nil {
            var tmp : [Field] = []
            for v in dict["GeneratedFields"] as! [Any] {
                var model = Field()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.generatedFields = tmp
        }
        if dict.keys.contains("NumberOfRecordsUpdated") && dict["NumberOfRecordsUpdated"] != nil {
            self.numberOfRecordsUpdated = dict["NumberOfRecordsUpdated"] as! Int64
        }
        if dict.keys.contains("Records") && dict["Records"] != nil {
            var tmp : [[Field]] = []
            for v in dict["Records"] as! [Any] {
                var l1 : [Field] = []
                for v1 in v as! [Any] {
                    var model = Field()
                    if v1 != nil {
                        model.fromMap(v1 as! [String: Any])
                    }
                    l1.append(model)
                }
                tmp.append(l1)
            }
            self.records = tmp
        }
    }
}

public class Field : Tea.TeaModel {
    public var arrayValue: String?

    public var blobValue: String?

    public var booleanValue: Bool?

    public var isNull: Bool?

    public var longValue: Int64?

    public var stringValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayValue != nil {
            map["ArrayValue"] = self.arrayValue!
        }
        if self.blobValue != nil {
            map["BlobValue"] = self.blobValue!
        }
        if self.booleanValue != nil {
            map["BooleanValue"] = self.booleanValue!
        }
        if self.isNull != nil {
            map["IsNull"] = self.isNull!
        }
        if self.longValue != nil {
            map["LongValue"] = self.longValue!
        }
        if self.stringValue != nil {
            map["StringValue"] = self.stringValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayValue") && dict["ArrayValue"] != nil {
            self.arrayValue = dict["ArrayValue"] as! String
        }
        if dict.keys.contains("BlobValue") && dict["BlobValue"] != nil {
            self.blobValue = dict["BlobValue"] as! String
        }
        if dict.keys.contains("BooleanValue") && dict["BooleanValue"] != nil {
            self.booleanValue = dict["BooleanValue"] as! Bool
        }
        if dict.keys.contains("IsNull") && dict["IsNull"] != nil {
            self.isNull = dict["IsNull"] as! Bool
        }
        if dict.keys.contains("LongValue") && dict["LongValue"] != nil {
            self.longValue = dict["LongValue"] as! Int64
        }
        if dict.keys.contains("StringValue") && dict["StringValue"] != nil {
            self.stringValue = dict["StringValue"] as! String
        }
    }
}

public class InsertListResult : Tea.TeaModel {
    public var autoIncrementKeys: [Int64]?

    public var numberOfRecordsUpdated: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoIncrementKeys != nil {
            map["AutoIncrementKeys"] = self.autoIncrementKeys!
        }
        if self.numberOfRecordsUpdated != nil {
            map["NumberOfRecordsUpdated"] = self.numberOfRecordsUpdated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoIncrementKeys") && dict["AutoIncrementKeys"] != nil {
            self.autoIncrementKeys = dict["AutoIncrementKeys"] as! [Int64]
        }
        if dict.keys.contains("NumberOfRecordsUpdated") && dict["NumberOfRecordsUpdated"] != nil {
            self.numberOfRecordsUpdated = dict["NumberOfRecordsUpdated"] as! Int64
        }
    }
}

public class InsertResult : Tea.TeaModel {
    public var autoIncrementKey: Int64?

    public var numberOfRecordsUpdated: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoIncrementKey != nil {
            map["AutoIncrementKey"] = self.autoIncrementKey!
        }
        if self.numberOfRecordsUpdated != nil {
            map["NumberOfRecordsUpdated"] = self.numberOfRecordsUpdated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoIncrementKey") && dict["AutoIncrementKey"] != nil {
            self.autoIncrementKey = dict["AutoIncrementKey"] as! Int64
        }
        if dict.keys.contains("NumberOfRecordsUpdated") && dict["NumberOfRecordsUpdated"] != nil {
            self.numberOfRecordsUpdated = dict["NumberOfRecordsUpdated"] as! Int64
        }
    }
}

public class ResultSetOptions : Tea.TeaModel {
    public var decimalReturnType: String?

    public var longReturnType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.decimalReturnType != nil {
            map["DecimalReturnType"] = self.decimalReturnType!
        }
        if self.longReturnType != nil {
            map["LongReturnType"] = self.longReturnType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DecimalReturnType") && dict["DecimalReturnType"] != nil {
            self.decimalReturnType = dict["DecimalReturnType"] as! String
        }
        if dict.keys.contains("LongReturnType") && dict["LongReturnType"] != nil {
            self.longReturnType = dict["LongReturnType"] as! String
        }
    }
}

public class RollbackTransactionResult : Tea.TeaModel {
    public var transactionStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.transactionStatus != nil {
            map["TransactionStatus"] = self.transactionStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TransactionStatus") && dict["TransactionStatus"] != nil {
            self.transactionStatus = dict["TransactionStatus"] as! String
        }
    }
}

public class SelectResult : Tea.TeaModel {
    public var records: [[String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.records != nil {
            map["Records"] = self.records!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Records") && dict["Records"] != nil {
            self.records = dict["Records"] as! [[String: Any]]
        }
    }
}

public class Selector : Tea.TeaModel {
    public var eq: String?

    public var ge: String?

    public var gt: String?

    public var le: String?

    public var like: String?

    public var lt: String?

    public var ne: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eq != nil {
            map["Eq"] = self.eq!
        }
        if self.ge != nil {
            map["Ge"] = self.ge!
        }
        if self.gt != nil {
            map["Gt"] = self.gt!
        }
        if self.le != nil {
            map["Le"] = self.le!
        }
        if self.like != nil {
            map["Like"] = self.like!
        }
        if self.lt != nil {
            map["Lt"] = self.lt!
        }
        if self.ne != nil {
            map["Ne"] = self.ne!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Eq") && dict["Eq"] != nil {
            self.eq = dict["Eq"] as! String
        }
        if dict.keys.contains("Ge") && dict["Ge"] != nil {
            self.ge = dict["Ge"] as! String
        }
        if dict.keys.contains("Gt") && dict["Gt"] != nil {
            self.gt = dict["Gt"] as! String
        }
        if dict.keys.contains("Le") && dict["Le"] != nil {
            self.le = dict["Le"] as! String
        }
        if dict.keys.contains("Like") && dict["Like"] != nil {
            self.like = dict["Like"] as! String
        }
        if dict.keys.contains("Lt") && dict["Lt"] != nil {
            self.lt = dict["Lt"] as! String
        }
        if dict.keys.contains("Ne") && dict["Ne"] != nil {
            self.ne = dict["Ne"] as! String
        }
    }
}

public class SqlParameter : Tea.TeaModel {
    public var name: String?

    public var typeHint: String?

    public var value: Field?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.value?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.typeHint != nil {
            map["TypeHint"] = self.typeHint!
        }
        if self.value != nil {
            map["Value"] = self.value?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TypeHint") && dict["TypeHint"] != nil {
            self.typeHint = dict["TypeHint"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            var model = Field()
            model.fromMap(dict["Value"] as! [String: Any])
            self.value = model
        }
    }
}

public class UpdateResult : Tea.TeaModel {
    public var numberOfRecordsUpdated: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.numberOfRecordsUpdated != nil {
            map["NumberOfRecordsUpdated"] = self.numberOfRecordsUpdated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NumberOfRecordsUpdated") && dict["NumberOfRecordsUpdated"] != nil {
            self.numberOfRecordsUpdated = dict["NumberOfRecordsUpdated"] as! Int64
        }
    }
}

public class BatchExecuteStatementRequest : Tea.TeaModel {
    public var database: String?

    public var parameterSets: [[SqlParameter]]?

    public var resourceArn: String?

    public var secretArn: String?

    public var sql: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.parameterSets != nil {
            var tmp : [Any] = []
            for k in self.parameterSets! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["ParameterSets"] = tmp
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.sql != nil {
            map["Sql"] = self.sql!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("ParameterSets") && dict["ParameterSets"] != nil {
            var tmp : [[SqlParameter]] = []
            for v in dict["ParameterSets"] as! [Any] {
                var l1 : [SqlParameter] = []
                for v1 in v as! [Any] {
                    var model = SqlParameter()
                    if v1 != nil {
                        model.fromMap(v1 as! [String: Any])
                    }
                    l1.append(model)
                }
                tmp.append(l1)
            }
            self.parameterSets = tmp
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Sql") && dict["Sql"] != nil {
            self.sql = dict["Sql"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class BatchExecuteStatementShrinkRequest : Tea.TeaModel {
    public var database: String?

    public var parameterSetsShrink: String?

    public var resourceArn: String?

    public var secretArn: String?

    public var sql: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.parameterSetsShrink != nil {
            map["ParameterSets"] = self.parameterSetsShrink!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.sql != nil {
            map["Sql"] = self.sql!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("ParameterSets") && dict["ParameterSets"] != nil {
            self.parameterSetsShrink = dict["ParameterSets"] as! String
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Sql") && dict["Sql"] != nil {
            self.sql = dict["Sql"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class BatchExecuteStatementResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: BatchExecuteStatementResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchExecuteStatementResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BatchExecuteStatementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchExecuteStatementResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BatchExecuteStatementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BeginTransactionRequest : Tea.TeaModel {
    public var database: String?

    public var resourceArn: String?

    public var secretArn: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
    }
}

public class BeginTransactionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: BeginTransactionResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BeginTransactionResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BeginTransactionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BeginTransactionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BeginTransactionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CommitTransactionRequest : Tea.TeaModel {
    public var resourceArn: String?

    public var secretArn: String?

    public var transactionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class CommitTransactionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: CommitTransactionResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CommitTransactionResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CommitTransactionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CommitTransactionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CommitTransactionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRequest : Tea.TeaModel {
    public var database: String?

    public var filter: [String: Selector]?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.filter != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.filter! {
                tmp[k] = v.toMap()
            }
            map["Filter"] = tmp
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            var tmp : [String: Selector] = [:]
            for (k, v) in dict["Filter"] as! [String: Any] {
                if v != nil {
                    var model = Selector()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.filter = tmp
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class DeleteShrinkRequest : Tea.TeaModel {
    public var database: String?

    public var filterShrink: String?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class DeleteResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: DeleteResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteStatementRequest : Tea.TeaModel {
    public class ResultSetOptions : Tea.TeaModel {
        public var decimalReturnType: String?

        public var longReturnType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.decimalReturnType != nil {
                map["DecimalReturnType"] = self.decimalReturnType!
            }
            if self.longReturnType != nil {
                map["LongReturnType"] = self.longReturnType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DecimalReturnType") && dict["DecimalReturnType"] != nil {
                self.decimalReturnType = dict["DecimalReturnType"] as! String
            }
            if dict.keys.contains("LongReturnType") && dict["LongReturnType"] != nil {
                self.longReturnType = dict["LongReturnType"] as! String
            }
        }
    }
    public var continueAfterTimeout: Bool?

    public var database: String?

    public var formatRecordsAs: String?

    public var includeResultMetadata: Bool?

    public var parameters: [SqlParameter]?

    public var resourceArn: String?

    public var resultSetOptions: ExecuteStatementRequest.ResultSetOptions?

    public var secretArn: String?

    public var sql: String?

    public var transactionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultSetOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.continueAfterTimeout != nil {
            map["ContinueAfterTimeout"] = self.continueAfterTimeout!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.formatRecordsAs != nil {
            map["FormatRecordsAs"] = self.formatRecordsAs!
        }
        if self.includeResultMetadata != nil {
            map["IncludeResultMetadata"] = self.includeResultMetadata!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.resultSetOptions != nil {
            map["ResultSetOptions"] = self.resultSetOptions?.toMap()
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.sql != nil {
            map["Sql"] = self.sql!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContinueAfterTimeout") && dict["ContinueAfterTimeout"] != nil {
            self.continueAfterTimeout = dict["ContinueAfterTimeout"] as! Bool
        }
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("FormatRecordsAs") && dict["FormatRecordsAs"] != nil {
            self.formatRecordsAs = dict["FormatRecordsAs"] as! String
        }
        if dict.keys.contains("IncludeResultMetadata") && dict["IncludeResultMetadata"] != nil {
            self.includeResultMetadata = dict["IncludeResultMetadata"] as! Bool
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [SqlParameter] = []
            for v in dict["Parameters"] as! [Any] {
                var model = SqlParameter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("ResultSetOptions") && dict["ResultSetOptions"] != nil {
            var model = ExecuteStatementRequest.ResultSetOptions()
            model.fromMap(dict["ResultSetOptions"] as! [String: Any])
            self.resultSetOptions = model
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Sql") && dict["Sql"] != nil {
            self.sql = dict["Sql"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class ExecuteStatementShrinkRequest : Tea.TeaModel {
    public var continueAfterTimeout: Bool?

    public var database: String?

    public var formatRecordsAs: String?

    public var includeResultMetadata: Bool?

    public var parametersShrink: String?

    public var resourceArn: String?

    public var resultSetOptionsShrink: String?

    public var secretArn: String?

    public var sql: String?

    public var transactionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.continueAfterTimeout != nil {
            map["ContinueAfterTimeout"] = self.continueAfterTimeout!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.formatRecordsAs != nil {
            map["FormatRecordsAs"] = self.formatRecordsAs!
        }
        if self.includeResultMetadata != nil {
            map["IncludeResultMetadata"] = self.includeResultMetadata!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.resultSetOptionsShrink != nil {
            map["ResultSetOptions"] = self.resultSetOptionsShrink!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.sql != nil {
            map["Sql"] = self.sql!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContinueAfterTimeout") && dict["ContinueAfterTimeout"] != nil {
            self.continueAfterTimeout = dict["ContinueAfterTimeout"] as! Bool
        }
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("FormatRecordsAs") && dict["FormatRecordsAs"] != nil {
            self.formatRecordsAs = dict["FormatRecordsAs"] as! String
        }
        if dict.keys.contains("IncludeResultMetadata") && dict["IncludeResultMetadata"] != nil {
            self.includeResultMetadata = dict["IncludeResultMetadata"] as! Bool
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("ResultSetOptions") && dict["ResultSetOptions"] != nil {
            self.resultSetOptionsShrink = dict["ResultSetOptions"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Sql") && dict["Sql"] != nil {
            self.sql = dict["Sql"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class ExecuteStatementResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: ExecuteStatementResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ExecuteStatementResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ExecuteStatementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteStatementResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ExecuteStatementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertRequest : Tea.TeaModel {
    public var database: String?

    public var record: [String: Any]?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.record != nil {
            map["Record"] = self.record!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Record") && dict["Record"] != nil {
            self.record = dict["Record"] as! [String: Any]
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class InsertShrinkRequest : Tea.TeaModel {
    public var database: String?

    public var recordShrink: String?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.recordShrink != nil {
            map["Record"] = self.recordShrink!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Record") && dict["Record"] != nil {
            self.recordShrink = dict["Record"] as! String
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class InsertResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: InsertResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = InsertResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InsertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = InsertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertListRequest : Tea.TeaModel {
    public var database: String?

    public var records: [[String: Any]]?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.records != nil {
            map["Records"] = self.records!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Records") && dict["Records"] != nil {
            self.records = dict["Records"] as! [[String: Any]]
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class InsertListShrinkRequest : Tea.TeaModel {
    public var database: String?

    public var recordsShrink: String?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.recordsShrink != nil {
            map["Records"] = self.recordsShrink!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Records") && dict["Records"] != nil {
            self.recordsShrink = dict["Records"] as! String
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class InsertListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: InsertListResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = InsertListResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InsertListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = InsertListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RollbackTransactionRequest : Tea.TeaModel {
    public var resourceArn: String?

    public var secretArn: String?

    public var transactionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class RollbackTransactionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: RollbackTransactionResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RollbackTransactionResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RollbackTransactionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackTransactionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RollbackTransactionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SelectRequest : Tea.TeaModel {
    public var database: String?

    public var filter: [String: Selector]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.filter != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.filter! {
                tmp[k] = v.toMap()
            }
            map["Filter"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            var tmp : [String: Selector] = [:]
            for (k, v) in dict["Filter"] as! [String: Any] {
                if v != nil {
                    var model = Selector()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.filter = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class SelectShrinkRequest : Tea.TeaModel {
    public var database: String?

    public var filterShrink: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class SelectResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: SelectResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SelectResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SelectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SelectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRequest : Tea.TeaModel {
    public var database: String?

    public var filter: [String: Selector]?

    public var record: [String: Any]?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.filter != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.filter! {
                tmp[k] = v.toMap()
            }
            map["Filter"] = tmp
        }
        if self.record != nil {
            map["Record"] = self.record!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            var tmp : [String: Selector] = [:]
            for (k, v) in dict["Filter"] as! [String: Any] {
                if v != nil {
                    var model = Selector()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.filter = tmp
        }
        if dict.keys.contains("Record") && dict["Record"] != nil {
            self.record = dict["Record"] as! [String: Any]
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class UpdateShrinkRequest : Tea.TeaModel {
    public var database: String?

    public var filterShrink: String?

    public var recordShrink: String?

    public var resourceArn: String?

    public var secretArn: String?

    public var table: String?

    public var transactionId: String?

    public override init() {
        super.init()
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
            map["Database"] = self.database!
        }
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.recordShrink != nil {
            map["Record"] = self.recordShrink!
        }
        if self.resourceArn != nil {
            map["ResourceArn"] = self.resourceArn!
        }
        if self.secretArn != nil {
            map["SecretArn"] = self.secretArn!
        }
        if self.table != nil {
            map["Table"] = self.table!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("Record") && dict["Record"] != nil {
            self.recordShrink = dict["Record"] as! String
        }
        if dict.keys.contains("ResourceArn") && dict["ResourceArn"] != nil {
            self.resourceArn = dict["ResourceArn"] as! String
        }
        if dict.keys.contains("SecretArn") && dict["SecretArn"] != nil {
            self.secretArn = dict["SecretArn"] as! String
        }
        if dict.keys.contains("Table") && dict["Table"] != nil {
            self.table = dict["Table"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class UpdateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: UpdateResult?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateResult()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
