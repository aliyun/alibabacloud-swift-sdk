import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateManualDagRequest : Tea.TeaModel {
    public var bizdate: String?

    public var dagPara: String?

    public var flowName: String?

    public var nodePara: String?

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
        if self.bizdate != nil {
            map["Bizdate"] = self.bizdate!
        }
        if self.dagPara != nil {
            map["DagPara"] = self.dagPara!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.nodePara != nil {
            map["NodePara"] = self.nodePara!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bizdate") {
            self.bizdate = dict["Bizdate"] as! String
        }
        if dict.keys.contains("DagPara") {
            self.dagPara = dict["DagPara"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("NodePara") {
            self.nodePara = dict["NodePara"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class CreateManualDagResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var returnCode: String?

    public var returnErrorSolution: String?

    public var returnMessage: String?

    public var returnValue: Int64?

    public override init() {
        super.init()
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
        if self.returnCode != nil {
            map["ReturnCode"] = self.returnCode!
        }
        if self.returnErrorSolution != nil {
            map["ReturnErrorSolution"] = self.returnErrorSolution!
        }
        if self.returnMessage != nil {
            map["ReturnMessage"] = self.returnMessage!
        }
        if self.returnValue != nil {
            map["ReturnValue"] = self.returnValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReturnCode") {
            self.returnCode = dict["ReturnCode"] as! String
        }
        if dict.keys.contains("ReturnErrorSolution") {
            self.returnErrorSolution = dict["ReturnErrorSolution"] as! String
        }
        if dict.keys.contains("ReturnMessage") {
            self.returnMessage = dict["ReturnMessage"] as! String
        }
        if dict.keys.contains("ReturnValue") {
            self.returnValue = dict["ReturnValue"] as! Int64
        }
    }
}

public class CreateManualDagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateManualDagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateManualDagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFileRequest : Tea.TeaModel {
    public var fileId: Int64?

    public var projectId: Int64?

    public var projectIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectIdentifier != nil {
            map["ProjectIdentifier"] = self.projectIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("ProjectIdentifier") {
            self.projectIdentifier = dict["ProjectIdentifier"] as! String
        }
    }
}

public class DeleteFileResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEmrHiveTableRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeEmrHiveTableResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Columns : Tea.TeaModel {
            public var columnComment: String?

            public var columnName: String?

            public var columnPosition: Int32?

            public var columnType: String?

            public var comment: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columnComment != nil {
                    map["ColumnComment"] = self.columnComment!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.columnPosition != nil {
                    map["ColumnPosition"] = self.columnPosition!
                }
                if self.columnType != nil {
                    map["ColumnType"] = self.columnType!
                }
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ColumnComment") {
                    self.columnComment = dict["ColumnComment"] as! String
                }
                if dict.keys.contains("ColumnName") {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("ColumnPosition") {
                    self.columnPosition = dict["ColumnPosition"] as! Int32
                }
                if dict.keys.contains("ColumnType") {
                    self.columnType = dict["ColumnType"] as! String
                }
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
            }
        }
        public var clusterBizId: String?

        public var clusterBizName: String?

        public var columns: [DescribeEmrHiveTableResponseBody.Data.Columns]?

        public var databaseName: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var inputFormat: String?

        public var isCompressed: Bool?

        public var isTemporary: Bool?

        public var lastAccessTime: String?

        public var lastModifyTime: String?

        public var location: String?

        public var outputFormat: String?

        public var owner: String?

        public var ownerId: String?

        public var ownerType: String?

        public var partitionKeys: String?

        public var serializationLib: String?

        public var tableComment: String?

        public var tableDesc: String?

        public var tableName: String?

        public var tableParameters: String?

        public var tableSize: Int64?

        public var tableType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterBizId != nil {
                map["ClusterBizId"] = self.clusterBizId!
            }
            if self.clusterBizName != nil {
                map["ClusterBizName"] = self.clusterBizName!
            }
            if self.columns != nil {
                var tmp : [Any] = []
                for k in self.columns! {
                    tmp.append(k.toMap())
                }
                map["Columns"] = tmp
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.inputFormat != nil {
                map["InputFormat"] = self.inputFormat!
            }
            if self.isCompressed != nil {
                map["IsCompressed"] = self.isCompressed!
            }
            if self.isTemporary != nil {
                map["IsTemporary"] = self.isTemporary!
            }
            if self.lastAccessTime != nil {
                map["LastAccessTime"] = self.lastAccessTime!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.outputFormat != nil {
                map["OutputFormat"] = self.outputFormat!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.partitionKeys != nil {
                map["PartitionKeys"] = self.partitionKeys!
            }
            if self.serializationLib != nil {
                map["SerializationLib"] = self.serializationLib!
            }
            if self.tableComment != nil {
                map["TableComment"] = self.tableComment!
            }
            if self.tableDesc != nil {
                map["TableDesc"] = self.tableDesc!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.tableParameters != nil {
                map["TableParameters"] = self.tableParameters!
            }
            if self.tableSize != nil {
                map["TableSize"] = self.tableSize!
            }
            if self.tableType != nil {
                map["TableType"] = self.tableType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterBizId") {
                self.clusterBizId = dict["ClusterBizId"] as! String
            }
            if dict.keys.contains("ClusterBizName") {
                self.clusterBizName = dict["ClusterBizName"] as! String
            }
            if dict.keys.contains("Columns") {
                var tmp : [DescribeEmrHiveTableResponseBody.Data.Columns] = []
                for v in dict["Columns"] as! [Any] {
                    var model = DescribeEmrHiveTableResponseBody.Data.Columns()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.columns = tmp
            }
            if dict.keys.contains("DatabaseName") {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("InputFormat") {
                self.inputFormat = dict["InputFormat"] as! String
            }
            if dict.keys.contains("IsCompressed") {
                self.isCompressed = dict["IsCompressed"] as! Bool
            }
            if dict.keys.contains("IsTemporary") {
                self.isTemporary = dict["IsTemporary"] as! Bool
            }
            if dict.keys.contains("LastAccessTime") {
                self.lastAccessTime = dict["LastAccessTime"] as! String
            }
            if dict.keys.contains("LastModifyTime") {
                self.lastModifyTime = dict["LastModifyTime"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("OutputFormat") {
                self.outputFormat = dict["OutputFormat"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerType") {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("PartitionKeys") {
                self.partitionKeys = dict["PartitionKeys"] as! String
            }
            if dict.keys.contains("SerializationLib") {
                self.serializationLib = dict["SerializationLib"] as! String
            }
            if dict.keys.contains("TableComment") {
                self.tableComment = dict["TableComment"] as! String
            }
            if dict.keys.contains("TableDesc") {
                self.tableDesc = dict["TableDesc"] as! String
            }
            if dict.keys.contains("TableName") {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("TableParameters") {
                self.tableParameters = dict["TableParameters"] as! String
            }
            if dict.keys.contains("TableSize") {
                self.tableSize = dict["TableSize"] as! Int64
            }
            if dict.keys.contains("TableType") {
                self.tableType = dict["TableType"] as! String
            }
        }
    }
    public var data: DescribeEmrHiveTableResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeEmrHiveTableResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEmrHiveTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEmrHiveTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeEmrHiveTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataServiceApiContextRequest : Tea.TeaModel {
    public var apiId: Int64?

    public var apiStatus: Int32?

    public var cacheKey: String?

    public var forPrivateResGroup: Bool?

    public var verbose: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiStatus != nil {
            map["ApiStatus"] = self.apiStatus!
        }
        if self.cacheKey != nil {
            map["CacheKey"] = self.cacheKey!
        }
        if self.forPrivateResGroup != nil {
            map["ForPrivateResGroup"] = self.forPrivateResGroup!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") {
            self.apiId = dict["ApiId"] as! Int64
        }
        if dict.keys.contains("ApiStatus") {
            self.apiStatus = dict["ApiStatus"] as! Int32
        }
        if dict.keys.contains("CacheKey") {
            self.cacheKey = dict["CacheKey"] as! String
        }
        if dict.keys.contains("ForPrivateResGroup") {
            self.forPrivateResGroup = dict["ForPrivateResGroup"] as! Bool
        }
        if dict.keys.contains("Verbose") {
            self.verbose = dict["Verbose"] as! Bool
        }
    }
}

public class GetDataServiceApiContextResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["ErrMsg"] = self.errMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMsg") {
            self.errMsg = dict["ErrMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDataServiceApiContextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataServiceApiContextResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataServiceApiContextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataServiceContextUpdateEventResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["ErrMsg"] = self.errMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMsg") {
            self.errMsg = dict["ErrMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDataServiceContextUpdateEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataServiceContextUpdateEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataServiceContextUpdateEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSwitchValueRequest : Tea.TeaModel {
    public var switchName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.switchName != nil {
            map["SwitchName"] = self.switchName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SwitchName") {
            self.switchName = dict["SwitchName"] as! String
        }
    }
}

public class GetSwitchValueResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSwitchValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSwitchValueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSwitchValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTimeMachineTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTimeMachineTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var hostName: String?

        public var id: String?

        public var objId: String?

        public var objName: String?

        public var operType: String?

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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.objId != nil {
                map["ObjId"] = self.objId!
            }
            if self.objName != nil {
                map["ObjName"] = self.objName!
            }
            if self.operType != nil {
                map["OperType"] = self.operType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ObjId") {
                self.objId = dict["ObjId"] as! String
            }
            if dict.keys.contains("ObjName") {
                self.objName = dict["ObjName"] as! String
            }
            if dict.keys.contains("OperType") {
                self.operType = dict["OperType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var data: GetTimeMachineTaskResponseBody.Data?

    public var errCode: String?

    public var errMsg: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["ErrMsg"] = self.errMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetTimeMachineTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMsg") {
            self.errMsg = dict["ErrMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTimeMachineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTimeMachineTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTimeMachineTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEmrHiveAuditLogsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var endTime: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int32
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class ListEmrHiveAuditLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PagedData : Tea.TeaModel {
            public var database: String?

            public var eventTime: Int64?

            public var groups: [String]?

            public var operation: String?

            public var table: String?

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
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.eventTime != nil {
                    map["EventTime"] = self.eventTime!
                }
                if self.groups != nil {
                    map["Groups"] = self.groups!
                }
                if self.operation != nil {
                    map["Operation"] = self.operation!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                if self.user != nil {
                    map["User"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Database") {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("EventTime") {
                    self.eventTime = dict["EventTime"] as! Int64
                }
                if dict.keys.contains("Groups") {
                    self.groups = dict["Groups"] as! [String]
                }
                if dict.keys.contains("Operation") {
                    self.operation = dict["Operation"] as! String
                }
                if dict.keys.contains("Table") {
                    self.table = dict["Table"] as! String
                }
                if dict.keys.contains("User") {
                    self.user = dict["User"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var pagedData: [ListEmrHiveAuditLogsResponseBody.Data.PagedData]?

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
            if self.pagedData != nil {
                var tmp : [Any] = []
                for k in self.pagedData! {
                    tmp.append(k.toMap())
                }
                map["PagedData"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("PagedData") {
                var tmp : [ListEmrHiveAuditLogsResponseBody.Data.PagedData] = []
                for v in dict["PagedData"] as! [Any] {
                    var model = ListEmrHiveAuditLogsResponseBody.Data.PagedData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pagedData = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListEmrHiveAuditLogsResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListEmrHiveAuditLogsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEmrHiveAuditLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEmrHiveAuditLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListEmrHiveAuditLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEmrHiveDatabasesRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class ListEmrHiveDatabasesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var comment: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var location: String?

        public var name: String?

        public var owner: String?

        public var ownerId: String?

        public var ownerType: String?

        public var parameters: String?

        public var region: String?

        public var status: String?

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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerType") {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var data: [ListEmrHiveDatabasesResponseBody.Data]?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListEmrHiveDatabasesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListEmrHiveDatabasesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEmrHiveDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEmrHiveDatabasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListEmrHiveDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEmrHiveTablesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListEmrHiveTablesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PagedData : Tea.TeaModel {
            public var clusterBizId: String?

            public var clusterBizName: String?

            public var databaseName: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var inputFormat: String?

            public var isCompressed: Bool?

            public var isTemporary: Bool?

            public var lastAccessTime: String?

            public var lastModifyTime: String?

            public var location: String?

            public var outputFormat: String?

            public var owner: String?

            public var ownerId: String?

            public var ownerType: String?

            public var partitionKeys: String?

            public var serializationLib: String?

            public var tableComment: String?

            public var tableDesc: String?

            public var tableName: String?

            public var tableParameters: String?

            public var tableType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterBizId != nil {
                    map["ClusterBizId"] = self.clusterBizId!
                }
                if self.clusterBizName != nil {
                    map["ClusterBizName"] = self.clusterBizName!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.inputFormat != nil {
                    map["InputFormat"] = self.inputFormat!
                }
                if self.isCompressed != nil {
                    map["IsCompressed"] = self.isCompressed!
                }
                if self.isTemporary != nil {
                    map["IsTemporary"] = self.isTemporary!
                }
                if self.lastAccessTime != nil {
                    map["LastAccessTime"] = self.lastAccessTime!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.outputFormat != nil {
                    map["OutputFormat"] = self.outputFormat!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.ownerType != nil {
                    map["OwnerType"] = self.ownerType!
                }
                if self.partitionKeys != nil {
                    map["PartitionKeys"] = self.partitionKeys!
                }
                if self.serializationLib != nil {
                    map["SerializationLib"] = self.serializationLib!
                }
                if self.tableComment != nil {
                    map["TableComment"] = self.tableComment!
                }
                if self.tableDesc != nil {
                    map["TableDesc"] = self.tableDesc!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.tableParameters != nil {
                    map["TableParameters"] = self.tableParameters!
                }
                if self.tableType != nil {
                    map["TableType"] = self.tableType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterBizId") {
                    self.clusterBizId = dict["ClusterBizId"] as! String
                }
                if dict.keys.contains("ClusterBizName") {
                    self.clusterBizName = dict["ClusterBizName"] as! String
                }
                if dict.keys.contains("DatabaseName") {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("InputFormat") {
                    self.inputFormat = dict["InputFormat"] as! String
                }
                if dict.keys.contains("IsCompressed") {
                    self.isCompressed = dict["IsCompressed"] as! Bool
                }
                if dict.keys.contains("IsTemporary") {
                    self.isTemporary = dict["IsTemporary"] as! Bool
                }
                if dict.keys.contains("LastAccessTime") {
                    self.lastAccessTime = dict["LastAccessTime"] as! String
                }
                if dict.keys.contains("LastModifyTime") {
                    self.lastModifyTime = dict["LastModifyTime"] as! String
                }
                if dict.keys.contains("Location") {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("OutputFormat") {
                    self.outputFormat = dict["OutputFormat"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("OwnerType") {
                    self.ownerType = dict["OwnerType"] as! String
                }
                if dict.keys.contains("PartitionKeys") {
                    self.partitionKeys = dict["PartitionKeys"] as! String
                }
                if dict.keys.contains("SerializationLib") {
                    self.serializationLib = dict["SerializationLib"] as! String
                }
                if dict.keys.contains("TableComment") {
                    self.tableComment = dict["TableComment"] as! String
                }
                if dict.keys.contains("TableDesc") {
                    self.tableDesc = dict["TableDesc"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("TableParameters") {
                    self.tableParameters = dict["TableParameters"] as! String
                }
                if dict.keys.contains("TableType") {
                    self.tableType = dict["TableType"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var pagedData: [ListEmrHiveTablesResponseBody.Data.PagedData]?

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
            if self.pagedData != nil {
                var tmp : [Any] = []
                for k in self.pagedData! {
                    tmp.append(k.toMap())
                }
                map["PagedData"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("PagedData") {
                var tmp : [ListEmrHiveTablesResponseBody.Data.PagedData] = []
                for v in dict["PagedData"] as! [Any] {
                    var model = ListEmrHiveTablesResponseBody.Data.PagedData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pagedData = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListEmrHiveTablesResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListEmrHiveTablesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEmrHiveTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEmrHiveTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListEmrHiveTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGovernanceIssueDataServiceAPIsRequest : Tea.TeaModel {
    public var bizDate: String?

    public var ownerId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: Int64?

    public var ruleCategory: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizDate != nil {
            map["BizDate"] = self.bizDate!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.ruleCategory != nil {
            map["RuleCategory"] = self.ruleCategory!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizDate") {
            self.bizDate = dict["BizDate"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("RuleCategory") {
            self.ruleCategory = dict["RuleCategory"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class ListGovernanceIssueDataServiceAPIsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class APIs : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var bizDate: String?

            public var ownerId: String?

            public var projectId: Int64?

            public var properties: String?

            public var ruleCategory: String?

            public var ruleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.bizDate != nil {
                    map["BizDate"] = self.bizDate!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.ruleCategory != nil {
                    map["RuleCategory"] = self.ruleCategory!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("BizDate") {
                    self.bizDate = dict["BizDate"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! Int64
                }
                if dict.keys.contains("Properties") {
                    self.properties = dict["Properties"] as! String
                }
                if dict.keys.contains("RuleCategory") {
                    self.ruleCategory = dict["RuleCategory"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
            }
        }
        public var APIs: [ListGovernanceIssueDataServiceAPIsResponseBody.Data.APIs]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.APIs != nil {
                var tmp : [Any] = []
                for k in self.APIs! {
                    tmp.append(k.toMap())
                }
                map["APIs"] = tmp
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
            if dict.keys.contains("APIs") {
                var tmp : [ListGovernanceIssueDataServiceAPIsResponseBody.Data.APIs] = []
                for v in dict["APIs"] as! [Any] {
                    var model = ListGovernanceIssueDataServiceAPIsResponseBody.Data.APIs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.APIs = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListGovernanceIssueDataServiceAPIsResponseBody.Data?

    public var dynamicErrorCode: String?

    public var dynamicErrorMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicErrorCode != nil {
            map["DynamicErrorCode"] = self.dynamicErrorCode!
        }
        if self.dynamicErrorMessage != nil {
            map["DynamicErrorMessage"] = self.dynamicErrorMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") {
            var model = ListGovernanceIssueDataServiceAPIsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DynamicErrorCode") {
            self.dynamicErrorCode = dict["DynamicErrorCode"] as! String
        }
        if dict.keys.contains("DynamicErrorMessage") {
            self.dynamicErrorMessage = dict["DynamicErrorMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGovernanceIssueDataServiceAPIsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGovernanceIssueDataServiceAPIsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListGovernanceIssueDataServiceAPIsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGovernanceIssueTablesRequest : Tea.TeaModel {
    public var bizDate: String?

    public var ownerId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: Int64?

    public var ruleCategory: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizDate != nil {
            map["BizDate"] = self.bizDate!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.ruleCategory != nil {
            map["RuleCategory"] = self.ruleCategory!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizDate") {
            self.bizDate = dict["BizDate"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("RuleCategory") {
            self.ruleCategory = dict["RuleCategory"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class ListGovernanceIssueTablesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
            public var bizDate: String?

            public var clusterId: String?

            public var createTime: Int64?

            public var databaseName: String?

            public var datasourceType: String?

            public var downstreamDependencyCount: Int32?

            public var lastAccessTime: Int64?

            public var lifeCycle: Int64?

            public var mcProjectName: String?

            public var ownerId: String?

            public var projectId: Int64?

            public var properties: String?

            public var ruleCategory: String?

            public var ruleId: String?

            public var schema: String?

            public var tableGuid: String?

            public var tableName: String?

            public var tableSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizDate != nil {
                    map["BizDate"] = self.bizDate!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.datasourceType != nil {
                    map["DatasourceType"] = self.datasourceType!
                }
                if self.downstreamDependencyCount != nil {
                    map["DownstreamDependencyCount"] = self.downstreamDependencyCount!
                }
                if self.lastAccessTime != nil {
                    map["LastAccessTime"] = self.lastAccessTime!
                }
                if self.lifeCycle != nil {
                    map["LifeCycle"] = self.lifeCycle!
                }
                if self.mcProjectName != nil {
                    map["McProjectName"] = self.mcProjectName!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.ruleCategory != nil {
                    map["RuleCategory"] = self.ruleCategory!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.schema != nil {
                    map["Schema"] = self.schema!
                }
                if self.tableGuid != nil {
                    map["TableGuid"] = self.tableGuid!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.tableSize != nil {
                    map["TableSize"] = self.tableSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizDate") {
                    self.bizDate = dict["BizDate"] as! String
                }
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DatabaseName") {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("DatasourceType") {
                    self.datasourceType = dict["DatasourceType"] as! String
                }
                if dict.keys.contains("DownstreamDependencyCount") {
                    self.downstreamDependencyCount = dict["DownstreamDependencyCount"] as! Int32
                }
                if dict.keys.contains("LastAccessTime") {
                    self.lastAccessTime = dict["LastAccessTime"] as! Int64
                }
                if dict.keys.contains("LifeCycle") {
                    self.lifeCycle = dict["LifeCycle"] as! Int64
                }
                if dict.keys.contains("McProjectName") {
                    self.mcProjectName = dict["McProjectName"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! Int64
                }
                if dict.keys.contains("Properties") {
                    self.properties = dict["Properties"] as! String
                }
                if dict.keys.contains("RuleCategory") {
                    self.ruleCategory = dict["RuleCategory"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("Schema") {
                    self.schema = dict["Schema"] as! String
                }
                if dict.keys.contains("TableGuid") {
                    self.tableGuid = dict["TableGuid"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("TableSize") {
                    self.tableSize = dict["TableSize"] as! Int64
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var tables: [ListGovernanceIssueTablesResponseBody.Data.Tables]?

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
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["Tables"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Tables") {
                var tmp : [ListGovernanceIssueTablesResponseBody.Data.Tables] = []
                for v in dict["Tables"] as! [Any] {
                    var model = ListGovernanceIssueTablesResponseBody.Data.Tables()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tables = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListGovernanceIssueTablesResponseBody.Data?

    public var dynamicErrorCode: String?

    public var dynamicErrorMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicErrorCode != nil {
            map["DynamicErrorCode"] = self.dynamicErrorCode!
        }
        if self.dynamicErrorMessage != nil {
            map["DynamicErrorMessage"] = self.dynamicErrorMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") {
            var model = ListGovernanceIssueTablesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DynamicErrorCode") {
            self.dynamicErrorCode = dict["DynamicErrorCode"] as! String
        }
        if dict.keys.contains("DynamicErrorMessage") {
            self.dynamicErrorMessage = dict["DynamicErrorMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGovernanceIssueTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGovernanceIssueTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListGovernanceIssueTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGovernanceIssueTasksRequest : Tea.TeaModel {
    public var bizDate: String?

    public var ownerId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: Int64?

    public var ruleCategory: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizDate != nil {
            map["BizDate"] = self.bizDate!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.ruleCategory != nil {
            map["RuleCategory"] = self.ruleCategory!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizDate") {
            self.bizDate = dict["BizDate"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("RuleCategory") {
            self.ruleCategory = dict["RuleCategory"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class ListGovernanceIssueTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tasks : Tea.TeaModel {
            public var bizDate: String?

            public var nodeId: Int64?

            public var nodeName: String?

            public var nodeType: String?

            public var ownerId: String?

            public var projectId: Int64?

            public var properties: String?

            public var ruleCategory: String?

            public var ruleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizDate != nil {
                    map["BizDate"] = self.bizDate!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.ruleCategory != nil {
                    map["RuleCategory"] = self.ruleCategory!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizDate") {
                    self.bizDate = dict["BizDate"] as! String
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! Int64
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("NodeType") {
                    self.nodeType = dict["NodeType"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! Int64
                }
                if dict.keys.contains("Properties") {
                    self.properties = dict["Properties"] as! String
                }
                if dict.keys.contains("RuleCategory") {
                    self.ruleCategory = dict["RuleCategory"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var tasks: [ListGovernanceIssueTasksResponseBody.Data.Tasks]?

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
            if self.tasks != nil {
                var tmp : [Any] = []
                for k in self.tasks! {
                    tmp.append(k.toMap())
                }
                map["Tasks"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Tasks") {
                var tmp : [ListGovernanceIssueTasksResponseBody.Data.Tasks] = []
                for v in dict["Tasks"] as! [Any] {
                    var model = ListGovernanceIssueTasksResponseBody.Data.Tasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tasks = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListGovernanceIssueTasksResponseBody.Data?

    public var dynamicErrorCode: String?

    public var dynamicErrorMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicErrorCode != nil {
            map["DynamicErrorCode"] = self.dynamicErrorCode!
        }
        if self.dynamicErrorMessage != nil {
            map["DynamicErrorMessage"] = self.dynamicErrorMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") {
            var model = ListGovernanceIssueTasksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DynamicErrorCode") {
            self.dynamicErrorCode = dict["DynamicErrorCode"] as! String
        }
        if dict.keys.contains("DynamicErrorMessage") {
            self.dynamicErrorMessage = dict["DynamicErrorMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGovernanceIssueTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGovernanceIssueTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListGovernanceIssueTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGovernanceRulesRequest : Tea.TeaModel {
    public var category: String?

    public var issueType: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.issueType != nil {
            map["IssueType"] = self.issueType!
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
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("IssueType") {
            self.issueType = dict["IssueType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListGovernanceRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var category: String?

            public var description_: String?

            public var guide: String?

            public var id: String?

            public var issueType: String?

            public var name: String?

            public var note: String?

            public var rule: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.guide != nil {
                    map["Guide"] = self.guide!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.issueType != nil {
                    map["IssueType"] = self.issueType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.note != nil {
                    map["Note"] = self.note!
                }
                if self.rule != nil {
                    map["Rule"] = self.rule!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Guide") {
                    self.guide = dict["Guide"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("IssueType") {
                    self.issueType = dict["IssueType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Note") {
                    self.note = dict["Note"] as! String
                }
                if dict.keys.contains("Rule") {
                    self.rule = dict["Rule"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var rules: [ListGovernanceRulesResponseBody.Data.Rules]?

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
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Rules") {
                var tmp : [ListGovernanceRulesResponseBody.Data.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = ListGovernanceRulesResponseBody.Data.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListGovernanceRulesResponseBody.Data?

    public var dynamicErrorCode: String?

    public var dynamicErrorMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicErrorCode != nil {
            map["DynamicErrorCode"] = self.dynamicErrorCode!
        }
        if self.dynamicErrorMessage != nil {
            map["DynamicErrorMessage"] = self.dynamicErrorMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") {
            var model = ListGovernanceRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DynamicErrorCode") {
            self.dynamicErrorCode = dict["DynamicErrorCode"] as! String
        }
        if dict.keys.contains("DynamicErrorMessage") {
            self.dynamicErrorMessage = dict["DynamicErrorMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGovernanceRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGovernanceRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListGovernanceRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHiveColumnLineagesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var columnName: String?

    public var databaseName: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.columnName != nil {
            map["ColumnName"] = self.columnName!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ColumnName") {
            self.columnName = dict["ColumnName"] as! String
        }
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class ListHiveColumnLineagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DownstreamLineages : Tea.TeaModel {
            public var clusterId: String?

            public var columnName: String?

            public var createTime: String?

            public var databaseName: String?

            public var directDownColumnNumber: Int32?

            public var directDownTableNumber: Int32?

            public var directUpperColumnNumber: Int32?

            public var directUpperTableNumber: Int32?

            public var modifiedTime: String?

            public var source: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.directDownColumnNumber != nil {
                    map["DirectDownColumnNumber"] = self.directDownColumnNumber!
                }
                if self.directDownTableNumber != nil {
                    map["DirectDownTableNumber"] = self.directDownTableNumber!
                }
                if self.directUpperColumnNumber != nil {
                    map["DirectUpperColumnNumber"] = self.directUpperColumnNumber!
                }
                if self.directUpperTableNumber != nil {
                    map["DirectUpperTableNumber"] = self.directUpperTableNumber!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ColumnName") {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DatabaseName") {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("DirectDownColumnNumber") {
                    self.directDownColumnNumber = dict["DirectDownColumnNumber"] as! Int32
                }
                if dict.keys.contains("DirectDownTableNumber") {
                    self.directDownTableNumber = dict["DirectDownTableNumber"] as! Int32
                }
                if dict.keys.contains("DirectUpperColumnNumber") {
                    self.directUpperColumnNumber = dict["DirectUpperColumnNumber"] as! Int32
                }
                if dict.keys.contains("DirectUpperTableNumber") {
                    self.directUpperTableNumber = dict["DirectUpperTableNumber"] as! Int32
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public class UpstreamLineages : Tea.TeaModel {
            public var clusterId: String?

            public var columnName: String?

            public var createTime: String?

            public var databaseName: String?

            public var directDownColumnNumber: Int32?

            public var directDownTableNumber: Int32?

            public var directUpperColumnNumber: Int32?

            public var directUpperTableNumber: Int32?

            public var modifiedTime: String?

            public var source: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.directDownColumnNumber != nil {
                    map["DirectDownColumnNumber"] = self.directDownColumnNumber!
                }
                if self.directDownTableNumber != nil {
                    map["DirectDownTableNumber"] = self.directDownTableNumber!
                }
                if self.directUpperColumnNumber != nil {
                    map["DirectUpperColumnNumber"] = self.directUpperColumnNumber!
                }
                if self.directUpperTableNumber != nil {
                    map["DirectUpperTableNumber"] = self.directUpperTableNumber!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ColumnName") {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DatabaseName") {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("DirectDownColumnNumber") {
                    self.directDownColumnNumber = dict["DirectDownColumnNumber"] as! Int32
                }
                if dict.keys.contains("DirectDownTableNumber") {
                    self.directDownTableNumber = dict["DirectDownTableNumber"] as! Int32
                }
                if dict.keys.contains("DirectUpperColumnNumber") {
                    self.directUpperColumnNumber = dict["DirectUpperColumnNumber"] as! Int32
                }
                if dict.keys.contains("DirectUpperTableNumber") {
                    self.directUpperTableNumber = dict["DirectUpperTableNumber"] as! Int32
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var downstreamLineages: [ListHiveColumnLineagesResponseBody.Data.DownstreamLineages]?

        public var downstreamNumber: Int32?

        public var upstreamLineages: [ListHiveColumnLineagesResponseBody.Data.UpstreamLineages]?

        public var upstreamNumber: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downstreamLineages != nil {
                var tmp : [Any] = []
                for k in self.downstreamLineages! {
                    tmp.append(k.toMap())
                }
                map["DownstreamLineages"] = tmp
            }
            if self.downstreamNumber != nil {
                map["DownstreamNumber"] = self.downstreamNumber!
            }
            if self.upstreamLineages != nil {
                var tmp : [Any] = []
                for k in self.upstreamLineages! {
                    tmp.append(k.toMap())
                }
                map["UpstreamLineages"] = tmp
            }
            if self.upstreamNumber != nil {
                map["UpstreamNumber"] = self.upstreamNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownstreamLineages") {
                var tmp : [ListHiveColumnLineagesResponseBody.Data.DownstreamLineages] = []
                for v in dict["DownstreamLineages"] as! [Any] {
                    var model = ListHiveColumnLineagesResponseBody.Data.DownstreamLineages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.downstreamLineages = tmp
            }
            if dict.keys.contains("DownstreamNumber") {
                self.downstreamNumber = dict["DownstreamNumber"] as! Int32
            }
            if dict.keys.contains("UpstreamLineages") {
                var tmp : [ListHiveColumnLineagesResponseBody.Data.UpstreamLineages] = []
                for v in dict["UpstreamLineages"] as! [Any] {
                    var model = ListHiveColumnLineagesResponseBody.Data.UpstreamLineages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.upstreamLineages = tmp
            }
            if dict.keys.contains("UpstreamNumber") {
                self.upstreamNumber = dict["UpstreamNumber"] as! Int32
            }
        }
    }
    public var data: ListHiveColumnLineagesResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListHiveColumnLineagesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHiveColumnLineagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHiveColumnLineagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListHiveColumnLineagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHiveTableLineagesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class ListHiveTableLineagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DownstreamLineages : Tea.TeaModel {
            public var clusterId: String?

            public var createTime: String?

            public var databaseName: String?

            public var engine: String?

            public var jobId: String?

            public var modifiedTime: String?

            public var queryText: String?

            public var source: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.queryText != nil {
                    map["QueryText"] = self.queryText!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DatabaseName") {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("QueryText") {
                    self.queryText = dict["QueryText"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public class UpstreamLineages : Tea.TeaModel {
            public var clusterId: String?

            public var createTime: String?

            public var databaseName: String?

            public var engine: String?

            public var jobId: String?

            public var modifiedTime: String?

            public var queryText: String?

            public var source: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.queryText != nil {
                    map["QueryText"] = self.queryText!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DatabaseName") {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("QueryText") {
                    self.queryText = dict["QueryText"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var downstreamLineages: [ListHiveTableLineagesResponseBody.Data.DownstreamLineages]?

        public var downstreamNumber: Int32?

        public var upstreamLineages: [ListHiveTableLineagesResponseBody.Data.UpstreamLineages]?

        public var upstreamNumber: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downstreamLineages != nil {
                var tmp : [Any] = []
                for k in self.downstreamLineages! {
                    tmp.append(k.toMap())
                }
                map["DownstreamLineages"] = tmp
            }
            if self.downstreamNumber != nil {
                map["DownstreamNumber"] = self.downstreamNumber!
            }
            if self.upstreamLineages != nil {
                var tmp : [Any] = []
                for k in self.upstreamLineages! {
                    tmp.append(k.toMap())
                }
                map["UpstreamLineages"] = tmp
            }
            if self.upstreamNumber != nil {
                map["UpstreamNumber"] = self.upstreamNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownstreamLineages") {
                var tmp : [ListHiveTableLineagesResponseBody.Data.DownstreamLineages] = []
                for v in dict["DownstreamLineages"] as! [Any] {
                    var model = ListHiveTableLineagesResponseBody.Data.DownstreamLineages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.downstreamLineages = tmp
            }
            if dict.keys.contains("DownstreamNumber") {
                self.downstreamNumber = dict["DownstreamNumber"] as! Int32
            }
            if dict.keys.contains("UpstreamLineages") {
                var tmp : [ListHiveTableLineagesResponseBody.Data.UpstreamLineages] = []
                for v in dict["UpstreamLineages"] as! [Any] {
                    var model = ListHiveTableLineagesResponseBody.Data.UpstreamLineages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.upstreamLineages = tmp
            }
            if dict.keys.contains("UpstreamNumber") {
                self.upstreamNumber = dict["UpstreamNumber"] as! Int32
            }
        }
    }
    public var data: ListHiveTableLineagesResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListHiveTableLineagesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHiveTableLineagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHiveTableLineagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListHiveTableLineagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTablePartitionsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
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
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class ListTablePartitionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PagedData : Tea.TeaModel {
            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var location: String?

            public var partitionComment: String?

            public var partitionName: String?

            public var partitionPath: String?

            public var partitionType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.partitionComment != nil {
                    map["PartitionComment"] = self.partitionComment!
                }
                if self.partitionName != nil {
                    map["PartitionName"] = self.partitionName!
                }
                if self.partitionPath != nil {
                    map["PartitionPath"] = self.partitionPath!
                }
                if self.partitionType != nil {
                    map["PartitionType"] = self.partitionType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("Location") {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("PartitionComment") {
                    self.partitionComment = dict["PartitionComment"] as! String
                }
                if dict.keys.contains("PartitionName") {
                    self.partitionName = dict["PartitionName"] as! String
                }
                if dict.keys.contains("PartitionPath") {
                    self.partitionPath = dict["PartitionPath"] as! String
                }
                if dict.keys.contains("PartitionType") {
                    self.partitionType = dict["PartitionType"] as! String
                }
            }
        }
        public var pageSize: Int32?

        public var pagedData: [ListTablePartitionsResponseBody.Data.PagedData]?

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
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pagedData != nil {
                var tmp : [Any] = []
                for k in self.pagedData! {
                    tmp.append(k.toMap())
                }
                map["PagedData"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("PagedData") {
                var tmp : [ListTablePartitionsResponseBody.Data.PagedData] = []
                for v in dict["PagedData"] as! [Any] {
                    var model = ListTablePartitionsResponseBody.Data.PagedData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pagedData = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListTablePartitionsResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListTablePartitionsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTablePartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTablePartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTablePartitionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenDataWorksStandardServiceRequest : Tea.TeaModel {
    public var region: String?

    public override init() {
        super.init()
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
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
    }
}

public class OpenDataWorksStandardServiceResponseBody : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenDataWorksStandardServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenDataWorksStandardServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenDataWorksStandardServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchManualDagNodeInstanceRequest : Tea.TeaModel {
    public var dagId: Int64?

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
        if self.dagId != nil {
            map["DagId"] = self.dagId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DagId") {
            self.dagId = dict["DagId"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class SearchManualDagNodeInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NodeInsInfo : Tea.TeaModel {
            public var beginRunningTime: String?

            public var beginWaitResTime: String?

            public var beginWaitTimeTime: String?

            public var bizdate: String?

            public var createTime: String?

            public var dagId: Int64?

            public var dagType: Int32?

            public var finishTime: String?

            public var instanceId: Int64?

            public var modifyTime: String?

            public var nodeName: String?

            public var paraValue: String?

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
                if self.beginRunningTime != nil {
                    map["BeginRunningTime"] = self.beginRunningTime!
                }
                if self.beginWaitResTime != nil {
                    map["BeginWaitResTime"] = self.beginWaitResTime!
                }
                if self.beginWaitTimeTime != nil {
                    map["BeginWaitTimeTime"] = self.beginWaitTimeTime!
                }
                if self.bizdate != nil {
                    map["Bizdate"] = self.bizdate!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dagId != nil {
                    map["DagId"] = self.dagId!
                }
                if self.dagType != nil {
                    map["DagType"] = self.dagType!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.paraValue != nil {
                    map["ParaValue"] = self.paraValue!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginRunningTime") {
                    self.beginRunningTime = dict["BeginRunningTime"] as! String
                }
                if dict.keys.contains("BeginWaitResTime") {
                    self.beginWaitResTime = dict["BeginWaitResTime"] as! String
                }
                if dict.keys.contains("BeginWaitTimeTime") {
                    self.beginWaitTimeTime = dict["BeginWaitTimeTime"] as! String
                }
                if dict.keys.contains("Bizdate") {
                    self.bizdate = dict["Bizdate"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DagId") {
                    self.dagId = dict["DagId"] as! Int64
                }
                if dict.keys.contains("DagType") {
                    self.dagType = dict["DagType"] as! Int32
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! Int64
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! String
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("ParaValue") {
                    self.paraValue = dict["ParaValue"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var nodeInsInfo: [SearchManualDagNodeInstanceResponseBody.Data.NodeInsInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeInsInfo != nil {
                var tmp : [Any] = []
                for k in self.nodeInsInfo! {
                    tmp.append(k.toMap())
                }
                map["NodeInsInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeInsInfo") {
                var tmp : [SearchManualDagNodeInstanceResponseBody.Data.NodeInsInfo] = []
                for v in dict["NodeInsInfo"] as! [Any] {
                    var model = SearchManualDagNodeInstanceResponseBody.Data.NodeInsInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodeInsInfo = tmp
            }
        }
    }
    public var data: SearchManualDagNodeInstanceResponseBody.Data?

    public var errCode: String?

    public var errMsg: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["ErrMsg"] = self.errMsg!
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
        if dict.keys.contains("Data") {
            var model = SearchManualDagNodeInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMsg") {
            self.errMsg = dict["ErrMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SearchManualDagNodeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchManualDagNodeInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchManualDagNodeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendTaskMetaCallbackRequest : Tea.TeaModel {
    public var code: String?

    public var connectionInfo: String?

    public var endTime: Int64?

    public var resources: [String]?

    public var startTime: Int64?

    public var subType: String?

    public var taskEnvParam: String?

    public var tenantId: Int64?

    public var type: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.connectionInfo != nil {
            map["ConnectionInfo"] = self.connectionInfo!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        if self.taskEnvParam != nil {
            map["TaskEnvParam"] = self.taskEnvParam!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConnectionInfo") {
            self.connectionInfo = dict["ConnectionInfo"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [String]
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("SubType") {
            self.subType = dict["SubType"] as! String
        }
        if dict.keys.contains("TaskEnvParam") {
            self.taskEnvParam = dict["TaskEnvParam"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class SendTaskMetaCallbackResponseBody : Tea.TeaModel {
    public var data: String?

    public var errMsg: String?

    public var errorCode: Int64?

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
        if self.errMsg != nil {
            map["ErrMsg"] = self.errMsg!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrMsg") {
            self.errMsg = dict["ErrMsg"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendTaskMetaCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendTaskMetaCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendTaskMetaCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSwitchValueRequest : Tea.TeaModel {
    public var switchName: String?

    public var switchValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.switchName != nil {
            map["SwitchName"] = self.switchName!
        }
        if self.switchValue != nil {
            map["SwitchValue"] = self.switchValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SwitchName") {
            self.switchName = dict["SwitchName"] as! String
        }
        if dict.keys.contains("SwitchValue") {
            self.switchValue = dict["SwitchValue"] as! String
        }
    }
}

public class SetSwitchValueResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetSwitchValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSwitchValueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetSwitchValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartCollectQualityRequest : Tea.TeaModel {
    public var callbackResultString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackResultString != nil {
            map["CallbackResultString"] = self.callbackResultString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallbackResultString") {
            self.callbackResultString = dict["CallbackResultString"] as! String
        }
    }
}

public class StartCollectQualityResponseBody : Tea.TeaModel {
    public class ReturnValue : Tea.TeaModel {
        public class StrongMethodSet : Tea.TeaModel {
            public var colName: String?

            public var isColRule: Bool?

            public var isSqlRule: Bool?

            public var isStrongRule: Bool?

            public var methodName: String?

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
                if self.colName != nil {
                    map["ColName"] = self.colName!
                }
                if self.isColRule != nil {
                    map["IsColRule"] = self.isColRule!
                }
                if self.isSqlRule != nil {
                    map["IsSqlRule"] = self.isSqlRule!
                }
                if self.isStrongRule != nil {
                    map["IsStrongRule"] = self.isStrongRule!
                }
                if self.methodName != nil {
                    map["MethodName"] = self.methodName!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ColName") {
                    self.colName = dict["ColName"] as! String
                }
                if dict.keys.contains("IsColRule") {
                    self.isColRule = dict["IsColRule"] as! Bool
                }
                if dict.keys.contains("IsSqlRule") {
                    self.isSqlRule = dict["IsSqlRule"] as! Bool
                }
                if dict.keys.contains("IsStrongRule") {
                    self.isStrongRule = dict["IsStrongRule"] as! Bool
                }
                if dict.keys.contains("MethodName") {
                    self.methodName = dict["MethodName"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public class WeakMethodSet : Tea.TeaModel {
            public var colName: String?

            public var isColRule: Bool?

            public var isSqlRule: Bool?

            public var isStrongRule: Bool?

            public var methodName: String?

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
                if self.colName != nil {
                    map["ColName"] = self.colName!
                }
                if self.isColRule != nil {
                    map["IsColRule"] = self.isColRule!
                }
                if self.isSqlRule != nil {
                    map["IsSqlRule"] = self.isSqlRule!
                }
                if self.isStrongRule != nil {
                    map["IsStrongRule"] = self.isStrongRule!
                }
                if self.methodName != nil {
                    map["MethodName"] = self.methodName!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ColName") {
                    self.colName = dict["ColName"] as! String
                }
                if dict.keys.contains("IsColRule") {
                    self.isColRule = dict["IsColRule"] as! Bool
                }
                if dict.keys.contains("IsSqlRule") {
                    self.isSqlRule = dict["IsSqlRule"] as! Bool
                }
                if dict.keys.contains("IsStrongRule") {
                    self.isStrongRule = dict["IsStrongRule"] as! Bool
                }
                if dict.keys.contains("MethodName") {
                    self.methodName = dict["MethodName"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var actualExpression: String?

        public var bizDate: String?

        public var callbackUrl: String?

        public var connection: String?

        public var entityId: Int64?

        public var matchExpression: String?

        public var pluginName: String?

        public var strongMethodSet: [StartCollectQualityResponseBody.ReturnValue.StrongMethodSet]?

        public var tableGuid: String?

        public var taskId: String?

        public var weakMethodSet: [StartCollectQualityResponseBody.ReturnValue.WeakMethodSet]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualExpression != nil {
                map["ActualExpression"] = self.actualExpression!
            }
            if self.bizDate != nil {
                map["BizDate"] = self.bizDate!
            }
            if self.callbackUrl != nil {
                map["CallbackUrl"] = self.callbackUrl!
            }
            if self.connection != nil {
                map["Connection"] = self.connection!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.matchExpression != nil {
                map["MatchExpression"] = self.matchExpression!
            }
            if self.pluginName != nil {
                map["PluginName"] = self.pluginName!
            }
            if self.strongMethodSet != nil {
                var tmp : [Any] = []
                for k in self.strongMethodSet! {
                    tmp.append(k.toMap())
                }
                map["StrongMethodSet"] = tmp
            }
            if self.tableGuid != nil {
                map["TableGuid"] = self.tableGuid!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.weakMethodSet != nil {
                var tmp : [Any] = []
                for k in self.weakMethodSet! {
                    tmp.append(k.toMap())
                }
                map["WeakMethodSet"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActualExpression") {
                self.actualExpression = dict["ActualExpression"] as! String
            }
            if dict.keys.contains("BizDate") {
                self.bizDate = dict["BizDate"] as! String
            }
            if dict.keys.contains("CallbackUrl") {
                self.callbackUrl = dict["CallbackUrl"] as! String
            }
            if dict.keys.contains("Connection") {
                self.connection = dict["Connection"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("MatchExpression") {
                self.matchExpression = dict["MatchExpression"] as! String
            }
            if dict.keys.contains("PluginName") {
                self.pluginName = dict["PluginName"] as! String
            }
            if dict.keys.contains("StrongMethodSet") {
                var tmp : [StartCollectQualityResponseBody.ReturnValue.StrongMethodSet] = []
                for v in dict["StrongMethodSet"] as! [Any] {
                    var model = StartCollectQualityResponseBody.ReturnValue.StrongMethodSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.strongMethodSet = tmp
            }
            if dict.keys.contains("TableGuid") {
                self.tableGuid = dict["TableGuid"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("WeakMethodSet") {
                var tmp : [StartCollectQualityResponseBody.ReturnValue.WeakMethodSet] = []
                for v in dict["WeakMethodSet"] as! [Any] {
                    var model = StartCollectQualityResponseBody.ReturnValue.WeakMethodSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.weakMethodSet = tmp
            }
        }
    }
    public var requestId: String?

    public var returnCode: String?

    public var returnValue: [StartCollectQualityResponseBody.ReturnValue]?

    public override init() {
        super.init()
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
        if self.returnCode != nil {
            map["ReturnCode"] = self.returnCode!
        }
        if self.returnValue != nil {
            var tmp : [Any] = []
            for k in self.returnValue! {
                tmp.append(k.toMap())
            }
            map["ReturnValue"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReturnCode") {
            self.returnCode = dict["ReturnCode"] as! String
        }
        if dict.keys.contains("ReturnValue") {
            var tmp : [StartCollectQualityResponseBody.ReturnValue] = []
            for v in dict["ReturnValue"] as! [Any] {
                var model = StartCollectQualityResponseBody.ReturnValue()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.returnValue = tmp
        }
    }
}

public class StartCollectQualityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartCollectQualityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartCollectQualityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDoCheckQualityRequest : Tea.TeaModel {
    public var callbackResultString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackResultString != nil {
            map["CallbackResultString"] = self.callbackResultString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallbackResultString") {
            self.callbackResultString = dict["CallbackResultString"] as! String
        }
    }
}

public class StartDoCheckQualityResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var returnCode: String?

    public var returnValue: Bool?

    public override init() {
        super.init()
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
        if self.returnCode != nil {
            map["ReturnCode"] = self.returnCode!
        }
        if self.returnValue != nil {
            map["ReturnValue"] = self.returnValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReturnCode") {
            self.returnCode = dict["ReturnCode"] as! String
        }
        if dict.keys.contains("ReturnValue") {
            self.returnValue = dict["ReturnValue"] as! Bool
        }
    }
}

public class StartDoCheckQualityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDoCheckQualityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartDoCheckQualityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartTaskQualityRequest : Tea.TeaModel {
    public var callbackResultString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackResultString != nil {
            map["CallbackResultString"] = self.callbackResultString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallbackResultString") {
            self.callbackResultString = dict["CallbackResultString"] as! String
        }
    }
}

public class StartTaskQualityResponseBody : Tea.TeaModel {
    public class ReturnValue : Tea.TeaModel {
        public class StrongMethodSet : Tea.TeaModel {
            public var colName: String?

            public var isColRule: Bool?

            public var isSqlRule: Bool?

            public var isStrongRule: Bool?

            public var methodName: String?

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
                if self.colName != nil {
                    map["ColName"] = self.colName!
                }
                if self.isColRule != nil {
                    map["IsColRule"] = self.isColRule!
                }
                if self.isSqlRule != nil {
                    map["IsSqlRule"] = self.isSqlRule!
                }
                if self.isStrongRule != nil {
                    map["IsStrongRule"] = self.isStrongRule!
                }
                if self.methodName != nil {
                    map["MethodName"] = self.methodName!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ColName") {
                    self.colName = dict["ColName"] as! String
                }
                if dict.keys.contains("IsColRule") {
                    self.isColRule = dict["IsColRule"] as! Bool
                }
                if dict.keys.contains("IsSqlRule") {
                    self.isSqlRule = dict["IsSqlRule"] as! Bool
                }
                if dict.keys.contains("IsStrongRule") {
                    self.isStrongRule = dict["IsStrongRule"] as! Bool
                }
                if dict.keys.contains("MethodName") {
                    self.methodName = dict["MethodName"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public class WeakMethodSet : Tea.TeaModel {
            public var colName: String?

            public var isColRule: Bool?

            public var isSqlRule: Bool?

            public var isStrongRule: Bool?

            public var methodName: String?

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
                if self.colName != nil {
                    map["ColName"] = self.colName!
                }
                if self.isColRule != nil {
                    map["IsColRule"] = self.isColRule!
                }
                if self.isSqlRule != nil {
                    map["IsSqlRule"] = self.isSqlRule!
                }
                if self.isStrongRule != nil {
                    map["IsStrongRule"] = self.isStrongRule!
                }
                if self.methodName != nil {
                    map["MethodName"] = self.methodName!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ColName") {
                    self.colName = dict["ColName"] as! String
                }
                if dict.keys.contains("IsColRule") {
                    self.isColRule = dict["IsColRule"] as! Bool
                }
                if dict.keys.contains("IsSqlRule") {
                    self.isSqlRule = dict["IsSqlRule"] as! Bool
                }
                if dict.keys.contains("IsStrongRule") {
                    self.isStrongRule = dict["IsStrongRule"] as! Bool
                }
                if dict.keys.contains("MethodName") {
                    self.methodName = dict["MethodName"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var actualExpression: String?

        public var bizDate: String?

        public var callbackUrl: String?

        public var connection: String?

        public var entityId: Int64?

        public var matchExpression: String?

        public var pluginName: String?

        public var statisticsFlag: Int64?

        public var strongMethodSet: [StartTaskQualityResponseBody.ReturnValue.StrongMethodSet]?

        public var tableGuid: String?

        public var taskId: String?

        public var triggerFlag: Int64?

        public var weakMethodSet: [StartTaskQualityResponseBody.ReturnValue.WeakMethodSet]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualExpression != nil {
                map["ActualExpression"] = self.actualExpression!
            }
            if self.bizDate != nil {
                map["BizDate"] = self.bizDate!
            }
            if self.callbackUrl != nil {
                map["CallbackUrl"] = self.callbackUrl!
            }
            if self.connection != nil {
                map["Connection"] = self.connection!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.matchExpression != nil {
                map["MatchExpression"] = self.matchExpression!
            }
            if self.pluginName != nil {
                map["PluginName"] = self.pluginName!
            }
            if self.statisticsFlag != nil {
                map["StatisticsFlag"] = self.statisticsFlag!
            }
            if self.strongMethodSet != nil {
                var tmp : [Any] = []
                for k in self.strongMethodSet! {
                    tmp.append(k.toMap())
                }
                map["StrongMethodSet"] = tmp
            }
            if self.tableGuid != nil {
                map["TableGuid"] = self.tableGuid!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.triggerFlag != nil {
                map["TriggerFlag"] = self.triggerFlag!
            }
            if self.weakMethodSet != nil {
                var tmp : [Any] = []
                for k in self.weakMethodSet! {
                    tmp.append(k.toMap())
                }
                map["WeakMethodSet"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActualExpression") {
                self.actualExpression = dict["ActualExpression"] as! String
            }
            if dict.keys.contains("BizDate") {
                self.bizDate = dict["BizDate"] as! String
            }
            if dict.keys.contains("CallbackUrl") {
                self.callbackUrl = dict["CallbackUrl"] as! String
            }
            if dict.keys.contains("Connection") {
                self.connection = dict["Connection"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("MatchExpression") {
                self.matchExpression = dict["MatchExpression"] as! String
            }
            if dict.keys.contains("PluginName") {
                self.pluginName = dict["PluginName"] as! String
            }
            if dict.keys.contains("StatisticsFlag") {
                self.statisticsFlag = dict["StatisticsFlag"] as! Int64
            }
            if dict.keys.contains("StrongMethodSet") {
                var tmp : [StartTaskQualityResponseBody.ReturnValue.StrongMethodSet] = []
                for v in dict["StrongMethodSet"] as! [Any] {
                    var model = StartTaskQualityResponseBody.ReturnValue.StrongMethodSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.strongMethodSet = tmp
            }
            if dict.keys.contains("TableGuid") {
                self.tableGuid = dict["TableGuid"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TriggerFlag") {
                self.triggerFlag = dict["TriggerFlag"] as! Int64
            }
            if dict.keys.contains("WeakMethodSet") {
                var tmp : [StartTaskQualityResponseBody.ReturnValue.WeakMethodSet] = []
                for v in dict["WeakMethodSet"] as! [Any] {
                    var model = StartTaskQualityResponseBody.ReturnValue.WeakMethodSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.weakMethodSet = tmp
            }
        }
    }
    public var requestId: String?

    public var returnCode: String?

    public var returnValue: StartTaskQualityResponseBody.ReturnValue?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.returnValue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.returnCode != nil {
            map["ReturnCode"] = self.returnCode!
        }
        if self.returnValue != nil {
            map["ReturnValue"] = self.returnValue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReturnCode") {
            self.returnCode = dict["ReturnCode"] as! String
        }
        if dict.keys.contains("ReturnValue") {
            var model = StartTaskQualityResponseBody.ReturnValue()
            model.fromMap(dict["ReturnValue"] as! [String: Any])
            self.returnValue = model
        }
    }
}

public class StartTaskQualityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTaskQualityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartTaskQualityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerDataLoaderResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TriggerDataLoaderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerDataLoaderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TriggerDataLoaderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerTimeMachineTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var hostName: String?

        public var id: String?

        public var objId: String?

        public var objName: String?

        public var operType: String?

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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.objId != nil {
                map["ObjId"] = self.objId!
            }
            if self.objName != nil {
                map["ObjName"] = self.objName!
            }
            if self.operType != nil {
                map["OperType"] = self.operType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ObjId") {
                self.objId = dict["ObjId"] as! String
            }
            if dict.keys.contains("ObjName") {
                self.objName = dict["ObjName"] as! String
            }
            if dict.keys.contains("OperType") {
                self.operType = dict["OperType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var data: TriggerTimeMachineTaskResponseBody.Data?

    public var errCode: String?

    public var errMsg: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["ErrMsg"] = self.errMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = TriggerTimeMachineTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMsg") {
            self.errMsg = dict["ErrMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TriggerTimeMachineTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerTimeMachineTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TriggerTimeMachineTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
