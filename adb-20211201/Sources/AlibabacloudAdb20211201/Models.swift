import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Adb4MysqlSparkDiagnosisInfo : Tea.TeaModel {
    public var diagnosisCode: String?

    public var diagnosisCodeLabel: String?

    public var diagnosisMsg: String?

    public var diagnosisType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosisCode != nil {
            map["DiagnosisCode"] = self.diagnosisCode!
        }
        if self.diagnosisCodeLabel != nil {
            map["DiagnosisCodeLabel"] = self.diagnosisCodeLabel!
        }
        if self.diagnosisMsg != nil {
            map["DiagnosisMsg"] = self.diagnosisMsg!
        }
        if self.diagnosisType != nil {
            map["DiagnosisType"] = self.diagnosisType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnosisCode") && dict["DiagnosisCode"] != nil {
            self.diagnosisCode = dict["DiagnosisCode"] as! String
        }
        if dict.keys.contains("DiagnosisCodeLabel") && dict["DiagnosisCodeLabel"] != nil {
            self.diagnosisCodeLabel = dict["DiagnosisCodeLabel"] as! String
        }
        if dict.keys.contains("DiagnosisMsg") && dict["DiagnosisMsg"] != nil {
            self.diagnosisMsg = dict["DiagnosisMsg"] as! String
        }
        if dict.keys.contains("DiagnosisType") && dict["DiagnosisType"] != nil {
            self.diagnosisType = dict["DiagnosisType"] as! String
        }
    }
}

public class ColDetailModel : Tea.TeaModel {
    public var columnName: String?

    public var createTime: String?

    public var description_: String?

    public var distributeKey: Bool?

    public var nullable: Bool?

    public var partitionKey: Bool?

    public var primaryKey: Bool?

    public var schemaName: String?

    public var tableName: String?

    public var type: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnName != nil {
            map["ColumnName"] = self.columnName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.distributeKey != nil {
            map["DistributeKey"] = self.distributeKey!
        }
        if self.nullable != nil {
            map["Nullable"] = self.nullable!
        }
        if self.partitionKey != nil {
            map["PartitionKey"] = self.partitionKey!
        }
        if self.primaryKey != nil {
            map["PrimaryKey"] = self.primaryKey!
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
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ColumnName") && dict["ColumnName"] != nil {
            self.columnName = dict["ColumnName"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DistributeKey") && dict["DistributeKey"] != nil {
            self.distributeKey = dict["DistributeKey"] as! Bool
        }
        if dict.keys.contains("Nullable") && dict["Nullable"] != nil {
            self.nullable = dict["Nullable"] as! Bool
        }
        if dict.keys.contains("PartitionKey") && dict["PartitionKey"] != nil {
            self.partitionKey = dict["PartitionKey"] as! Bool
        }
        if dict.keys.contains("PrimaryKey") && dict["PrimaryKey"] != nil {
            self.primaryKey = dict["PrimaryKey"] as! Bool
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class CstoreIndexModel : Tea.TeaModel {
    public var columnOrds: [String]?

    public var createTime: String?

    public var databaseName: String?

    public var indexColumns: [FieldSchemaModel]?

    public var indexName: String?

    public var indexType: String?

    public var options: [String: String]?

    public var physicalTableName: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnOrds != nil {
            map["ColumnOrds"] = self.columnOrds!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.indexColumns != nil {
            var tmp : [Any] = []
            for k in self.indexColumns! {
                tmp.append(k.toMap())
            }
            map["IndexColumns"] = tmp
        }
        if self.indexName != nil {
            map["IndexName"] = self.indexName!
        }
        if self.indexType != nil {
            map["IndexType"] = self.indexType!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.physicalTableName != nil {
            map["PhysicalTableName"] = self.physicalTableName!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ColumnOrds") && dict["ColumnOrds"] != nil {
            self.columnOrds = dict["ColumnOrds"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("IndexColumns") && dict["IndexColumns"] != nil {
            var tmp : [FieldSchemaModel] = []
            for v in dict["IndexColumns"] as! [Any] {
                var model = FieldSchemaModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.indexColumns = tmp
        }
        if dict.keys.contains("IndexName") && dict["IndexName"] != nil {
            self.indexName = dict["IndexName"] as! String
        }
        if dict.keys.contains("IndexType") && dict["IndexType"] != nil {
            self.indexType = dict["IndexType"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! [String: String]
        }
        if dict.keys.contains("PhysicalTableName") && dict["PhysicalTableName"] != nil {
            self.physicalTableName = dict["PhysicalTableName"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class DatabaseSummaryModel : Tea.TeaModel {
    public var createTime: String?

    public var description_: String?

    public var owner: String?

    public var schemaName: String?

    public var updateTime: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Owner") && dict["Owner"] != nil {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class Detail : Tea.TeaModel {
    public var appType: String?

    public var DBClusterId: String?

    public var data: String?

    public var durationInMillis: Int64?

    public var estimateExecutionCpuTimeInSeconds: Int64?

    public var lastAttemptId: String?

    public var lastUpdatedTimeInMillis: Int64?

    public var logRootPath: String?

    public var resourceGroupName: String?

    public var startedTimeInMillis: Int64?

    public var submittedTimeInMillis: Int64?

    public var terminatedTimeInMillis: Int64?

    public var webUiAddress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.durationInMillis != nil {
            map["DurationInMillis"] = self.durationInMillis!
        }
        if self.estimateExecutionCpuTimeInSeconds != nil {
            map["EstimateExecutionCpuTimeInSeconds"] = self.estimateExecutionCpuTimeInSeconds!
        }
        if self.lastAttemptId != nil {
            map["LastAttemptId"] = self.lastAttemptId!
        }
        if self.lastUpdatedTimeInMillis != nil {
            map["LastUpdatedTimeInMillis"] = self.lastUpdatedTimeInMillis!
        }
        if self.logRootPath != nil {
            map["LogRootPath"] = self.logRootPath!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.startedTimeInMillis != nil {
            map["StartedTimeInMillis"] = self.startedTimeInMillis!
        }
        if self.submittedTimeInMillis != nil {
            map["SubmittedTimeInMillis"] = self.submittedTimeInMillis!
        }
        if self.terminatedTimeInMillis != nil {
            map["TerminatedTimeInMillis"] = self.terminatedTimeInMillis!
        }
        if self.webUiAddress != nil {
            map["WebUiAddress"] = self.webUiAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("DurationInMillis") && dict["DurationInMillis"] != nil {
            self.durationInMillis = dict["DurationInMillis"] as! Int64
        }
        if dict.keys.contains("EstimateExecutionCpuTimeInSeconds") && dict["EstimateExecutionCpuTimeInSeconds"] != nil {
            self.estimateExecutionCpuTimeInSeconds = dict["EstimateExecutionCpuTimeInSeconds"] as! Int64
        }
        if dict.keys.contains("LastAttemptId") && dict["LastAttemptId"] != nil {
            self.lastAttemptId = dict["LastAttemptId"] as! String
        }
        if dict.keys.contains("LastUpdatedTimeInMillis") && dict["LastUpdatedTimeInMillis"] != nil {
            self.lastUpdatedTimeInMillis = dict["LastUpdatedTimeInMillis"] as! Int64
        }
        if dict.keys.contains("LogRootPath") && dict["LogRootPath"] != nil {
            self.logRootPath = dict["LogRootPath"] as! String
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
        if dict.keys.contains("StartedTimeInMillis") && dict["StartedTimeInMillis"] != nil {
            self.startedTimeInMillis = dict["StartedTimeInMillis"] as! Int64
        }
        if dict.keys.contains("SubmittedTimeInMillis") && dict["SubmittedTimeInMillis"] != nil {
            self.submittedTimeInMillis = dict["SubmittedTimeInMillis"] as! Int64
        }
        if dict.keys.contains("TerminatedTimeInMillis") && dict["TerminatedTimeInMillis"] != nil {
            self.terminatedTimeInMillis = dict["TerminatedTimeInMillis"] as! Int64
        }
        if dict.keys.contains("WebUiAddress") && dict["WebUiAddress"] != nil {
            self.webUiAddress = dict["WebUiAddress"] as! String
        }
    }
}

public class FieldSchemaModel : Tea.TeaModel {
    public var autoIncrement: Bool?

    public var columnRawName: String?

    public var comment: String?

    public var compressFloatUseShort: Bool?

    public var compression: String?

    public var createTime: String?

    public var dataType: String?

    public var databaseName: String?

    public var defaultValue: String?

    public var delimiter: String?

    public var encode: String?

    public var isPartitionKey: Bool?

    public var mappedName: String?

    public var name: String?

    public var nullable: Bool?

    public var onUpdate: String?

    public var ordinalPosition: Int64?

    public var physicalColumnName: String?

    public var pkPosition: Int64?

    public var precision: Int64?

    public var primarykey: Bool?

    public var scale: Int64?

    public var tableName: String?

    public var tokenizer: String?

    public var type: String?

    public var updateTime: String?

    public var valueType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoIncrement != nil {
            map["AutoIncrement"] = self.autoIncrement!
        }
        if self.columnRawName != nil {
            map["ColumnRawName"] = self.columnRawName!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.compressFloatUseShort != nil {
            map["CompressFloatUseShort"] = self.compressFloatUseShort!
        }
        if self.compression != nil {
            map["Compression"] = self.compression!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.defaultValue != nil {
            map["DefaultValue"] = self.defaultValue!
        }
        if self.delimiter != nil {
            map["Delimiter"] = self.delimiter!
        }
        if self.encode != nil {
            map["Encode"] = self.encode!
        }
        if self.isPartitionKey != nil {
            map["IsPartitionKey"] = self.isPartitionKey!
        }
        if self.mappedName != nil {
            map["MappedName"] = self.mappedName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nullable != nil {
            map["Nullable"] = self.nullable!
        }
        if self.onUpdate != nil {
            map["OnUpdate"] = self.onUpdate!
        }
        if self.ordinalPosition != nil {
            map["OrdinalPosition"] = self.ordinalPosition!
        }
        if self.physicalColumnName != nil {
            map["PhysicalColumnName"] = self.physicalColumnName!
        }
        if self.pkPosition != nil {
            map["PkPosition"] = self.pkPosition!
        }
        if self.precision != nil {
            map["Precision"] = self.precision!
        }
        if self.primarykey != nil {
            map["Primarykey"] = self.primarykey!
        }
        if self.scale != nil {
            map["Scale"] = self.scale!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tokenizer != nil {
            map["Tokenizer"] = self.tokenizer!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.valueType != nil {
            map["ValueType"] = self.valueType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoIncrement") && dict["AutoIncrement"] != nil {
            self.autoIncrement = dict["AutoIncrement"] as! Bool
        }
        if dict.keys.contains("ColumnRawName") && dict["ColumnRawName"] != nil {
            self.columnRawName = dict["ColumnRawName"] as! String
        }
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("CompressFloatUseShort") && dict["CompressFloatUseShort"] != nil {
            self.compressFloatUseShort = dict["CompressFloatUseShort"] as! Bool
        }
        if dict.keys.contains("Compression") && dict["Compression"] != nil {
            self.compression = dict["Compression"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
            self.defaultValue = dict["DefaultValue"] as! String
        }
        if dict.keys.contains("Delimiter") && dict["Delimiter"] != nil {
            self.delimiter = dict["Delimiter"] as! String
        }
        if dict.keys.contains("Encode") && dict["Encode"] != nil {
            self.encode = dict["Encode"] as! String
        }
        if dict.keys.contains("IsPartitionKey") && dict["IsPartitionKey"] != nil {
            self.isPartitionKey = dict["IsPartitionKey"] as! Bool
        }
        if dict.keys.contains("MappedName") && dict["MappedName"] != nil {
            self.mappedName = dict["MappedName"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Nullable") && dict["Nullable"] != nil {
            self.nullable = dict["Nullable"] as! Bool
        }
        if dict.keys.contains("OnUpdate") && dict["OnUpdate"] != nil {
            self.onUpdate = dict["OnUpdate"] as! String
        }
        if dict.keys.contains("OrdinalPosition") && dict["OrdinalPosition"] != nil {
            self.ordinalPosition = dict["OrdinalPosition"] as! Int64
        }
        if dict.keys.contains("PhysicalColumnName") && dict["PhysicalColumnName"] != nil {
            self.physicalColumnName = dict["PhysicalColumnName"] as! String
        }
        if dict.keys.contains("PkPosition") && dict["PkPosition"] != nil {
            self.pkPosition = dict["PkPosition"] as! Int64
        }
        if dict.keys.contains("Precision") && dict["Precision"] != nil {
            self.precision = dict["Precision"] as! Int64
        }
        if dict.keys.contains("Primarykey") && dict["Primarykey"] != nil {
            self.primarykey = dict["Primarykey"] as! Bool
        }
        if dict.keys.contains("Scale") && dict["Scale"] != nil {
            self.scale = dict["Scale"] as! Int64
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("Tokenizer") && dict["Tokenizer"] != nil {
            self.tokenizer = dict["Tokenizer"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("ValueType") && dict["ValueType"] != nil {
            self.valueType = dict["ValueType"] as! String
        }
    }
}

public class Filters : Tea.TeaModel {
    public class ExecutionTimeRange : Tea.TeaModel {
        public var maxTimeInSeconds: Int64?

        public var minTimeInSeconds: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxTimeInSeconds != nil {
                map["MaxTimeInSeconds"] = self.maxTimeInSeconds!
            }
            if self.minTimeInSeconds != nil {
                map["MinTimeInSeconds"] = self.minTimeInSeconds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxTimeInSeconds") && dict["MaxTimeInSeconds"] != nil {
                self.maxTimeInSeconds = dict["MaxTimeInSeconds"] as! Int64
            }
            if dict.keys.contains("MinTimeInSeconds") && dict["MinTimeInSeconds"] != nil {
                self.minTimeInSeconds = dict["MinTimeInSeconds"] as! Int64
            }
        }
    }
    public class SubmitTimeRange : Tea.TeaModel {
        public var maxTimeInMills: Int64?

        public var minTimeInMills: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxTimeInMills != nil {
                map["MaxTimeInMills"] = self.maxTimeInMills!
            }
            if self.minTimeInMills != nil {
                map["MinTimeInMills"] = self.minTimeInMills!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxTimeInMills") && dict["MaxTimeInMills"] != nil {
                self.maxTimeInMills = dict["MaxTimeInMills"] as! Int64
            }
            if dict.keys.contains("MinTimeInMills") && dict["MinTimeInMills"] != nil {
                self.minTimeInMills = dict["MinTimeInMills"] as! Int64
            }
        }
    }
    public class TermiatedTimeRange : Tea.TeaModel {
        public var maxTimeInMills: Int64?

        public var minTimeInMills: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxTimeInMills != nil {
                map["MaxTimeInMills"] = self.maxTimeInMills!
            }
            if self.minTimeInMills != nil {
                map["MinTimeInMills"] = self.minTimeInMills!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxTimeInMills") && dict["MaxTimeInMills"] != nil {
                self.maxTimeInMills = dict["MaxTimeInMills"] as! Int64
            }
            if dict.keys.contains("MinTimeInMills") && dict["MinTimeInMills"] != nil {
                self.minTimeInMills = dict["MinTimeInMills"] as! Int64
            }
        }
    }
    public var appIdRegex: String?

    public var appNameRegex: String?

    public var appState: String?

    public var appType: String?

    public var executionTimeRange: Filters.ExecutionTimeRange?

    public var submitTimeRange: Filters.SubmitTimeRange?

    public var termiatedTimeRange: Filters.TermiatedTimeRange?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.executionTimeRange?.validate()
        try self.submitTimeRange?.validate()
        try self.termiatedTimeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIdRegex != nil {
            map["AppIdRegex"] = self.appIdRegex!
        }
        if self.appNameRegex != nil {
            map["AppNameRegex"] = self.appNameRegex!
        }
        if self.appState != nil {
            map["AppState"] = self.appState!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.executionTimeRange != nil {
            map["ExecutionTimeRange"] = self.executionTimeRange?.toMap()
        }
        if self.submitTimeRange != nil {
            map["SubmitTimeRange"] = self.submitTimeRange?.toMap()
        }
        if self.termiatedTimeRange != nil {
            map["TermiatedTimeRange"] = self.termiatedTimeRange?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppIdRegex") && dict["AppIdRegex"] != nil {
            self.appIdRegex = dict["AppIdRegex"] as! String
        }
        if dict.keys.contains("AppNameRegex") && dict["AppNameRegex"] != nil {
            self.appNameRegex = dict["AppNameRegex"] as! String
        }
        if dict.keys.contains("AppState") && dict["AppState"] != nil {
            self.appState = dict["AppState"] as! String
        }
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("ExecutionTimeRange") && dict["ExecutionTimeRange"] != nil {
            var model = Filters.ExecutionTimeRange()
            model.fromMap(dict["ExecutionTimeRange"] as! [String: Any])
            self.executionTimeRange = model
        }
        if dict.keys.contains("SubmitTimeRange") && dict["SubmitTimeRange"] != nil {
            var model = Filters.SubmitTimeRange()
            model.fromMap(dict["SubmitTimeRange"] as! [String: Any])
            self.submitTimeRange = model
        }
        if dict.keys.contains("TermiatedTimeRange") && dict["TermiatedTimeRange"] != nil {
            var model = Filters.TermiatedTimeRange()
            model.fromMap(dict["TermiatedTimeRange"] as! [String: Any])
            self.termiatedTimeRange = model
        }
    }
}

public class LogAnalyzeResult : Tea.TeaModel {
    public var appErrorAdvice: String?

    public var appErrorCode: String?

    public var appErrorLog: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appErrorAdvice != nil {
            map["AppErrorAdvice"] = self.appErrorAdvice!
        }
        if self.appErrorCode != nil {
            map["AppErrorCode"] = self.appErrorCode!
        }
        if self.appErrorLog != nil {
            map["AppErrorLog"] = self.appErrorLog!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppErrorAdvice") && dict["AppErrorAdvice"] != nil {
            self.appErrorAdvice = dict["AppErrorAdvice"] as! String
        }
        if dict.keys.contains("AppErrorCode") && dict["AppErrorCode"] != nil {
            self.appErrorCode = dict["AppErrorCode"] as! String
        }
        if dict.keys.contains("AppErrorLog") && dict["AppErrorLog"] != nil {
            self.appErrorLog = dict["AppErrorLog"] as! String
        }
    }
}

public class OperatorNode : Tea.TeaModel {
    public class Stats : Tea.TeaModel {
        public var bytes: Int64?

        public var outputRows: Int64?

        public var parameters: String?

        public var peakMemory: Int64?

        public var timeCost: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bytes != nil {
                map["bytes"] = self.bytes!
            }
            if self.outputRows != nil {
                map["outputRows"] = self.outputRows!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.peakMemory != nil {
                map["peakMemory"] = self.peakMemory!
            }
            if self.timeCost != nil {
                map["timeCost"] = self.timeCost!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bytes") && dict["bytes"] != nil {
                self.bytes = dict["bytes"] as! Int64
            }
            if dict.keys.contains("outputRows") && dict["outputRows"] != nil {
                self.outputRows = dict["outputRows"] as! Int64
            }
            if dict.keys.contains("parameters") && dict["parameters"] != nil {
                self.parameters = dict["parameters"] as! String
            }
            if dict.keys.contains("peakMemory") && dict["peakMemory"] != nil {
                self.peakMemory = dict["peakMemory"] as! Int64
            }
            if dict.keys.contains("timeCost") && dict["timeCost"] != nil {
                self.timeCost = dict["timeCost"] as! Int64
            }
        }
    }
    public var children: [OperatorNode]?

    public var id: Int32?

    public var levelWidth: Int32?

    public var nodeDepth: Int32?

    public var nodeName: String?

    public var nodeWidth: Int32?

    public var parentId: Int32?

    public var stats: OperatorNode.Stats?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["children"] = tmp
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.levelWidth != nil {
            map["levelWidth"] = self.levelWidth!
        }
        if self.nodeDepth != nil {
            map["nodeDepth"] = self.nodeDepth!
        }
        if self.nodeName != nil {
            map["nodeName"] = self.nodeName!
        }
        if self.nodeWidth != nil {
            map["nodeWidth"] = self.nodeWidth!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.stats != nil {
            map["stats"] = self.stats?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("children") && dict["children"] != nil {
            var tmp : [OperatorNode] = []
            for v in dict["children"] as! [Any] {
                var model = OperatorNode()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.children = tmp
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int32
        }
        if dict.keys.contains("levelWidth") && dict["levelWidth"] != nil {
            self.levelWidth = dict["levelWidth"] as! Int32
        }
        if dict.keys.contains("nodeDepth") && dict["nodeDepth"] != nil {
            self.nodeDepth = dict["nodeDepth"] as! Int32
        }
        if dict.keys.contains("nodeName") && dict["nodeName"] != nil {
            self.nodeName = dict["nodeName"] as! String
        }
        if dict.keys.contains("nodeWidth") && dict["nodeWidth"] != nil {
            self.nodeWidth = dict["nodeWidth"] as! Int32
        }
        if dict.keys.contains("parentId") && dict["parentId"] != nil {
            self.parentId = dict["parentId"] as! Int32
        }
        if dict.keys.contains("stats") && dict["stats"] != nil {
            var model = OperatorNode.Stats()
            model.fromMap(dict["stats"] as! [String: Any])
            self.stats = model
        }
    }
}

public class SerDeInfoModel : Tea.TeaModel {
    public var name: String?

    public var parameters: [String: String]?

    public var serDeId: Int64?

    public var serializationLib: String?

    public override init() {
        super.init()
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
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.serDeId != nil {
            map["SerDeId"] = self.serDeId!
        }
        if self.serializationLib != nil {
            map["SerializationLib"] = self.serializationLib!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! [String: String]
        }
        if dict.keys.contains("SerDeId") && dict["SerDeId"] != nil {
            self.serDeId = dict["SerDeId"] as! Int64
        }
        if dict.keys.contains("SerializationLib") && dict["SerializationLib"] != nil {
            self.serializationLib = dict["SerializationLib"] as! String
        }
    }
}

public class SparkAnalyzeLogTask : Tea.TeaModel {
    public var DBClusterId: String?

    public var result: LogAnalyzeResult?

    public var ruleMatched: Bool?

    public var startedTimeInMillis: Int64?

    public var submittedTimeInMillis: Int64?

    public var taskErrMsg: String?

    public var taskId: Int64?

    public var taskState: String?

    public var terminatedTimeInMillis: Int64?

    public var userId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.ruleMatched != nil {
            map["RuleMatched"] = self.ruleMatched!
        }
        if self.startedTimeInMillis != nil {
            map["StartedTimeInMillis"] = self.startedTimeInMillis!
        }
        if self.submittedTimeInMillis != nil {
            map["SubmittedTimeInMillis"] = self.submittedTimeInMillis!
        }
        if self.taskErrMsg != nil {
            map["TaskErrMsg"] = self.taskErrMsg!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskState != nil {
            map["TaskState"] = self.taskState!
        }
        if self.terminatedTimeInMillis != nil {
            map["TerminatedTimeInMillis"] = self.terminatedTimeInMillis!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = LogAnalyzeResult()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("RuleMatched") && dict["RuleMatched"] != nil {
            self.ruleMatched = dict["RuleMatched"] as! Bool
        }
        if dict.keys.contains("StartedTimeInMillis") && dict["StartedTimeInMillis"] != nil {
            self.startedTimeInMillis = dict["StartedTimeInMillis"] as! Int64
        }
        if dict.keys.contains("SubmittedTimeInMillis") && dict["SubmittedTimeInMillis"] != nil {
            self.submittedTimeInMillis = dict["SubmittedTimeInMillis"] as! Int64
        }
        if dict.keys.contains("TaskErrMsg") && dict["TaskErrMsg"] != nil {
            self.taskErrMsg = dict["TaskErrMsg"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
        }
        if dict.keys.contains("TaskState") && dict["TaskState"] != nil {
            self.taskState = dict["TaskState"] as! String
        }
        if dict.keys.contains("TerminatedTimeInMillis") && dict["TerminatedTimeInMillis"] != nil {
            self.terminatedTimeInMillis = dict["TerminatedTimeInMillis"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class SparkAppInfo : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var DBClusterId: String?

    public var detail: Detail?

    public var message: String?

    public var priority: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.detail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.detail != nil {
            map["Detail"] = self.detail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            var model = Detail()
            model.fromMap(dict["Detail"] as! [String: Any])
            self.detail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
    }
}

public class SparkAttemptInfo : Tea.TeaModel {
    public var attemptId: String?

    public var detail: Detail?

    public var message: String?

    public var priority: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.detail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attemptId != nil {
            map["AttemptId"] = self.attemptId!
        }
        if self.detail != nil {
            map["Detail"] = self.detail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttemptId") && dict["AttemptId"] != nil {
            self.attemptId = dict["AttemptId"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            var model = Detail()
            model.fromMap(dict["Detail"] as! [String: Any])
            self.detail = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
    }
}

public class SparkOperatorInfo : Tea.TeaModel {
    public var metricValue: Int64?

    public var operatorName: [UInt8]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricValue != nil {
            map["MetricValue"] = self.metricValue!
        }
        if self.operatorName != nil {
            map["OperatorName"] = self.operatorName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetricValue") && dict["MetricValue"] != nil {
            self.metricValue = dict["MetricValue"] as! Int64
        }
        if dict.keys.contains("OperatorName") && dict["OperatorName"] != nil {
            self.operatorName = dict["OperatorName"] as! [UInt8]
        }
    }
}

public class SparkSession : Tea.TeaModel {
    public var active: String?

    public var aliyunUid: Int64?

    public var sessionId: Int64?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.aliyunUid != nil {
            map["AliyunUid"] = self.aliyunUid!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") && dict["Active"] != nil {
            self.active = dict["Active"] as! String
        }
        if dict.keys.contains("AliyunUid") && dict["AliyunUid"] != nil {
            self.aliyunUid = dict["AliyunUid"] as! Int64
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! Int64
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
    }
}

public class Statement : Tea.TeaModel {
    public var aliyunUid: Int64?

    public var code: String?

    public var codeState: String?

    public var codeType: String?

    public var endTime: Int64?

    public var error: String?

    public var haveRows: Bool?

    public var output: String?

    public var resourceGroup: String?

    public var sessionId: Int64?

    public var startTime: Int64?

    public var statementId: Int64?

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
        if self.aliyunUid != nil {
            map["AliyunUid"] = self.aliyunUid!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.codeState != nil {
            map["CodeState"] = self.codeState!
        }
        if self.codeType != nil {
            map["CodeType"] = self.codeType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.haveRows != nil {
            map["HaveRows"] = self.haveRows!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statementId != nil {
            map["StatementId"] = self.statementId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunUid") && dict["AliyunUid"] != nil {
            self.aliyunUid = dict["AliyunUid"] as! Int64
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CodeState") && dict["CodeState"] != nil {
            self.codeState = dict["CodeState"] as! String
        }
        if dict.keys.contains("CodeType") && dict["CodeType"] != nil {
            self.codeType = dict["CodeType"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("HaveRows") && dict["HaveRows"] != nil {
            self.haveRows = dict["HaveRows"] as! Bool
        }
        if dict.keys.contains("Output") && dict["Output"] != nil {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("ResourceGroup") && dict["ResourceGroup"] != nil {
            self.resourceGroup = dict["ResourceGroup"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("StatementId") && dict["StatementId"] != nil {
            self.statementId = dict["StatementId"] as! Int64
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class StatementInfo : Tea.TeaModel {
    public var code: String?

    public var completedTimeInMills: Int64?

    public var output: String?

    public var process: Double?

    public var startedTimeInMills: Int64?

    public var state: String?

    public var statementId: String?

    public override init() {
        super.init()
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
        if self.completedTimeInMills != nil {
            map["CompletedTimeInMills"] = self.completedTimeInMills!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.process != nil {
            map["Process"] = self.process!
        }
        if self.startedTimeInMills != nil {
            map["StartedTimeInMills"] = self.startedTimeInMills!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.statementId != nil {
            map["StatementId"] = self.statementId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CompletedTimeInMills") && dict["CompletedTimeInMills"] != nil {
            self.completedTimeInMills = dict["CompletedTimeInMills"] as! Int64
        }
        if dict.keys.contains("Output") && dict["Output"] != nil {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("Process") && dict["Process"] != nil {
            self.process = dict["Process"] as! Double
        }
        if dict.keys.contains("StartedTimeInMills") && dict["StartedTimeInMills"] != nil {
            self.startedTimeInMills = dict["StartedTimeInMills"] as! Int64
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("StatementId") && dict["StatementId"] != nil {
            self.statementId = dict["StatementId"] as! String
        }
    }
}

public class StorageDescriptorModel : Tea.TeaModel {
    public var compressed: Bool?

    public var inputFormat: String?

    public var location: String?

    public var numBuckets: Int64?

    public var outputFormat: String?

    public var parameters: [String: String]?

    public var sdId: Int64?

    public var serDeInfo: SerDeInfoModel?

    public var storedAsSubDirectories: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serDeInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.inputFormat != nil {
            map["InputFormat"] = self.inputFormat!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.numBuckets != nil {
            map["NumBuckets"] = self.numBuckets!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.sdId != nil {
            map["SdId"] = self.sdId!
        }
        if self.serDeInfo != nil {
            map["SerDeInfo"] = self.serDeInfo?.toMap()
        }
        if self.storedAsSubDirectories != nil {
            map["StoredAsSubDirectories"] = self.storedAsSubDirectories!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Compressed") && dict["Compressed"] != nil {
            self.compressed = dict["Compressed"] as! Bool
        }
        if dict.keys.contains("InputFormat") && dict["InputFormat"] != nil {
            self.inputFormat = dict["InputFormat"] as! String
        }
        if dict.keys.contains("Location") && dict["Location"] != nil {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("NumBuckets") && dict["NumBuckets"] != nil {
            self.numBuckets = dict["NumBuckets"] as! Int64
        }
        if dict.keys.contains("OutputFormat") && dict["OutputFormat"] != nil {
            self.outputFormat = dict["OutputFormat"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! [String: String]
        }
        if dict.keys.contains("SdId") && dict["SdId"] != nil {
            self.sdId = dict["SdId"] as! Int64
        }
        if dict.keys.contains("SerDeInfo") && dict["SerDeInfo"] != nil {
            var model = SerDeInfoModel()
            model.fromMap(dict["SerDeInfo"] as! [String: Any])
            self.serDeInfo = model
        }
        if dict.keys.contains("StoredAsSubDirectories") && dict["StoredAsSubDirectories"] != nil {
            self.storedAsSubDirectories = dict["StoredAsSubDirectories"] as! Bool
        }
    }
}

public class TableDetailModel : Tea.TeaModel {
    public var catalog: String?

    public var columns: [ColDetailModel]?

    public var createTime: String?

    public var description_: String?

    public var owner: String?

    public var schemaName: String?

    public var tableName: String?

    public var tableType: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalog != nil {
            map["Catalog"] = self.catalog!
        }
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["Columns"] = tmp
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Catalog") && dict["Catalog"] != nil {
            self.catalog = dict["Catalog"] as! String
        }
        if dict.keys.contains("Columns") && dict["Columns"] != nil {
            var tmp : [ColDetailModel] = []
            for v in dict["Columns"] as! [Any] {
                var model = ColDetailModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.columns = tmp
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Owner") && dict["Owner"] != nil {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("TableType") && dict["TableType"] != nil {
            self.tableType = dict["TableType"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class TableModel : Tea.TeaModel {
    public var archiveType: String?

    public var blockSize: Int64?

    public var bucket: Int64?

    public var bucketCount: Int64?

    public var cols: [FieldSchemaModel]?

    public var comment: String?

    public var compression: String?

    public var createTime: String?

    public var currentVersion: Int64?

    public var dbName: String?

    public var dictEncode: Bool?

    public var distributeColumns: [FieldSchemaModel]?

    public var distributeType: String?

    public var enableDfs: Bool?

    public var hotPartitionCount: Int64?

    public var indexes: [CstoreIndexModel]?

    public var isAllIndex: Bool?

    public var isFulltextDict: Bool?

    public var maxColumnId: Int64?

    public var parameters: [String: String]?

    public var partitionColumn: String?

    public var partitionCount: Int64?

    public var partitionKeys: [FieldSchemaModel]?

    public var partitionType: String?

    public var physicalDatabaseName: String?

    public var physicalTableName: String?

    public var previousVersion: Int64?

    public var rawTableName: String?

    public var routeColumns: [FieldSchemaModel]?

    public var routeEffectiveColumn: FieldSchemaModel?

    public var routeType: String?

    public var rtEngineType: String?

    public var rtIndexAll: Bool?

    public var rtModeType: String?

    public var sd: StorageDescriptorModel?

    public var storagePolicy: String?

    public var subpartitionColumn: String?

    public var subpartitionCount: Int64?

    public var subpartitionType: String?

    public var tableEngineName: String?

    public var tableName: String?

    public var tableType: String?

    public var tblId: Int64?

    public var temporary: Bool?

    public var updateTime: String?

    public var viewExpandedText: String?

    public var viewOriginalText: String?

    public var viewSecurityMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routeEffectiveColumn?.validate()
        try self.sd?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.archiveType != nil {
            map["ArchiveType"] = self.archiveType!
        }
        if self.blockSize != nil {
            map["BlockSize"] = self.blockSize!
        }
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.bucketCount != nil {
            map["BucketCount"] = self.bucketCount!
        }
        if self.cols != nil {
            var tmp : [Any] = []
            for k in self.cols! {
                tmp.append(k.toMap())
            }
            map["Cols"] = tmp
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.compression != nil {
            map["Compression"] = self.compression!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.currentVersion != nil {
            map["CurrentVersion"] = self.currentVersion!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dictEncode != nil {
            map["DictEncode"] = self.dictEncode!
        }
        if self.distributeColumns != nil {
            var tmp : [Any] = []
            for k in self.distributeColumns! {
                tmp.append(k.toMap())
            }
            map["DistributeColumns"] = tmp
        }
        if self.distributeType != nil {
            map["DistributeType"] = self.distributeType!
        }
        if self.enableDfs != nil {
            map["EnableDfs"] = self.enableDfs!
        }
        if self.hotPartitionCount != nil {
            map["HotPartitionCount"] = self.hotPartitionCount!
        }
        if self.indexes != nil {
            var tmp : [Any] = []
            for k in self.indexes! {
                tmp.append(k.toMap())
            }
            map["Indexes"] = tmp
        }
        if self.isAllIndex != nil {
            map["IsAllIndex"] = self.isAllIndex!
        }
        if self.isFulltextDict != nil {
            map["IsFulltextDict"] = self.isFulltextDict!
        }
        if self.maxColumnId != nil {
            map["MaxColumnId"] = self.maxColumnId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.partitionColumn != nil {
            map["PartitionColumn"] = self.partitionColumn!
        }
        if self.partitionCount != nil {
            map["PartitionCount"] = self.partitionCount!
        }
        if self.partitionKeys != nil {
            var tmp : [Any] = []
            for k in self.partitionKeys! {
                tmp.append(k.toMap())
            }
            map["PartitionKeys"] = tmp
        }
        if self.partitionType != nil {
            map["PartitionType"] = self.partitionType!
        }
        if self.physicalDatabaseName != nil {
            map["PhysicalDatabaseName"] = self.physicalDatabaseName!
        }
        if self.physicalTableName != nil {
            map["PhysicalTableName"] = self.physicalTableName!
        }
        if self.previousVersion != nil {
            map["PreviousVersion"] = self.previousVersion!
        }
        if self.rawTableName != nil {
            map["RawTableName"] = self.rawTableName!
        }
        if self.routeColumns != nil {
            var tmp : [Any] = []
            for k in self.routeColumns! {
                tmp.append(k.toMap())
            }
            map["RouteColumns"] = tmp
        }
        if self.routeEffectiveColumn != nil {
            map["RouteEffectiveColumn"] = self.routeEffectiveColumn?.toMap()
        }
        if self.routeType != nil {
            map["RouteType"] = self.routeType!
        }
        if self.rtEngineType != nil {
            map["RtEngineType"] = self.rtEngineType!
        }
        if self.rtIndexAll != nil {
            map["RtIndexAll"] = self.rtIndexAll!
        }
        if self.rtModeType != nil {
            map["RtModeType"] = self.rtModeType!
        }
        if self.sd != nil {
            map["Sd"] = self.sd?.toMap()
        }
        if self.storagePolicy != nil {
            map["StoragePolicy"] = self.storagePolicy!
        }
        if self.subpartitionColumn != nil {
            map["SubpartitionColumn"] = self.subpartitionColumn!
        }
        if self.subpartitionCount != nil {
            map["SubpartitionCount"] = self.subpartitionCount!
        }
        if self.subpartitionType != nil {
            map["SubpartitionType"] = self.subpartitionType!
        }
        if self.tableEngineName != nil {
            map["TableEngineName"] = self.tableEngineName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.tblId != nil {
            map["TblId"] = self.tblId!
        }
        if self.temporary != nil {
            map["Temporary"] = self.temporary!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.viewExpandedText != nil {
            map["ViewExpandedText"] = self.viewExpandedText!
        }
        if self.viewOriginalText != nil {
            map["ViewOriginalText"] = self.viewOriginalText!
        }
        if self.viewSecurityMode != nil {
            map["ViewSecurityMode"] = self.viewSecurityMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArchiveType") && dict["ArchiveType"] != nil {
            self.archiveType = dict["ArchiveType"] as! String
        }
        if dict.keys.contains("BlockSize") && dict["BlockSize"] != nil {
            self.blockSize = dict["BlockSize"] as! Int64
        }
        if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
            self.bucket = dict["Bucket"] as! Int64
        }
        if dict.keys.contains("BucketCount") && dict["BucketCount"] != nil {
            self.bucketCount = dict["BucketCount"] as! Int64
        }
        if dict.keys.contains("Cols") && dict["Cols"] != nil {
            var tmp : [FieldSchemaModel] = []
            for v in dict["Cols"] as! [Any] {
                var model = FieldSchemaModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cols = tmp
        }
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Compression") && dict["Compression"] != nil {
            self.compression = dict["Compression"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CurrentVersion") && dict["CurrentVersion"] != nil {
            self.currentVersion = dict["CurrentVersion"] as! Int64
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DictEncode") && dict["DictEncode"] != nil {
            self.dictEncode = dict["DictEncode"] as! Bool
        }
        if dict.keys.contains("DistributeColumns") && dict["DistributeColumns"] != nil {
            var tmp : [FieldSchemaModel] = []
            for v in dict["DistributeColumns"] as! [Any] {
                var model = FieldSchemaModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.distributeColumns = tmp
        }
        if dict.keys.contains("DistributeType") && dict["DistributeType"] != nil {
            self.distributeType = dict["DistributeType"] as! String
        }
        if dict.keys.contains("EnableDfs") && dict["EnableDfs"] != nil {
            self.enableDfs = dict["EnableDfs"] as! Bool
        }
        if dict.keys.contains("HotPartitionCount") && dict["HotPartitionCount"] != nil {
            self.hotPartitionCount = dict["HotPartitionCount"] as! Int64
        }
        if dict.keys.contains("Indexes") && dict["Indexes"] != nil {
            var tmp : [CstoreIndexModel] = []
            for v in dict["Indexes"] as! [Any] {
                var model = CstoreIndexModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.indexes = tmp
        }
        if dict.keys.contains("IsAllIndex") && dict["IsAllIndex"] != nil {
            self.isAllIndex = dict["IsAllIndex"] as! Bool
        }
        if dict.keys.contains("IsFulltextDict") && dict["IsFulltextDict"] != nil {
            self.isFulltextDict = dict["IsFulltextDict"] as! Bool
        }
        if dict.keys.contains("MaxColumnId") && dict["MaxColumnId"] != nil {
            self.maxColumnId = dict["MaxColumnId"] as! Int64
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! [String: String]
        }
        if dict.keys.contains("PartitionColumn") && dict["PartitionColumn"] != nil {
            self.partitionColumn = dict["PartitionColumn"] as! String
        }
        if dict.keys.contains("PartitionCount") && dict["PartitionCount"] != nil {
            self.partitionCount = dict["PartitionCount"] as! Int64
        }
        if dict.keys.contains("PartitionKeys") && dict["PartitionKeys"] != nil {
            var tmp : [FieldSchemaModel] = []
            for v in dict["PartitionKeys"] as! [Any] {
                var model = FieldSchemaModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.partitionKeys = tmp
        }
        if dict.keys.contains("PartitionType") && dict["PartitionType"] != nil {
            self.partitionType = dict["PartitionType"] as! String
        }
        if dict.keys.contains("PhysicalDatabaseName") && dict["PhysicalDatabaseName"] != nil {
            self.physicalDatabaseName = dict["PhysicalDatabaseName"] as! String
        }
        if dict.keys.contains("PhysicalTableName") && dict["PhysicalTableName"] != nil {
            self.physicalTableName = dict["PhysicalTableName"] as! String
        }
        if dict.keys.contains("PreviousVersion") && dict["PreviousVersion"] != nil {
            self.previousVersion = dict["PreviousVersion"] as! Int64
        }
        if dict.keys.contains("RawTableName") && dict["RawTableName"] != nil {
            self.rawTableName = dict["RawTableName"] as! String
        }
        if dict.keys.contains("RouteColumns") && dict["RouteColumns"] != nil {
            var tmp : [FieldSchemaModel] = []
            for v in dict["RouteColumns"] as! [Any] {
                var model = FieldSchemaModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.routeColumns = tmp
        }
        if dict.keys.contains("RouteEffectiveColumn") && dict["RouteEffectiveColumn"] != nil {
            var model = FieldSchemaModel()
            model.fromMap(dict["RouteEffectiveColumn"] as! [String: Any])
            self.routeEffectiveColumn = model
        }
        if dict.keys.contains("RouteType") && dict["RouteType"] != nil {
            self.routeType = dict["RouteType"] as! String
        }
        if dict.keys.contains("RtEngineType") && dict["RtEngineType"] != nil {
            self.rtEngineType = dict["RtEngineType"] as! String
        }
        if dict.keys.contains("RtIndexAll") && dict["RtIndexAll"] != nil {
            self.rtIndexAll = dict["RtIndexAll"] as! Bool
        }
        if dict.keys.contains("RtModeType") && dict["RtModeType"] != nil {
            self.rtModeType = dict["RtModeType"] as! String
        }
        if dict.keys.contains("Sd") && dict["Sd"] != nil {
            var model = StorageDescriptorModel()
            model.fromMap(dict["Sd"] as! [String: Any])
            self.sd = model
        }
        if dict.keys.contains("StoragePolicy") && dict["StoragePolicy"] != nil {
            self.storagePolicy = dict["StoragePolicy"] as! String
        }
        if dict.keys.contains("SubpartitionColumn") && dict["SubpartitionColumn"] != nil {
            self.subpartitionColumn = dict["SubpartitionColumn"] as! String
        }
        if dict.keys.contains("SubpartitionCount") && dict["SubpartitionCount"] != nil {
            self.subpartitionCount = dict["SubpartitionCount"] as! Int64
        }
        if dict.keys.contains("SubpartitionType") && dict["SubpartitionType"] != nil {
            self.subpartitionType = dict["SubpartitionType"] as! String
        }
        if dict.keys.contains("TableEngineName") && dict["TableEngineName"] != nil {
            self.tableEngineName = dict["TableEngineName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("TableType") && dict["TableType"] != nil {
            self.tableType = dict["TableType"] as! String
        }
        if dict.keys.contains("TblId") && dict["TblId"] != nil {
            self.tblId = dict["TblId"] as! Int64
        }
        if dict.keys.contains("Temporary") && dict["Temporary"] != nil {
            self.temporary = dict["Temporary"] as! Bool
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("ViewExpandedText") && dict["ViewExpandedText"] != nil {
            self.viewExpandedText = dict["ViewExpandedText"] as! String
        }
        if dict.keys.contains("ViewOriginalText") && dict["ViewOriginalText"] != nil {
            self.viewOriginalText = dict["ViewOriginalText"] as! String
        }
        if dict.keys.contains("ViewSecurityMode") && dict["ViewSecurityMode"] != nil {
            self.viewSecurityMode = dict["ViewSecurityMode"] as! String
        }
    }
}

public class TableSummaryModel : Tea.TeaModel {
    public var createTime: String?

    public var description_: String?

    public var owner: String?

    public var SQL: String?

    public var schemaName: String?

    public var tableName: String?

    public var tableSize: Int64?

    public var tableType: String?

    public var updateTime: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.SQL != nil {
            map["SQL"] = self.SQL!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableSize != nil {
            map["TableSize"] = self.tableSize!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Owner") && dict["Owner"] != nil {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("SQL") && dict["SQL"] != nil {
            self.SQL = dict["SQL"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("TableSize") && dict["TableSize"] != nil {
            self.tableSize = dict["TableSize"] as! Int64
        }
        if dict.keys.contains("TableType") && dict["TableType"] != nil {
            self.tableType = dict["TableType"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class AllocateClusterPublicConnectionRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionStringPrefix != nil {
            map["ConnectionStringPrefix"] = self.connectionStringPrefix!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionStringPrefix") && dict["ConnectionStringPrefix"] != nil {
            self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class AllocateClusterPublicConnectionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AllocateClusterPublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateClusterPublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AllocateClusterPublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachUserENIRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class AttachUserENIResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AttachUserENIResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachUserENIResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachUserENIResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

    public var ramUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ramUser != nil {
            map["RamUser"] = self.ramUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RamUser") && dict["RamUser"] != nil {
            self.ramUser = dict["RamUser"] as! String
        }
    }
}

public class BindAccountResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindDBResourceGroupWithUserRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var groupUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupUser != nil {
            map["GroupUser"] = self.groupUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupUser") && dict["GroupUser"] != nil {
            self.groupUser = dict["GroupUser"] as! String
        }
    }
}

public class BindDBResourceGroupWithUserResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindDBResourceGroupWithUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindDBResourceGroupWithUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindDBResourceGroupWithUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckBindRamUserRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CheckBindRamUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class CheckBindRamUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckBindRamUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckBindRamUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckSampleDataSetRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class CheckSampleDataSetResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class CheckSampleDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSampleDataSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckSampleDataSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var accountType: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDescription") && dict["AccountDescription"] != nil {
            self.accountDescription = dict["AccountDescription"] as! String
        }
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") && dict["AccountPassword"] != nil {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBClusterRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var backupSetId: String?

    public var computeResource: String?

    public var DBClusterDescription: String?

    public var DBClusterNetworkType: String?

    public var DBClusterVersion: String?

    public var enableDefaultResourcePool: Bool?

    public var payType: String?

    public var period: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var restoreToTime: String?

    public var restoreType: String?

    public var sourceDbClusterId: String?

    public var storageResource: String?

    public var tag: [CreateDBClusterRequest.Tag]?

    public var usedTime: String?

    public var VPCId: String?

    public var vSwitchId: String?

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
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.computeResource != nil {
            map["ComputeResource"] = self.computeResource!
        }
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterNetworkType != nil {
            map["DBClusterNetworkType"] = self.DBClusterNetworkType!
        }
        if self.DBClusterVersion != nil {
            map["DBClusterVersion"] = self.DBClusterVersion!
        }
        if self.enableDefaultResourcePool != nil {
            map["EnableDefaultResourcePool"] = self.enableDefaultResourcePool!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.restoreToTime != nil {
            map["RestoreToTime"] = self.restoreToTime!
        }
        if self.restoreType != nil {
            map["RestoreType"] = self.restoreType!
        }
        if self.sourceDbClusterId != nil {
            map["SourceDbClusterId"] = self.sourceDbClusterId!
        }
        if self.storageResource != nil {
            map["StorageResource"] = self.storageResource!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetId") && dict["BackupSetId"] != nil {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("ComputeResource") && dict["ComputeResource"] != nil {
            self.computeResource = dict["ComputeResource"] as! String
        }
        if dict.keys.contains("DBClusterDescription") && dict["DBClusterDescription"] != nil {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBClusterNetworkType") && dict["DBClusterNetworkType"] != nil {
            self.DBClusterNetworkType = dict["DBClusterNetworkType"] as! String
        }
        if dict.keys.contains("DBClusterVersion") && dict["DBClusterVersion"] != nil {
            self.DBClusterVersion = dict["DBClusterVersion"] as! String
        }
        if dict.keys.contains("EnableDefaultResourcePool") && dict["EnableDefaultResourcePool"] != nil {
            self.enableDefaultResourcePool = dict["EnableDefaultResourcePool"] as! Bool
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RestoreToTime") && dict["RestoreToTime"] != nil {
            self.restoreToTime = dict["RestoreToTime"] as! String
        }
        if dict.keys.contains("RestoreType") && dict["RestoreType"] != nil {
            self.restoreType = dict["RestoreType"] as! String
        }
        if dict.keys.contains("SourceDbClusterId") && dict["SourceDbClusterId"] != nil {
            self.sourceDbClusterId = dict["SourceDbClusterId"] as! String
        }
        if dict.keys.contains("StorageResource") && dict["StorageResource"] != nil {
            self.storageResource = dict["StorageResource"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateDBClusterRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateDBClusterRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UsedTime") && dict["UsedTime"] != nil {
            self.usedTime = dict["UsedTime"] as! String
        }
        if dict.keys.contains("VPCId") && dict["VPCId"] != nil {
            self.VPCId = dict["VPCId"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateDBClusterResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var orderId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CreateDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBResourceGroupRequest : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var groupName: String?

        public var queryTime: String?

        public var targetGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.queryTime != nil {
                map["QueryTime"] = self.queryTime!
            }
            if self.targetGroupName != nil {
                map["TargetGroupName"] = self.targetGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("QueryTime") && dict["QueryTime"] != nil {
                self.queryTime = dict["QueryTime"] as! String
            }
            if dict.keys.contains("TargetGroupName") && dict["TargetGroupName"] != nil {
                self.targetGroupName = dict["TargetGroupName"] as! String
            }
        }
    }
    public var clusterMode: String?

    public var clusterSizeResource: String?

    public var DBClusterId: String?

    public var enableSpot: Bool?

    public var groupName: String?

    public var groupType: String?

    public var maxClusterCount: Int32?

    public var maxComputeResource: String?

    public var minClusterCount: Int32?

    public var minComputeResource: String?

    public var regionId: String?

    public var rules: [CreateDBResourceGroupRequest.Rules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterMode != nil {
            map["ClusterMode"] = self.clusterMode!
        }
        if self.clusterSizeResource != nil {
            map["ClusterSizeResource"] = self.clusterSizeResource!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.enableSpot != nil {
            map["EnableSpot"] = self.enableSpot!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.maxClusterCount != nil {
            map["MaxClusterCount"] = self.maxClusterCount!
        }
        if self.maxComputeResource != nil {
            map["MaxComputeResource"] = self.maxComputeResource!
        }
        if self.minClusterCount != nil {
            map["MinClusterCount"] = self.minClusterCount!
        }
        if self.minComputeResource != nil {
            map["MinComputeResource"] = self.minComputeResource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("ClusterMode") && dict["ClusterMode"] != nil {
            self.clusterMode = dict["ClusterMode"] as! String
        }
        if dict.keys.contains("ClusterSizeResource") && dict["ClusterSizeResource"] != nil {
            self.clusterSizeResource = dict["ClusterSizeResource"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EnableSpot") && dict["EnableSpot"] != nil {
            self.enableSpot = dict["EnableSpot"] as! Bool
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("MaxClusterCount") && dict["MaxClusterCount"] != nil {
            self.maxClusterCount = dict["MaxClusterCount"] as! Int32
        }
        if dict.keys.contains("MaxComputeResource") && dict["MaxComputeResource"] != nil {
            self.maxComputeResource = dict["MaxComputeResource"] as! String
        }
        if dict.keys.contains("MinClusterCount") && dict["MinClusterCount"] != nil {
            self.minClusterCount = dict["MinClusterCount"] as! Int32
        }
        if dict.keys.contains("MinComputeResource") && dict["MinComputeResource"] != nil {
            self.minComputeResource = dict["MinComputeResource"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var tmp : [CreateDBResourceGroupRequest.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = CreateDBResourceGroupRequest.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
    }
}

public class CreateDBResourceGroupShrinkRequest : Tea.TeaModel {
    public var clusterMode: String?

    public var clusterSizeResource: String?

    public var DBClusterId: String?

    public var enableSpot: Bool?

    public var groupName: String?

    public var groupType: String?

    public var maxClusterCount: Int32?

    public var maxComputeResource: String?

    public var minClusterCount: Int32?

    public var minComputeResource: String?

    public var regionId: String?

    public var rulesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterMode != nil {
            map["ClusterMode"] = self.clusterMode!
        }
        if self.clusterSizeResource != nil {
            map["ClusterSizeResource"] = self.clusterSizeResource!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.enableSpot != nil {
            map["EnableSpot"] = self.enableSpot!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.maxClusterCount != nil {
            map["MaxClusterCount"] = self.maxClusterCount!
        }
        if self.maxComputeResource != nil {
            map["MaxComputeResource"] = self.maxComputeResource!
        }
        if self.minClusterCount != nil {
            map["MinClusterCount"] = self.minClusterCount!
        }
        if self.minComputeResource != nil {
            map["MinComputeResource"] = self.minComputeResource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rulesShrink != nil {
            map["Rules"] = self.rulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterMode") && dict["ClusterMode"] != nil {
            self.clusterMode = dict["ClusterMode"] as! String
        }
        if dict.keys.contains("ClusterSizeResource") && dict["ClusterSizeResource"] != nil {
            self.clusterSizeResource = dict["ClusterSizeResource"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EnableSpot") && dict["EnableSpot"] != nil {
            self.enableSpot = dict["EnableSpot"] as! Bool
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("MaxClusterCount") && dict["MaxClusterCount"] != nil {
            self.maxClusterCount = dict["MaxClusterCount"] as! Int32
        }
        if dict.keys.contains("MaxComputeResource") && dict["MaxComputeResource"] != nil {
            self.maxComputeResource = dict["MaxComputeResource"] as! String
        }
        if dict.keys.contains("MinClusterCount") && dict["MinClusterCount"] != nil {
            self.minClusterCount = dict["MinClusterCount"] as! Int32
        }
        if dict.keys.contains("MinComputeResource") && dict["MinComputeResource"] != nil {
            self.minComputeResource = dict["MinComputeResource"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            self.rulesShrink = dict["Rules"] as! String
        }
    }
}

public class CreateDBResourceGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDBResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateElasticPlanRequest : Tea.TeaModel {
    public var autoScale: Bool?

    public var cronExpression: String?

    public var DBClusterId: String?

    public var elasticPlanName: String?

    public var enabled: Bool?

    public var endTime: String?

    public var resourceGroupName: String?

    public var startTime: String?

    public var targetSize: String?

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
        if self.autoScale != nil {
            map["AutoScale"] = self.autoScale!
        }
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.targetSize != nil {
            map["TargetSize"] = self.targetSize!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoScale") && dict["AutoScale"] != nil {
            self.autoScale = dict["AutoScale"] as! Bool
        }
        if dict.keys.contains("CronExpression") && dict["CronExpression"] != nil {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TargetSize") && dict["TargetSize"] != nil {
            self.targetSize = dict["TargetSize"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateElasticPlanResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateElasticPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOssSubDirectoryRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var path: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
    }
}

public class CreateOssSubDirectoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clientCRC: Int64?

        public var ETag: String?

        public var requestId: String?

        public var serverCRC: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientCRC != nil {
                map["ClientCRC"] = self.clientCRC!
            }
            if self.ETag != nil {
                map["ETag"] = self.ETag!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.serverCRC != nil {
                map["ServerCRC"] = self.serverCRC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientCRC") && dict["ClientCRC"] != nil {
                self.clientCRC = dict["ClientCRC"] as! Int64
            }
            if dict.keys.contains("ETag") && dict["ETag"] != nil {
                self.ETag = dict["ETag"] as! String
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("ServerCRC") && dict["ServerCRC"] != nil {
                self.serverCRC = dict["ServerCRC"] as! Int64
            }
        }
    }
    public var data: CreateOssSubDirectoryResponseBody.Data?

    public var httpStatusCode: Int64?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateOssSubDirectoryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
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

public class CreateOssSubDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOssSubDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOssSubDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSparkTemplateRequest : Tea.TeaModel {
    public var appType: String?

    public var DBClusterId: String?

    public var name: String?

    public var parentId: Int64?

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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
            self.parentId = dict["ParentId"] as! Int64
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateSparkTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var succeeded: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Succeeded") && dict["Succeeded"] != nil {
                self.succeeded = dict["Succeeded"] as! Bool
            }
        }
    }
    public var data: CreateSparkTemplateResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateSparkTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateSparkTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSparkTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSparkTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class DeleteDBClusterResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDBClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBResourceGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class DeleteDBResourceGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDBResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDBResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteElasticPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
    }
}

public class DeleteElasticPlanResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteElasticPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProcessInstanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var processInstanceId: Int64?

    public var projectCode: Int64?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.processInstanceId != nil {
            map["ProcessInstanceId"] = self.processInstanceId!
        }
        if self.projectCode != nil {
            map["ProjectCode"] = self.projectCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ProcessInstanceId") && dict["ProcessInstanceId"] != nil {
            self.processInstanceId = dict["ProcessInstanceId"] as! Int64
        }
        if dict.keys.contains("ProjectCode") && dict["ProjectCode"] != nil {
            self.projectCode = dict["ProjectCode"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteProcessInstanceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
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

public class DeleteProcessInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProcessInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteProcessInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSparkTemplateRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteSparkTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var succeeded: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Succeeded") && dict["Succeeded"] != nil {
                self.succeeded = dict["Succeeded"] as! Bool
            }
        }
    }
    public var data: DeleteSparkTemplateResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteSparkTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSparkTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSparkTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSparkTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSparkTemplateFileRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteSparkTemplateFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var succeeded: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Succeeded") && dict["Succeeded"] != nil {
                self.succeeded = dict["Succeeded"] as! Bool
            }
        }
    }
    public var data: DeleteSparkTemplateFileResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteSparkTemplateFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSparkTemplateFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSparkTemplateFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSparkTemplateFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountAllPrivilegesRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

    public var marker: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Marker") && dict["Marker"] != nil {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAccountAllPrivilegesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class PrivilegeObject : Tea.TeaModel {
                public var column: String?

                public var database: String?

                public var description_: String?

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
                    if self.column != nil {
                        map["Column"] = self.column!
                    }
                    if self.database != nil {
                        map["Database"] = self.database!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.table != nil {
                        map["Table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Column") && dict["Column"] != nil {
                        self.column = dict["Column"] as! String
                    }
                    if dict.keys.contains("Database") && dict["Database"] != nil {
                        self.database = dict["Database"] as! String
                    }
                    if dict.keys.contains("Description") && dict["Description"] != nil {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Table") && dict["Table"] != nil {
                        self.table = dict["Table"] as! String
                    }
                }
            }
            public var privilegeObject: DescribeAccountAllPrivilegesResponseBody.Data.Result.PrivilegeObject?

            public var privilegeType: String?

            public var privileges: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.privilegeObject?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.privilegeObject != nil {
                    map["PrivilegeObject"] = self.privilegeObject?.toMap()
                }
                if self.privilegeType != nil {
                    map["PrivilegeType"] = self.privilegeType!
                }
                if self.privileges != nil {
                    map["Privileges"] = self.privileges!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PrivilegeObject") && dict["PrivilegeObject"] != nil {
                    var model = DescribeAccountAllPrivilegesResponseBody.Data.Result.PrivilegeObject()
                    model.fromMap(dict["PrivilegeObject"] as! [String: Any])
                    self.privilegeObject = model
                }
                if dict.keys.contains("PrivilegeType") && dict["PrivilegeType"] != nil {
                    self.privilegeType = dict["PrivilegeType"] as! String
                }
                if dict.keys.contains("Privileges") && dict["Privileges"] != nil {
                    self.privileges = dict["Privileges"] as! [String]
                }
            }
        }
        public var marker: String?

        public var result: [DescribeAccountAllPrivilegesResponseBody.Data.Result]?

        public var truncated: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.marker != nil {
                map["Marker"] = self.marker!
            }
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.truncated != nil {
                map["Truncated"] = self.truncated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Marker") && dict["Marker"] != nil {
                self.marker = dict["Marker"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                var tmp : [DescribeAccountAllPrivilegesResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = DescribeAccountAllPrivilegesResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("Truncated") && dict["Truncated"] != nil {
                self.truncated = dict["Truncated"] as! Bool
            }
        }
    }
    public var data: DescribeAccountAllPrivilegesResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAccountAllPrivilegesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAccountAllPrivilegesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountAllPrivilegesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountAllPrivilegesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountPrivilegeObjectsRequest : Tea.TeaModel {
    public var accountName: String?

    public var columnPrivilegeObject: String?

    public var DBClusterId: String?

    public var databasePrivilegeObject: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var privilegeType: String?

    public var regionId: String?

    public var tablePrivilegeObject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.columnPrivilegeObject != nil {
            map["ColumnPrivilegeObject"] = self.columnPrivilegeObject!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.databasePrivilegeObject != nil {
            map["DatabasePrivilegeObject"] = self.databasePrivilegeObject!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privilegeType != nil {
            map["PrivilegeType"] = self.privilegeType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tablePrivilegeObject != nil {
            map["TablePrivilegeObject"] = self.tablePrivilegeObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("ColumnPrivilegeObject") && dict["ColumnPrivilegeObject"] != nil {
            self.columnPrivilegeObject = dict["ColumnPrivilegeObject"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DatabasePrivilegeObject") && dict["DatabasePrivilegeObject"] != nil {
            self.databasePrivilegeObject = dict["DatabasePrivilegeObject"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PrivilegeType") && dict["PrivilegeType"] != nil {
            self.privilegeType = dict["PrivilegeType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TablePrivilegeObject") && dict["TablePrivilegeObject"] != nil {
            self.tablePrivilegeObject = dict["TablePrivilegeObject"] as! String
        }
    }
}

public class DescribeAccountPrivilegeObjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var column: String?

        public var database: String?

        public var description_: String?

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
            if self.column != nil {
                map["Column"] = self.column!
            }
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.table != nil {
                map["Table"] = self.table!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Column") && dict["Column"] != nil {
                self.column = dict["Column"] as! String
            }
            if dict.keys.contains("Database") && dict["Database"] != nil {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Table") && dict["Table"] != nil {
                self.table = dict["Table"] as! String
            }
        }
    }
    public var data: [DescribeAccountPrivilegeObjectsResponseBody.Data]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeAccountPrivilegeObjectsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAccountPrivilegeObjectsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeAccountPrivilegeObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountPrivilegeObjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountPrivilegeObjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountPrivilegesRequest : Tea.TeaModel {
    public var accountName: String?

    public var columnPrivilegeObject: String?

    public var DBClusterId: String?

    public var databasePrivilegeObject: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var privilegeType: String?

    public var regionId: String?

    public var tablePrivilegeObject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.columnPrivilegeObject != nil {
            map["ColumnPrivilegeObject"] = self.columnPrivilegeObject!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.databasePrivilegeObject != nil {
            map["DatabasePrivilegeObject"] = self.databasePrivilegeObject!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privilegeType != nil {
            map["PrivilegeType"] = self.privilegeType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tablePrivilegeObject != nil {
            map["TablePrivilegeObject"] = self.tablePrivilegeObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("ColumnPrivilegeObject") && dict["ColumnPrivilegeObject"] != nil {
            self.columnPrivilegeObject = dict["ColumnPrivilegeObject"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DatabasePrivilegeObject") && dict["DatabasePrivilegeObject"] != nil {
            self.databasePrivilegeObject = dict["DatabasePrivilegeObject"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PrivilegeType") && dict["PrivilegeType"] != nil {
            self.privilegeType = dict["PrivilegeType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TablePrivilegeObject") && dict["TablePrivilegeObject"] != nil {
            self.tablePrivilegeObject = dict["TablePrivilegeObject"] as! String
        }
    }
}

public class DescribeAccountPrivilegesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PrivilegeObject : Tea.TeaModel {
            public var column: String?

            public var database: String?

            public var description_: String?

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
                if self.column != nil {
                    map["Column"] = self.column!
                }
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Column") && dict["Column"] != nil {
                    self.column = dict["Column"] as! String
                }
                if dict.keys.contains("Database") && dict["Database"] != nil {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Table") && dict["Table"] != nil {
                    self.table = dict["Table"] as! String
                }
            }
        }
        public var privilegeObject: DescribeAccountPrivilegesResponseBody.Data.PrivilegeObject?

        public var privilegeType: String?

        public var privileges: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.privilegeObject?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.privilegeObject != nil {
                map["PrivilegeObject"] = self.privilegeObject?.toMap()
            }
            if self.privilegeType != nil {
                map["PrivilegeType"] = self.privilegeType!
            }
            if self.privileges != nil {
                map["Privileges"] = self.privileges!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PrivilegeObject") && dict["PrivilegeObject"] != nil {
                var model = DescribeAccountPrivilegesResponseBody.Data.PrivilegeObject()
                model.fromMap(dict["PrivilegeObject"] as! [String: Any])
                self.privilegeObject = model
            }
            if dict.keys.contains("PrivilegeType") && dict["PrivilegeType"] != nil {
                self.privilegeType = dict["PrivilegeType"] as! String
            }
            if dict.keys.contains("Privileges") && dict["Privileges"] != nil {
                self.privileges = dict["Privileges"] as! [String]
            }
        }
    }
    public var data: [DescribeAccountPrivilegesResponseBody.Data]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeAccountPrivilegesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAccountPrivilegesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeAccountPrivilegesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountPrivilegesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountPrivilegesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountsRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
    }
}

public class DescribeAccountsResponseBody : Tea.TeaModel {
    public class AccountList : Tea.TeaModel {
        public class DBAccount : Tea.TeaModel {
            public var accountDescription: String?

            public var accountName: String?

            public var accountStatus: String?

            public var accountType: String?

            public var ramUsers: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountDescription != nil {
                    map["AccountDescription"] = self.accountDescription!
                }
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.accountStatus != nil {
                    map["AccountStatus"] = self.accountStatus!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.ramUsers != nil {
                    map["RamUsers"] = self.ramUsers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountDescription") && dict["AccountDescription"] != nil {
                    self.accountDescription = dict["AccountDescription"] as! String
                }
                if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AccountStatus") && dict["AccountStatus"] != nil {
                    self.accountStatus = dict["AccountStatus"] as! String
                }
                if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("RamUsers") && dict["RamUsers"] != nil {
                    self.ramUsers = dict["RamUsers"] as! String
                }
            }
        }
        public var DBAccount: [DescribeAccountsResponseBody.AccountList.DBAccount]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBAccount != nil {
                var tmp : [Any] = []
                for k in self.DBAccount! {
                    tmp.append(k.toMap())
                }
                map["DBAccount"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBAccount") && dict["DBAccount"] != nil {
                var tmp : [DescribeAccountsResponseBody.AccountList.DBAccount] = []
                for v in dict["DBAccount"] as! [Any] {
                    var model = DescribeAccountsResponseBody.AccountList.DBAccount()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DBAccount = tmp
            }
        }
    }
    public var accountList: DescribeAccountsResponseBody.AccountList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountList != nil {
            map["AccountList"] = self.accountList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountList") && dict["AccountList"] != nil {
            var model = DescribeAccountsResponseBody.AccountList()
            model.fromMap(dict["AccountList"] as! [String: Any])
            self.accountList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdbMySqlColumnsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var schema: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Schema") && dict["Schema"] != nil {
            self.schema = dict["Schema"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeAdbMySqlColumnsResponseBody : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var columnCount: Int32?

    public var columns: [DescribeAdbMySqlColumnsResponseBody.Columns]?

    public var message: String?

    public var requestId: String?

    public var schema: String?

    public var success: Bool?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnCount != nil {
            map["ColumnCount"] = self.columnCount!
        }
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["Columns"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ColumnCount") && dict["ColumnCount"] != nil {
            self.columnCount = dict["ColumnCount"] as! Int32
        }
        if dict.keys.contains("Columns") && dict["Columns"] != nil {
            var tmp : [DescribeAdbMySqlColumnsResponseBody.Columns] = []
            for v in dict["Columns"] as! [Any] {
                var model = DescribeAdbMySqlColumnsResponseBody.Columns()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.columns = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schema") && dict["Schema"] != nil {
            self.schema = dict["Schema"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeAdbMySqlColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdbMySqlColumnsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAdbMySqlColumnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdbMySqlSchemasRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAdbMySqlSchemasResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

    public var schemas: [String]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemas != nil {
            map["Schemas"] = self.schemas!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schemas") && dict["Schemas"] != nil {
            self.schemas = dict["Schemas"] as! [String]
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAdbMySqlSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdbMySqlSchemasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAdbMySqlSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdbMySqlTablesRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Schema") && dict["Schema"] != nil {
            self.schema = dict["Schema"] as! String
        }
    }
}

public class DescribeAdbMySqlTablesResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

    public var schema: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tables != nil {
            map["Tables"] = self.tables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schema") && dict["Schema"] != nil {
            self.schema = dict["Schema"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tables") && dict["Tables"] != nil {
            self.tables = dict["Tables"] as! [String]
        }
    }
}

public class DescribeAdbMySqlTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdbMySqlTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAdbMySqlTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAllDataSourceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var schemaName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeAllDataSourceResponseBody : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public class Column : Tea.TeaModel {
            public var autoIncrementColumn: Bool?

            public var columnName: String?

            public var DBClusterId: String?

            public var primaryKey: Bool?

            public var schemaName: String?

            public var tableName: String?

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
                if self.autoIncrementColumn != nil {
                    map["AutoIncrementColumn"] = self.autoIncrementColumn!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoIncrementColumn") && dict["AutoIncrementColumn"] != nil {
                    self.autoIncrementColumn = dict["AutoIncrementColumn"] as! Bool
                }
                if dict.keys.contains("ColumnName") && dict["ColumnName"] != nil {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("PrimaryKey") && dict["PrimaryKey"] != nil {
                    self.primaryKey = dict["PrimaryKey"] as! Bool
                }
                if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var column: [DescribeAllDataSourceResponseBody.Columns.Column]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.column != nil {
                var tmp : [Any] = []
                for k in self.column! {
                    tmp.append(k.toMap())
                }
                map["Column"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Column") && dict["Column"] != nil {
                var tmp : [DescribeAllDataSourceResponseBody.Columns.Column] = []
                for v in dict["Column"] as! [Any] {
                    var model = DescribeAllDataSourceResponseBody.Columns.Column()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.column = tmp
            }
        }
    }
    public class Schemas : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
                    self.schemaName = dict["SchemaName"] as! String
                }
            }
        }
        public var schema: [DescribeAllDataSourceResponseBody.Schemas.Schema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schema != nil {
                var tmp : [Any] = []
                for k in self.schema! {
                    tmp.append(k.toMap())
                }
                map["Schema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Schema") && dict["Schema"] != nil {
                var tmp : [DescribeAllDataSourceResponseBody.Schemas.Schema] = []
                for v in dict["Schema"] as! [Any] {
                    var model = DescribeAllDataSourceResponseBody.Schemas.Schema()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.schema = tmp
            }
        }
    }
    public class Tables : Tea.TeaModel {
        public class Table : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var table: [DescribeAllDataSourceResponseBody.Tables.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["Table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Table") && dict["Table"] != nil {
                var tmp : [DescribeAllDataSourceResponseBody.Tables.Table] = []
                for v in dict["Table"] as! [Any] {
                    var model = DescribeAllDataSourceResponseBody.Tables.Table()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.table = tmp
            }
        }
    }
    public var columns: DescribeAllDataSourceResponseBody.Columns?

    public var requestId: String?

    public var schemas: DescribeAllDataSourceResponseBody.Schemas?

    public var tables: DescribeAllDataSourceResponseBody.Tables?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columns?.validate()
        try self.schemas?.validate()
        try self.tables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            map["Columns"] = self.columns?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemas != nil {
            map["Schemas"] = self.schemas?.toMap()
        }
        if self.tables != nil {
            map["Tables"] = self.tables?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Columns") && dict["Columns"] != nil {
            var model = DescribeAllDataSourceResponseBody.Columns()
            model.fromMap(dict["Columns"] as! [String: Any])
            self.columns = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schemas") && dict["Schemas"] != nil {
            var model = DescribeAllDataSourceResponseBody.Schemas()
            model.fromMap(dict["Schemas"] as! [String: Any])
            self.schemas = model
        }
        if dict.keys.contains("Tables") && dict["Tables"] != nil {
            var model = DescribeAllDataSourceResponseBody.Tables()
            model.fromMap(dict["Tables"] as! [String: Any])
            self.tables = model
        }
    }
}

public class DescribeAllDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAllDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAllDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApsActionLogsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var keyword: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var stage: String?

    public var startTime: String?

    public var state: String?

    public var workloadId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.stage != nil {
            map["Stage"] = self.stage!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.workloadId != nil {
            map["WorkloadId"] = self.workloadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Stage") && dict["Stage"] != nil {
            self.stage = dict["Stage"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("WorkloadId") && dict["WorkloadId"] != nil {
            self.workloadId = dict["WorkloadId"] as! String
        }
    }
}

public class DescribeApsActionLogsResponseBody : Tea.TeaModel {
    public class ActionLogs : Tea.TeaModel {
        public var context: String?

        public var stage: String?

        public var state: String?

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
            if self.context != nil {
                map["Context"] = self.context!
            }
            if self.stage != nil {
                map["Stage"] = self.stage!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Context") && dict["Context"] != nil {
                self.context = dict["Context"] as! String
            }
            if dict.keys.contains("Stage") && dict["Stage"] != nil {
                self.stage = dict["Stage"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var actionLogs: [DescribeApsActionLogsResponseBody.ActionLogs]?

    public var DBClusterId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

    public var workloadId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionLogs != nil {
            var tmp : [Any] = []
            for k in self.actionLogs! {
                tmp.append(k.toMap())
            }
            map["ActionLogs"] = tmp
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.workloadId != nil {
            map["WorkloadId"] = self.workloadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionLogs") && dict["ActionLogs"] != nil {
            var tmp : [DescribeApsActionLogsResponseBody.ActionLogs] = []
            for v in dict["ActionLogs"] as! [Any] {
                var model = DescribeApsActionLogsResponseBody.ActionLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.actionLogs = tmp
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("WorkloadId") && dict["WorkloadId"] != nil {
            self.workloadId = dict["WorkloadId"] as! String
        }
    }
}

public class DescribeApsActionLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApsActionLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApsActionLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApsResourceGroupsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class DescribeApsResourceGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResourceGroups : Tea.TeaModel {
            public var available: Bool?

            public var cuOptions: [Int64]?

            public var groupName: String?

            public var groupType: String?

            public var leftComputeResource: Int32?

            public var maxComputeResource: Int32?

            public var minComputeResource: Int32?

            public override init() {
                super.init()
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
                if self.cuOptions != nil {
                    map["CuOptions"] = self.cuOptions!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.groupType != nil {
                    map["GroupType"] = self.groupType!
                }
                if self.leftComputeResource != nil {
                    map["LeftComputeResource"] = self.leftComputeResource!
                }
                if self.maxComputeResource != nil {
                    map["MaxComputeResource"] = self.maxComputeResource!
                }
                if self.minComputeResource != nil {
                    map["MinComputeResource"] = self.minComputeResource!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Available") && dict["Available"] != nil {
                    self.available = dict["Available"] as! Bool
                }
                if dict.keys.contains("CuOptions") && dict["CuOptions"] != nil {
                    self.cuOptions = dict["CuOptions"] as! [Int64]
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
                    self.groupType = dict["GroupType"] as! String
                }
                if dict.keys.contains("LeftComputeResource") && dict["LeftComputeResource"] != nil {
                    self.leftComputeResource = dict["LeftComputeResource"] as! Int32
                }
                if dict.keys.contains("MaxComputeResource") && dict["MaxComputeResource"] != nil {
                    self.maxComputeResource = dict["MaxComputeResource"] as! Int32
                }
                if dict.keys.contains("MinComputeResource") && dict["MinComputeResource"] != nil {
                    self.minComputeResource = dict["MinComputeResource"] as! Int32
                }
            }
        }
        public var resourceGroups: [DescribeApsResourceGroupsResponseBody.Data.ResourceGroups]?

        public var step: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceGroups != nil {
                var tmp : [Any] = []
                for k in self.resourceGroups! {
                    tmp.append(k.toMap())
                }
                map["ResourceGroups"] = tmp
            }
            if self.step != nil {
                map["Step"] = self.step!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceGroups") && dict["ResourceGroups"] != nil {
                var tmp : [DescribeApsResourceGroupsResponseBody.Data.ResourceGroups] = []
                for v in dict["ResourceGroups"] as! [Any] {
                    var model = DescribeApsResourceGroupsResponseBody.Data.ResourceGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceGroups = tmp
            }
            if dict.keys.contains("Step") && dict["Step"] != nil {
                self.step = dict["Step"] as! Int64
            }
        }
    }
    public var data: DescribeApsResourceGroupsResponseBody.Data?

    public var httpStatusCode: Int64?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeApsResourceGroupsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
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

public class DescribeApsResourceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApsResourceGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApsResourceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditLogRecordsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBName: String?

    public var endTime: String?

    public var hostAddress: String?

    public var order: String?

    public var orderType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var proxyUser: String?

    public var queryKeyword: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sqlType: String?

    public var startTime: String?

    public var succeed: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.hostAddress != nil {
            map["HostAddress"] = self.hostAddress!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.proxyUser != nil {
            map["ProxyUser"] = self.proxyUser!
        }
        if self.queryKeyword != nil {
            map["QueryKeyword"] = self.queryKeyword!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sqlType != nil {
            map["SqlType"] = self.sqlType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.succeed != nil {
            map["Succeed"] = self.succeed!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBName") && dict["DBName"] != nil {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("HostAddress") && dict["HostAddress"] != nil {
            self.hostAddress = dict["HostAddress"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProxyUser") && dict["ProxyUser"] != nil {
            self.proxyUser = dict["ProxyUser"] as! String
        }
        if dict.keys.contains("QueryKeyword") && dict["QueryKeyword"] != nil {
            self.queryKeyword = dict["QueryKeyword"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SqlType") && dict["SqlType"] != nil {
            self.sqlType = dict["SqlType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Succeed") && dict["Succeed"] != nil {
            self.succeed = dict["Succeed"] as! String
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeAuditLogRecordsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var connId: String?

        public var DBName: String?

        public var executeTime: String?

        public var hostAddress: String?

        public var processID: String?

        public var SQLText: String?

        public var SQLType: String?

        public var succeed: String?

        public var totalTime: String?

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
            if self.connId != nil {
                map["ConnId"] = self.connId!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.hostAddress != nil {
                map["HostAddress"] = self.hostAddress!
            }
            if self.processID != nil {
                map["ProcessID"] = self.processID!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.SQLType != nil {
                map["SQLType"] = self.SQLType!
            }
            if self.succeed != nil {
                map["Succeed"] = self.succeed!
            }
            if self.totalTime != nil {
                map["TotalTime"] = self.totalTime!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnId") && dict["ConnId"] != nil {
                self.connId = dict["ConnId"] as! String
            }
            if dict.keys.contains("DBName") && dict["DBName"] != nil {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("ExecuteTime") && dict["ExecuteTime"] != nil {
                self.executeTime = dict["ExecuteTime"] as! String
            }
            if dict.keys.contains("HostAddress") && dict["HostAddress"] != nil {
                self.hostAddress = dict["HostAddress"] as! String
            }
            if dict.keys.contains("ProcessID") && dict["ProcessID"] != nil {
                self.processID = dict["ProcessID"] as! String
            }
            if dict.keys.contains("SQLText") && dict["SQLText"] != nil {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("SQLType") && dict["SQLType"] != nil {
                self.SQLType = dict["SQLType"] as! String
            }
            if dict.keys.contains("Succeed") && dict["Succeed"] != nil {
                self.succeed = dict["Succeed"] as! String
            }
            if dict.keys.contains("TotalTime") && dict["TotalTime"] != nil {
                self.totalTime = dict["TotalTime"] as! String
            }
            if dict.keys.contains("User") && dict["User"] != nil {
                self.user = dict["User"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var items: [DescribeAuditLogRecordsResponseBody.Items]?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeAuditLogRecordsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeAuditLogRecordsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeAuditLogRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditLogRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAuditLogRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public var backupRetentionPeriod: Int32?

    public var enableBackupLog: String?

    public var logBackupRetentionPeriod: Int32?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.enableBackupLog != nil {
            map["EnableBackupLog"] = self.enableBackupLog!
        }
        if self.logBackupRetentionPeriod != nil {
            map["LogBackupRetentionPeriod"] = self.logBackupRetentionPeriod!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetentionPeriod") && dict["BackupRetentionPeriod"] != nil {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("EnableBackupLog") && dict["EnableBackupLog"] != nil {
            self.enableBackupLog = dict["EnableBackupLog"] as! String
        }
        if dict.keys.contains("LogBackupRetentionPeriod") && dict["LogBackupRetentionPeriod"] != nil {
            self.logBackupRetentionPeriod = dict["LogBackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupsRequest : Tea.TeaModel {
    public var backupId: String?

    public var DBClusterId: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeBackupsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Backup : Tea.TeaModel {
            public var backupEndTime: String?

            public var backupId: String?

            public var backupMethod: String?

            public var backupSize: Int32?

            public var backupStartTime: String?

            public var backupType: String?

            public var DBClusterId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupEndTime != nil {
                    map["BackupEndTime"] = self.backupEndTime!
                }
                if self.backupId != nil {
                    map["BackupId"] = self.backupId!
                }
                if self.backupMethod != nil {
                    map["BackupMethod"] = self.backupMethod!
                }
                if self.backupSize != nil {
                    map["BackupSize"] = self.backupSize!
                }
                if self.backupStartTime != nil {
                    map["BackupStartTime"] = self.backupStartTime!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupEndTime") && dict["BackupEndTime"] != nil {
                    self.backupEndTime = dict["BackupEndTime"] as! String
                }
                if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
                    self.backupId = dict["BackupId"] as! String
                }
                if dict.keys.contains("BackupMethod") && dict["BackupMethod"] != nil {
                    self.backupMethod = dict["BackupMethod"] as! String
                }
                if dict.keys.contains("BackupSize") && dict["BackupSize"] != nil {
                    self.backupSize = dict["BackupSize"] as! Int32
                }
                if dict.keys.contains("BackupStartTime") && dict["BackupStartTime"] != nil {
                    self.backupStartTime = dict["BackupStartTime"] as! String
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
            }
        }
        public var backup: [DescribeBackupsResponseBody.Items.Backup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backup != nil {
                var tmp : [Any] = []
                for k in self.backup! {
                    tmp.append(k.toMap())
                }
                map["Backup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backup") && dict["Backup"] != nil {
                var tmp : [DescribeBackupsResponseBody.Items.Backup] = []
                for v in dict["Backup"] as! [Any] {
                    var model = DescribeBackupsResponseBody.Items.Backup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backup = tmp
            }
        }
    }
    public var items: DescribeBackupsResponseBody.Items?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeBackupsResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeBackupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterAccessWhiteListRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class DescribeClusterAccessWhiteListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class IPArray : Tea.TeaModel {
            public var DBClusterIPArrayAttribute: String?

            public var DBClusterIPArrayName: String?

            public var securityIPList: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterIPArrayAttribute != nil {
                    map["DBClusterIPArrayAttribute"] = self.DBClusterIPArrayAttribute!
                }
                if self.DBClusterIPArrayName != nil {
                    map["DBClusterIPArrayName"] = self.DBClusterIPArrayName!
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterIPArrayAttribute") && dict["DBClusterIPArrayAttribute"] != nil {
                    self.DBClusterIPArrayAttribute = dict["DBClusterIPArrayAttribute"] as! String
                }
                if dict.keys.contains("DBClusterIPArrayName") && dict["DBClusterIPArrayName"] != nil {
                    self.DBClusterIPArrayName = dict["DBClusterIPArrayName"] as! String
                }
                if dict.keys.contains("SecurityIPList") && dict["SecurityIPList"] != nil {
                    self.securityIPList = dict["SecurityIPList"] as! String
                }
            }
        }
        public var IPArray: [DescribeClusterAccessWhiteListResponseBody.Items.IPArray]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IPArray != nil {
                var tmp : [Any] = []
                for k in self.IPArray! {
                    tmp.append(k.toMap())
                }
                map["IPArray"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IPArray") && dict["IPArray"] != nil {
                var tmp : [DescribeClusterAccessWhiteListResponseBody.Items.IPArray] = []
                for v in dict["IPArray"] as! [Any] {
                    var model = DescribeClusterAccessWhiteListResponseBody.Items.IPArray()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.IPArray = tmp
            }
        }
    }
    public var items: DescribeClusterAccessWhiteListResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeClusterAccessWhiteListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterAccessWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterAccessWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterAccessWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterNetInfoRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class DescribeClusterNetInfoResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Address : Tea.TeaModel {
            public var connectionString: String?

            public var connectionStringPrefix: String?

            public var IPAddress: String?

            public var netType: String?

            public var port: String?

            public var VPCId: String?

            public var vSwitchId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.connectionStringPrefix != nil {
                    map["ConnectionStringPrefix"] = self.connectionStringPrefix!
                }
                if self.IPAddress != nil {
                    map["IPAddress"] = self.IPAddress!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionString") && dict["ConnectionString"] != nil {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("ConnectionStringPrefix") && dict["ConnectionStringPrefix"] != nil {
                    self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
                }
                if dict.keys.contains("IPAddress") && dict["IPAddress"] != nil {
                    self.IPAddress = dict["IPAddress"] as! String
                }
                if dict.keys.contains("NetType") && dict["NetType"] != nil {
                    self.netType = dict["NetType"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("VPCId") && dict["VPCId"] != nil {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
            }
        }
        public var address: [DescribeClusterNetInfoResponseBody.Items.Address]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.address! {
                    tmp.append(k.toMap())
                }
                map["Address"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                var tmp : [DescribeClusterNetInfoResponseBody.Items.Address] = []
                for v in dict["Address"] as! [Any] {
                    var model = DescribeClusterNetInfoResponseBody.Items.Address()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.address = tmp
            }
        }
    }
    public var clusterNetworkType: String?

    public var items: DescribeClusterNetInfoResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterNetworkType != nil {
            map["ClusterNetworkType"] = self.clusterNetworkType!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterNetworkType") && dict["ClusterNetworkType"] != nil {
            self.clusterNetworkType = dict["ClusterNetworkType"] as! String
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeClusterNetInfoResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterNetInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterNetInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterNetInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterResourceDetailRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class DescribeClusterResourceDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResourceGroupList : Tea.TeaModel {
            public var clusterMode: String?

            public var clusterSizeResource: String?

            public var enableSpot: Bool?

            public var maxClusterCount: Int32?

            public var maxComputeResource: String?

            public var minClusterCount: Int32?

            public var minComputeResource: String?

            public var poolId: Int64?

            public var poolName: String?

            public var poolType: String?

            public var poolUsers: String?

            public var runningClusterCount: Int32?

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
                if self.clusterMode != nil {
                    map["ClusterMode"] = self.clusterMode!
                }
                if self.clusterSizeResource != nil {
                    map["ClusterSizeResource"] = self.clusterSizeResource!
                }
                if self.enableSpot != nil {
                    map["EnableSpot"] = self.enableSpot!
                }
                if self.maxClusterCount != nil {
                    map["MaxClusterCount"] = self.maxClusterCount!
                }
                if self.maxComputeResource != nil {
                    map["MaxComputeResource"] = self.maxComputeResource!
                }
                if self.minClusterCount != nil {
                    map["MinClusterCount"] = self.minClusterCount!
                }
                if self.minComputeResource != nil {
                    map["MinComputeResource"] = self.minComputeResource!
                }
                if self.poolId != nil {
                    map["PoolId"] = self.poolId!
                }
                if self.poolName != nil {
                    map["PoolName"] = self.poolName!
                }
                if self.poolType != nil {
                    map["PoolType"] = self.poolType!
                }
                if self.poolUsers != nil {
                    map["PoolUsers"] = self.poolUsers!
                }
                if self.runningClusterCount != nil {
                    map["RunningClusterCount"] = self.runningClusterCount!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterMode") && dict["ClusterMode"] != nil {
                    self.clusterMode = dict["ClusterMode"] as! String
                }
                if dict.keys.contains("ClusterSizeResource") && dict["ClusterSizeResource"] != nil {
                    self.clusterSizeResource = dict["ClusterSizeResource"] as! String
                }
                if dict.keys.contains("EnableSpot") && dict["EnableSpot"] != nil {
                    self.enableSpot = dict["EnableSpot"] as! Bool
                }
                if dict.keys.contains("MaxClusterCount") && dict["MaxClusterCount"] != nil {
                    self.maxClusterCount = dict["MaxClusterCount"] as! Int32
                }
                if dict.keys.contains("MaxComputeResource") && dict["MaxComputeResource"] != nil {
                    self.maxComputeResource = dict["MaxComputeResource"] as! String
                }
                if dict.keys.contains("MinClusterCount") && dict["MinClusterCount"] != nil {
                    self.minClusterCount = dict["MinClusterCount"] as! Int32
                }
                if dict.keys.contains("MinComputeResource") && dict["MinComputeResource"] != nil {
                    self.minComputeResource = dict["MinComputeResource"] as! String
                }
                if dict.keys.contains("PoolId") && dict["PoolId"] != nil {
                    self.poolId = dict["PoolId"] as! Int64
                }
                if dict.keys.contains("PoolName") && dict["PoolName"] != nil {
                    self.poolName = dict["PoolName"] as! String
                }
                if dict.keys.contains("PoolType") && dict["PoolType"] != nil {
                    self.poolType = dict["PoolType"] as! String
                }
                if dict.keys.contains("PoolUsers") && dict["PoolUsers"] != nil {
                    self.poolUsers = dict["PoolUsers"] as! String
                }
                if dict.keys.contains("RunningClusterCount") && dict["RunningClusterCount"] != nil {
                    self.runningClusterCount = dict["RunningClusterCount"] as! Int32
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var computeResource: String?

        public var DBClusterId: String?

        public var freeComputeResource: String?

        public var resourceGroupList: [DescribeClusterResourceDetailResponseBody.Data.ResourceGroupList]?

        public var storageResource: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.computeResource != nil {
                map["ComputeResource"] = self.computeResource!
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.freeComputeResource != nil {
                map["FreeComputeResource"] = self.freeComputeResource!
            }
            if self.resourceGroupList != nil {
                var tmp : [Any] = []
                for k in self.resourceGroupList! {
                    tmp.append(k.toMap())
                }
                map["ResourceGroupList"] = tmp
            }
            if self.storageResource != nil {
                map["StorageResource"] = self.storageResource!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComputeResource") && dict["ComputeResource"] != nil {
                self.computeResource = dict["ComputeResource"] as! String
            }
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("FreeComputeResource") && dict["FreeComputeResource"] != nil {
                self.freeComputeResource = dict["FreeComputeResource"] as! String
            }
            if dict.keys.contains("ResourceGroupList") && dict["ResourceGroupList"] != nil {
                var tmp : [DescribeClusterResourceDetailResponseBody.Data.ResourceGroupList] = []
                for v in dict["ResourceGroupList"] as! [Any] {
                    var model = DescribeClusterResourceDetailResponseBody.Data.ResourceGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceGroupList = tmp
            }
            if dict.keys.contains("StorageResource") && dict["StorageResource"] != nil {
                self.storageResource = dict["StorageResource"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeClusterResourceDetailResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeClusterResourceDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterResourceDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterResourceDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterResourceDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterResourceUsageRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeClusterResourceUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AcuInfo : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Values") && dict["Values"] != nil {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var acuInfo: [DescribeClusterResourceUsageResponseBody.Data.AcuInfo]?

        public var DBClusterId: String?

        public var endTime: String?

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
            if self.acuInfo != nil {
                var tmp : [Any] = []
                for k in self.acuInfo! {
                    tmp.append(k.toMap())
                }
                map["AcuInfo"] = tmp
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcuInfo") && dict["AcuInfo"] != nil {
                var tmp : [DescribeClusterResourceUsageResponseBody.Data.AcuInfo] = []
                for v in dict["AcuInfo"] as! [Any] {
                    var model = DescribeClusterResourceUsageResponseBody.Data.AcuInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.acuInfo = tmp
            }
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeClusterResourceUsageResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeClusterResourceUsageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterResourceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterResourceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterResourceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeColumnsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var schemaName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeColumnsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Column : Tea.TeaModel {
            public var autoIncrementColumn: Bool?

            public var columnName: String?

            public var DBClusterId: String?

            public var primaryKey: Bool?

            public var schemaName: String?

            public var tableName: String?

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
                if self.autoIncrementColumn != nil {
                    map["AutoIncrementColumn"] = self.autoIncrementColumn!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoIncrementColumn") && dict["AutoIncrementColumn"] != nil {
                    self.autoIncrementColumn = dict["AutoIncrementColumn"] as! Bool
                }
                if dict.keys.contains("ColumnName") && dict["ColumnName"] != nil {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("PrimaryKey") && dict["PrimaryKey"] != nil {
                    self.primaryKey = dict["PrimaryKey"] as! Bool
                }
                if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var column: [DescribeColumnsResponseBody.Items.Column]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.column != nil {
                var tmp : [Any] = []
                for k in self.column! {
                    tmp.append(k.toMap())
                }
                map["Column"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Column") && dict["Column"] != nil {
                var tmp : [DescribeColumnsResponseBody.Items.Column] = []
                for v in dict["Column"] as! [Any] {
                    var model = DescribeColumnsResponseBody.Items.Column()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.column = tmp
            }
        }
    }
    public var items: DescribeColumnsResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeColumnsResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeColumnsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeColumnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComputeResourceUsageRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var resourceGroupName: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeComputeResourceUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AcuInfo : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Values") && dict["Values"] != nil {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var acuInfo: [DescribeComputeResourceUsageResponseBody.Data.AcuInfo]?

        public var DBClusterId: String?

        public var endTime: String?

        public var resourceGroupName: String?

        public var resourceGroupType: String?

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
            if self.acuInfo != nil {
                var tmp : [Any] = []
                for k in self.acuInfo! {
                    tmp.append(k.toMap())
                }
                map["AcuInfo"] = tmp
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.resourceGroupName != nil {
                map["ResourceGroupName"] = self.resourceGroupName!
            }
            if self.resourceGroupType != nil {
                map["ResourceGroupType"] = self.resourceGroupType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcuInfo") && dict["AcuInfo"] != nil {
                var tmp : [DescribeComputeResourceUsageResponseBody.Data.AcuInfo] = []
                for v in dict["AcuInfo"] as! [Any] {
                    var model = DescribeComputeResourceUsageResponseBody.Data.AcuInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.acuInfo = tmp
            }
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
                self.resourceGroupName = dict["ResourceGroupName"] as! String
            }
            if dict.keys.contains("ResourceGroupType") && dict["ResourceGroupType"] != nil {
                self.resourceGroupType = dict["ResourceGroupType"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeComputeResourceUsageResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeComputeResourceUsageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComputeResourceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComputeResourceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeComputeResourceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterAttributeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class DescribeDBClusterAttributeResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBCluster : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var key: String?

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
                        if self.key != nil {
                            map["Key"] = self.key!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var commodityCode: String?

            public var computeResource: String?

            public var computeResourceTotal: String?

            public var connectionString: String?

            public var creationTime: String?

            public var DBClusterDescription: String?

            public var DBClusterId: String?

            public var DBClusterNetworkType: String?

            public var DBClusterStatus: String?

            public var DBClusterType: String?

            public var DBVersion: String?

            public var engine: String?

            public var engineVersion: String?

            public var expireTime: String?

            public var expired: String?

            public var lockMode: String?

            public var lockReason: String?

            public var maintainTime: String?

            public var mode: String?

            public var payType: String?

            public var port: Int32?

            public var regionId: String?

            public var reservedACU: String?

            public var resourceGroupId: String?

            public var storageResource: String?

            public var storageResourceTotal: String?

            public var supportedFeatures: [String: String]?

            public var tags: DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags?

            public var userENIStatus: Bool?

            public var VPCId: String?

            public var vSwitchId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.computeResource != nil {
                    map["ComputeResource"] = self.computeResource!
                }
                if self.computeResourceTotal != nil {
                    map["ComputeResourceTotal"] = self.computeResourceTotal!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.DBClusterDescription != nil {
                    map["DBClusterDescription"] = self.DBClusterDescription!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.DBClusterNetworkType != nil {
                    map["DBClusterNetworkType"] = self.DBClusterNetworkType!
                }
                if self.DBClusterStatus != nil {
                    map["DBClusterStatus"] = self.DBClusterStatus!
                }
                if self.DBClusterType != nil {
                    map["DBClusterType"] = self.DBClusterType!
                }
                if self.DBVersion != nil {
                    map["DBVersion"] = self.DBVersion!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.maintainTime != nil {
                    map["MaintainTime"] = self.maintainTime!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.reservedACU != nil {
                    map["ReservedACU"] = self.reservedACU!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.storageResource != nil {
                    map["StorageResource"] = self.storageResource!
                }
                if self.storageResourceTotal != nil {
                    map["StorageResourceTotal"] = self.storageResourceTotal!
                }
                if self.supportedFeatures != nil {
                    map["SupportedFeatures"] = self.supportedFeatures!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.userENIStatus != nil {
                    map["UserENIStatus"] = self.userENIStatus!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("ComputeResource") && dict["ComputeResource"] != nil {
                    self.computeResource = dict["ComputeResource"] as! String
                }
                if dict.keys.contains("ComputeResourceTotal") && dict["ComputeResourceTotal"] != nil {
                    self.computeResourceTotal = dict["ComputeResourceTotal"] as! String
                }
                if dict.keys.contains("ConnectionString") && dict["ConnectionString"] != nil {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DBClusterDescription") && dict["DBClusterDescription"] != nil {
                    self.DBClusterDescription = dict["DBClusterDescription"] as! String
                }
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("DBClusterNetworkType") && dict["DBClusterNetworkType"] != nil {
                    self.DBClusterNetworkType = dict["DBClusterNetworkType"] as! String
                }
                if dict.keys.contains("DBClusterStatus") && dict["DBClusterStatus"] != nil {
                    self.DBClusterStatus = dict["DBClusterStatus"] as! String
                }
                if dict.keys.contains("DBClusterType") && dict["DBClusterType"] != nil {
                    self.DBClusterType = dict["DBClusterType"] as! String
                }
                if dict.keys.contains("DBVersion") && dict["DBVersion"] != nil {
                    self.DBVersion = dict["DBVersion"] as! String
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("Expired") && dict["Expired"] != nil {
                    self.expired = dict["Expired"] as! String
                }
                if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("LockReason") && dict["LockReason"] != nil {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("MaintainTime") && dict["MaintainTime"] != nil {
                    self.maintainTime = dict["MaintainTime"] as! String
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ReservedACU") && dict["ReservedACU"] != nil {
                    self.reservedACU = dict["ReservedACU"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("StorageResource") && dict["StorageResource"] != nil {
                    self.storageResource = dict["StorageResource"] as! String
                }
                if dict.keys.contains("StorageResourceTotal") && dict["StorageResourceTotal"] != nil {
                    self.storageResourceTotal = dict["StorageResourceTotal"] as! String
                }
                if dict.keys.contains("SupportedFeatures") && dict["SupportedFeatures"] != nil {
                    self.supportedFeatures = dict["SupportedFeatures"] as! [String: String]
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("UserENIStatus") && dict["UserENIStatus"] != nil {
                    self.userENIStatus = dict["UserENIStatus"] as! Bool
                }
                if dict.keys.contains("VPCId") && dict["VPCId"] != nil {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBCluster: [DescribeDBClusterAttributeResponseBody.Items.DBCluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBCluster != nil {
                var tmp : [Any] = []
                for k in self.DBCluster! {
                    tmp.append(k.toMap())
                }
                map["DBCluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBCluster") && dict["DBCluster"] != nil {
                var tmp : [DescribeDBClusterAttributeResponseBody.Items.DBCluster] = []
                for v in dict["DBCluster"] as! [Any] {
                    var model = DescribeDBClusterAttributeResponseBody.Items.DBCluster()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DBCluster = tmp
            }
        }
    }
    public var items: DescribeDBClusterAttributeResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeDBClusterAttributeResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBClusterAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterHealthStatusRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDBClusterHealthStatusResponseBody : Tea.TeaModel {
    public class CS : Tea.TeaModel {
        public var activeCount: Int64?

        public var expectedCount: Int64?

        public var riskCount: Int64?

        public var status: String?

        public var unavailableCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeCount != nil {
                map["ActiveCount"] = self.activeCount!
            }
            if self.expectedCount != nil {
                map["ExpectedCount"] = self.expectedCount!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unavailableCount != nil {
                map["UnavailableCount"] = self.unavailableCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveCount") && dict["ActiveCount"] != nil {
                self.activeCount = dict["ActiveCount"] as! Int64
            }
            if dict.keys.contains("ExpectedCount") && dict["ExpectedCount"] != nil {
                self.expectedCount = dict["ExpectedCount"] as! Int64
            }
            if dict.keys.contains("RiskCount") && dict["RiskCount"] != nil {
                self.riskCount = dict["RiskCount"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnavailableCount") && dict["UnavailableCount"] != nil {
                self.unavailableCount = dict["UnavailableCount"] as! Int64
            }
        }
    }
    public class Executor : Tea.TeaModel {
        public var activeCount: Int64?

        public var expectedCount: Int64?

        public var riskCount: Int64?

        public var status: String?

        public var unavailableCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeCount != nil {
                map["ActiveCount"] = self.activeCount!
            }
            if self.expectedCount != nil {
                map["ExpectedCount"] = self.expectedCount!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unavailableCount != nil {
                map["UnavailableCount"] = self.unavailableCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveCount") && dict["ActiveCount"] != nil {
                self.activeCount = dict["ActiveCount"] as! Int64
            }
            if dict.keys.contains("ExpectedCount") && dict["ExpectedCount"] != nil {
                self.expectedCount = dict["ExpectedCount"] as! Int64
            }
            if dict.keys.contains("RiskCount") && dict["RiskCount"] != nil {
                self.riskCount = dict["RiskCount"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnavailableCount") && dict["UnavailableCount"] != nil {
                self.unavailableCount = dict["UnavailableCount"] as! Int64
            }
        }
    }
    public class Worker : Tea.TeaModel {
        public var activeCount: Int64?

        public var expectedCount: Int64?

        public var riskCount: Int64?

        public var status: String?

        public var unavailableCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeCount != nil {
                map["ActiveCount"] = self.activeCount!
            }
            if self.expectedCount != nil {
                map["ExpectedCount"] = self.expectedCount!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unavailableCount != nil {
                map["UnavailableCount"] = self.unavailableCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveCount") && dict["ActiveCount"] != nil {
                self.activeCount = dict["ActiveCount"] as! Int64
            }
            if dict.keys.contains("ExpectedCount") && dict["ExpectedCount"] != nil {
                self.expectedCount = dict["ExpectedCount"] as! Int64
            }
            if dict.keys.contains("RiskCount") && dict["RiskCount"] != nil {
                self.riskCount = dict["RiskCount"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnavailableCount") && dict["UnavailableCount"] != nil {
                self.unavailableCount = dict["UnavailableCount"] as! Int64
            }
        }
    }
    public var CS: DescribeDBClusterHealthStatusResponseBody.CS?

    public var executor: DescribeDBClusterHealthStatusResponseBody.Executor?

    public var instanceStatus: String?

    public var requestId: String?

    public var worker: DescribeDBClusterHealthStatusResponseBody.Worker?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.CS?.validate()
        try self.executor?.validate()
        try self.worker?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CS != nil {
            map["CS"] = self.CS?.toMap()
        }
        if self.executor != nil {
            map["Executor"] = self.executor?.toMap()
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.worker != nil {
            map["Worker"] = self.worker?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CS") && dict["CS"] != nil {
            var model = DescribeDBClusterHealthStatusResponseBody.CS()
            model.fromMap(dict["CS"] as! [String: Any])
            self.CS = model
        }
        if dict.keys.contains("Executor") && dict["Executor"] != nil {
            var model = DescribeDBClusterHealthStatusResponseBody.Executor()
            model.fromMap(dict["Executor"] as! [String: Any])
            self.executor = model
        }
        if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
            self.instanceStatus = dict["InstanceStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Worker") && dict["Worker"] != nil {
            var model = DescribeDBClusterHealthStatusResponseBody.Worker()
            model.fromMap(dict["Worker"] as! [String: Any])
            self.worker = model
        }
    }
}

public class DescribeDBClusterHealthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterHealthStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBClusterHealthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterPerformanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var key: String?

    public var regionId: String?

    public var resourcePools: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourcePools != nil {
            map["ResourcePools"] = self.resourcePools!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourcePools") && dict["ResourcePools"] != nil {
            self.resourcePools = dict["ResourcePools"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterPerformanceResponseBody : Tea.TeaModel {
    public class Performances : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public var name: String?

            public var tags: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    self.tags = dict["Tags"] as! String
                }
                if dict.keys.contains("Values") && dict["Values"] != nil {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var key: String?

        public var series: [DescribeDBClusterPerformanceResponseBody.Performances.Series]?

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
                map["Key"] = self.key!
            }
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Series") && dict["Series"] != nil {
                var tmp : [DescribeDBClusterPerformanceResponseBody.Performances.Series] = []
                for v in dict["Series"] as! [Any] {
                    var model = DescribeDBClusterPerformanceResponseBody.Performances.Series()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.series = tmp
            }
            if dict.keys.contains("Unit") && dict["Unit"] != nil {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var performances: [DescribeDBClusterPerformanceResponseBody.Performances]?

    public var requestId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.performances != nil {
            var tmp : [Any] = []
            for k in self.performances! {
                tmp.append(k.toMap())
            }
            map["Performances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Performances") && dict["Performances"] != nil {
            var tmp : [DescribeDBClusterPerformanceResponseBody.Performances] = []
            for v in dict["Performances"] as! [Any] {
                var model = DescribeDBClusterPerformanceResponseBody.Performances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.performances = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterPerformanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBClusterPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterSpaceSummaryRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeDBClusterSpaceSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ColdData : Tea.TeaModel {
            public var dataSize: Int64?

            public var indexSize: Int64?

            public var otherSize: Int64?

            public var primaryKeyIndexSize: Int64?

            public var totalSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.indexSize != nil {
                    map["IndexSize"] = self.indexSize!
                }
                if self.otherSize != nil {
                    map["OtherSize"] = self.otherSize!
                }
                if self.primaryKeyIndexSize != nil {
                    map["PrimaryKeyIndexSize"] = self.primaryKeyIndexSize!
                }
                if self.totalSize != nil {
                    map["TotalSize"] = self.totalSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                    self.dataSize = dict["DataSize"] as! Int64
                }
                if dict.keys.contains("IndexSize") && dict["IndexSize"] != nil {
                    self.indexSize = dict["IndexSize"] as! Int64
                }
                if dict.keys.contains("OtherSize") && dict["OtherSize"] != nil {
                    self.otherSize = dict["OtherSize"] as! Int64
                }
                if dict.keys.contains("PrimaryKeyIndexSize") && dict["PrimaryKeyIndexSize"] != nil {
                    self.primaryKeyIndexSize = dict["PrimaryKeyIndexSize"] as! Int64
                }
                if dict.keys.contains("TotalSize") && dict["TotalSize"] != nil {
                    self.totalSize = dict["TotalSize"] as! Int64
                }
            }
        }
        public class DataGrowth : Tea.TeaModel {
            public var dayGrowth: Int64?

            public var weekGrowth: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dayGrowth != nil {
                    map["DayGrowth"] = self.dayGrowth!
                }
                if self.weekGrowth != nil {
                    map["WeekGrowth"] = self.weekGrowth!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DayGrowth") && dict["DayGrowth"] != nil {
                    self.dayGrowth = dict["DayGrowth"] as! Int64
                }
                if dict.keys.contains("WeekGrowth") && dict["WeekGrowth"] != nil {
                    self.weekGrowth = dict["WeekGrowth"] as! Int64
                }
            }
        }
        public class HotData : Tea.TeaModel {
            public var dataSize: Int64?

            public var indexSize: Int64?

            public var otherSize: Int64?

            public var primaryKeyIndexSize: Int64?

            public var totalSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.indexSize != nil {
                    map["IndexSize"] = self.indexSize!
                }
                if self.otherSize != nil {
                    map["OtherSize"] = self.otherSize!
                }
                if self.primaryKeyIndexSize != nil {
                    map["PrimaryKeyIndexSize"] = self.primaryKeyIndexSize!
                }
                if self.totalSize != nil {
                    map["TotalSize"] = self.totalSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                    self.dataSize = dict["DataSize"] as! Int64
                }
                if dict.keys.contains("IndexSize") && dict["IndexSize"] != nil {
                    self.indexSize = dict["IndexSize"] as! Int64
                }
                if dict.keys.contains("OtherSize") && dict["OtherSize"] != nil {
                    self.otherSize = dict["OtherSize"] as! Int64
                }
                if dict.keys.contains("PrimaryKeyIndexSize") && dict["PrimaryKeyIndexSize"] != nil {
                    self.primaryKeyIndexSize = dict["PrimaryKeyIndexSize"] as! Int64
                }
                if dict.keys.contains("TotalSize") && dict["TotalSize"] != nil {
                    self.totalSize = dict["TotalSize"] as! Int64
                }
            }
        }
        public var coldData: DescribeDBClusterSpaceSummaryResponseBody.Data.ColdData?

        public var dataGrowth: DescribeDBClusterSpaceSummaryResponseBody.Data.DataGrowth?

        public var hotData: DescribeDBClusterSpaceSummaryResponseBody.Data.HotData?

        public var totalSize: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.coldData?.validate()
            try self.dataGrowth?.validate()
            try self.hotData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coldData != nil {
                map["ColdData"] = self.coldData?.toMap()
            }
            if self.dataGrowth != nil {
                map["DataGrowth"] = self.dataGrowth?.toMap()
            }
            if self.hotData != nil {
                map["HotData"] = self.hotData?.toMap()
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ColdData") && dict["ColdData"] != nil {
                var model = DescribeDBClusterSpaceSummaryResponseBody.Data.ColdData()
                model.fromMap(dict["ColdData"] as! [String: Any])
                self.coldData = model
            }
            if dict.keys.contains("DataGrowth") && dict["DataGrowth"] != nil {
                var model = DescribeDBClusterSpaceSummaryResponseBody.Data.DataGrowth()
                model.fromMap(dict["DataGrowth"] as! [String: Any])
                self.dataGrowth = model
            }
            if dict.keys.contains("HotData") && dict["HotData"] != nil {
                var model = DescribeDBClusterSpaceSummaryResponseBody.Data.HotData()
                model.fromMap(dict["HotData"] as! [String: Any])
                self.hotData = model
            }
            if dict.keys.contains("TotalSize") && dict["TotalSize"] != nil {
                self.totalSize = dict["TotalSize"] as! String
            }
        }
    }
    public var data: DescribeDBClusterSpaceSummaryResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDBClusterSpaceSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterSpaceSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterSpaceSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBClusterSpaceSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterStatusRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDBClusterStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status: [String]?

    public override init() {
        super.init()
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! [String]
        }
    }
}

public class DescribeDBClusterStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBClusterStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClustersRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var DBClusterDescription: String?

    public var DBClusterIds: String?

    public var DBClusterStatus: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeDBClustersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterIds != nil {
            map["DBClusterIds"] = self.DBClusterIds!
        }
        if self.DBClusterStatus != nil {
            map["DBClusterStatus"] = self.DBClusterStatus!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterDescription") && dict["DBClusterDescription"] != nil {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBClusterIds") && dict["DBClusterIds"] != nil {
            self.DBClusterIds = dict["DBClusterIds"] as! String
        }
        if dict.keys.contains("DBClusterStatus") && dict["DBClusterStatus"] != nil {
            self.DBClusterStatus = dict["DBClusterStatus"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeDBClustersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDBClustersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeDBClustersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBCluster : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var key: String?

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
                        if self.key != nil {
                            map["Key"] = self.key!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [DescribeDBClustersResponseBody.Items.DBCluster.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [DescribeDBClustersResponseBody.Items.DBCluster.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeDBClustersResponseBody.Items.DBCluster.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var commodityCode: String?

            public var computeResource: String?

            public var connectionString: String?

            public var createTime: String?

            public var DBClusterDescription: String?

            public var DBClusterId: String?

            public var DBClusterNetworkType: String?

            public var DBClusterStatus: String?

            public var DBClusterType: String?

            public var DBVersion: String?

            public var engine: String?

            public var expireTime: String?

            public var expired: String?

            public var lockMode: String?

            public var lockReason: String?

            public var mode: String?

            public var payType: String?

            public var port: String?

            public var regionId: String?

            public var reservedACU: String?

            public var resourceGroupId: String?

            public var storageResource: String?

            public var tags: DescribeDBClustersResponseBody.Items.DBCluster.Tags?

            public var VPCId: String?

            public var vSwitchId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.computeResource != nil {
                    map["ComputeResource"] = self.computeResource!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.DBClusterDescription != nil {
                    map["DBClusterDescription"] = self.DBClusterDescription!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.DBClusterNetworkType != nil {
                    map["DBClusterNetworkType"] = self.DBClusterNetworkType!
                }
                if self.DBClusterStatus != nil {
                    map["DBClusterStatus"] = self.DBClusterStatus!
                }
                if self.DBClusterType != nil {
                    map["DBClusterType"] = self.DBClusterType!
                }
                if self.DBVersion != nil {
                    map["DBVersion"] = self.DBVersion!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.reservedACU != nil {
                    map["ReservedACU"] = self.reservedACU!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.storageResource != nil {
                    map["StorageResource"] = self.storageResource!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("ComputeResource") && dict["ComputeResource"] != nil {
                    self.computeResource = dict["ComputeResource"] as! String
                }
                if dict.keys.contains("ConnectionString") && dict["ConnectionString"] != nil {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DBClusterDescription") && dict["DBClusterDescription"] != nil {
                    self.DBClusterDescription = dict["DBClusterDescription"] as! String
                }
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("DBClusterNetworkType") && dict["DBClusterNetworkType"] != nil {
                    self.DBClusterNetworkType = dict["DBClusterNetworkType"] as! String
                }
                if dict.keys.contains("DBClusterStatus") && dict["DBClusterStatus"] != nil {
                    self.DBClusterStatus = dict["DBClusterStatus"] as! String
                }
                if dict.keys.contains("DBClusterType") && dict["DBClusterType"] != nil {
                    self.DBClusterType = dict["DBClusterType"] as! String
                }
                if dict.keys.contains("DBVersion") && dict["DBVersion"] != nil {
                    self.DBVersion = dict["DBVersion"] as! String
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("Expired") && dict["Expired"] != nil {
                    self.expired = dict["Expired"] as! String
                }
                if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("LockReason") && dict["LockReason"] != nil {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ReservedACU") && dict["ReservedACU"] != nil {
                    self.reservedACU = dict["ReservedACU"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("StorageResource") && dict["StorageResource"] != nil {
                    self.storageResource = dict["StorageResource"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeDBClustersResponseBody.Items.DBCluster.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("VPCId") && dict["VPCId"] != nil {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBCluster: [DescribeDBClustersResponseBody.Items.DBCluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBCluster != nil {
                var tmp : [Any] = []
                for k in self.DBCluster! {
                    tmp.append(k.toMap())
                }
                map["DBCluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBCluster") && dict["DBCluster"] != nil {
                var tmp : [DescribeDBClustersResponseBody.Items.DBCluster] = []
                for v in dict["DBCluster"] as! [Any] {
                    var model = DescribeDBClustersResponseBody.Items.DBCluster()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DBCluster = tmp
            }
        }
    }
    public var items: DescribeDBClustersResponseBody.Items?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeDBClustersResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDBClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBResourceGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var groupType: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class DescribeDBResourceGroupResponseBody : Tea.TeaModel {
    public class GroupsInfo : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var groupName: String?

            public var queryTime: String?

            public var targetGroupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.queryTime != nil {
                    map["QueryTime"] = self.queryTime!
                }
                if self.targetGroupName != nil {
                    map["TargetGroupName"] = self.targetGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("QueryTime") && dict["QueryTime"] != nil {
                    self.queryTime = dict["QueryTime"] as! String
                }
                if dict.keys.contains("TargetGroupName") && dict["TargetGroupName"] != nil {
                    self.targetGroupName = dict["TargetGroupName"] as! String
                }
            }
        }
        public var clusterMode: String?

        public var clusterSizeResource: String?

        public var createTime: String?

        public var elasticMinComputeResource: String?

        public var enableSpot: String?

        public var groupName: String?

        public var groupType: String?

        public var groupUsers: String?

        public var maxClusterCount: Int32?

        public var maxComputeResource: String?

        public var minClusterCount: Int32?

        public var minComputeResource: String?

        public var rules: [DescribeDBResourceGroupResponseBody.GroupsInfo.Rules]?

        public var runningClusterCount: Int32?

        public var status: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterMode != nil {
                map["ClusterMode"] = self.clusterMode!
            }
            if self.clusterSizeResource != nil {
                map["ClusterSizeResource"] = self.clusterSizeResource!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.elasticMinComputeResource != nil {
                map["ElasticMinComputeResource"] = self.elasticMinComputeResource!
            }
            if self.enableSpot != nil {
                map["EnableSpot"] = self.enableSpot!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupType != nil {
                map["GroupType"] = self.groupType!
            }
            if self.groupUsers != nil {
                map["GroupUsers"] = self.groupUsers!
            }
            if self.maxClusterCount != nil {
                map["MaxClusterCount"] = self.maxClusterCount!
            }
            if self.maxComputeResource != nil {
                map["MaxComputeResource"] = self.maxComputeResource!
            }
            if self.minClusterCount != nil {
                map["MinClusterCount"] = self.minClusterCount!
            }
            if self.minComputeResource != nil {
                map["MinComputeResource"] = self.minComputeResource!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.runningClusterCount != nil {
                map["RunningClusterCount"] = self.runningClusterCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterMode") && dict["ClusterMode"] != nil {
                self.clusterMode = dict["ClusterMode"] as! String
            }
            if dict.keys.contains("ClusterSizeResource") && dict["ClusterSizeResource"] != nil {
                self.clusterSizeResource = dict["ClusterSizeResource"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ElasticMinComputeResource") && dict["ElasticMinComputeResource"] != nil {
                self.elasticMinComputeResource = dict["ElasticMinComputeResource"] as! String
            }
            if dict.keys.contains("EnableSpot") && dict["EnableSpot"] != nil {
                self.enableSpot = dict["EnableSpot"] as! String
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
                self.groupType = dict["GroupType"] as! String
            }
            if dict.keys.contains("GroupUsers") && dict["GroupUsers"] != nil {
                self.groupUsers = dict["GroupUsers"] as! String
            }
            if dict.keys.contains("MaxClusterCount") && dict["MaxClusterCount"] != nil {
                self.maxClusterCount = dict["MaxClusterCount"] as! Int32
            }
            if dict.keys.contains("MaxComputeResource") && dict["MaxComputeResource"] != nil {
                self.maxComputeResource = dict["MaxComputeResource"] as! String
            }
            if dict.keys.contains("MinClusterCount") && dict["MinClusterCount"] != nil {
                self.minClusterCount = dict["MinClusterCount"] as! Int32
            }
            if dict.keys.contains("MinComputeResource") && dict["MinComputeResource"] != nil {
                self.minComputeResource = dict["MinComputeResource"] as! String
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [DescribeDBResourceGroupResponseBody.GroupsInfo.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = DescribeDBResourceGroupResponseBody.GroupsInfo.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
            if dict.keys.contains("RunningClusterCount") && dict["RunningClusterCount"] != nil {
                self.runningClusterCount = dict["RunningClusterCount"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var groupsInfo: [DescribeDBResourceGroupResponseBody.GroupsInfo]?

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
        if self.groupsInfo != nil {
            var tmp : [Any] = []
            for k in self.groupsInfo! {
                tmp.append(k.toMap())
            }
            map["GroupsInfo"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupsInfo") && dict["GroupsInfo"] != nil {
            var tmp : [DescribeDBResourceGroupResponseBody.GroupsInfo] = []
            for v in dict["GroupsInfo"] as! [Any] {
                var model = DescribeDBResourceGroupResponseBody.GroupsInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groupsInfo = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiagnosisDimensionsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var lang: String?

    public var queryCondition: String?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.queryCondition != nil {
            map["QueryCondition"] = self.queryCondition!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("QueryCondition") && dict["QueryCondition"] != nil {
            self.queryCondition = dict["QueryCondition"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDiagnosisDimensionsResponseBody : Tea.TeaModel {
    public var clientIps: [String]?

    public var databases: [String]?

    public var requestId: String?

    public var resourceGroups: [String]?

    public var userNames: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientIps != nil {
            map["ClientIps"] = self.clientIps!
        }
        if self.databases != nil {
            map["Databases"] = self.databases!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroups != nil {
            map["ResourceGroups"] = self.resourceGroups!
        }
        if self.userNames != nil {
            map["UserNames"] = self.userNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIps") && dict["ClientIps"] != nil {
            self.clientIps = dict["ClientIps"] as! [String]
        }
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            self.databases = dict["Databases"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroups") && dict["ResourceGroups"] != nil {
            self.resourceGroups = dict["ResourceGroups"] as! [String]
        }
        if dict.keys.contains("UserNames") && dict["UserNames"] != nil {
            self.userNames = dict["UserNames"] as! [String]
        }
    }
}

public class DescribeDiagnosisDimensionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiagnosisDimensionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDiagnosisDimensionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiagnosisRecordsRequest : Tea.TeaModel {
    public var clientIp: String?

    public var DBClusterId: String?

    public var database: String?

    public var endTime: String?

    public var keyword: String?

    public var lang: String?

    public var maxPeakMemory: Int64?

    public var maxScanSize: Int64?

    public var minPeakMemory: Int64?

    public var minScanSize: Int64?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var patternId: String?

    public var queryCondition: String?

    public var regionId: String?

    public var resourceGroup: String?

    public var startTime: String?

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
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxPeakMemory != nil {
            map["MaxPeakMemory"] = self.maxPeakMemory!
        }
        if self.maxScanSize != nil {
            map["MaxScanSize"] = self.maxScanSize!
        }
        if self.minPeakMemory != nil {
            map["MinPeakMemory"] = self.minPeakMemory!
        }
        if self.minScanSize != nil {
            map["MinScanSize"] = self.minScanSize!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.patternId != nil {
            map["PatternId"] = self.patternId!
        }
        if self.queryCondition != nil {
            map["QueryCondition"] = self.queryCondition!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MaxPeakMemory") && dict["MaxPeakMemory"] != nil {
            self.maxPeakMemory = dict["MaxPeakMemory"] as! Int64
        }
        if dict.keys.contains("MaxScanSize") && dict["MaxScanSize"] != nil {
            self.maxScanSize = dict["MaxScanSize"] as! Int64
        }
        if dict.keys.contains("MinPeakMemory") && dict["MinPeakMemory"] != nil {
            self.minPeakMemory = dict["MinPeakMemory"] as! Int64
        }
        if dict.keys.contains("MinScanSize") && dict["MinScanSize"] != nil {
            self.minScanSize = dict["MinScanSize"] as! Int64
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PatternId") && dict["PatternId"] != nil {
            self.patternId = dict["PatternId"] as! String
        }
        if dict.keys.contains("QueryCondition") && dict["QueryCondition"] != nil {
            self.queryCondition = dict["QueryCondition"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroup") && dict["ResourceGroup"] != nil {
            self.resourceGroup = dict["ResourceGroup"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DescribeDiagnosisRecordsResponseBody : Tea.TeaModel {
    public class Querys : Tea.TeaModel {
        public var clientIp: String?

        public var cost: Int64?

        public var database: String?

        public var etlWriteRows: Int64?

        public var executionTime: Int64?

        public var outputDataSize: Int64?

        public var outputRows: Int64?

        public var peakMemory: Int64?

        public var processId: String?

        public var queueTime: Int64?

        public var rcHost: String?

        public var resourceCostRank: Int32?

        public var resourceGroup: String?

        public var SQL: String?

        public var SQLTruncated: Bool?

        public var SQLTruncatedThreshold: Int64?

        public var scanRows: Int64?

        public var scanSize: Int64?

        public var startTime: Int64?

        public var status: String?

        public var totalPlanningTime: Int64?

        public var totalStages: Int32?

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
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.etlWriteRows != nil {
                map["EtlWriteRows"] = self.etlWriteRows!
            }
            if self.executionTime != nil {
                map["ExecutionTime"] = self.executionTime!
            }
            if self.outputDataSize != nil {
                map["OutputDataSize"] = self.outputDataSize!
            }
            if self.outputRows != nil {
                map["OutputRows"] = self.outputRows!
            }
            if self.peakMemory != nil {
                map["PeakMemory"] = self.peakMemory!
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.queueTime != nil {
                map["QueueTime"] = self.queueTime!
            }
            if self.rcHost != nil {
                map["RcHost"] = self.rcHost!
            }
            if self.resourceCostRank != nil {
                map["ResourceCostRank"] = self.resourceCostRank!
            }
            if self.resourceGroup != nil {
                map["ResourceGroup"] = self.resourceGroup!
            }
            if self.SQL != nil {
                map["SQL"] = self.SQL!
            }
            if self.SQLTruncated != nil {
                map["SQLTruncated"] = self.SQLTruncated!
            }
            if self.SQLTruncatedThreshold != nil {
                map["SQLTruncatedThreshold"] = self.SQLTruncatedThreshold!
            }
            if self.scanRows != nil {
                map["ScanRows"] = self.scanRows!
            }
            if self.scanSize != nil {
                map["ScanSize"] = self.scanSize!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalPlanningTime != nil {
                map["TotalPlanningTime"] = self.totalPlanningTime!
            }
            if self.totalStages != nil {
                map["TotalStages"] = self.totalStages!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("Cost") && dict["Cost"] != nil {
                self.cost = dict["Cost"] as! Int64
            }
            if dict.keys.contains("Database") && dict["Database"] != nil {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("EtlWriteRows") && dict["EtlWriteRows"] != nil {
                self.etlWriteRows = dict["EtlWriteRows"] as! Int64
            }
            if dict.keys.contains("ExecutionTime") && dict["ExecutionTime"] != nil {
                self.executionTime = dict["ExecutionTime"] as! Int64
            }
            if dict.keys.contains("OutputDataSize") && dict["OutputDataSize"] != nil {
                self.outputDataSize = dict["OutputDataSize"] as! Int64
            }
            if dict.keys.contains("OutputRows") && dict["OutputRows"] != nil {
                self.outputRows = dict["OutputRows"] as! Int64
            }
            if dict.keys.contains("PeakMemory") && dict["PeakMemory"] != nil {
                self.peakMemory = dict["PeakMemory"] as! Int64
            }
            if dict.keys.contains("ProcessId") && dict["ProcessId"] != nil {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("QueueTime") && dict["QueueTime"] != nil {
                self.queueTime = dict["QueueTime"] as! Int64
            }
            if dict.keys.contains("RcHost") && dict["RcHost"] != nil {
                self.rcHost = dict["RcHost"] as! String
            }
            if dict.keys.contains("ResourceCostRank") && dict["ResourceCostRank"] != nil {
                self.resourceCostRank = dict["ResourceCostRank"] as! Int32
            }
            if dict.keys.contains("ResourceGroup") && dict["ResourceGroup"] != nil {
                self.resourceGroup = dict["ResourceGroup"] as! String
            }
            if dict.keys.contains("SQL") && dict["SQL"] != nil {
                self.SQL = dict["SQL"] as! String
            }
            if dict.keys.contains("SQLTruncated") && dict["SQLTruncated"] != nil {
                self.SQLTruncated = dict["SQLTruncated"] as! Bool
            }
            if dict.keys.contains("SQLTruncatedThreshold") && dict["SQLTruncatedThreshold"] != nil {
                self.SQLTruncatedThreshold = dict["SQLTruncatedThreshold"] as! Int64
            }
            if dict.keys.contains("ScanRows") && dict["ScanRows"] != nil {
                self.scanRows = dict["ScanRows"] as! Int64
            }
            if dict.keys.contains("ScanSize") && dict["ScanSize"] != nil {
                self.scanSize = dict["ScanSize"] as! Int64
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalPlanningTime") && dict["TotalPlanningTime"] != nil {
                self.totalPlanningTime = dict["TotalPlanningTime"] as! Int64
            }
            if dict.keys.contains("TotalStages") && dict["TotalStages"] != nil {
                self.totalStages = dict["TotalStages"] as! Int32
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var querys: [DescribeDiagnosisRecordsResponseBody.Querys]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.querys != nil {
            var tmp : [Any] = []
            for k in self.querys! {
                tmp.append(k.toMap())
            }
            map["Querys"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Querys") && dict["Querys"] != nil {
            var tmp : [DescribeDiagnosisRecordsResponseBody.Querys] = []
            for v in dict["Querys"] as! [Any] {
                var model = DescribeDiagnosisRecordsResponseBody.Querys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.querys = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDiagnosisRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiagnosisRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDiagnosisRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiagnosisSQLInfoRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var lang: String?

    public var processId: String?

    public var processRcHost: String?

    public var processStartTime: Int64?

    public var processState: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        if self.processRcHost != nil {
            map["ProcessRcHost"] = self.processRcHost!
        }
        if self.processStartTime != nil {
            map["ProcessStartTime"] = self.processStartTime!
        }
        if self.processState != nil {
            map["ProcessState"] = self.processState!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ProcessId") && dict["ProcessId"] != nil {
            self.processId = dict["ProcessId"] as! String
        }
        if dict.keys.contains("ProcessRcHost") && dict["ProcessRcHost"] != nil {
            self.processRcHost = dict["ProcessRcHost"] as! String
        }
        if dict.keys.contains("ProcessStartTime") && dict["ProcessStartTime"] != nil {
            self.processStartTime = dict["ProcessStartTime"] as! Int64
        }
        if dict.keys.contains("ProcessState") && dict["ProcessState"] != nil {
            self.processState = dict["ProcessState"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDiagnosisSQLInfoResponseBody : Tea.TeaModel {
    public class StageInfos : Tea.TeaModel {
        public var inputDataSize: Int64?

        public var inputRows: Int64?

        public var operatorCost: Int64?

        public var outputDataSize: Int64?

        public var outputRows: Int64?

        public var peakMemory: Int64?

        public var progress: Double?

        public var stageId: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inputDataSize != nil {
                map["InputDataSize"] = self.inputDataSize!
            }
            if self.inputRows != nil {
                map["InputRows"] = self.inputRows!
            }
            if self.operatorCost != nil {
                map["OperatorCost"] = self.operatorCost!
            }
            if self.outputDataSize != nil {
                map["OutputDataSize"] = self.outputDataSize!
            }
            if self.outputRows != nil {
                map["OutputRows"] = self.outputRows!
            }
            if self.peakMemory != nil {
                map["PeakMemory"] = self.peakMemory!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.stageId != nil {
                map["StageId"] = self.stageId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InputDataSize") && dict["InputDataSize"] != nil {
                self.inputDataSize = dict["InputDataSize"] as! Int64
            }
            if dict.keys.contains("InputRows") && dict["InputRows"] != nil {
                self.inputRows = dict["InputRows"] as! Int64
            }
            if dict.keys.contains("OperatorCost") && dict["OperatorCost"] != nil {
                self.operatorCost = dict["OperatorCost"] as! Int64
            }
            if dict.keys.contains("OutputDataSize") && dict["OutputDataSize"] != nil {
                self.outputDataSize = dict["OutputDataSize"] as! Int64
            }
            if dict.keys.contains("OutputRows") && dict["OutputRows"] != nil {
                self.outputRows = dict["OutputRows"] as! Int64
            }
            if dict.keys.contains("PeakMemory") && dict["PeakMemory"] != nil {
                self.peakMemory = dict["PeakMemory"] as! Int64
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! Double
            }
            if dict.keys.contains("StageId") && dict["StageId"] != nil {
                self.stageId = dict["StageId"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
        }
    }
    public var diagnosisSQLInfo: String?

    public var requestId: String?

    public var stageInfos: [DescribeDiagnosisSQLInfoResponseBody.StageInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosisSQLInfo != nil {
            map["DiagnosisSQLInfo"] = self.diagnosisSQLInfo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stageInfos != nil {
            var tmp : [Any] = []
            for k in self.stageInfos! {
                tmp.append(k.toMap())
            }
            map["StageInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnosisSQLInfo") && dict["DiagnosisSQLInfo"] != nil {
            self.diagnosisSQLInfo = dict["DiagnosisSQLInfo"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StageInfos") && dict["StageInfos"] != nil {
            var tmp : [DescribeDiagnosisSQLInfoResponseBody.StageInfos] = []
            for v in dict["StageInfos"] as! [Any] {
                var model = DescribeDiagnosisSQLInfoResponseBody.StageInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stageInfos = tmp
        }
    }
}

public class DescribeDiagnosisSQLInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiagnosisSQLInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDiagnosisSQLInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDownloadRecordsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var lang: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDownloadRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var downloadId: Int64?

        public var exceptionMsg: String?

        public var fileName: String?

        public var status: String?

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
            if self.downloadId != nil {
                map["DownloadId"] = self.downloadId!
            }
            if self.exceptionMsg != nil {
                map["ExceptionMsg"] = self.exceptionMsg!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownloadId") && dict["DownloadId"] != nil {
                self.downloadId = dict["DownloadId"] as! Int64
            }
            if dict.keys.contains("ExceptionMsg") && dict["ExceptionMsg"] != nil {
                self.exceptionMsg = dict["ExceptionMsg"] as! String
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var records: [DescribeDownloadRecordsResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Records") && dict["Records"] != nil {
            var tmp : [DescribeDownloadRecordsResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = DescribeDownloadRecordsResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDownloadRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDownloadRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDownloadRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeElasticPlanAttributeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
    }
}

public class DescribeElasticPlanAttributeResponseBody : Tea.TeaModel {
    public class ElasticPlan : Tea.TeaModel {
        public var autoScale: Bool?

        public var cronExpression: String?

        public var elasticPlanName: String?

        public var enabled: Bool?

        public var endTime: String?

        public var resourceGroupName: String?

        public var startTime: String?

        public var targetSize: String?

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
            if self.autoScale != nil {
                map["AutoScale"] = self.autoScale!
            }
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            if self.elasticPlanName != nil {
                map["ElasticPlanName"] = self.elasticPlanName!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.resourceGroupName != nil {
                map["ResourceGroupName"] = self.resourceGroupName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.targetSize != nil {
                map["TargetSize"] = self.targetSize!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoScale") && dict["AutoScale"] != nil {
                self.autoScale = dict["AutoScale"] as! Bool
            }
            if dict.keys.contains("CronExpression") && dict["CronExpression"] != nil {
                self.cronExpression = dict["CronExpression"] as! String
            }
            if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
                self.elasticPlanName = dict["ElasticPlanName"] as! String
            }
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
                self.resourceGroupName = dict["ResourceGroupName"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("TargetSize") && dict["TargetSize"] != nil {
                self.targetSize = dict["TargetSize"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var elasticPlan: DescribeElasticPlanAttributeResponseBody.ElasticPlan?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.elasticPlan?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticPlan != nil {
            map["ElasticPlan"] = self.elasticPlan?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ElasticPlan") && dict["ElasticPlan"] != nil {
            var model = DescribeElasticPlanAttributeResponseBody.ElasticPlan()
            model.fromMap(dict["ElasticPlan"] as! [String: Any])
            self.elasticPlan = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeElasticPlanAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticPlanAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeElasticPlanAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeElasticPlanJobsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupName: String?

    public var startTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeElasticPlanJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public var elasticAcu: String?

        public var elasticPlanName: String?

        public var endTime: String?

        public var instanceSize: Int32?

        public var reserveAcu: String?

        public var resourceGroupName: String?

        public var startTime: String?

        public var status: String?

        public var targetSize: String?

        public var totalAcu: String?

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
            if self.elasticAcu != nil {
                map["ElasticAcu"] = self.elasticAcu!
            }
            if self.elasticPlanName != nil {
                map["ElasticPlanName"] = self.elasticPlanName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceSize != nil {
                map["InstanceSize"] = self.instanceSize!
            }
            if self.reserveAcu != nil {
                map["ReserveAcu"] = self.reserveAcu!
            }
            if self.resourceGroupName != nil {
                map["ResourceGroupName"] = self.resourceGroupName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetSize != nil {
                map["TargetSize"] = self.targetSize!
            }
            if self.totalAcu != nil {
                map["TotalAcu"] = self.totalAcu!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ElasticAcu") && dict["ElasticAcu"] != nil {
                self.elasticAcu = dict["ElasticAcu"] as! String
            }
            if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
                self.elasticPlanName = dict["ElasticPlanName"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("InstanceSize") && dict["InstanceSize"] != nil {
                self.instanceSize = dict["InstanceSize"] as! Int32
            }
            if dict.keys.contains("ReserveAcu") && dict["ReserveAcu"] != nil {
                self.reserveAcu = dict["ReserveAcu"] as! String
            }
            if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
                self.resourceGroupName = dict["ResourceGroupName"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetSize") && dict["TargetSize"] != nil {
                self.targetSize = dict["TargetSize"] as! String
            }
            if dict.keys.contains("TotalAcu") && dict["TotalAcu"] != nil {
                self.totalAcu = dict["TotalAcu"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var jobs: [DescribeElasticPlanJobsResponseBody.Jobs]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["Jobs"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Jobs") && dict["Jobs"] != nil {
            var tmp : [DescribeElasticPlanJobsResponseBody.Jobs] = []
            for v in dict["Jobs"] as! [Any] {
                var model = DescribeElasticPlanJobsResponseBody.Jobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobs = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeElasticPlanJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticPlanJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeElasticPlanJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeElasticPlanSpecificationsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var resourceGroupName: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeElasticPlanSpecificationsResponseBody : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var specifications: [String]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.specifications != nil {
            map["Specifications"] = self.specifications!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Specifications") && dict["Specifications"] != nil {
            self.specifications = dict["Specifications"] as! [String]
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeElasticPlanSpecificationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticPlanSpecificationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeElasticPlanSpecificationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeElasticPlansRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanName: String?

    public var enabled: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupName: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeElasticPlansResponseBody : Tea.TeaModel {
    public class ElasticPlans : Tea.TeaModel {
        public var autoScale: Bool?

        public var elasticPlanName: String?

        public var enabled: Bool?

        public var nextScheduleTime: String?

        public var resourceGroupName: String?

        public var targetSize: String?

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
            if self.autoScale != nil {
                map["AutoScale"] = self.autoScale!
            }
            if self.elasticPlanName != nil {
                map["ElasticPlanName"] = self.elasticPlanName!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.nextScheduleTime != nil {
                map["NextScheduleTime"] = self.nextScheduleTime!
            }
            if self.resourceGroupName != nil {
                map["ResourceGroupName"] = self.resourceGroupName!
            }
            if self.targetSize != nil {
                map["TargetSize"] = self.targetSize!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoScale") && dict["AutoScale"] != nil {
                self.autoScale = dict["AutoScale"] as! Bool
            }
            if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
                self.elasticPlanName = dict["ElasticPlanName"] as! String
            }
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("NextScheduleTime") && dict["NextScheduleTime"] != nil {
                self.nextScheduleTime = dict["NextScheduleTime"] as! String
            }
            if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
                self.resourceGroupName = dict["ResourceGroupName"] as! String
            }
            if dict.keys.contains("TargetSize") && dict["TargetSize"] != nil {
                self.targetSize = dict["TargetSize"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var elasticPlans: [DescribeElasticPlansResponseBody.ElasticPlans]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.elasticPlans != nil {
            var tmp : [Any] = []
            for k in self.elasticPlans! {
                tmp.append(k.toMap())
            }
            map["ElasticPlans"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ElasticPlans") && dict["ElasticPlans"] != nil {
            var tmp : [DescribeElasticPlansResponseBody.ElasticPlans] = []
            for v in dict["ElasticPlans"] as! [Any] {
                var model = DescribeElasticPlansResponseBody.ElasticPlans()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.elasticPlans = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeElasticPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeElasticPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEnabledPrivilegesRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeEnabledPrivilegesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Privileges : Tea.TeaModel {
            public var description_: String?

            public var key: String?

            public override init() {
                super.init()
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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
            }
        }
        public var description_: String?

        public var privileges: [DescribeEnabledPrivilegesResponseBody.Data.Privileges]?

        public var scope: String?

        public override init() {
            super.init()
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
            if self.privileges != nil {
                var tmp : [Any] = []
                for k in self.privileges! {
                    tmp.append(k.toMap())
                }
                map["Privileges"] = tmp
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Privileges") && dict["Privileges"] != nil {
                var tmp : [DescribeEnabledPrivilegesResponseBody.Data.Privileges] = []
                for v in dict["Privileges"] as! [Any] {
                    var model = DescribeEnabledPrivilegesResponseBody.Data.Privileges()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.privileges = tmp
            }
            if dict.keys.contains("Scope") && dict["Scope"] != nil {
                self.scope = dict["Scope"] as! String
            }
        }
    }
    public var data: [DescribeEnabledPrivilegesResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeEnabledPrivilegesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeEnabledPrivilegesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEnabledPrivilegesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEnabledPrivilegesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeEnabledPrivilegesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeJobResourceUsageRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeJobResourceUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobAcuUsage : Tea.TeaModel {
            public class AcuUsageDetail : Tea.TeaModel {
                public var elasticAcuNumber: Double?

                public var reservedAcuNumber: Double?

                public var totalAcuNumber: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.elasticAcuNumber != nil {
                        map["ElasticAcuNumber"] = self.elasticAcuNumber!
                    }
                    if self.reservedAcuNumber != nil {
                        map["ReservedAcuNumber"] = self.reservedAcuNumber!
                    }
                    if self.totalAcuNumber != nil {
                        map["TotalAcuNumber"] = self.totalAcuNumber!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ElasticAcuNumber") && dict["ElasticAcuNumber"] != nil {
                        self.elasticAcuNumber = dict["ElasticAcuNumber"] as! Double
                    }
                    if dict.keys.contains("ReservedAcuNumber") && dict["ReservedAcuNumber"] != nil {
                        self.reservedAcuNumber = dict["ReservedAcuNumber"] as! Double
                    }
                    if dict.keys.contains("TotalAcuNumber") && dict["TotalAcuNumber"] != nil {
                        self.totalAcuNumber = dict["TotalAcuNumber"] as! Double
                    }
                }
            }
            public var acuUsageDetail: DescribeJobResourceUsageResponseBody.Data.JobAcuUsage.AcuUsageDetail?

            public var jobEndTime: String?

            public var jobId: String?

            public var jobStartTime: String?

            public var resourceGroupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.acuUsageDetail?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acuUsageDetail != nil {
                    map["AcuUsageDetail"] = self.acuUsageDetail?.toMap()
                }
                if self.jobEndTime != nil {
                    map["JobEndTime"] = self.jobEndTime!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobStartTime != nil {
                    map["JobStartTime"] = self.jobStartTime!
                }
                if self.resourceGroupName != nil {
                    map["ResourceGroupName"] = self.resourceGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcuUsageDetail") && dict["AcuUsageDetail"] != nil {
                    var model = DescribeJobResourceUsageResponseBody.Data.JobAcuUsage.AcuUsageDetail()
                    model.fromMap(dict["AcuUsageDetail"] as! [String: Any])
                    self.acuUsageDetail = model
                }
                if dict.keys.contains("JobEndTime") && dict["JobEndTime"] != nil {
                    self.jobEndTime = dict["JobEndTime"] as! String
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("JobStartTime") && dict["JobStartTime"] != nil {
                    self.jobStartTime = dict["JobStartTime"] as! String
                }
                if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
                    self.resourceGroupName = dict["ResourceGroupName"] as! String
                }
            }
        }
        public var DBClusterId: String?

        public var endTime: String?

        public var jobAcuUsage: [DescribeJobResourceUsageResponseBody.Data.JobAcuUsage]?

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
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.jobAcuUsage != nil {
                var tmp : [Any] = []
                for k in self.jobAcuUsage! {
                    tmp.append(k.toMap())
                }
                map["JobAcuUsage"] = tmp
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("JobAcuUsage") && dict["JobAcuUsage"] != nil {
                var tmp : [DescribeJobResourceUsageResponseBody.Data.JobAcuUsage] = []
                for v in dict["JobAcuUsage"] as! [Any] {
                    var model = DescribeJobResourceUsageResponseBody.Data.JobAcuUsage()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobAcuUsage = tmp
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeJobResourceUsageResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeJobResourceUsageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeJobResourceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobResourceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeJobResourceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePatternPerformanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var patternId: String?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.patternId != nil {
            map["PatternId"] = self.patternId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PatternId") && dict["PatternId"] != nil {
            self.patternId = dict["PatternId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribePatternPerformanceResponseBody : Tea.TeaModel {
    public class Performances : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Values") && dict["Values"] != nil {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var key: String?

        public var series: [DescribePatternPerformanceResponseBody.Performances.Series]?

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
                map["Key"] = self.key!
            }
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Series") && dict["Series"] != nil {
                var tmp : [DescribePatternPerformanceResponseBody.Performances.Series] = []
                for v in dict["Series"] as! [Any] {
                    var model = DescribePatternPerformanceResponseBody.Performances.Series()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.series = tmp
            }
            if dict.keys.contains("Unit") && dict["Unit"] != nil {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var endTime: String?

    public var performances: [DescribePatternPerformanceResponseBody.Performances]?

    public var requestId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.performances != nil {
            var tmp : [Any] = []
            for k in self.performances! {
                tmp.append(k.toMap())
            }
            map["Performances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Performances") && dict["Performances"] != nil {
            var tmp : [DescribePatternPerformanceResponseBody.Performances] = []
            for v in dict["Performances"] as! [Any] {
                var model = DescribePatternPerformanceResponseBody.Performances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.performances = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribePatternPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePatternPerformanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePatternPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class Zones : Tea.TeaModel {
                public class Zone : Tea.TeaModel {
                    public var localName: String?

                    public var vpcEnabled: Bool?

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
                        if self.localName != nil {
                            map["LocalName"] = self.localName!
                        }
                        if self.vpcEnabled != nil {
                            map["VpcEnabled"] = self.vpcEnabled!
                        }
                        if self.zoneId != nil {
                            map["ZoneId"] = self.zoneId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                            self.localName = dict["LocalName"] as! String
                        }
                        if dict.keys.contains("VpcEnabled") && dict["VpcEnabled"] != nil {
                            self.vpcEnabled = dict["VpcEnabled"] as! Bool
                        }
                        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                            self.zoneId = dict["ZoneId"] as! String
                        }
                    }
                }
                public var zone: [DescribeRegionsResponseBody.Regions.Region.Zones.Zone]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.zone != nil {
                        var tmp : [Any] = []
                        for k in self.zone! {
                            tmp.append(k.toMap())
                        }
                        map["Zone"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Zone") && dict["Zone"] != nil {
                        var tmp : [DescribeRegionsResponseBody.Regions.Region.Zones.Zone] = []
                        for v in dict["Zone"] as! [Any] {
                            var model = DescribeRegionsResponseBody.Regions.Region.Zones.Zone()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.zone = tmp
                    }
                }
            }
            public var localName: String?

            public var regionEndpoint: String?

            public var regionId: String?

            public var zones: DescribeRegionsResponseBody.Regions.Region.Zones?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.zones?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zones != nil {
                    map["Zones"] = self.zones?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Zones") && dict["Zones"] != nil {
                    var model = DescribeRegionsResponseBody.Regions.Region.Zones()
                    model.fromMap(dict["Zones"] as! [String: Any])
                    self.zones = model
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLPatternsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var keyword: String?

    public var lang: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSQLPatternsResponseBody : Tea.TeaModel {
    public class PatternDetails : Tea.TeaModel {
        public var accessIp: String?

        public var averageExecutionTime: Double?

        public var averagePeakMemory: Double?

        public var averageQueryTime: Double?

        public var averageScanSize: Double?

        public var blockable: Bool?

        public var failedCount: Int64?

        public var maxExecutionTime: Int64?

        public var maxPeakMemory: Int64?

        public var maxQueryTime: Int64?

        public var maxScanSize: Int64?

        public var patternCreationTime: String?

        public var patternId: String?

        public var queryCount: Int64?

        public var SQLPattern: String?

        public var tables: String?

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
            if self.accessIp != nil {
                map["AccessIp"] = self.accessIp!
            }
            if self.averageExecutionTime != nil {
                map["AverageExecutionTime"] = self.averageExecutionTime!
            }
            if self.averagePeakMemory != nil {
                map["AveragePeakMemory"] = self.averagePeakMemory!
            }
            if self.averageQueryTime != nil {
                map["AverageQueryTime"] = self.averageQueryTime!
            }
            if self.averageScanSize != nil {
                map["AverageScanSize"] = self.averageScanSize!
            }
            if self.blockable != nil {
                map["Blockable"] = self.blockable!
            }
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.maxExecutionTime != nil {
                map["MaxExecutionTime"] = self.maxExecutionTime!
            }
            if self.maxPeakMemory != nil {
                map["MaxPeakMemory"] = self.maxPeakMemory!
            }
            if self.maxQueryTime != nil {
                map["MaxQueryTime"] = self.maxQueryTime!
            }
            if self.maxScanSize != nil {
                map["MaxScanSize"] = self.maxScanSize!
            }
            if self.patternCreationTime != nil {
                map["PatternCreationTime"] = self.patternCreationTime!
            }
            if self.patternId != nil {
                map["PatternId"] = self.patternId!
            }
            if self.queryCount != nil {
                map["QueryCount"] = self.queryCount!
            }
            if self.SQLPattern != nil {
                map["SQLPattern"] = self.SQLPattern!
            }
            if self.tables != nil {
                map["Tables"] = self.tables!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessIp") && dict["AccessIp"] != nil {
                self.accessIp = dict["AccessIp"] as! String
            }
            if dict.keys.contains("AverageExecutionTime") && dict["AverageExecutionTime"] != nil {
                self.averageExecutionTime = dict["AverageExecutionTime"] as! Double
            }
            if dict.keys.contains("AveragePeakMemory") && dict["AveragePeakMemory"] != nil {
                self.averagePeakMemory = dict["AveragePeakMemory"] as! Double
            }
            if dict.keys.contains("AverageQueryTime") && dict["AverageQueryTime"] != nil {
                self.averageQueryTime = dict["AverageQueryTime"] as! Double
            }
            if dict.keys.contains("AverageScanSize") && dict["AverageScanSize"] != nil {
                self.averageScanSize = dict["AverageScanSize"] as! Double
            }
            if dict.keys.contains("Blockable") && dict["Blockable"] != nil {
                self.blockable = dict["Blockable"] as! Bool
            }
            if dict.keys.contains("FailedCount") && dict["FailedCount"] != nil {
                self.failedCount = dict["FailedCount"] as! Int64
            }
            if dict.keys.contains("MaxExecutionTime") && dict["MaxExecutionTime"] != nil {
                self.maxExecutionTime = dict["MaxExecutionTime"] as! Int64
            }
            if dict.keys.contains("MaxPeakMemory") && dict["MaxPeakMemory"] != nil {
                self.maxPeakMemory = dict["MaxPeakMemory"] as! Int64
            }
            if dict.keys.contains("MaxQueryTime") && dict["MaxQueryTime"] != nil {
                self.maxQueryTime = dict["MaxQueryTime"] as! Int64
            }
            if dict.keys.contains("MaxScanSize") && dict["MaxScanSize"] != nil {
                self.maxScanSize = dict["MaxScanSize"] as! Int64
            }
            if dict.keys.contains("PatternCreationTime") && dict["PatternCreationTime"] != nil {
                self.patternCreationTime = dict["PatternCreationTime"] as! String
            }
            if dict.keys.contains("PatternId") && dict["PatternId"] != nil {
                self.patternId = dict["PatternId"] as! String
            }
            if dict.keys.contains("QueryCount") && dict["QueryCount"] != nil {
                self.queryCount = dict["QueryCount"] as! Int64
            }
            if dict.keys.contains("SQLPattern") && dict["SQLPattern"] != nil {
                self.SQLPattern = dict["SQLPattern"] as! String
            }
            if dict.keys.contains("Tables") && dict["Tables"] != nil {
                self.tables = dict["Tables"] as! String
            }
            if dict.keys.contains("User") && dict["User"] != nil {
                self.user = dict["User"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var patternDetails: [DescribeSQLPatternsResponseBody.PatternDetails]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.patternDetails != nil {
            var tmp : [Any] = []
            for k in self.patternDetails! {
                tmp.append(k.toMap())
            }
            map["PatternDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PatternDetails") && dict["PatternDetails"] != nil {
            var tmp : [DescribeSQLPatternsResponseBody.PatternDetails] = []
            for v in dict["PatternDetails"] as! [Any] {
                var model = DescribeSQLPatternsResponseBody.PatternDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.patternDetails = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSQLPatternsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLPatternsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSQLPatternsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSchemasRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeSchemasResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
                    self.schemaName = dict["SchemaName"] as! String
                }
            }
        }
        public var schema: [DescribeSchemasResponseBody.Items.Schema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schema != nil {
                var tmp : [Any] = []
                for k in self.schema! {
                    tmp.append(k.toMap())
                }
                map["Schema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Schema") && dict["Schema"] != nil {
                var tmp : [DescribeSchemasResponseBody.Items.Schema] = []
                for v in dict["Schema"] as! [Any] {
                    var model = DescribeSchemasResponseBody.Items.Schema()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.schema = tmp
            }
        }
    }
    public var items: DescribeSchemasResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeSchemasResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSchemasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSparkCodeLogRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var jobId: Int64?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeSparkCodeLogResponseBody : Tea.TeaModel {
    public var log: String?

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
        if self.log != nil {
            map["Log"] = self.log!
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
        if dict.keys.contains("Log") && dict["Log"] != nil {
            self.log = dict["Log"] as! String
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

public class DescribeSparkCodeLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSparkCodeLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSparkCodeLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSparkCodeOutputRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var jobId: Int64?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeSparkCodeOutputResponseBody : Tea.TeaModel {
    public var message: String?

    public var output: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.output != nil {
            map["Output"] = self.output!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Output") && dict["Output"] != nil {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeSparkCodeOutputResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSparkCodeOutputResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSparkCodeOutputResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSparkCodeWebUiRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var jobId: Int64?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeSparkCodeWebUiResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class DescribeSparkCodeWebUiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSparkCodeWebUiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSparkCodeWebUiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSqlPatternRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sqlPattern: String?

    public var startTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sqlPattern != nil {
            map["SqlPattern"] = self.sqlPattern!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SqlPattern") && dict["SqlPattern"] != nil {
            self.sqlPattern = dict["SqlPattern"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeSqlPatternResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accessIP: String?

        public var avgCpuTime: String?

        public var avgPeakMemory: String?

        public var avgScanSize: String?

        public var avgStageCount: String?

        public var avgTaskCount: String?

        public var instanceName: String?

        public var maxCpuTime: String?

        public var maxPeakMemory: String?

        public var maxScanSize: String?

        public var maxStageCount: String?

        public var maxTaskCount: String?

        public var pattern: String?

        public var queryCount: String?

        public var reportDate: String?

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
            if self.accessIP != nil {
                map["AccessIP"] = self.accessIP!
            }
            if self.avgCpuTime != nil {
                map["AvgCpuTime"] = self.avgCpuTime!
            }
            if self.avgPeakMemory != nil {
                map["AvgPeakMemory"] = self.avgPeakMemory!
            }
            if self.avgScanSize != nil {
                map["AvgScanSize"] = self.avgScanSize!
            }
            if self.avgStageCount != nil {
                map["AvgStageCount"] = self.avgStageCount!
            }
            if self.avgTaskCount != nil {
                map["AvgTaskCount"] = self.avgTaskCount!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxPeakMemory != nil {
                map["MaxPeakMemory"] = self.maxPeakMemory!
            }
            if self.maxScanSize != nil {
                map["MaxScanSize"] = self.maxScanSize!
            }
            if self.maxStageCount != nil {
                map["MaxStageCount"] = self.maxStageCount!
            }
            if self.maxTaskCount != nil {
                map["MaxTaskCount"] = self.maxTaskCount!
            }
            if self.pattern != nil {
                map["Pattern"] = self.pattern!
            }
            if self.queryCount != nil {
                map["QueryCount"] = self.queryCount!
            }
            if self.reportDate != nil {
                map["ReportDate"] = self.reportDate!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessIP") && dict["AccessIP"] != nil {
                self.accessIP = dict["AccessIP"] as! String
            }
            if dict.keys.contains("AvgCpuTime") && dict["AvgCpuTime"] != nil {
                self.avgCpuTime = dict["AvgCpuTime"] as! String
            }
            if dict.keys.contains("AvgPeakMemory") && dict["AvgPeakMemory"] != nil {
                self.avgPeakMemory = dict["AvgPeakMemory"] as! String
            }
            if dict.keys.contains("AvgScanSize") && dict["AvgScanSize"] != nil {
                self.avgScanSize = dict["AvgScanSize"] as! String
            }
            if dict.keys.contains("AvgStageCount") && dict["AvgStageCount"] != nil {
                self.avgStageCount = dict["AvgStageCount"] as! String
            }
            if dict.keys.contains("AvgTaskCount") && dict["AvgTaskCount"] != nil {
                self.avgTaskCount = dict["AvgTaskCount"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("MaxCpuTime") && dict["MaxCpuTime"] != nil {
                self.maxCpuTime = dict["MaxCpuTime"] as! String
            }
            if dict.keys.contains("MaxPeakMemory") && dict["MaxPeakMemory"] != nil {
                self.maxPeakMemory = dict["MaxPeakMemory"] as! String
            }
            if dict.keys.contains("MaxScanSize") && dict["MaxScanSize"] != nil {
                self.maxScanSize = dict["MaxScanSize"] as! String
            }
            if dict.keys.contains("MaxStageCount") && dict["MaxStageCount"] != nil {
                self.maxStageCount = dict["MaxStageCount"] as! String
            }
            if dict.keys.contains("MaxTaskCount") && dict["MaxTaskCount"] != nil {
                self.maxTaskCount = dict["MaxTaskCount"] as! String
            }
            if dict.keys.contains("Pattern") && dict["Pattern"] != nil {
                self.pattern = dict["Pattern"] as! String
            }
            if dict.keys.contains("QueryCount") && dict["QueryCount"] != nil {
                self.queryCount = dict["QueryCount"] as! String
            }
            if dict.keys.contains("ReportDate") && dict["ReportDate"] != nil {
                self.reportDate = dict["ReportDate"] as! String
            }
            if dict.keys.contains("User") && dict["User"] != nil {
                self.user = dict["User"] as! String
            }
        }
    }
    public var items: [DescribeSqlPatternResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeSqlPatternResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeSqlPatternResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSqlPatternResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSqlPatternResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSqlPatternResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStorageResourceUsageRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeStorageResourceUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AcuInfo : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Values") && dict["Values"] != nil {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var acuInfo: [DescribeStorageResourceUsageResponseBody.Data.AcuInfo]?

        public var DBClusterId: String?

        public var endTime: String?

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
            if self.acuInfo != nil {
                var tmp : [Any] = []
                for k in self.acuInfo! {
                    tmp.append(k.toMap())
                }
                map["AcuInfo"] = tmp
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcuInfo") && dict["AcuInfo"] != nil {
                var tmp : [DescribeStorageResourceUsageResponseBody.Data.AcuInfo] = []
                for v in dict["AcuInfo"] as! [Any] {
                    var model = DescribeStorageResourceUsageResponseBody.Data.AcuInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.acuInfo = tmp
            }
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeStorageResourceUsageResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeStorageResourceUsageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeStorageResourceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStorageResourceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeStorageResourceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTableAccessCountRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeTableAccessCountResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accessCount: String?

        public var instanceName: String?

        public var reportDate: String?

        public var tableName: String?

        public var tableSchema: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessCount != nil {
                map["AccessCount"] = self.accessCount!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.reportDate != nil {
                map["ReportDate"] = self.reportDate!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.tableSchema != nil {
                map["TableSchema"] = self.tableSchema!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessCount") && dict["AccessCount"] != nil {
                self.accessCount = dict["AccessCount"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("ReportDate") && dict["ReportDate"] != nil {
                self.reportDate = dict["ReportDate"] as! String
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("TableSchema") && dict["TableSchema"] != nil {
                self.tableSchema = dict["TableSchema"] as! String
            }
        }
    }
    public var items: [DescribeTableAccessCountResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeTableAccessCountResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeTableAccessCountResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTableAccessCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTableAccessCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTableAccessCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTablesRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var schemaName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
    }
}

public class DescribeTablesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Table : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var table: [DescribeTablesResponseBody.Items.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["Table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Table") && dict["Table"] != nil {
                var tmp : [DescribeTablesResponseBody.Items.Table] = []
                for v in dict["Table"] as! [Any] {
                    var model = DescribeTablesResponseBody.Items.Table()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.table = tmp
            }
        }
    }
    public var items: DescribeTablesResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeTablesResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserQuotaRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeUserQuotaResponseBody : Tea.TeaModel {
    public var elasticACU: String?

    public var requestId: String?

    public var reserverdCompteACU: String?

    public var reserverdStorageACU: String?

    public var resourceGroupCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticACU != nil {
            map["ElasticACU"] = self.elasticACU!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.reserverdCompteACU != nil {
            map["ReserverdCompteACU"] = self.reserverdCompteACU!
        }
        if self.reserverdStorageACU != nil {
            map["ReserverdStorageACU"] = self.reserverdStorageACU!
        }
        if self.resourceGroupCount != nil {
            map["ResourceGroupCount"] = self.resourceGroupCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ElasticACU") && dict["ElasticACU"] != nil {
            self.elasticACU = dict["ElasticACU"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReserverdCompteACU") && dict["ReserverdCompteACU"] != nil {
            self.reserverdCompteACU = dict["ReserverdCompteACU"] as! String
        }
        if dict.keys.contains("ReserverdStorageACU") && dict["ReserverdStorageACU"] != nil {
            self.reserverdStorageACU = dict["ReserverdStorageACU"] as! String
        }
        if dict.keys.contains("ResourceGroupCount") && dict["ResourceGroupCount"] != nil {
            self.resourceGroupCount = dict["ResourceGroupCount"] as! String
        }
    }
}

public class DescribeUserQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeUserQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachUserENIRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class DetachUserENIResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetachUserENIResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachUserENIResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachUserENIResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableElasticPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
    }
}

public class DisableElasticPlanResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisableElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableElasticPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DownloadDiagnosisRecordsRequest : Tea.TeaModel {
    public var clientIp: String?

    public var DBClusterId: String?

    public var database: String?

    public var endTime: String?

    public var keyword: String?

    public var lang: String?

    public var maxPeakMemory: Int64?

    public var maxScanSize: Int64?

    public var minPeakMemory: Int64?

    public var minScanSize: Int64?

    public var queryCondition: String?

    public var regionId: String?

    public var resourceGroup: String?

    public var startTime: String?

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
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxPeakMemory != nil {
            map["MaxPeakMemory"] = self.maxPeakMemory!
        }
        if self.maxScanSize != nil {
            map["MaxScanSize"] = self.maxScanSize!
        }
        if self.minPeakMemory != nil {
            map["MinPeakMemory"] = self.minPeakMemory!
        }
        if self.minScanSize != nil {
            map["MinScanSize"] = self.minScanSize!
        }
        if self.queryCondition != nil {
            map["QueryCondition"] = self.queryCondition!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Database") && dict["Database"] != nil {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MaxPeakMemory") && dict["MaxPeakMemory"] != nil {
            self.maxPeakMemory = dict["MaxPeakMemory"] as! Int64
        }
        if dict.keys.contains("MaxScanSize") && dict["MaxScanSize"] != nil {
            self.maxScanSize = dict["MaxScanSize"] as! Int64
        }
        if dict.keys.contains("MinPeakMemory") && dict["MinPeakMemory"] != nil {
            self.minPeakMemory = dict["MinPeakMemory"] as! Int64
        }
        if dict.keys.contains("MinScanSize") && dict["MinScanSize"] != nil {
            self.minScanSize = dict["MinScanSize"] as! Int64
        }
        if dict.keys.contains("QueryCondition") && dict["QueryCondition"] != nil {
            self.queryCondition = dict["QueryCondition"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroup") && dict["ResourceGroup"] != nil {
            self.resourceGroup = dict["ResourceGroup"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DownloadDiagnosisRecordsResponseBody : Tea.TeaModel {
    public var downloadId: Int32?

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
        if self.downloadId != nil {
            map["DownloadId"] = self.downloadId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadId") && dict["DownloadId"] != nil {
            self.downloadId = dict["DownloadId"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DownloadDiagnosisRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadDiagnosisRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DownloadDiagnosisRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableElasticPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
    }
}

public class EnableElasticPlanResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnableElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableElasticPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExistRunningSQLEngineRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var resourceGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
    }
}

public class ExistRunningSQLEngineResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExistRunningSQLEngineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExistRunningSQLEngineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExistRunningSQLEngineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDatabaseObjectsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var filterOwner: String?

    public var filterSchemaName: String?

    public var orderBy: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.filterOwner != nil {
            map["FilterOwner"] = self.filterOwner!
        }
        if self.filterSchemaName != nil {
            map["FilterSchemaName"] = self.filterSchemaName!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("FilterOwner") && dict["FilterOwner"] != nil {
            self.filterOwner = dict["FilterOwner"] as! String
        }
        if dict.keys.contains("FilterSchemaName") && dict["FilterSchemaName"] != nil {
            self.filterSchemaName = dict["FilterSchemaName"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetDatabaseObjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var databaseSummaryModels: [DatabaseSummaryModel]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.databaseSummaryModels != nil {
                var tmp : [Any] = []
                for k in self.databaseSummaryModels! {
                    tmp.append(k.toMap())
                }
                map["DatabaseSummaryModels"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseSummaryModels") && dict["DatabaseSummaryModels"] != nil {
                var tmp : [DatabaseSummaryModel] = []
                for v in dict["DatabaseSummaryModels"] as! [Any] {
                    var model = DatabaseSummaryModel()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databaseSummaryModels = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: GetDatabaseObjectsResponseBody.Data?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

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
            map["Data"] = self.data?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDatabaseObjectsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class GetDatabaseObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatabaseObjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatabaseObjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkAppAttemptLogRequest : Tea.TeaModel {
    public var attemptId: String?

    public var logLength: Int64?

    public var pageNumber: Int32?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attemptId != nil {
            map["AttemptId"] = self.attemptId!
        }
        if self.logLength != nil {
            map["LogLength"] = self.logLength!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttemptId") && dict["AttemptId"] != nil {
            self.attemptId = dict["AttemptId"] as! String
        }
        if dict.keys.contains("LogLength") && dict["LogLength"] != nil {
            self.logLength = dict["LogLength"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class GetSparkAppAttemptLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var DBClusterId: String?

        public var logContent: String?

        public var logSize: Int32?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.logContent != nil {
                map["LogContent"] = self.logContent!
            }
            if self.logSize != nil {
                map["LogSize"] = self.logSize!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("LogContent") && dict["LogContent"] != nil {
                self.logContent = dict["LogContent"] as! String
            }
            if dict.keys.contains("LogSize") && dict["LogSize"] != nil {
                self.logSize = dict["LogSize"] as! Int32
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var data: GetSparkAppAttemptLogResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSparkAppAttemptLogResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkAppAttemptLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkAppAttemptLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkAppAttemptLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkAppInfoRequest : Tea.TeaModel {
    public var appId: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class GetSparkAppInfoResponseBody : Tea.TeaModel {
    public var data: SparkAppInfo?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SparkAppInfo()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkAppInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkAppInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkAppInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkAppLogRequest : Tea.TeaModel {
    public var appId: String?

    public var DBClusterId: String?

    public var logLength: Int64?

    public var pageNumber: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.logLength != nil {
            map["LogLength"] = self.logLength!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("LogLength") && dict["LogLength"] != nil {
            self.logLength = dict["LogLength"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class GetSparkAppLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBClusterId: String?

        public var logContent: String?

        public var logSize: Int32?

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
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.logContent != nil {
                map["LogContent"] = self.logContent!
            }
            if self.logSize != nil {
                map["LogSize"] = self.logSize!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("LogContent") && dict["LogContent"] != nil {
                self.logContent = dict["LogContent"] as! String
            }
            if dict.keys.contains("LogSize") && dict["LogSize"] != nil {
                self.logSize = dict["LogSize"] as! Int32
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var data: GetSparkAppLogResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSparkAppLogResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkAppLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkAppLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkAppLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkAppMetricsRequest : Tea.TeaModel {
    public var appId: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class GetSparkAppMetricsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScanMetrics : Tea.TeaModel {
            public var outputRowsCount: Int64?

            public var totalReadFileSizeInByte: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outputRowsCount != nil {
                    map["OutputRowsCount"] = self.outputRowsCount!
                }
                if self.totalReadFileSizeInByte != nil {
                    map["TotalReadFileSizeInByte"] = self.totalReadFileSizeInByte!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OutputRowsCount") && dict["OutputRowsCount"] != nil {
                    self.outputRowsCount = dict["OutputRowsCount"] as! Int64
                }
                if dict.keys.contains("TotalReadFileSizeInByte") && dict["TotalReadFileSizeInByte"] != nil {
                    self.totalReadFileSizeInByte = dict["TotalReadFileSizeInByte"] as! Int64
                }
            }
        }
        public var appId: String?

        public var attemptId: String?

        public var eventLogPath: String?

        public var finished: Bool?

        public var scanMetrics: GetSparkAppMetricsResponseBody.Data.ScanMetrics?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scanMetrics?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.attemptId != nil {
                map["AttemptId"] = self.attemptId!
            }
            if self.eventLogPath != nil {
                map["EventLogPath"] = self.eventLogPath!
            }
            if self.finished != nil {
                map["Finished"] = self.finished!
            }
            if self.scanMetrics != nil {
                map["ScanMetrics"] = self.scanMetrics?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AttemptId") && dict["AttemptId"] != nil {
                self.attemptId = dict["AttemptId"] as! String
            }
            if dict.keys.contains("EventLogPath") && dict["EventLogPath"] != nil {
                self.eventLogPath = dict["EventLogPath"] as! String
            }
            if dict.keys.contains("Finished") && dict["Finished"] != nil {
                self.finished = dict["Finished"] as! Bool
            }
            if dict.keys.contains("ScanMetrics") && dict["ScanMetrics"] != nil {
                var model = GetSparkAppMetricsResponseBody.Data.ScanMetrics()
                model.fromMap(dict["ScanMetrics"] as! [String: Any])
                self.scanMetrics = model
            }
        }
    }
    public var data: GetSparkAppMetricsResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSparkAppMetricsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkAppMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkAppMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkAppMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkAppStateRequest : Tea.TeaModel {
    public var appId: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class GetSparkAppStateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var DBClusterId: String?

        public var message: String?

        public var state: String?

        public override init() {
            super.init()
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
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
        }
    }
    public var data: GetSparkAppStateResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSparkAppStateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkAppStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkAppStateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkAppStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkAppWebUiAddressRequest : Tea.TeaModel {
    public var appId: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class GetSparkAppWebUiAddressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var DBClusterId: String?

        public var expirationTimeInMillis: Int64?

        public var webUiAddress: String?

        public override init() {
            super.init()
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
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.expirationTimeInMillis != nil {
                map["ExpirationTimeInMillis"] = self.expirationTimeInMillis!
            }
            if self.webUiAddress != nil {
                map["WebUiAddress"] = self.webUiAddress!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("ExpirationTimeInMillis") && dict["ExpirationTimeInMillis"] != nil {
                self.expirationTimeInMillis = dict["ExpirationTimeInMillis"] as! Int64
            }
            if dict.keys.contains("WebUiAddress") && dict["WebUiAddress"] != nil {
                self.webUiAddress = dict["WebUiAddress"] as! String
            }
        }
    }
    public var data: GetSparkAppWebUiAddressResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSparkAppWebUiAddressResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkAppWebUiAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkAppWebUiAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkAppWebUiAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkConfigLogPathRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class GetSparkConfigLogPathResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var defaultLogPath: String?

        public var isLogPathExists: Bool?

        public var modifiedTimestamp: String?

        public var modifiedUid: String?

        public var recordedLogPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultLogPath != nil {
                map["DefaultLogPath"] = self.defaultLogPath!
            }
            if self.isLogPathExists != nil {
                map["IsLogPathExists"] = self.isLogPathExists!
            }
            if self.modifiedTimestamp != nil {
                map["ModifiedTimestamp"] = self.modifiedTimestamp!
            }
            if self.modifiedUid != nil {
                map["ModifiedUid"] = self.modifiedUid!
            }
            if self.recordedLogPath != nil {
                map["RecordedLogPath"] = self.recordedLogPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultLogPath") && dict["DefaultLogPath"] != nil {
                self.defaultLogPath = dict["DefaultLogPath"] as! String
            }
            if dict.keys.contains("IsLogPathExists") && dict["IsLogPathExists"] != nil {
                self.isLogPathExists = dict["IsLogPathExists"] as! Bool
            }
            if dict.keys.contains("ModifiedTimestamp") && dict["ModifiedTimestamp"] != nil {
                self.modifiedTimestamp = dict["ModifiedTimestamp"] as! String
            }
            if dict.keys.contains("ModifiedUid") && dict["ModifiedUid"] != nil {
                self.modifiedUid = dict["ModifiedUid"] as! String
            }
            if dict.keys.contains("RecordedLogPath") && dict["RecordedLogPath"] != nil {
                self.recordedLogPath = dict["RecordedLogPath"] as! String
            }
        }
    }
    public var data: GetSparkConfigLogPathResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSparkConfigLogPathResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkConfigLogPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkConfigLogPathResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkConfigLogPathResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkDefinitionsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class GetSparkDefinitionsResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkDefinitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkDefinitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkDefinitionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkLogAnalyzeTaskRequest : Tea.TeaModel {
    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class GetSparkLogAnalyzeTaskResponseBody : Tea.TeaModel {
    public var data: SparkAnalyzeLogTask?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SparkAnalyzeLogTask()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkLogAnalyzeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkLogAnalyzeTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkLogAnalyzeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkSQLEngineStateRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var resourceGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
    }
}

public class GetSparkSQLEngineStateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var config: String?

        public var jars: String?

        public var maxExecutor: String?

        public var minExecutor: String?

        public var slotNum: String?

        public var state: String?

        public var submittedTimeInMillis: String?

        public override init() {
            super.init()
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
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.jars != nil {
                map["Jars"] = self.jars!
            }
            if self.maxExecutor != nil {
                map["MaxExecutor"] = self.maxExecutor!
            }
            if self.minExecutor != nil {
                map["MinExecutor"] = self.minExecutor!
            }
            if self.slotNum != nil {
                map["SlotNum"] = self.slotNum!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.submittedTimeInMillis != nil {
                map["SubmittedTimeInMillis"] = self.submittedTimeInMillis!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("Jars") && dict["Jars"] != nil {
                self.jars = dict["Jars"] as! String
            }
            if dict.keys.contains("MaxExecutor") && dict["MaxExecutor"] != nil {
                self.maxExecutor = dict["MaxExecutor"] as! String
            }
            if dict.keys.contains("MinExecutor") && dict["MinExecutor"] != nil {
                self.minExecutor = dict["MinExecutor"] as! String
            }
            if dict.keys.contains("SlotNum") && dict["SlotNum"] != nil {
                self.slotNum = dict["SlotNum"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("SubmittedTimeInMillis") && dict["SubmittedTimeInMillis"] != nil {
                self.submittedTimeInMillis = dict["SubmittedTimeInMillis"] as! String
            }
        }
    }
    public var data: GetSparkSQLEngineStateResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSparkSQLEngineStateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkSQLEngineStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkSQLEngineStateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkSQLEngineStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkTemplateFileContentRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetSparkTemplateFileContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appType: String?

        public var content: String?

        public var id: Int64?

        public var resourceGroupName: String?

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
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.resourceGroupName != nil {
                map["ResourceGroupName"] = self.resourceGroupName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppType") && dict["AppType"] != nil {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
                self.resourceGroupName = dict["ResourceGroupName"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var data: GetSparkTemplateFileContentResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSparkTemplateFileContentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkTemplateFileContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkTemplateFileContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkTemplateFileContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkTemplateFolderTreeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class GetSparkTemplateFolderTreeResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkTemplateFolderTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkTemplateFolderTreeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkTemplateFolderTreeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSparkTemplateFullTreeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class GetSparkTemplateFullTreeResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSparkTemplateFullTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSparkTemplateFullTreeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSparkTemplateFullTreeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTableRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var dbName: String?

    public var regionId: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class GetTableResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var table: TableModel?

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
        if self.table != nil {
            map["Table"] = self.table?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
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
        if dict.keys.contains("Table") && dict["Table"] != nil {
            var model = TableModel()
            model.fromMap(dict["Table"] as! [String: Any])
            self.table = model
        }
    }
}

public class GetTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTableColumnsRequest : Tea.TeaModel {
    public var columnName: String?

    public var DBClusterId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var schemaName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnName != nil {
            map["ColumnName"] = self.columnName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ColumnName") && dict["ColumnName"] != nil {
            self.columnName = dict["ColumnName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class GetTableColumnsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var table: TableDetailModel?

        public var totalCount: Int64?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.table != nil {
                map["Table"] = self.table?.toMap()
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Table") && dict["Table"] != nil {
                var model = TableDetailModel()
                model.fromMap(dict["Table"] as! [String: Any])
                self.table = model
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: GetTableColumnsResponseBody.Data?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

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
            map["Data"] = self.data?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetTableColumnsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class GetTableColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableColumnsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableColumnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTableDDLRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var schemaName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class GetTableDDLResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var SQL: String?

    public override init() {
        super.init()
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
        if self.SQL != nil {
            map["SQL"] = self.SQL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQL") && dict["SQL"] != nil {
            self.SQL = dict["SQL"] as! String
        }
    }
}

public class GetTableDDLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableDDLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableDDLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTableObjectsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var filterDescription: String?

    public var filterOwner: String?

    public var filterTblName: String?

    public var filterTblType: String?

    public var orderBy: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var schemaName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.filterDescription != nil {
            map["FilterDescription"] = self.filterDescription!
        }
        if self.filterOwner != nil {
            map["FilterOwner"] = self.filterOwner!
        }
        if self.filterTblName != nil {
            map["FilterTblName"] = self.filterTblName!
        }
        if self.filterTblType != nil {
            map["FilterTblType"] = self.filterTblType!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("FilterDescription") && dict["FilterDescription"] != nil {
            self.filterDescription = dict["FilterDescription"] as! String
        }
        if dict.keys.contains("FilterOwner") && dict["FilterOwner"] != nil {
            self.filterOwner = dict["FilterOwner"] as! String
        }
        if dict.keys.contains("FilterTblName") && dict["FilterTblName"] != nil {
            self.filterTblName = dict["FilterTblName"] as! String
        }
        if dict.keys.contains("FilterTblType") && dict["FilterTblType"] != nil {
            self.filterTblType = dict["FilterTblType"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
    }
}

public class GetTableObjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var tableSummaryModels: [TableSummaryModel]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.tableSummaryModels != nil {
                var tmp : [Any] = []
                for k in self.tableSummaryModels! {
                    tmp.append(k.toMap())
                }
                map["TableSummaryModels"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TableSummaryModels") && dict["TableSummaryModels"] != nil {
                var tmp : [TableSummaryModel] = []
                for v in dict["TableSummaryModels"] as! [Any] {
                    var model = TableSummaryModel()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tableSummaryModels = tmp
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: GetTableObjectsResponseBody.Data?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

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
            map["Data"] = self.data?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetTableObjectsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class GetTableObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableObjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableObjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetViewDDLRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var schemaName: String?

    public var viewName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.viewName != nil {
            map["ViewName"] = self.viewName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("ViewName") && dict["ViewName"] != nil {
            self.viewName = dict["ViewName"] as! String
        }
    }
}

public class GetViewDDLResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var SQL: String?

    public override init() {
        super.init()
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
        if self.SQL != nil {
            map["SQL"] = self.SQL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQL") && dict["SQL"] != nil {
            self.SQL = dict["SQL"] as! String
        }
    }
}

public class GetViewDDLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetViewDDLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetViewDDLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetViewObjectsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var filterOwner: String?

    public var filterViewName: String?

    public var filterViewType: String?

    public var orderBy: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var schemaName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.filterOwner != nil {
            map["FilterOwner"] = self.filterOwner!
        }
        if self.filterViewName != nil {
            map["FilterViewName"] = self.filterViewName!
        }
        if self.filterViewType != nil {
            map["FilterViewType"] = self.filterViewType!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("FilterOwner") && dict["FilterOwner"] != nil {
            self.filterOwner = dict["FilterOwner"] as! String
        }
        if dict.keys.contains("FilterViewName") && dict["FilterViewName"] != nil {
            self.filterViewName = dict["FilterViewName"] as! String
        }
        if dict.keys.contains("FilterViewType") && dict["FilterViewType"] != nil {
            self.filterViewType = dict["FilterViewType"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
            self.schemaName = dict["SchemaName"] as! String
        }
    }
}

public class GetViewObjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var tableSummaryModels: [TableSummaryModel]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.tableSummaryModels != nil {
                var tmp : [Any] = []
                for k in self.tableSummaryModels! {
                    tmp.append(k.toMap())
                }
                map["TableSummaryModels"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TableSummaryModels") && dict["TableSummaryModels"] != nil {
                var tmp : [TableSummaryModel] = []
                for v in dict["TableSummaryModels"] as! [Any] {
                    var model = TableSummaryModel()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tableSummaryModels = tmp
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: GetViewObjectsResponseBody.Data?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

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
            map["Data"] = self.data?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetViewObjectsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class GetViewObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetViewObjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetViewObjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillSparkAppRequest : Tea.TeaModel {
    public var appId: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class KillSparkAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var DBClusterId: String?

        public var message: String?

        public var state: String?

        public override init() {
            super.init()
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
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
        }
    }
    public var data: KillSparkAppResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = KillSparkAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KillSparkAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillSparkAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = KillSparkAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillSparkLogAnalyzeTaskRequest : Tea.TeaModel {
    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class KillSparkLogAnalyzeTaskResponseBody : Tea.TeaModel {
    public var data: SparkAnalyzeLogTask?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SparkAnalyzeLogTask()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KillSparkLogAnalyzeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillSparkLogAnalyzeTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = KillSparkLogAnalyzeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillSparkSQLEngineRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var resourceGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
    }
}

public class KillSparkSQLEngineResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KillSparkSQLEngineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillSparkSQLEngineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = KillSparkSQLEngineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSparkAppAttemptsRequest : Tea.TeaModel {
    public var appId: String?

    public var DBClusterId: String?

    public var pageNumber: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListSparkAppAttemptsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var attemptInfoList: [SparkAttemptInfo]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.attemptInfoList != nil {
                var tmp : [Any] = []
                for k in self.attemptInfoList! {
                    tmp.append(k.toMap())
                }
                map["AttemptInfoList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttemptInfoList") && dict["AttemptInfoList"] != nil {
                var tmp : [SparkAttemptInfo] = []
                for v in dict["AttemptInfoList"] as! [Any] {
                    var model = SparkAttemptInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attemptInfoList = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListSparkAppAttemptsResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListSparkAppAttemptsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListSparkAppAttemptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSparkAppAttemptsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSparkAppAttemptsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSparkAppsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
    }
}

public class ListSparkAppsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appInfoList: [SparkAppInfo]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.appInfoList != nil {
                var tmp : [Any] = []
                for k in self.appInfoList! {
                    tmp.append(k.toMap())
                }
                map["AppInfoList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInfoList") && dict["AppInfoList"] != nil {
                var tmp : [SparkAppInfo] = []
                for v in dict["AppInfoList"] as! [Any] {
                    var model = SparkAppInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appInfoList = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListSparkAppsResponseBody.Data?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

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
            map["Data"] = self.data?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListSparkAppsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListSparkAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSparkAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSparkAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSparkLogAnalyzeTasksRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var pageNumber: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListSparkLogAnalyzeTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var taskList: [SparkAnalyzeLogTask]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.taskList != nil {
                var tmp : [Any] = []
                for k in self.taskList! {
                    tmp.append(k.toMap())
                }
                map["TaskList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TaskList") && dict["TaskList"] != nil {
                var tmp : [SparkAnalyzeLogTask] = []
                for v in dict["TaskList"] as! [Any] {
                    var model = SparkAnalyzeLogTask()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskList = tmp
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListSparkLogAnalyzeTasksResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListSparkLogAnalyzeTasksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListSparkLogAnalyzeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSparkLogAnalyzeTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSparkLogAnalyzeTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSparkTemplateFileIdsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class ListSparkTemplateFileIdsResponseBody : Tea.TeaModel {
    public var data: [Int64]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [Int64]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListSparkTemplateFileIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSparkTemplateFileIdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSparkTemplateFileIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LoadSampleDataSetRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class LoadSampleDataSetResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LoadSampleDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LoadSampleDataSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LoadSampleDataSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccountDescriptionRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDescription") && dict["AccountDescription"] != nil {
            self.accountDescription = dict["AccountDescription"] as! String
        }
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class ModifyAccountDescriptionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAccountDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccountDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccountPrivilegesRequest : Tea.TeaModel {
    public class AccountPrivileges : Tea.TeaModel {
        public class PrivilegeObject : Tea.TeaModel {
            public var column: String?

            public var database: String?

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
                if self.column != nil {
                    map["Column"] = self.column!
                }
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Column") && dict["Column"] != nil {
                    self.column = dict["Column"] as! String
                }
                if dict.keys.contains("Database") && dict["Database"] != nil {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("Table") && dict["Table"] != nil {
                    self.table = dict["Table"] as! String
                }
            }
        }
        public var privilegeObject: ModifyAccountPrivilegesRequest.AccountPrivileges.PrivilegeObject?

        public var privilegeType: String?

        public var privileges: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.privilegeObject?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.privilegeObject != nil {
                map["PrivilegeObject"] = self.privilegeObject?.toMap()
            }
            if self.privilegeType != nil {
                map["PrivilegeType"] = self.privilegeType!
            }
            if self.privileges != nil {
                map["Privileges"] = self.privileges!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PrivilegeObject") && dict["PrivilegeObject"] != nil {
                var model = ModifyAccountPrivilegesRequest.AccountPrivileges.PrivilegeObject()
                model.fromMap(dict["PrivilegeObject"] as! [String: Any])
                self.privilegeObject = model
            }
            if dict.keys.contains("PrivilegeType") && dict["PrivilegeType"] != nil {
                self.privilegeType = dict["PrivilegeType"] as! String
            }
            if dict.keys.contains("Privileges") && dict["Privileges"] != nil {
                self.privileges = dict["Privileges"] as! [String]
            }
        }
    }
    public var accountName: String?

    public var accountPrivileges: [ModifyAccountPrivilegesRequest.AccountPrivileges]?

    public var DBClusterId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPrivileges != nil {
            var tmp : [Any] = []
            for k in self.accountPrivileges! {
                tmp.append(k.toMap())
            }
            map["AccountPrivileges"] = tmp
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPrivileges") && dict["AccountPrivileges"] != nil {
            var tmp : [ModifyAccountPrivilegesRequest.AccountPrivileges] = []
            for v in dict["AccountPrivileges"] as! [Any] {
                var model = ModifyAccountPrivilegesRequest.AccountPrivileges()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accountPrivileges = tmp
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyAccountPrivilegesShrinkRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPrivilegesShrink: String?

    public var DBClusterId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPrivilegesShrink != nil {
            map["AccountPrivileges"] = self.accountPrivilegesShrink!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPrivileges") && dict["AccountPrivileges"] != nil {
            self.accountPrivilegesShrink = dict["AccountPrivileges"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyAccountPrivilegesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAccountPrivilegesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountPrivilegesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccountPrivilegesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAuditLogConfigRequest : Tea.TeaModel {
    public var auditLogStatus: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditLogStatus != nil {
            map["AuditLogStatus"] = self.auditLogStatus!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditLogStatus") && dict["AuditLogStatus"] != nil {
            self.auditLogStatus = dict["AuditLogStatus"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyAuditLogConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var updateSucceed: Bool?

    public override init() {
        super.init()
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
        if self.updateSucceed != nil {
            map["UpdateSucceed"] = self.updateSucceed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpdateSucceed") && dict["UpdateSucceed"] != nil {
            self.updateSucceed = dict["UpdateSucceed"] as! Bool
        }
    }
}

public class ModifyAuditLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAuditLogConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAuditLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyBackupPolicyRequest : Tea.TeaModel {
    public var backupRetentionPeriod: String?

    public var DBClusterId: String?

    public var enableBackupLog: String?

    public var logBackupRetentionPeriod: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.enableBackupLog != nil {
            map["EnableBackupLog"] = self.enableBackupLog!
        }
        if self.logBackupRetentionPeriod != nil {
            map["LogBackupRetentionPeriod"] = self.logBackupRetentionPeriod!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetentionPeriod") && dict["BackupRetentionPeriod"] != nil {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EnableBackupLog") && dict["EnableBackupLog"] != nil {
            self.enableBackupLog = dict["EnableBackupLog"] as! String
        }
        if dict.keys.contains("LogBackupRetentionPeriod") && dict["LogBackupRetentionPeriod"] != nil {
            self.logBackupRetentionPeriod = dict["LogBackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyBackupPolicyResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterAccessWhiteListRequest : Tea.TeaModel {
    public var DBClusterIPArrayAttribute: String?

    public var DBClusterIPArrayName: String?

    public var DBClusterId: String?

    public var modifyMode: String?

    public var securityIps: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterIPArrayAttribute != nil {
            map["DBClusterIPArrayAttribute"] = self.DBClusterIPArrayAttribute!
        }
        if self.DBClusterIPArrayName != nil {
            map["DBClusterIPArrayName"] = self.DBClusterIPArrayName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterIPArrayAttribute") && dict["DBClusterIPArrayAttribute"] != nil {
            self.DBClusterIPArrayAttribute = dict["DBClusterIPArrayAttribute"] as! String
        }
        if dict.keys.contains("DBClusterIPArrayName") && dict["DBClusterIPArrayName"] != nil {
            self.DBClusterIPArrayName = dict["DBClusterIPArrayName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ModifyMode") && dict["ModifyMode"] != nil {
            self.modifyMode = dict["ModifyMode"] as! String
        }
        if dict.keys.contains("SecurityIps") && dict["SecurityIps"] != nil {
            self.securityIps = dict["SecurityIps"] as! String
        }
    }
}

public class ModifyClusterAccessWhiteListResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var requestId: String?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class ModifyClusterAccessWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterAccessWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyClusterAccessWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterConnectionStringRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var currentConnectionString: String?

    public var DBClusterId: String?

    public var port: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionStringPrefix != nil {
            map["ConnectionStringPrefix"] = self.connectionStringPrefix!
        }
        if self.currentConnectionString != nil {
            map["CurrentConnectionString"] = self.currentConnectionString!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionStringPrefix") && dict["ConnectionStringPrefix"] != nil {
            self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
        }
        if dict.keys.contains("CurrentConnectionString") && dict["CurrentConnectionString"] != nil {
            self.currentConnectionString = dict["CurrentConnectionString"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! Int32
        }
    }
}

public class ModifyClusterConnectionStringResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyClusterConnectionStringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterConnectionStringResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyClusterConnectionStringResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterRequest : Tea.TeaModel {
    public var computeResource: String?

    public var DBClusterId: String?

    public var enableDefaultResourcePool: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var storageResource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.computeResource != nil {
            map["ComputeResource"] = self.computeResource!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.enableDefaultResourcePool != nil {
            map["EnableDefaultResourcePool"] = self.enableDefaultResourcePool!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.storageResource != nil {
            map["StorageResource"] = self.storageResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComputeResource") && dict["ComputeResource"] != nil {
            self.computeResource = dict["ComputeResource"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EnableDefaultResourcePool") && dict["EnableDefaultResourcePool"] != nil {
            self.enableDefaultResourcePool = dict["EnableDefaultResourcePool"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("StorageResource") && dict["StorageResource"] != nil {
            self.storageResource = dict["StorageResource"] as! String
        }
    }
}

public class ModifyDBClusterResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var orderId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterDescriptionRequest : Tea.TeaModel {
    public var DBClusterDescription: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterDescription") && dict["DBClusterDescription"] != nil {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class ModifyDBClusterDescriptionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBClusterDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterMaintainTimeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var maintainTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.maintainTime != nil {
            map["MaintainTime"] = self.maintainTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("MaintainTime") && dict["MaintainTime"] != nil {
            self.maintainTime = dict["MaintainTime"] as! String
        }
    }
}

public class ModifyDBClusterMaintainTimeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterMaintainTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterMaintainTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBClusterMaintainTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBResourceGroupRequest : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var groupName: String?

        public var queryTime: String?

        public var targetGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.queryTime != nil {
                map["QueryTime"] = self.queryTime!
            }
            if self.targetGroupName != nil {
                map["TargetGroupName"] = self.targetGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("QueryTime") && dict["QueryTime"] != nil {
                self.queryTime = dict["QueryTime"] as! String
            }
            if dict.keys.contains("TargetGroupName") && dict["TargetGroupName"] != nil {
                self.targetGroupName = dict["TargetGroupName"] as! String
            }
        }
    }
    public var clusterMode: String?

    public var clusterSizeResource: String?

    public var DBClusterId: String?

    public var enableSpot: Bool?

    public var groupName: String?

    public var groupType: String?

    public var maxClusterCount: Int32?

    public var maxComputeResource: String?

    public var minClusterCount: Int32?

    public var minComputeResource: String?

    public var regionId: String?

    public var rules: [ModifyDBResourceGroupRequest.Rules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterMode != nil {
            map["ClusterMode"] = self.clusterMode!
        }
        if self.clusterSizeResource != nil {
            map["ClusterSizeResource"] = self.clusterSizeResource!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.enableSpot != nil {
            map["EnableSpot"] = self.enableSpot!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.maxClusterCount != nil {
            map["MaxClusterCount"] = self.maxClusterCount!
        }
        if self.maxComputeResource != nil {
            map["MaxComputeResource"] = self.maxComputeResource!
        }
        if self.minClusterCount != nil {
            map["MinClusterCount"] = self.minClusterCount!
        }
        if self.minComputeResource != nil {
            map["MinComputeResource"] = self.minComputeResource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("ClusterMode") && dict["ClusterMode"] != nil {
            self.clusterMode = dict["ClusterMode"] as! String
        }
        if dict.keys.contains("ClusterSizeResource") && dict["ClusterSizeResource"] != nil {
            self.clusterSizeResource = dict["ClusterSizeResource"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EnableSpot") && dict["EnableSpot"] != nil {
            self.enableSpot = dict["EnableSpot"] as! Bool
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("MaxClusterCount") && dict["MaxClusterCount"] != nil {
            self.maxClusterCount = dict["MaxClusterCount"] as! Int32
        }
        if dict.keys.contains("MaxComputeResource") && dict["MaxComputeResource"] != nil {
            self.maxComputeResource = dict["MaxComputeResource"] as! String
        }
        if dict.keys.contains("MinClusterCount") && dict["MinClusterCount"] != nil {
            self.minClusterCount = dict["MinClusterCount"] as! Int32
        }
        if dict.keys.contains("MinComputeResource") && dict["MinComputeResource"] != nil {
            self.minComputeResource = dict["MinComputeResource"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var tmp : [ModifyDBResourceGroupRequest.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = ModifyDBResourceGroupRequest.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
    }
}

public class ModifyDBResourceGroupShrinkRequest : Tea.TeaModel {
    public var clusterMode: String?

    public var clusterSizeResource: String?

    public var DBClusterId: String?

    public var enableSpot: Bool?

    public var groupName: String?

    public var groupType: String?

    public var maxClusterCount: Int32?

    public var maxComputeResource: String?

    public var minClusterCount: Int32?

    public var minComputeResource: String?

    public var regionId: String?

    public var rulesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterMode != nil {
            map["ClusterMode"] = self.clusterMode!
        }
        if self.clusterSizeResource != nil {
            map["ClusterSizeResource"] = self.clusterSizeResource!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.enableSpot != nil {
            map["EnableSpot"] = self.enableSpot!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.maxClusterCount != nil {
            map["MaxClusterCount"] = self.maxClusterCount!
        }
        if self.maxComputeResource != nil {
            map["MaxComputeResource"] = self.maxComputeResource!
        }
        if self.minClusterCount != nil {
            map["MinClusterCount"] = self.minClusterCount!
        }
        if self.minComputeResource != nil {
            map["MinComputeResource"] = self.minComputeResource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rulesShrink != nil {
            map["Rules"] = self.rulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterMode") && dict["ClusterMode"] != nil {
            self.clusterMode = dict["ClusterMode"] as! String
        }
        if dict.keys.contains("ClusterSizeResource") && dict["ClusterSizeResource"] != nil {
            self.clusterSizeResource = dict["ClusterSizeResource"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EnableSpot") && dict["EnableSpot"] != nil {
            self.enableSpot = dict["EnableSpot"] as! Bool
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("MaxClusterCount") && dict["MaxClusterCount"] != nil {
            self.maxClusterCount = dict["MaxClusterCount"] as! Int32
        }
        if dict.keys.contains("MaxComputeResource") && dict["MaxComputeResource"] != nil {
            self.maxComputeResource = dict["MaxComputeResource"] as! String
        }
        if dict.keys.contains("MinClusterCount") && dict["MinClusterCount"] != nil {
            self.minClusterCount = dict["MinClusterCount"] as! Int32
        }
        if dict.keys.contains("MinComputeResource") && dict["MinComputeResource"] != nil {
            self.minComputeResource = dict["MinComputeResource"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            self.rulesShrink = dict["Rules"] as! String
        }
    }
}

public class ModifyDBResourceGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyElasticPlanRequest : Tea.TeaModel {
    public var cronExpression: String?

    public var DBClusterId: String?

    public var elasticPlanName: String?

    public var endTime: String?

    public var startTime: String?

    public var targetSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.targetSize != nil {
            map["TargetSize"] = self.targetSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CronExpression") && dict["CronExpression"] != nil {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") && dict["ElasticPlanName"] != nil {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TargetSize") && dict["TargetSize"] != nil {
            self.targetSize = dict["TargetSize"] as! String
        }
    }
}

public class ModifyElasticPlanResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyElasticPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PreloadSparkAppMetricsRequest : Tea.TeaModel {
    public var appId: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class PreloadSparkAppMetricsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScanMetrics : Tea.TeaModel {
            public var outputRowsCount: Int64?

            public var totalReadFileSizeInByte: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outputRowsCount != nil {
                    map["OutputRowsCount"] = self.outputRowsCount!
                }
                if self.totalReadFileSizeInByte != nil {
                    map["TotalReadFileSizeInByte"] = self.totalReadFileSizeInByte!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OutputRowsCount") && dict["OutputRowsCount"] != nil {
                    self.outputRowsCount = dict["OutputRowsCount"] as! Int64
                }
                if dict.keys.contains("TotalReadFileSizeInByte") && dict["TotalReadFileSizeInByte"] != nil {
                    self.totalReadFileSizeInByte = dict["TotalReadFileSizeInByte"] as! Int64
                }
            }
        }
        public var appId: String?

        public var attemptId: String?

        public var eventLogPath: String?

        public var finished: Bool?

        public var scanMetrics: PreloadSparkAppMetricsResponseBody.Data.ScanMetrics?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scanMetrics?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.attemptId != nil {
                map["AttemptId"] = self.attemptId!
            }
            if self.eventLogPath != nil {
                map["EventLogPath"] = self.eventLogPath!
            }
            if self.finished != nil {
                map["Finished"] = self.finished!
            }
            if self.scanMetrics != nil {
                map["ScanMetrics"] = self.scanMetrics?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AttemptId") && dict["AttemptId"] != nil {
                self.attemptId = dict["AttemptId"] as! String
            }
            if dict.keys.contains("EventLogPath") && dict["EventLogPath"] != nil {
                self.eventLogPath = dict["EventLogPath"] as! String
            }
            if dict.keys.contains("Finished") && dict["Finished"] != nil {
                self.finished = dict["Finished"] as! Bool
            }
            if dict.keys.contains("ScanMetrics") && dict["ScanMetrics"] != nil {
                var model = PreloadSparkAppMetricsResponseBody.Data.ScanMetrics()
                model.fromMap(dict["ScanMetrics"] as! [String: Any])
                self.scanMetrics = model
            }
        }
    }
    public var data: PreloadSparkAppMetricsResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PreloadSparkAppMetricsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PreloadSparkAppMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreloadSparkAppMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PreloadSparkAppMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseClusterPublicConnectionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class ReleaseClusterPublicConnectionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReleaseClusterPublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseClusterPublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReleaseClusterPublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameSparkTemplateFileRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var id: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class RenameSparkTemplateFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var succeeded: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Succeeded") && dict["Succeeded"] != nil {
                self.succeeded = dict["Succeeded"] as! Bool
            }
        }
    }
    public var data: RenameSparkTemplateFileResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RenameSparkTemplateFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenameSparkTemplateFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameSparkTemplateFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenameSparkTemplateFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAccountPasswordRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDescription") && dict["AccountDescription"] != nil {
            self.accountDescription = dict["AccountDescription"] as! String
        }
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") && dict["AccountPassword"] != nil {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class ResetAccountPasswordResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSparkAppLogRootPathRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ossLogPath: String?

    public var useDefaultOss: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ossLogPath != nil {
            map["OssLogPath"] = self.ossLogPath!
        }
        if self.useDefaultOss != nil {
            map["UseDefaultOss"] = self.useDefaultOss!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OssLogPath") && dict["OssLogPath"] != nil {
            self.ossLogPath = dict["OssLogPath"] as! String
        }
        if dict.keys.contains("UseDefaultOss") && dict["UseDefaultOss"] != nil {
            self.useDefaultOss = dict["UseDefaultOss"] as! Bool
        }
    }
}

public class SetSparkAppLogRootPathResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var defaultLogPath: String?

        public var isLogPathExists: Bool?

        public var modifiedTimestamp: String?

        public var modifiedUid: String?

        public var recordedLogPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultLogPath != nil {
                map["DefaultLogPath"] = self.defaultLogPath!
            }
            if self.isLogPathExists != nil {
                map["IsLogPathExists"] = self.isLogPathExists!
            }
            if self.modifiedTimestamp != nil {
                map["ModifiedTimestamp"] = self.modifiedTimestamp!
            }
            if self.modifiedUid != nil {
                map["ModifiedUid"] = self.modifiedUid!
            }
            if self.recordedLogPath != nil {
                map["RecordedLogPath"] = self.recordedLogPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultLogPath") && dict["DefaultLogPath"] != nil {
                self.defaultLogPath = dict["DefaultLogPath"] as! String
            }
            if dict.keys.contains("IsLogPathExists") && dict["IsLogPathExists"] != nil {
                self.isLogPathExists = dict["IsLogPathExists"] as! Bool
            }
            if dict.keys.contains("ModifiedTimestamp") && dict["ModifiedTimestamp"] != nil {
                self.modifiedTimestamp = dict["ModifiedTimestamp"] as! String
            }
            if dict.keys.contains("ModifiedUid") && dict["ModifiedUid"] != nil {
                self.modifiedUid = dict["ModifiedUid"] as! String
            }
            if dict.keys.contains("RecordedLogPath") && dict["RecordedLogPath"] != nil {
                self.recordedLogPath = dict["RecordedLogPath"] as! String
            }
        }
    }
    public var data: SetSparkAppLogRootPathResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SetSparkAppLogRootPathResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetSparkAppLogRootPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSparkAppLogRootPathResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetSparkAppLogRootPathResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartSparkSQLEngineRequest : Tea.TeaModel {
    public var config: String?

    public var DBClusterId: String?

    public var jars: String?

    public var maxExecutor: Int64?

    public var minExecutor: Int64?

    public var resourceGroupName: String?

    public var slotNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.jars != nil {
            map["Jars"] = self.jars!
        }
        if self.maxExecutor != nil {
            map["MaxExecutor"] = self.maxExecutor!
        }
        if self.minExecutor != nil {
            map["MinExecutor"] = self.minExecutor!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.slotNum != nil {
            map["SlotNum"] = self.slotNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Jars") && dict["Jars"] != nil {
            self.jars = dict["Jars"] as! String
        }
        if dict.keys.contains("MaxExecutor") && dict["MaxExecutor"] != nil {
            self.maxExecutor = dict["MaxExecutor"] as! Int64
        }
        if dict.keys.contains("MinExecutor") && dict["MinExecutor"] != nil {
            self.minExecutor = dict["MinExecutor"] as! Int64
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
        if dict.keys.contains("SlotNum") && dict["SlotNum"] != nil {
            self.slotNum = dict["SlotNum"] as! Int64
        }
    }
}

public class StartSparkSQLEngineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var state: String?

        public override init() {
            super.init()
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
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
        }
    }
    public var data: StartSparkSQLEngineResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = StartSparkSQLEngineResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartSparkSQLEngineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartSparkSQLEngineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartSparkSQLEngineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitSparkAppRequest : Tea.TeaModel {
    public var agentSource: String?

    public var agentVersion: String?

    public var appName: String?

    public var appType: String?

    public var DBClusterId: String?

    public var data: String?

    public var resourceGroupName: String?

    public var templateFileId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentSource != nil {
            map["AgentSource"] = self.agentSource!
        }
        if self.agentVersion != nil {
            map["AgentVersion"] = self.agentVersion!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.templateFileId != nil {
            map["TemplateFileId"] = self.templateFileId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentSource") && dict["AgentSource"] != nil {
            self.agentSource = dict["AgentSource"] as! String
        }
        if dict.keys.contains("AgentVersion") && dict["AgentVersion"] != nil {
            self.agentVersion = dict["AgentVersion"] as! String
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
        if dict.keys.contains("TemplateFileId") && dict["TemplateFileId"] != nil {
            self.templateFileId = dict["TemplateFileId"] as! Int64
        }
    }
}

public class SubmitSparkAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var message: String?

        public var state: String?

        public override init() {
            super.init()
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
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
        }
    }
    public var data: SubmitSparkAppResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SubmitSparkAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitSparkAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSparkAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitSparkAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitSparkLogAnalyzeTaskRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class SubmitSparkLogAnalyzeTaskResponseBody : Tea.TeaModel {
    public var data: SparkAnalyzeLogTask?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SparkAnalyzeLogTask()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitSparkLogAnalyzeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSparkLogAnalyzeTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitSparkLogAnalyzeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
    }
}

public class UnbindAccountResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindDBResourceGroupWithUserRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var groupUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupUser != nil {
            map["GroupUser"] = self.groupUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupUser") && dict["GroupUser"] != nil {
            self.groupUser = dict["GroupUser"] as! String
        }
    }
}

public class UnbindDBResourceGroupWithUserResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindDBResourceGroupWithUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindDBResourceGroupWithUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindDBResourceGroupWithUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSparkTemplateFileRequest : Tea.TeaModel {
    public var content: String?

    public var DBClusterId: String?

    public var id: Int64?

    public var resourceGroupName: String?

    public override init() {
        super.init()
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
            map["Content"] = self.content!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DBClusterId") && dict["DBClusterId"] != nil {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ResourceGroupName") && dict["ResourceGroupName"] != nil {
            self.resourceGroupName = dict["ResourceGroupName"] as! String
        }
    }
}

public class UpdateSparkTemplateFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var succeeded: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Succeeded") && dict["Succeeded"] != nil {
                self.succeeded = dict["Succeeded"] as! Bool
            }
        }
    }
    public var data: UpdateSparkTemplateFileResponseBody.Data?

    public var requestId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateSparkTemplateFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateSparkTemplateFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSparkTemplateFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSparkTemplateFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
