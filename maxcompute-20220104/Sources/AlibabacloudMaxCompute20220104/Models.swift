import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApplyComputeQuotaPlanResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ApplyComputeQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyComputeQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ApplyComputeQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateComputeQuotaPlanRequest : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public class Parameter : Tea.TeaModel {
            public var elasticReservedCU: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.elasticReservedCU != nil {
                    map["elasticReservedCU"] = self.elasticReservedCU!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("elasticReservedCU") {
                    self.elasticReservedCU = dict["elasticReservedCU"] as! Int64
                }
            }
        }
        public class SubQuotaInfoList : Tea.TeaModel {
            public class Parameter : Tea.TeaModel {
                public var elasticReservedCU: Int64?

                public var maxCU: Int64?

                public var minCU: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.elasticReservedCU != nil {
                        map["elasticReservedCU"] = self.elasticReservedCU!
                    }
                    if self.maxCU != nil {
                        map["maxCU"] = self.maxCU!
                    }
                    if self.minCU != nil {
                        map["minCU"] = self.minCU!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("elasticReservedCU") {
                        self.elasticReservedCU = dict["elasticReservedCU"] as! Int64
                    }
                    if dict.keys.contains("maxCU") {
                        self.maxCU = dict["maxCU"] as! Int64
                    }
                    if dict.keys.contains("minCU") {
                        self.minCU = dict["minCU"] as! Int64
                    }
                }
            }
            public var nickName: String?

            public var parameter: CreateComputeQuotaPlanRequest.Quota.SubQuotaInfoList.Parameter?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.parameter?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    var model = CreateComputeQuotaPlanRequest.Quota.SubQuotaInfoList.Parameter()
                    model.fromMap(dict["parameter"] as! [String: Any])
                    self.parameter = model
                }
            }
        }
        public var parameter: CreateComputeQuotaPlanRequest.Quota.Parameter?

        public var subQuotaInfoList: [CreateComputeQuotaPlanRequest.Quota.SubQuotaInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.parameter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameter != nil {
                map["parameter"] = self.parameter?.toMap()
            }
            if self.subQuotaInfoList != nil {
                var tmp : [Any] = []
                for k in self.subQuotaInfoList! {
                    tmp.append(k.toMap())
                }
                map["subQuotaInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("parameter") {
                var model = CreateComputeQuotaPlanRequest.Quota.Parameter()
                model.fromMap(dict["parameter"] as! [String: Any])
                self.parameter = model
            }
            if dict.keys.contains("subQuotaInfoList") {
                var tmp : [CreateComputeQuotaPlanRequest.Quota.SubQuotaInfoList] = []
                for v in dict["subQuotaInfoList"] as! [Any] {
                    var model = CreateComputeQuotaPlanRequest.Quota.SubQuotaInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subQuotaInfoList = tmp
            }
        }
    }
    public var name: String?

    public var quota: CreateComputeQuotaPlanRequest.Quota?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("quota") {
            var model = CreateComputeQuotaPlanRequest.Quota()
            model.fromMap(dict["quota"] as! [String: Any])
            self.quota = model
        }
    }
}

public class CreateComputeQuotaPlanResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateComputeQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateComputeQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateComputeQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMmsDataSourceRequest : Tea.TeaModel {
    public var config: [String: Any]?

    public var name: String?

    public var networklink: String?

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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networklink != nil {
            map["networklink"] = self.networklink!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") {
            self.config = dict["config"] as! [String: Any]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("networklink") {
            self.networklink = dict["networklink"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateMmsDataSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataSourceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSourceId != nil {
                map["dataSourceId"] = self.dataSourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dataSourceId") {
                self.dataSourceId = dict["dataSourceId"] as! Int64
            }
        }
    }
    public var data: CreateMmsDataSourceResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = CreateMmsDataSourceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateMmsDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMmsDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMmsDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMmsFetchMetadataJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var scanId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scanId != nil {
                map["scanId"] = self.scanId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("scanId") {
                self.scanId = dict["scanId"] as! Int64
            }
        }
    }
    public var data: CreateMmsFetchMetadataJobResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = CreateMmsFetchMetadataJobResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateMmsFetchMetadataJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMmsFetchMetadataJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMmsFetchMetadataJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMmsJobRequest : Tea.TeaModel {
    public var columnMapping: [String: String]?

    public var dstDbName: String?

    public var dstSchemaName: String?

    public var enableVerification: Bool?

    public var eta: String?

    public var increment: Bool?

    public var name: String?

    public var others: [String: Any]?

    public var partitionFilters: [String: String]?

    public var partitions: [Int64]?

    public var schemaOnly: Bool?

    public var sourceId: Int64?

    public var sourceName: String?

    public var srcDbName: String?

    public var srcSchemaName: String?

    public var tableBlackList: [String]?

    public var tableMapping: [String: String]?

    public var tableWhiteList: [String]?

    public var tables: [String]?

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
        if self.columnMapping != nil {
            map["columnMapping"] = self.columnMapping!
        }
        if self.dstDbName != nil {
            map["dstDbName"] = self.dstDbName!
        }
        if self.dstSchemaName != nil {
            map["dstSchemaName"] = self.dstSchemaName!
        }
        if self.enableVerification != nil {
            map["enableVerification"] = self.enableVerification!
        }
        if self.eta != nil {
            map["eta"] = self.eta!
        }
        if self.increment != nil {
            map["increment"] = self.increment!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.others != nil {
            map["others"] = self.others!
        }
        if self.partitionFilters != nil {
            map["partitionFilters"] = self.partitionFilters!
        }
        if self.partitions != nil {
            map["partitions"] = self.partitions!
        }
        if self.schemaOnly != nil {
            map["schemaOnly"] = self.schemaOnly!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceName != nil {
            map["sourceName"] = self.sourceName!
        }
        if self.srcDbName != nil {
            map["srcDbName"] = self.srcDbName!
        }
        if self.srcSchemaName != nil {
            map["srcSchemaName"] = self.srcSchemaName!
        }
        if self.tableBlackList != nil {
            map["tableBlackList"] = self.tableBlackList!
        }
        if self.tableMapping != nil {
            map["tableMapping"] = self.tableMapping!
        }
        if self.tableWhiteList != nil {
            map["tableWhiteList"] = self.tableWhiteList!
        }
        if self.tables != nil {
            map["tables"] = self.tables!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columnMapping") {
            self.columnMapping = dict["columnMapping"] as! [String: String]
        }
        if dict.keys.contains("dstDbName") {
            self.dstDbName = dict["dstDbName"] as! String
        }
        if dict.keys.contains("dstSchemaName") {
            self.dstSchemaName = dict["dstSchemaName"] as! String
        }
        if dict.keys.contains("enableVerification") {
            self.enableVerification = dict["enableVerification"] as! Bool
        }
        if dict.keys.contains("eta") {
            self.eta = dict["eta"] as! String
        }
        if dict.keys.contains("increment") {
            self.increment = dict["increment"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("others") {
            self.others = dict["others"] as! [String: Any]
        }
        if dict.keys.contains("partitionFilters") {
            self.partitionFilters = dict["partitionFilters"] as! [String: String]
        }
        if dict.keys.contains("partitions") {
            self.partitions = dict["partitions"] as! [Int64]
        }
        if dict.keys.contains("schemaOnly") {
            self.schemaOnly = dict["schemaOnly"] as! Bool
        }
        if dict.keys.contains("sourceId") {
            self.sourceId = dict["sourceId"] as! Int64
        }
        if dict.keys.contains("sourceName") {
            self.sourceName = dict["sourceName"] as! String
        }
        if dict.keys.contains("srcDbName") {
            self.srcDbName = dict["srcDbName"] as! String
        }
        if dict.keys.contains("srcSchemaName") {
            self.srcSchemaName = dict["srcSchemaName"] as! String
        }
        if dict.keys.contains("tableBlackList") {
            self.tableBlackList = dict["tableBlackList"] as! [String]
        }
        if dict.keys.contains("tableMapping") {
            self.tableMapping = dict["tableMapping"] as! [String: String]
        }
        if dict.keys.contains("tableWhiteList") {
            self.tableWhiteList = dict["tableWhiteList"] as! [String]
        }
        if dict.keys.contains("tables") {
            self.tables = dict["tables"] as! [String]
        }
        if dict.keys.contains("taskType") {
            self.taskType = dict["taskType"] as! String
        }
    }
}

public class CreateMmsJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var asyncTaskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncTaskId != nil {
                map["asyncTaskId"] = self.asyncTaskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("asyncTaskId") {
                self.asyncTaskId = dict["asyncTaskId"] as! Int64
            }
        }
    }
    public var data: CreateMmsJobResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = CreateMmsJobResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateMmsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMmsJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMmsJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePackageRequest : Tea.TeaModel {
    public var body: String?

    public var isInstall: Bool?

    public override init() {
        super.init()
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
        if self.isInstall != nil {
            map["isInstall"] = self.isInstall!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
        if dict.keys.contains("isInstall") {
            self.isInstall = dict["isInstall"] as! Bool
        }
    }
}

public class CreatePackageResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreatePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var body: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateQuotaPlanRequest : Tea.TeaModel {
    public var body: String?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class CreateQuotaPlanResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRoleRequest : Tea.TeaModel {
    public var body: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
    }
}

public class CreateRoleResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteComputeQuotaPlanResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteComputeQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteComputeQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteComputeQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMmsDataSourceResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteMmsDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMmsDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMmsDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMmsJobResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteMmsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMmsJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMmsJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteQuotaPlanRequest : Tea.TeaModel {
    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class DeleteQuotaPlanResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetComputeEffectivePlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public class SubQuotaInfoList : Tea.TeaModel {
                public var cluster: String?

                public var createTime: Int64?

                public var creatorId: String?

                public var id: String?

                public var name: String?

                public var nickName: String?

                public var parameter: [String: Any]?

                public var regionId: String?

                public var status: String?

                public var tenantId: String?

                public var type: String?

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
                    if self.cluster != nil {
                        map["cluster"] = self.cluster!
                    }
                    if self.createTime != nil {
                        map["createTime"] = self.createTime!
                    }
                    if self.creatorId != nil {
                        map["creatorId"] = self.creatorId!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nickName != nil {
                        map["nickName"] = self.nickName!
                    }
                    if self.parameter != nil {
                        map["parameter"] = self.parameter!
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.tenantId != nil {
                        map["tenantId"] = self.tenantId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cluster") {
                        self.cluster = dict["cluster"] as! String
                    }
                    if dict.keys.contains("createTime") {
                        self.createTime = dict["createTime"] as! Int64
                    }
                    if dict.keys.contains("creatorId") {
                        self.creatorId = dict["creatorId"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nickName") {
                        self.nickName = dict["nickName"] as! String
                    }
                    if dict.keys.contains("parameter") {
                        self.parameter = dict["parameter"] as! [String: Any]
                    }
                    if dict.keys.contains("regionId") {
                        self.regionId = dict["regionId"] as! String
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("tenantId") {
                        self.tenantId = dict["tenantId"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public var cluster: String?

            public var createTime: Int64?

            public var creatorId: String?

            public var id: String?

            public var name: String?

            public var nickName: String?

            public var parameter: [String: Any]?

            public var regionId: String?

            public var status: String?

            public var subQuotaInfoList: [GetComputeEffectivePlanResponseBody.Data.Quota.SubQuotaInfoList]?

            public var tenantId: String?

            public var type: String?

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
                if self.cluster != nil {
                    map["cluster"] = self.cluster!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorId != nil {
                    map["creatorId"] = self.creatorId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subQuotaInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.subQuotaInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["subQuotaInfoList"] = tmp
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cluster") {
                    self.cluster = dict["cluster"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorId") {
                    self.creatorId = dict["creatorId"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    self.parameter = dict["parameter"] as! [String: Any]
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("subQuotaInfoList") {
                    var tmp : [GetComputeEffectivePlanResponseBody.Data.Quota.SubQuotaInfoList] = []
                    for v in dict["subQuotaInfoList"] as! [Any] {
                        var model = GetComputeEffectivePlanResponseBody.Data.Quota.SubQuotaInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subQuotaInfoList = tmp
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var createTime: String?

        public var isEffective: Bool?

        public var name: String?

        public var quota: GetComputeEffectivePlanResponseBody.Data.Quota?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.isEffective != nil {
                map["isEffective"] = self.isEffective!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("isEffective") {
                self.isEffective = dict["isEffective"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("quota") {
                var model = GetComputeEffectivePlanResponseBody.Data.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
        }
    }
    public var data: GetComputeEffectivePlanResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetComputeEffectivePlanResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetComputeEffectivePlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetComputeEffectivePlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetComputeEffectivePlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetComputeQuotaPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public class Parameter : Tea.TeaModel {
                public var elasticReservedCU: Int64?

                public var maxCU: Int64?

                public var minCU: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.elasticReservedCU != nil {
                        map["elasticReservedCU"] = self.elasticReservedCU!
                    }
                    if self.maxCU != nil {
                        map["maxCU"] = self.maxCU!
                    }
                    if self.minCU != nil {
                        map["minCU"] = self.minCU!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("elasticReservedCU") {
                        self.elasticReservedCU = dict["elasticReservedCU"] as! Int64
                    }
                    if dict.keys.contains("maxCU") {
                        self.maxCU = dict["maxCU"] as! Int64
                    }
                    if dict.keys.contains("minCU") {
                        self.minCU = dict["minCU"] as! Int64
                    }
                }
            }
            public class SubQuotaInfoList : Tea.TeaModel {
                public class Parameter : Tea.TeaModel {
                    public var elasticReservedCU: Int64?

                    public var enablePriority: Bool?

                    public var forceReservedMin: Bool?

                    public var maxCU: Int64?

                    public var minCU: Int64?

                    public var schedulerType: String?

                    public var singleJobCULimit: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.elasticReservedCU != nil {
                            map["elasticReservedCU"] = self.elasticReservedCU!
                        }
                        if self.enablePriority != nil {
                            map["enablePriority"] = self.enablePriority!
                        }
                        if self.forceReservedMin != nil {
                            map["forceReservedMin"] = self.forceReservedMin!
                        }
                        if self.maxCU != nil {
                            map["maxCU"] = self.maxCU!
                        }
                        if self.minCU != nil {
                            map["minCU"] = self.minCU!
                        }
                        if self.schedulerType != nil {
                            map["schedulerType"] = self.schedulerType!
                        }
                        if self.singleJobCULimit != nil {
                            map["singleJobCULimit"] = self.singleJobCULimit!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("elasticReservedCU") {
                            self.elasticReservedCU = dict["elasticReservedCU"] as! Int64
                        }
                        if dict.keys.contains("enablePriority") {
                            self.enablePriority = dict["enablePriority"] as! Bool
                        }
                        if dict.keys.contains("forceReservedMin") {
                            self.forceReservedMin = dict["forceReservedMin"] as! Bool
                        }
                        if dict.keys.contains("maxCU") {
                            self.maxCU = dict["maxCU"] as! Int64
                        }
                        if dict.keys.contains("minCU") {
                            self.minCU = dict["minCU"] as! Int64
                        }
                        if dict.keys.contains("schedulerType") {
                            self.schedulerType = dict["schedulerType"] as! String
                        }
                        if dict.keys.contains("singleJobCULimit") {
                            self.singleJobCULimit = dict["singleJobCULimit"] as! Int64
                        }
                    }
                }
                public var cluster: String?

                public var createTime: Int64?

                public var creatorId: String?

                public var id: String?

                public var name: String?

                public var nickName: String?

                public var parameter: GetComputeQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList.Parameter?

                public var regionId: String?

                public var status: String?

                public var tenantId: String?

                public var type: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.parameter?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cluster != nil {
                        map["cluster"] = self.cluster!
                    }
                    if self.createTime != nil {
                        map["createTime"] = self.createTime!
                    }
                    if self.creatorId != nil {
                        map["creatorId"] = self.creatorId!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nickName != nil {
                        map["nickName"] = self.nickName!
                    }
                    if self.parameter != nil {
                        map["parameter"] = self.parameter?.toMap()
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.tenantId != nil {
                        map["tenantId"] = self.tenantId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cluster") {
                        self.cluster = dict["cluster"] as! String
                    }
                    if dict.keys.contains("createTime") {
                        self.createTime = dict["createTime"] as! Int64
                    }
                    if dict.keys.contains("creatorId") {
                        self.creatorId = dict["creatorId"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nickName") {
                        self.nickName = dict["nickName"] as! String
                    }
                    if dict.keys.contains("parameter") {
                        var model = GetComputeQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList.Parameter()
                        model.fromMap(dict["parameter"] as! [String: Any])
                        self.parameter = model
                    }
                    if dict.keys.contains("regionId") {
                        self.regionId = dict["regionId"] as! String
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("tenantId") {
                        self.tenantId = dict["tenantId"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public var cluster: String?

            public var createTime: Int64?

            public var creatorId: String?

            public var id: String?

            public var name: String?

            public var nickName: String?

            public var parameter: GetComputeQuotaPlanResponseBody.Data.Quota.Parameter?

            public var regionId: String?

            public var status: String?

            public var subQuotaInfoList: [GetComputeQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList]?

            public var tenantId: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.parameter?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cluster != nil {
                    map["cluster"] = self.cluster!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorId != nil {
                    map["creatorId"] = self.creatorId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter?.toMap()
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subQuotaInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.subQuotaInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["subQuotaInfoList"] = tmp
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cluster") {
                    self.cluster = dict["cluster"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorId") {
                    self.creatorId = dict["creatorId"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    var model = GetComputeQuotaPlanResponseBody.Data.Quota.Parameter()
                    model.fromMap(dict["parameter"] as! [String: Any])
                    self.parameter = model
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("subQuotaInfoList") {
                    var tmp : [GetComputeQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList] = []
                    for v in dict["subQuotaInfoList"] as! [Any] {
                        var model = GetComputeQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subQuotaInfoList = tmp
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var createTime: String?

        public var isEffective: Bool?

        public var name: String?

        public var quota: GetComputeQuotaPlanResponseBody.Data.Quota?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.isEffective != nil {
                map["isEffective"] = self.isEffective!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("isEffective") {
                self.isEffective = dict["isEffective"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("quota") {
                var model = GetComputeQuotaPlanResponseBody.Data.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
        }
    }
    public var data: GetComputeQuotaPlanResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetComputeQuotaPlanResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetComputeQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetComputeQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetComputeQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetComputeQuotaScheduleRequest : Tea.TeaModel {
    public var displayTimezone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayTimezone != nil {
            map["displayTimezone"] = self.displayTimezone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("displayTimezone") {
            self.displayTimezone = dict["displayTimezone"] as! String
        }
    }
}

public class GetComputeQuotaScheduleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Condition : Tea.TeaModel {
            public var at: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.at != nil {
                    map["at"] = self.at!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("at") {
                    self.at = dict["at"] as! String
                }
            }
        }
        public var condition: GetComputeQuotaScheduleResponseBody.Data.Condition?

        public var id: String?

        public var plan: String?

        public var timezone: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.condition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.condition != nil {
                map["condition"] = self.condition?.toMap()
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.plan != nil {
                map["plan"] = self.plan!
            }
            if self.timezone != nil {
                map["timezone"] = self.timezone!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("condition") {
                var model = GetComputeQuotaScheduleResponseBody.Data.Condition()
                model.fromMap(dict["condition"] as! [String: Any])
                self.condition = model
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("plan") {
                self.plan = dict["plan"] as! String
            }
            if dict.keys.contains("timezone") {
                self.timezone = dict["timezone"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var data: [GetComputeQuotaScheduleResponseBody.Data]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [GetComputeQuotaScheduleResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetComputeQuotaScheduleResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetComputeQuotaScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetComputeQuotaScheduleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetComputeQuotaScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobResourceUsageRequest : Tea.TeaModel {
    public var date: String?

    public var jobOwnerList: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var quotaNicknameList: [String]?

    public override init() {
        super.init()
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
        if self.jobOwnerList != nil {
            map["jobOwnerList"] = self.jobOwnerList!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.quotaNicknameList != nil {
            map["quotaNicknameList"] = self.quotaNicknameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("date") {
            self.date = dict["date"] as! String
        }
        if dict.keys.contains("jobOwnerList") {
            self.jobOwnerList = dict["jobOwnerList"] as! [String]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("quotaNicknameList") {
            self.quotaNicknameList = dict["quotaNicknameList"] as! [String]
        }
    }
}

public class GetJobResourceUsageShrinkRequest : Tea.TeaModel {
    public var date: String?

    public var jobOwnerListShrink: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var quotaNicknameListShrink: String?

    public override init() {
        super.init()
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
        if self.jobOwnerListShrink != nil {
            map["jobOwnerList"] = self.jobOwnerListShrink!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.quotaNicknameListShrink != nil {
            map["quotaNicknameList"] = self.quotaNicknameListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("date") {
            self.date = dict["date"] as! String
        }
        if dict.keys.contains("jobOwnerList") {
            self.jobOwnerListShrink = dict["jobOwnerList"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("quotaNicknameList") {
            self.quotaNicknameListShrink = dict["quotaNicknameList"] as! String
        }
    }
}

public class GetJobResourceUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobResourceUsageList : Tea.TeaModel {
            public var cuUsage: Int64?

            public var date: String?

            public var jobOwner: String?

            public var memoryUsage: Int64?

            public var quotaNickname: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cuUsage != nil {
                    map["cuUsage"] = self.cuUsage!
                }
                if self.date != nil {
                    map["date"] = self.date!
                }
                if self.jobOwner != nil {
                    map["jobOwner"] = self.jobOwner!
                }
                if self.memoryUsage != nil {
                    map["memoryUsage"] = self.memoryUsage!
                }
                if self.quotaNickname != nil {
                    map["quotaNickname"] = self.quotaNickname!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cuUsage") {
                    self.cuUsage = dict["cuUsage"] as! Int64
                }
                if dict.keys.contains("date") {
                    self.date = dict["date"] as! String
                }
                if dict.keys.contains("jobOwner") {
                    self.jobOwner = dict["jobOwner"] as! String
                }
                if dict.keys.contains("memoryUsage") {
                    self.memoryUsage = dict["memoryUsage"] as! Int64
                }
                if dict.keys.contains("quotaNickname") {
                    self.quotaNickname = dict["quotaNickname"] as! String
                }
            }
        }
        public var jobResourceUsageList: [GetJobResourceUsageResponseBody.Data.JobResourceUsageList]?

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
            if self.jobResourceUsageList != nil {
                var tmp : [Any] = []
                for k in self.jobResourceUsageList! {
                    tmp.append(k.toMap())
                }
                map["jobResourceUsageList"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("jobResourceUsageList") {
                var tmp : [GetJobResourceUsageResponseBody.Data.JobResourceUsageList] = []
                for v in dict["jobResourceUsageList"] as! [Any] {
                    var model = GetJobResourceUsageResponseBody.Data.JobResourceUsageList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobResourceUsageList = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
            }
        }
    }
    public var data: GetJobResourceUsageResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetJobResourceUsageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetJobResourceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobResourceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetJobResourceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMmsAsyncTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var endTime: String?

        public var errorMsg: String?

        public var id: Int64?

        public var objectId: Int64?

        public var progress: Int32?

        public var result: String?

        public var running: Bool?

        public var sourceId: Int64?

        public var startTime: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.progress != nil {
                map["progress"] = self.progress!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.running != nil {
                map["running"] = self.running!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("errorMsg") {
                self.errorMsg = dict["errorMsg"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("objectId") {
                self.objectId = dict["objectId"] as! Int64
            }
            if dict.keys.contains("progress") {
                self.progress = dict["progress"] as! Int32
            }
            if dict.keys.contains("result") {
                self.result = dict["result"] as! String
            }
            if dict.keys.contains("running") {
                self.running = dict["running"] as! Bool
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var data: GetMmsAsyncTaskResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetMmsAsyncTaskResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetMmsAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMmsAsyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMmsAsyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMmsDataSourceRequest : Tea.TeaModel {
    public var lang: String?

    public var withConfig: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["lang"] = self.lang!
        }
        if self.withConfig != nil {
            map["withConfig"] = self.withConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("lang") {
            self.lang = dict["lang"] as! String
        }
        if dict.keys.contains("withConfig") {
            self.withConfig = dict["withConfig"] as! Bool
        }
    }
}

public class GetMmsDataSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var desc: String?

            public var enums: [String]?

            public var group: String?

            public var key: String?

            public var name: String?

            public var placeHolder: String?

            public var required_: Bool?

            public var subType: String?

            public var type: String?

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
                if self.desc != nil {
                    map["desc"] = self.desc!
                }
                if self.enums != nil {
                    map["enums"] = self.enums!
                }
                if self.group != nil {
                    map["group"] = self.group!
                }
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.placeHolder != nil {
                    map["placeHolder"] = self.placeHolder!
                }
                if self.required_ != nil {
                    map["required"] = self.required_!
                }
                if self.subType != nil {
                    map["subType"] = self.subType!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("desc") {
                    self.desc = dict["desc"] as! String
                }
                if dict.keys.contains("enums") {
                    self.enums = dict["enums"] as! [String]
                }
                if dict.keys.contains("group") {
                    self.group = dict["group"] as! String
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("placeHolder") {
                    self.placeHolder = dict["placeHolder"] as! String
                }
                if dict.keys.contains("required") {
                    self.required_ = dict["required"] as! Bool
                }
                if dict.keys.contains("subType") {
                    self.subType = dict["subType"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! Any
                }
            }
        }
        public var agentIsOnline: Bool?

        public var config: [GetMmsDataSourceResponseBody.Data.Config]?

        public var createTime: String?

        public var dbNum: Int32?

        public var errMsg: String?

        public var id: Int64?

        public var lastUpdateTime: String?

        public var name: String?

        public var networklink: String?

        public var partitionNum: Int32?

        public var partitionsDoingNum: Int32?

        public var partitionsDoneNum: Int32?

        public var partitionsFailedNum: Int32?

        public var region: String?

        public var scanId: Int64?

        public var status: String?

        public var tableNum: Int32?

        public var tablesDoingNum: Int32?

        public var tablesDoneNum: Int32?

        public var tablesFailedNum: Int32?

        public var tablesPartDoneNum: Int32?

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
            if self.agentIsOnline != nil {
                map["agentIsOnline"] = self.agentIsOnline!
            }
            if self.config != nil {
                var tmp : [Any] = []
                for k in self.config! {
                    tmp.append(k.toMap())
                }
                map["config"] = tmp
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dbNum != nil {
                map["dbNum"] = self.dbNum!
            }
            if self.errMsg != nil {
                map["errMsg"] = self.errMsg!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.lastUpdateTime != nil {
                map["lastUpdateTime"] = self.lastUpdateTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networklink != nil {
                map["networklink"] = self.networklink!
            }
            if self.partitionNum != nil {
                map["partitionNum"] = self.partitionNum!
            }
            if self.partitionsDoingNum != nil {
                map["partitionsDoingNum"] = self.partitionsDoingNum!
            }
            if self.partitionsDoneNum != nil {
                map["partitionsDoneNum"] = self.partitionsDoneNum!
            }
            if self.partitionsFailedNum != nil {
                map["partitionsFailedNum"] = self.partitionsFailedNum!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.scanId != nil {
                map["scanId"] = self.scanId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tableNum != nil {
                map["tableNum"] = self.tableNum!
            }
            if self.tablesDoingNum != nil {
                map["tablesDoingNum"] = self.tablesDoingNum!
            }
            if self.tablesDoneNum != nil {
                map["tablesDoneNum"] = self.tablesDoneNum!
            }
            if self.tablesFailedNum != nil {
                map["tablesFailedNum"] = self.tablesFailedNum!
            }
            if self.tablesPartDoneNum != nil {
                map["tablesPartDoneNum"] = self.tablesPartDoneNum!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("agentIsOnline") {
                self.agentIsOnline = dict["agentIsOnline"] as! Bool
            }
            if dict.keys.contains("config") {
                var tmp : [GetMmsDataSourceResponseBody.Data.Config] = []
                for v in dict["config"] as! [Any] {
                    var model = GetMmsDataSourceResponseBody.Data.Config()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.config = tmp
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dbNum") {
                self.dbNum = dict["dbNum"] as! Int32
            }
            if dict.keys.contains("errMsg") {
                self.errMsg = dict["errMsg"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("lastUpdateTime") {
                self.lastUpdateTime = dict["lastUpdateTime"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("networklink") {
                self.networklink = dict["networklink"] as! String
            }
            if dict.keys.contains("partitionNum") {
                self.partitionNum = dict["partitionNum"] as! Int32
            }
            if dict.keys.contains("partitionsDoingNum") {
                self.partitionsDoingNum = dict["partitionsDoingNum"] as! Int32
            }
            if dict.keys.contains("partitionsDoneNum") {
                self.partitionsDoneNum = dict["partitionsDoneNum"] as! Int32
            }
            if dict.keys.contains("partitionsFailedNum") {
                self.partitionsFailedNum = dict["partitionsFailedNum"] as! Int32
            }
            if dict.keys.contains("region") {
                self.region = dict["region"] as! String
            }
            if dict.keys.contains("scanId") {
                self.scanId = dict["scanId"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tableNum") {
                self.tableNum = dict["tableNum"] as! Int32
            }
            if dict.keys.contains("tablesDoingNum") {
                self.tablesDoingNum = dict["tablesDoingNum"] as! Int32
            }
            if dict.keys.contains("tablesDoneNum") {
                self.tablesDoneNum = dict["tablesDoneNum"] as! Int32
            }
            if dict.keys.contains("tablesFailedNum") {
                self.tablesFailedNum = dict["tablesFailedNum"] as! Int32
            }
            if dict.keys.contains("tablesPartDoneNum") {
                self.tablesPartDoneNum = dict["tablesPartDoneNum"] as! Int32
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var data: GetMmsDataSourceResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetMmsDataSourceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetMmsDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMmsDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMmsDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMmsDbResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var extra: String?

        public var id: Int64?

        public var lastDdlTime: String?

        public var location: String?

        public var name: String?

        public var numRows: Int64?

        public var owner: String?

        public var partitions: Int32?

        public var partitionsDoing: Int32?

        public var partitionsDone: Int32?

        public var partitionsFailed: Int32?

        public var size: Int64?

        public var sourceId: Int64?

        public var sourceName: String?

        public var status: String?

        public var tables: Int32?

        public var tablesDoing: Int32?

        public var tablesDone: Int32?

        public var tablesFailed: Int32?

        public var tablesPartDone: Int32?

        public var updated: Bool?

        public override init() {
            super.init()
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
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.lastDdlTime != nil {
                map["lastDdlTime"] = self.lastDdlTime!
            }
            if self.location != nil {
                map["location"] = self.location!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.numRows != nil {
                map["numRows"] = self.numRows!
            }
            if self.owner != nil {
                map["owner"] = self.owner!
            }
            if self.partitions != nil {
                map["partitions"] = self.partitions!
            }
            if self.partitionsDoing != nil {
                map["partitionsDoing"] = self.partitionsDoing!
            }
            if self.partitionsDone != nil {
                map["partitionsDone"] = self.partitionsDone!
            }
            if self.partitionsFailed != nil {
                map["partitionsFailed"] = self.partitionsFailed!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceName != nil {
                map["sourceName"] = self.sourceName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tables != nil {
                map["tables"] = self.tables!
            }
            if self.tablesDoing != nil {
                map["tablesDoing"] = self.tablesDoing!
            }
            if self.tablesDone != nil {
                map["tablesDone"] = self.tablesDone!
            }
            if self.tablesFailed != nil {
                map["tablesFailed"] = self.tablesFailed!
            }
            if self.tablesPartDone != nil {
                map["tablesPartDone"] = self.tablesPartDone!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("extra") {
                self.extra = dict["extra"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("lastDdlTime") {
                self.lastDdlTime = dict["lastDdlTime"] as! String
            }
            if dict.keys.contains("location") {
                self.location = dict["location"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("numRows") {
                self.numRows = dict["numRows"] as! Int64
            }
            if dict.keys.contains("owner") {
                self.owner = dict["owner"] as! String
            }
            if dict.keys.contains("partitions") {
                self.partitions = dict["partitions"] as! Int32
            }
            if dict.keys.contains("partitionsDoing") {
                self.partitionsDoing = dict["partitionsDoing"] as! Int32
            }
            if dict.keys.contains("partitionsDone") {
                self.partitionsDone = dict["partitionsDone"] as! Int32
            }
            if dict.keys.contains("partitionsFailed") {
                self.partitionsFailed = dict["partitionsFailed"] as! Int32
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! Int64
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("sourceName") {
                self.sourceName = dict["sourceName"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tables") {
                self.tables = dict["tables"] as! Int32
            }
            if dict.keys.contains("tablesDoing") {
                self.tablesDoing = dict["tablesDoing"] as! Int32
            }
            if dict.keys.contains("tablesDone") {
                self.tablesDone = dict["tablesDone"] as! Int32
            }
            if dict.keys.contains("tablesFailed") {
                self.tablesFailed = dict["tablesFailed"] as! Int32
            }
            if dict.keys.contains("tablesPartDone") {
                self.tablesPartDone = dict["tablesPartDone"] as! Int32
            }
            if dict.keys.contains("updated") {
                self.updated = dict["updated"] as! Bool
            }
        }
    }
    public var data: GetMmsDbResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetMmsDbResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetMmsDbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMmsDbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMmsDbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMmsFetchMetadataJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endTime: String?

        public var errorMsg: String?

        public var id: Int64?

        public var progress: Double?

        public var result: String?

        public var sourceId: Int64?

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
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.progress != nil {
                map["progress"] = self.progress!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("errorMsg") {
                self.errorMsg = dict["errorMsg"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("progress") {
                self.progress = dict["progress"] as! Double
            }
            if dict.keys.contains("result") {
                self.result = dict["result"] as! String
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var data: GetMmsFetchMetadataJobResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetMmsFetchMetadataJobResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetMmsFetchMetadataJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMmsFetchMetadataJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMmsFetchMetadataJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMmsJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var columnMapping: [String: String]?

            public var enableVerification: Bool?

            public var increment: Bool?

            public var others: [String: Any]?

            public var partitionFilters: [String: String]?

            public var partitions: [Int64]?

            public var schemaOnly: Bool?

            public var tableBlackList: [String]?

            public var tableMapping: [String: String]?

            public var tableWhiteList: [String]?

            public var tables: [String]?

            public var taskType: String?

            public var tunnelQuota: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columnMapping != nil {
                    map["columnMapping"] = self.columnMapping!
                }
                if self.enableVerification != nil {
                    map["enableVerification"] = self.enableVerification!
                }
                if self.increment != nil {
                    map["increment"] = self.increment!
                }
                if self.others != nil {
                    map["others"] = self.others!
                }
                if self.partitionFilters != nil {
                    map["partitionFilters"] = self.partitionFilters!
                }
                if self.partitions != nil {
                    map["partitions"] = self.partitions!
                }
                if self.schemaOnly != nil {
                    map["schemaOnly"] = self.schemaOnly!
                }
                if self.tableBlackList != nil {
                    map["tableBlackList"] = self.tableBlackList!
                }
                if self.tableMapping != nil {
                    map["tableMapping"] = self.tableMapping!
                }
                if self.tableWhiteList != nil {
                    map["tableWhiteList"] = self.tableWhiteList!
                }
                if self.tables != nil {
                    map["tables"] = self.tables!
                }
                if self.taskType != nil {
                    map["taskType"] = self.taskType!
                }
                if self.tunnelQuota != nil {
                    map["tunnelQuota"] = self.tunnelQuota!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("columnMapping") {
                    self.columnMapping = dict["columnMapping"] as! [String: String]
                }
                if dict.keys.contains("enableVerification") {
                    self.enableVerification = dict["enableVerification"] as! Bool
                }
                if dict.keys.contains("increment") {
                    self.increment = dict["increment"] as! Bool
                }
                if dict.keys.contains("others") {
                    self.others = dict["others"] as! [String: Any]
                }
                if dict.keys.contains("partitionFilters") {
                    self.partitionFilters = dict["partitionFilters"] as! [String: String]
                }
                if dict.keys.contains("partitions") {
                    self.partitions = dict["partitions"] as! [Int64]
                }
                if dict.keys.contains("schemaOnly") {
                    self.schemaOnly = dict["schemaOnly"] as! Bool
                }
                if dict.keys.contains("tableBlackList") {
                    self.tableBlackList = dict["tableBlackList"] as! [String]
                }
                if dict.keys.contains("tableMapping") {
                    self.tableMapping = dict["tableMapping"] as! [String: String]
                }
                if dict.keys.contains("tableWhiteList") {
                    self.tableWhiteList = dict["tableWhiteList"] as! [String]
                }
                if dict.keys.contains("tables") {
                    self.tables = dict["tables"] as! [String]
                }
                if dict.keys.contains("taskType") {
                    self.taskType = dict["taskType"] as! String
                }
                if dict.keys.contains("tunnelQuota") {
                    self.tunnelQuota = dict["tunnelQuota"] as! String
                }
            }
        }
        public var config: GetMmsJobResponseBody.Data.Config?

        public var createTime: String?

        public var dbId: Int64?

        public var dstDbName: String?

        public var dstSchemaName: String?

        public var eta: String?

        public var id: Int64?

        public var name: String?

        public var sourceId: Int64?

        public var sourceName: String?

        public var srcDbName: String?

        public var srcSchemaName: String?

        public var status: String?

        public var stopped: Bool?

        public var taskDone: Int32?

        public var taskNum: Int32?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dbId != nil {
                map["dbId"] = self.dbId!
            }
            if self.dstDbName != nil {
                map["dstDbName"] = self.dstDbName!
            }
            if self.dstSchemaName != nil {
                map["dstSchemaName"] = self.dstSchemaName!
            }
            if self.eta != nil {
                map["eta"] = self.eta!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceName != nil {
                map["sourceName"] = self.sourceName!
            }
            if self.srcDbName != nil {
                map["srcDbName"] = self.srcDbName!
            }
            if self.srcSchemaName != nil {
                map["srcSchemaName"] = self.srcSchemaName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.stopped != nil {
                map["stopped"] = self.stopped!
            }
            if self.taskDone != nil {
                map["taskDone"] = self.taskDone!
            }
            if self.taskNum != nil {
                map["taskNum"] = self.taskNum!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") {
                var model = GetMmsJobResponseBody.Data.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dbId") {
                self.dbId = dict["dbId"] as! Int64
            }
            if dict.keys.contains("dstDbName") {
                self.dstDbName = dict["dstDbName"] as! String
            }
            if dict.keys.contains("dstSchemaName") {
                self.dstSchemaName = dict["dstSchemaName"] as! String
            }
            if dict.keys.contains("eta") {
                self.eta = dict["eta"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("sourceName") {
                self.sourceName = dict["sourceName"] as! String
            }
            if dict.keys.contains("srcDbName") {
                self.srcDbName = dict["srcDbName"] as! String
            }
            if dict.keys.contains("srcSchemaName") {
                self.srcSchemaName = dict["srcSchemaName"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("stopped") {
                self.stopped = dict["stopped"] as! Bool
            }
            if dict.keys.contains("taskDone") {
                self.taskDone = dict["taskDone"] as! Int32
            }
            if dict.keys.contains("taskNum") {
                self.taskNum = dict["taskNum"] as! Int32
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var data: GetMmsJobResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetMmsJobResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetMmsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMmsJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMmsJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMmsPartitionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dbId: Int64?

        public var dbName: String?

        public var id: Int64?

        public var lastDdlTime: String?

        public var numRows: Int64?

        public var size: Int64?

        public var sourceId: Int64?

        public var sourceName: String?

        public var status: String?

        public var tableId: Int64?

        public var tableName: String?

        public var updated: Bool?

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
            if self.dbId != nil {
                map["DbId"] = self.dbId!
            }
            if self.dbName != nil {
                map["dbName"] = self.dbName!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.lastDdlTime != nil {
                map["lastDdlTime"] = self.lastDdlTime!
            }
            if self.numRows != nil {
                map["numRows"] = self.numRows!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceName != nil {
                map["sourceName"] = self.sourceName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tableId != nil {
                map["tableId"] = self.tableId!
            }
            if self.tableName != nil {
                map["tableName"] = self.tableName!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbId") {
                self.dbId = dict["DbId"] as! Int64
            }
            if dict.keys.contains("dbName") {
                self.dbName = dict["dbName"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("lastDdlTime") {
                self.lastDdlTime = dict["lastDdlTime"] as! String
            }
            if dict.keys.contains("numRows") {
                self.numRows = dict["numRows"] as! Int64
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! Int64
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("sourceName") {
                self.sourceName = dict["sourceName"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tableId") {
                self.tableId = dict["tableId"] as! Int64
            }
            if dict.keys.contains("tableName") {
                self.tableName = dict["tableName"] as! String
            }
            if dict.keys.contains("updated") {
                self.updated = dict["updated"] as! Bool
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var data: GetMmsPartitionResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetMmsPartitionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetMmsPartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMmsPartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMmsPartitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMmsTableResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public class Columns : Tea.TeaModel {
                public var comment: String?

                public var defaultValue: String?

                public var name: String?

                public var nullable: Bool?

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
                        map["comment"] = self.comment!
                    }
                    if self.defaultValue != nil {
                        map["defaultValue"] = self.defaultValue!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nullable != nil {
                        map["nullable"] = self.nullable!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("comment") {
                        self.comment = dict["comment"] as! String
                    }
                    if dict.keys.contains("defaultValue") {
                        self.defaultValue = dict["defaultValue"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nullable") {
                        self.nullable = dict["nullable"] as! Bool
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public class Partitions : Tea.TeaModel {
                public var comment: String?

                public var defaultValue: String?

                public var name: String?

                public var nullable: Bool?

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
                        map["comment"] = self.comment!
                    }
                    if self.defaultValue != nil {
                        map["defaultValue"] = self.defaultValue!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nullable != nil {
                        map["nullable"] = self.nullable!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("comment") {
                        self.comment = dict["comment"] as! String
                    }
                    if dict.keys.contains("defaultValue") {
                        self.defaultValue = dict["defaultValue"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nullable") {
                        self.nullable = dict["nullable"] as! Bool
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var columns: [GetMmsTableResponseBody.Data.Schema.Columns]?

            public var comment: String?

            public var name: String?

            public var partitions: [GetMmsTableResponseBody.Data.Schema.Partitions]?

            public override init() {
                super.init()
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
                if self.comment != nil {
                    map["comment"] = self.comment!
                }
                if self.name != nil {
                    map["name"] = self.name!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("columns") {
                    var tmp : [GetMmsTableResponseBody.Data.Schema.Columns] = []
                    for v in dict["columns"] as! [Any] {
                        var model = GetMmsTableResponseBody.Data.Schema.Columns()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.columns = tmp
                }
                if dict.keys.contains("comment") {
                    self.comment = dict["comment"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("partitions") {
                    var tmp : [GetMmsTableResponseBody.Data.Schema.Partitions] = []
                    for v in dict["partitions"] as! [Any] {
                        var model = GetMmsTableResponseBody.Data.Schema.Partitions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.partitions = tmp
                }
            }
        }
        public var dbId: Int64?

        public var dbName: String?

        public var extra: String?

        public var hasPartitions: Bool?

        public var id: Int64?

        public var inputFormat: String?

        public var lastDdlTime: String?

        public var location: String?

        public var name: String?

        public var numRows: Int64?

        public var outputFormat: String?

        public var owner: String?

        public var partitions: Int32?

        public var partitionsDoing: Int32?

        public var partitionsDone: Int32?

        public var partitionsFailed: Int32?

        public var schema: GetMmsTableResponseBody.Data.Schema?

        public var serde: String?

        public var size: Int64?

        public var sourceId: Int64?

        public var sourceName: String?

        public var status: String?

        public var type: String?

        public var updated: Bool?

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
            if self.dbId != nil {
                map["dbId"] = self.dbId!
            }
            if self.dbName != nil {
                map["dbName"] = self.dbName!
            }
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.hasPartitions != nil {
                map["hasPartitions"] = self.hasPartitions!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.inputFormat != nil {
                map["inputFormat"] = self.inputFormat!
            }
            if self.lastDdlTime != nil {
                map["lastDdlTime"] = self.lastDdlTime!
            }
            if self.location != nil {
                map["location"] = self.location!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.numRows != nil {
                map["numRows"] = self.numRows!
            }
            if self.outputFormat != nil {
                map["outputFormat"] = self.outputFormat!
            }
            if self.owner != nil {
                map["owner"] = self.owner!
            }
            if self.partitions != nil {
                map["partitions"] = self.partitions!
            }
            if self.partitionsDoing != nil {
                map["partitionsDoing"] = self.partitionsDoing!
            }
            if self.partitionsDone != nil {
                map["partitionsDone"] = self.partitionsDone!
            }
            if self.partitionsFailed != nil {
                map["partitionsFailed"] = self.partitionsFailed!
            }
            if self.schema != nil {
                map["schema"] = self.schema?.toMap()
            }
            if self.serde != nil {
                map["serde"] = self.serde!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceName != nil {
                map["sourceName"] = self.sourceName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dbId") {
                self.dbId = dict["dbId"] as! Int64
            }
            if dict.keys.contains("dbName") {
                self.dbName = dict["dbName"] as! String
            }
            if dict.keys.contains("extra") {
                self.extra = dict["extra"] as! String
            }
            if dict.keys.contains("hasPartitions") {
                self.hasPartitions = dict["hasPartitions"] as! Bool
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("inputFormat") {
                self.inputFormat = dict["inputFormat"] as! String
            }
            if dict.keys.contains("lastDdlTime") {
                self.lastDdlTime = dict["lastDdlTime"] as! String
            }
            if dict.keys.contains("location") {
                self.location = dict["location"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("numRows") {
                self.numRows = dict["numRows"] as! Int64
            }
            if dict.keys.contains("outputFormat") {
                self.outputFormat = dict["outputFormat"] as! String
            }
            if dict.keys.contains("owner") {
                self.owner = dict["owner"] as! String
            }
            if dict.keys.contains("partitions") {
                self.partitions = dict["partitions"] as! Int32
            }
            if dict.keys.contains("partitionsDoing") {
                self.partitionsDoing = dict["partitionsDoing"] as! Int32
            }
            if dict.keys.contains("partitionsDone") {
                self.partitionsDone = dict["partitionsDone"] as! Int32
            }
            if dict.keys.contains("partitionsFailed") {
                self.partitionsFailed = dict["partitionsFailed"] as! Int32
            }
            if dict.keys.contains("schema") {
                var model = GetMmsTableResponseBody.Data.Schema()
                model.fromMap(dict["schema"] as! [String: Any])
                self.schema = model
            }
            if dict.keys.contains("serde") {
                self.serde = dict["serde"] as! String
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! Int64
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("sourceName") {
                self.sourceName = dict["sourceName"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") {
                self.updated = dict["updated"] as! Bool
            }
        }
    }
    public var data: GetMmsTableResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetMmsTableResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetMmsTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMmsTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMmsTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMmsTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var dbId: Int64?

        public var dstDbName: String?

        public var dstSchemaName: String?

        public var dstTableName: String?

        public var endTime: String?

        public var id: Int64?

        public var jobId: Int64?

        public var jobName: String?

        public var retriedTimes: Int32?

        public var running: Bool?

        public var sourceId: Int64?

        public var sourceName: String?

        public var srcDbName: String?

        public var srcSchemaName: String?

        public var srcTableName: String?

        public var startTime: String?

        public var status: String?

        public var stopped: Bool?

        public var tableId: Int64?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dbId != nil {
                map["dbId"] = self.dbId!
            }
            if self.dstDbName != nil {
                map["dstDbName"] = self.dstDbName!
            }
            if self.dstSchemaName != nil {
                map["dstSchemaName"] = self.dstSchemaName!
            }
            if self.dstTableName != nil {
                map["dstTableName"] = self.dstTableName!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["jobName"] = self.jobName!
            }
            if self.retriedTimes != nil {
                map["retriedTimes"] = self.retriedTimes!
            }
            if self.running != nil {
                map["running"] = self.running!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceName != nil {
                map["sourceName"] = self.sourceName!
            }
            if self.srcDbName != nil {
                map["srcDbName"] = self.srcDbName!
            }
            if self.srcSchemaName != nil {
                map["srcSchemaName"] = self.srcSchemaName!
            }
            if self.srcTableName != nil {
                map["srcTableName"] = self.srcTableName!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.stopped != nil {
                map["stopped"] = self.stopped!
            }
            if self.tableId != nil {
                map["tableId"] = self.tableId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dbId") {
                self.dbId = dict["dbId"] as! Int64
            }
            if dict.keys.contains("dstDbName") {
                self.dstDbName = dict["dstDbName"] as! String
            }
            if dict.keys.contains("dstSchemaName") {
                self.dstSchemaName = dict["dstSchemaName"] as! String
            }
            if dict.keys.contains("dstTableName") {
                self.dstTableName = dict["dstTableName"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("jobId") {
                self.jobId = dict["jobId"] as! Int64
            }
            if dict.keys.contains("jobName") {
                self.jobName = dict["jobName"] as! String
            }
            if dict.keys.contains("retriedTimes") {
                self.retriedTimes = dict["retriedTimes"] as! Int32
            }
            if dict.keys.contains("running") {
                self.running = dict["running"] as! Bool
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("sourceName") {
                self.sourceName = dict["sourceName"] as! String
            }
            if dict.keys.contains("srcDbName") {
                self.srcDbName = dict["srcDbName"] as! String
            }
            if dict.keys.contains("srcSchemaName") {
                self.srcSchemaName = dict["srcSchemaName"] as! String
            }
            if dict.keys.contains("srcTableName") {
                self.srcTableName = dict["srcTableName"] as! String
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("stopped") {
                self.stopped = dict["stopped"] as! Bool
            }
            if dict.keys.contains("tableId") {
                self.tableId = dict["tableId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var data: GetMmsTaskResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetMmsTaskResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetMmsTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMmsTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMmsTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPackageRequest : Tea.TeaModel {
    public var sourceProject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceProject != nil {
            map["sourceProject"] = self.sourceProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sourceProject") {
            self.sourceProject = dict["sourceProject"] as! String
        }
    }
}

public class GetPackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AllowedProjectList : Tea.TeaModel {
            public var label: String?

            public var project: String?

            public override init() {
                super.init()
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
                if self.project != nil {
                    map["project"] = self.project!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("label") {
                    self.label = dict["label"] as! String
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
            }
        }
        public class ResourceList : Tea.TeaModel {
            public class Function : Tea.TeaModel {
                public var actions: [String]?

                public var name: String?

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
                    if self.actions != nil {
                        map["actions"] = self.actions!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.schemaName != nil {
                        map["schemaName"] = self.schemaName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("actions") {
                        self.actions = dict["actions"] as! [String]
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("schemaName") {
                        self.schemaName = dict["schemaName"] as! String
                    }
                }
            }
            public class Resource : Tea.TeaModel {
                public var actions: [String]?

                public var name: String?

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
                    if self.actions != nil {
                        map["actions"] = self.actions!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.schemaName != nil {
                        map["schemaName"] = self.schemaName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("actions") {
                        self.actions = dict["actions"] as! [String]
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("schemaName") {
                        self.schemaName = dict["schemaName"] as! String
                    }
                }
            }
            public class Table : Tea.TeaModel {
                public var actions: [String]?

                public var name: String?

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
                    if self.actions != nil {
                        map["actions"] = self.actions!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.schemaName != nil {
                        map["schemaName"] = self.schemaName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("actions") {
                        self.actions = dict["actions"] as! [String]
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("schemaName") {
                        self.schemaName = dict["schemaName"] as! String
                    }
                }
            }
            public var function: [GetPackageResponseBody.Data.ResourceList.Function]?

            public var resource: [GetPackageResponseBody.Data.ResourceList.Resource]?

            public var table: [GetPackageResponseBody.Data.ResourceList.Table]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.function != nil {
                    var tmp : [Any] = []
                    for k in self.function! {
                        tmp.append(k.toMap())
                    }
                    map["function"] = tmp
                }
                if self.resource != nil {
                    var tmp : [Any] = []
                    for k in self.resource! {
                        tmp.append(k.toMap())
                    }
                    map["resource"] = tmp
                }
                if self.table != nil {
                    var tmp : [Any] = []
                    for k in self.table! {
                        tmp.append(k.toMap())
                    }
                    map["table"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("function") {
                    var tmp : [GetPackageResponseBody.Data.ResourceList.Function] = []
                    for v in dict["function"] as! [Any] {
                        var model = GetPackageResponseBody.Data.ResourceList.Function()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.function = tmp
                }
                if dict.keys.contains("resource") {
                    var tmp : [GetPackageResponseBody.Data.ResourceList.Resource] = []
                    for v in dict["resource"] as! [Any] {
                        var model = GetPackageResponseBody.Data.ResourceList.Resource()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resource = tmp
                }
                if dict.keys.contains("table") {
                    var tmp : [GetPackageResponseBody.Data.ResourceList.Table] = []
                    for v in dict["table"] as! [Any] {
                        var model = GetPackageResponseBody.Data.ResourceList.Table()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.table = tmp
                }
            }
        }
        public var allowedProjectList: [GetPackageResponseBody.Data.AllowedProjectList]?

        public var resourceList: GetPackageResponseBody.Data.ResourceList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourceList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedProjectList != nil {
                var tmp : [Any] = []
                for k in self.allowedProjectList! {
                    tmp.append(k.toMap())
                }
                map["allowedProjectList"] = tmp
            }
            if self.resourceList != nil {
                map["resourceList"] = self.resourceList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("allowedProjectList") {
                var tmp : [GetPackageResponseBody.Data.AllowedProjectList] = []
                for v in dict["allowedProjectList"] as! [Any] {
                    var model = GetPackageResponseBody.Data.AllowedProjectList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.allowedProjectList = tmp
            }
            if dict.keys.contains("resourceList") {
                var model = GetPackageResponseBody.Data.ResourceList()
                model.fromMap(dict["resourceList"] as! [String: Any])
                self.resourceList = model
            }
        }
    }
    public var data: GetPackageResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetPackageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectRequest : Tea.TeaModel {
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
        if self.verbose != nil {
            map["verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("verbose") {
            self.verbose = dict["verbose"] as! Bool
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class IpWhiteList : Tea.TeaModel {
            public var ipList: String?

            public var vpcIpList: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ipList != nil {
                    map["ipList"] = self.ipList!
                }
                if self.vpcIpList != nil {
                    map["vpcIpList"] = self.vpcIpList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ipList") {
                    self.ipList = dict["ipList"] as! String
                }
                if dict.keys.contains("vpcIpList") {
                    self.vpcIpList = dict["vpcIpList"] as! String
                }
            }
        }
        public class Properties : Tea.TeaModel {
            public class Encryption : Tea.TeaModel {
                public var algorithm: String?

                public var enable: Bool?

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
                    if self.algorithm != nil {
                        map["algorithm"] = self.algorithm!
                    }
                    if self.enable != nil {
                        map["enable"] = self.enable!
                    }
                    if self.key != nil {
                        map["key"] = self.key!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("algorithm") {
                        self.algorithm = dict["algorithm"] as! String
                    }
                    if dict.keys.contains("enable") {
                        self.enable = dict["enable"] as! Bool
                    }
                    if dict.keys.contains("key") {
                        self.key = dict["key"] as! String
                    }
                }
            }
            public class ExternalProjectProperties : Tea.TeaModel {
                public var isExternalCatalogBound: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.isExternalCatalogBound != nil {
                        map["isExternalCatalogBound"] = self.isExternalCatalogBound!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("isExternalCatalogBound") {
                        self.isExternalCatalogBound = dict["isExternalCatalogBound"] as! String
                    }
                }
            }
            public class StorageTierInfo : Tea.TeaModel {
                public class StorageTierSize : Tea.TeaModel {
                    public var longTermSize: Int64?

                    public var lowFrequencySize: Int64?

                    public var standardSize: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.longTermSize != nil {
                            map["longTermSize"] = self.longTermSize!
                        }
                        if self.lowFrequencySize != nil {
                            map["lowFrequencySize"] = self.lowFrequencySize!
                        }
                        if self.standardSize != nil {
                            map["standardSize"] = self.standardSize!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("longTermSize") {
                            self.longTermSize = dict["longTermSize"] as! Int64
                        }
                        if dict.keys.contains("lowFrequencySize") {
                            self.lowFrequencySize = dict["lowFrequencySize"] as! Int64
                        }
                        if dict.keys.contains("standardSize") {
                            self.standardSize = dict["standardSize"] as! Int64
                        }
                    }
                }
                public var projectBackupSize: Int64?

                public var projectTotalSize: Int64?

                public var storageTierSize: GetProjectResponseBody.Data.Properties.StorageTierInfo.StorageTierSize?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.storageTierSize?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.projectBackupSize != nil {
                        map["projectBackupSize"] = self.projectBackupSize!
                    }
                    if self.projectTotalSize != nil {
                        map["projectTotalSize"] = self.projectTotalSize!
                    }
                    if self.storageTierSize != nil {
                        map["storageTierSize"] = self.storageTierSize?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("projectBackupSize") {
                        self.projectBackupSize = dict["projectBackupSize"] as! Int64
                    }
                    if dict.keys.contains("projectTotalSize") {
                        self.projectTotalSize = dict["projectTotalSize"] as! Int64
                    }
                    if dict.keys.contains("storageTierSize") {
                        var model = GetProjectResponseBody.Data.Properties.StorageTierInfo.StorageTierSize()
                        model.fromMap(dict["storageTierSize"] as! [String: Any])
                        self.storageTierSize = model
                    }
                }
            }
            public class TableLifecycle : Tea.TeaModel {
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
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! String
                    }
                }
            }
            public class TableLifecycleConfig : Tea.TeaModel {
                public class TierToLongterm : Tea.TeaModel {
                    public var daysAfterLastAccessGreaterThan: Int64?

                    public var daysAfterLastModificationGreaterThan: Int64?

                    public var daysAfterLastTierModificationGreaterThan: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.daysAfterLastAccessGreaterThan != nil {
                            map["DaysAfterLastAccessGreaterThan"] = self.daysAfterLastAccessGreaterThan!
                        }
                        if self.daysAfterLastModificationGreaterThan != nil {
                            map["DaysAfterLastModificationGreaterThan"] = self.daysAfterLastModificationGreaterThan!
                        }
                        if self.daysAfterLastTierModificationGreaterThan != nil {
                            map["DaysAfterLastTierModificationGreaterThan"] = self.daysAfterLastTierModificationGreaterThan!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DaysAfterLastAccessGreaterThan") {
                            self.daysAfterLastAccessGreaterThan = dict["DaysAfterLastAccessGreaterThan"] as! Int64
                        }
                        if dict.keys.contains("DaysAfterLastModificationGreaterThan") {
                            self.daysAfterLastModificationGreaterThan = dict["DaysAfterLastModificationGreaterThan"] as! Int64
                        }
                        if dict.keys.contains("DaysAfterLastTierModificationGreaterThan") {
                            self.daysAfterLastTierModificationGreaterThan = dict["DaysAfterLastTierModificationGreaterThan"] as! Int64
                        }
                    }
                }
                public class TierToLowFrequency : Tea.TeaModel {
                    public var daysAfterLastAccessGreaterThan: Int64?

                    public var daysAfterLastModificationGreaterThan: Int64?

                    public var daysAfterLastTierModificationGreaterThan: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.daysAfterLastAccessGreaterThan != nil {
                            map["DaysAfterLastAccessGreaterThan"] = self.daysAfterLastAccessGreaterThan!
                        }
                        if self.daysAfterLastModificationGreaterThan != nil {
                            map["DaysAfterLastModificationGreaterThan"] = self.daysAfterLastModificationGreaterThan!
                        }
                        if self.daysAfterLastTierModificationGreaterThan != nil {
                            map["DaysAfterLastTierModificationGreaterThan"] = self.daysAfterLastTierModificationGreaterThan!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DaysAfterLastAccessGreaterThan") {
                            self.daysAfterLastAccessGreaterThan = dict["DaysAfterLastAccessGreaterThan"] as! Int64
                        }
                        if dict.keys.contains("DaysAfterLastModificationGreaterThan") {
                            self.daysAfterLastModificationGreaterThan = dict["DaysAfterLastModificationGreaterThan"] as! Int64
                        }
                        if dict.keys.contains("DaysAfterLastTierModificationGreaterThan") {
                            self.daysAfterLastTierModificationGreaterThan = dict["DaysAfterLastTierModificationGreaterThan"] as! Int64
                        }
                    }
                }
                public var tierToLongterm: GetProjectResponseBody.Data.Properties.TableLifecycleConfig.TierToLongterm?

                public var tierToLowFrequency: GetProjectResponseBody.Data.Properties.TableLifecycleConfig.TierToLowFrequency?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.tierToLongterm?.validate()
                    try self.tierToLowFrequency?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tierToLongterm != nil {
                        map["TierToLongterm"] = self.tierToLongterm?.toMap()
                    }
                    if self.tierToLowFrequency != nil {
                        map["TierToLowFrequency"] = self.tierToLowFrequency?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TierToLongterm") {
                        var model = GetProjectResponseBody.Data.Properties.TableLifecycleConfig.TierToLongterm()
                        model.fromMap(dict["TierToLongterm"] as! [String: Any])
                        self.tierToLongterm = model
                    }
                    if dict.keys.contains("TierToLowFrequency") {
                        var model = GetProjectResponseBody.Data.Properties.TableLifecycleConfig.TierToLowFrequency()
                        model.fromMap(dict["TierToLowFrequency"] as! [String: Any])
                        self.tierToLowFrequency = model
                    }
                }
            }
            public var allowFullScan: Bool?

            public var elderTunnelQuota: String?

            public var enableDecimal2: Bool?

            public var enableFdcCacheForce: Bool?

            public var enableTieredStorage: Bool?

            public var enableTunnelQuotaRoute: Bool?

            public var encryption: GetProjectResponseBody.Data.Properties.Encryption?

            public var externalProjectProperties: GetProjectResponseBody.Data.Properties.ExternalProjectProperties?

            public var fdcQuota: String?

            public var retentionDays: Int64?

            public var sqlMeteringMax: String?

            public var storageTierInfo: GetProjectResponseBody.Data.Properties.StorageTierInfo?

            public var tableLifecycle: GetProjectResponseBody.Data.Properties.TableLifecycle?

            public var tableLifecycleConfig: GetProjectResponseBody.Data.Properties.TableLifecycleConfig?

            public var timezone: String?

            public var tunnelQuota: String?

            public var typeSystem: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.encryption?.validate()
                try self.externalProjectProperties?.validate()
                try self.storageTierInfo?.validate()
                try self.tableLifecycle?.validate()
                try self.tableLifecycleConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowFullScan != nil {
                    map["allowFullScan"] = self.allowFullScan!
                }
                if self.elderTunnelQuota != nil {
                    map["elderTunnelQuota"] = self.elderTunnelQuota!
                }
                if self.enableDecimal2 != nil {
                    map["enableDecimal2"] = self.enableDecimal2!
                }
                if self.enableFdcCacheForce != nil {
                    map["enableFdcCacheForce"] = self.enableFdcCacheForce!
                }
                if self.enableTieredStorage != nil {
                    map["enableTieredStorage"] = self.enableTieredStorage!
                }
                if self.enableTunnelQuotaRoute != nil {
                    map["enableTunnelQuotaRoute"] = self.enableTunnelQuotaRoute!
                }
                if self.encryption != nil {
                    map["encryption"] = self.encryption?.toMap()
                }
                if self.externalProjectProperties != nil {
                    map["externalProjectProperties"] = self.externalProjectProperties?.toMap()
                }
                if self.fdcQuota != nil {
                    map["fdcQuota"] = self.fdcQuota!
                }
                if self.retentionDays != nil {
                    map["retentionDays"] = self.retentionDays!
                }
                if self.sqlMeteringMax != nil {
                    map["sqlMeteringMax"] = self.sqlMeteringMax!
                }
                if self.storageTierInfo != nil {
                    map["storageTierInfo"] = self.storageTierInfo?.toMap()
                }
                if self.tableLifecycle != nil {
                    map["tableLifecycle"] = self.tableLifecycle?.toMap()
                }
                if self.tableLifecycleConfig != nil {
                    map["tableLifecycleConfig"] = self.tableLifecycleConfig?.toMap()
                }
                if self.timezone != nil {
                    map["timezone"] = self.timezone!
                }
                if self.tunnelQuota != nil {
                    map["tunnelQuota"] = self.tunnelQuota!
                }
                if self.typeSystem != nil {
                    map["typeSystem"] = self.typeSystem!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("allowFullScan") {
                    self.allowFullScan = dict["allowFullScan"] as! Bool
                }
                if dict.keys.contains("elderTunnelQuota") {
                    self.elderTunnelQuota = dict["elderTunnelQuota"] as! String
                }
                if dict.keys.contains("enableDecimal2") {
                    self.enableDecimal2 = dict["enableDecimal2"] as! Bool
                }
                if dict.keys.contains("enableFdcCacheForce") {
                    self.enableFdcCacheForce = dict["enableFdcCacheForce"] as! Bool
                }
                if dict.keys.contains("enableTieredStorage") {
                    self.enableTieredStorage = dict["enableTieredStorage"] as! Bool
                }
                if dict.keys.contains("enableTunnelQuotaRoute") {
                    self.enableTunnelQuotaRoute = dict["enableTunnelQuotaRoute"] as! Bool
                }
                if dict.keys.contains("encryption") {
                    var model = GetProjectResponseBody.Data.Properties.Encryption()
                    model.fromMap(dict["encryption"] as! [String: Any])
                    self.encryption = model
                }
                if dict.keys.contains("externalProjectProperties") {
                    var model = GetProjectResponseBody.Data.Properties.ExternalProjectProperties()
                    model.fromMap(dict["externalProjectProperties"] as! [String: Any])
                    self.externalProjectProperties = model
                }
                if dict.keys.contains("fdcQuota") {
                    self.fdcQuota = dict["fdcQuota"] as! String
                }
                if dict.keys.contains("retentionDays") {
                    self.retentionDays = dict["retentionDays"] as! Int64
                }
                if dict.keys.contains("sqlMeteringMax") {
                    self.sqlMeteringMax = dict["sqlMeteringMax"] as! String
                }
                if dict.keys.contains("storageTierInfo") {
                    var model = GetProjectResponseBody.Data.Properties.StorageTierInfo()
                    model.fromMap(dict["storageTierInfo"] as! [String: Any])
                    self.storageTierInfo = model
                }
                if dict.keys.contains("tableLifecycle") {
                    var model = GetProjectResponseBody.Data.Properties.TableLifecycle()
                    model.fromMap(dict["tableLifecycle"] as! [String: Any])
                    self.tableLifecycle = model
                }
                if dict.keys.contains("tableLifecycleConfig") {
                    var model = GetProjectResponseBody.Data.Properties.TableLifecycleConfig()
                    model.fromMap(dict["tableLifecycleConfig"] as! [String: Any])
                    self.tableLifecycleConfig = model
                }
                if dict.keys.contains("timezone") {
                    self.timezone = dict["timezone"] as! String
                }
                if dict.keys.contains("tunnelQuota") {
                    self.tunnelQuota = dict["tunnelQuota"] as! String
                }
                if dict.keys.contains("typeSystem") {
                    self.typeSystem = dict["typeSystem"] as! String
                }
            }
        }
        public class SaleTag : Tea.TeaModel {
            public var resourceId: String?

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
                if self.resourceId != nil {
                    map["resourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resourceId") {
                    self.resourceId = dict["resourceId"] as! String
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public class SecurityProperties : Tea.TeaModel {
            public class ProjectProtection : Tea.TeaModel {
                public var exceptionPolicy: String?

                public var protected: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.exceptionPolicy != nil {
                        map["exceptionPolicy"] = self.exceptionPolicy!
                    }
                    if self.protected != nil {
                        map["protected"] = self.protected!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("exceptionPolicy") {
                        self.exceptionPolicy = dict["exceptionPolicy"] as! String
                    }
                    if dict.keys.contains("protected") {
                        self.protected = dict["protected"] as! Bool
                    }
                }
            }
            public var enableDownloadPrivilege: Bool?

            public var labelSecurity: Bool?

            public var objectCreatorHasAccessPermission: Bool?

            public var objectCreatorHasGrantPermission: Bool?

            public var projectProtection: GetProjectResponseBody.Data.SecurityProperties.ProjectProtection?

            public var usingAcl: Bool?

            public var usingPolicy: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.projectProtection?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableDownloadPrivilege != nil {
                    map["enableDownloadPrivilege"] = self.enableDownloadPrivilege!
                }
                if self.labelSecurity != nil {
                    map["labelSecurity"] = self.labelSecurity!
                }
                if self.objectCreatorHasAccessPermission != nil {
                    map["objectCreatorHasAccessPermission"] = self.objectCreatorHasAccessPermission!
                }
                if self.objectCreatorHasGrantPermission != nil {
                    map["objectCreatorHasGrantPermission"] = self.objectCreatorHasGrantPermission!
                }
                if self.projectProtection != nil {
                    map["projectProtection"] = self.projectProtection?.toMap()
                }
                if self.usingAcl != nil {
                    map["usingAcl"] = self.usingAcl!
                }
                if self.usingPolicy != nil {
                    map["usingPolicy"] = self.usingPolicy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableDownloadPrivilege") {
                    self.enableDownloadPrivilege = dict["enableDownloadPrivilege"] as! Bool
                }
                if dict.keys.contains("labelSecurity") {
                    self.labelSecurity = dict["labelSecurity"] as! Bool
                }
                if dict.keys.contains("objectCreatorHasAccessPermission") {
                    self.objectCreatorHasAccessPermission = dict["objectCreatorHasAccessPermission"] as! Bool
                }
                if dict.keys.contains("objectCreatorHasGrantPermission") {
                    self.objectCreatorHasGrantPermission = dict["objectCreatorHasGrantPermission"] as! Bool
                }
                if dict.keys.contains("projectProtection") {
                    var model = GetProjectResponseBody.Data.SecurityProperties.ProjectProtection()
                    model.fromMap(dict["projectProtection"] as! [String: Any])
                    self.projectProtection = model
                }
                if dict.keys.contains("usingAcl") {
                    self.usingAcl = dict["usingAcl"] as! Bool
                }
                if dict.keys.contains("usingPolicy") {
                    self.usingPolicy = dict["usingPolicy"] as! Bool
                }
            }
        }
        public var comment: String?

        public var costStorage: String?

        public var createdTime: Int64?

        public var defaultQuota: String?

        public var ipWhiteList: GetProjectResponseBody.Data.IpWhiteList?

        public var name: String?

        public var owner: String?

        public var productType: String?

        public var properties: GetProjectResponseBody.Data.Properties?

        public var regionId: String?

        public var saleTag: GetProjectResponseBody.Data.SaleTag?

        public var securityProperties: GetProjectResponseBody.Data.SecurityProperties?

        public var status: String?

        public var superAdmins: [String]?

        public var threeTierModel: Bool?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ipWhiteList?.validate()
            try self.properties?.validate()
            try self.saleTag?.validate()
            try self.securityProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["comment"] = self.comment!
            }
            if self.costStorage != nil {
                map["costStorage"] = self.costStorage!
            }
            if self.createdTime != nil {
                map["createdTime"] = self.createdTime!
            }
            if self.defaultQuota != nil {
                map["defaultQuota"] = self.defaultQuota!
            }
            if self.ipWhiteList != nil {
                map["ipWhiteList"] = self.ipWhiteList?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.owner != nil {
                map["owner"] = self.owner!
            }
            if self.productType != nil {
                map["productType"] = self.productType!
            }
            if self.properties != nil {
                map["properties"] = self.properties?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.saleTag != nil {
                map["saleTag"] = self.saleTag?.toMap()
            }
            if self.securityProperties != nil {
                map["securityProperties"] = self.securityProperties?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.superAdmins != nil {
                map["superAdmins"] = self.superAdmins!
            }
            if self.threeTierModel != nil {
                map["threeTierModel"] = self.threeTierModel!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("comment") {
                self.comment = dict["comment"] as! String
            }
            if dict.keys.contains("costStorage") {
                self.costStorage = dict["costStorage"] as! String
            }
            if dict.keys.contains("createdTime") {
                self.createdTime = dict["createdTime"] as! Int64
            }
            if dict.keys.contains("defaultQuota") {
                self.defaultQuota = dict["defaultQuota"] as! String
            }
            if dict.keys.contains("ipWhiteList") {
                var model = GetProjectResponseBody.Data.IpWhiteList()
                model.fromMap(dict["ipWhiteList"] as! [String: Any])
                self.ipWhiteList = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("owner") {
                self.owner = dict["owner"] as! String
            }
            if dict.keys.contains("productType") {
                self.productType = dict["productType"] as! String
            }
            if dict.keys.contains("properties") {
                var model = GetProjectResponseBody.Data.Properties()
                model.fromMap(dict["properties"] as! [String: Any])
                self.properties = model
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("saleTag") {
                var model = GetProjectResponseBody.Data.SaleTag()
                model.fromMap(dict["saleTag"] as! [String: Any])
                self.saleTag = model
            }
            if dict.keys.contains("securityProperties") {
                var model = GetProjectResponseBody.Data.SecurityProperties()
                model.fromMap(dict["securityProperties"] as! [String: Any])
                self.securityProperties = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("superAdmins") {
                self.superAdmins = dict["superAdmins"] as! [String]
            }
            if dict.keys.contains("threeTierModel") {
                self.threeTierModel = dict["threeTierModel"] as! Bool
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var data: GetProjectResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetProjectResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQuotaRequest : Tea.TeaModel {
    public var akProven: String?

    public var mock: Bool?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.akProven != nil {
            map["AkProven"] = self.akProven!
        }
        if self.mock != nil {
            map["mock"] = self.mock!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AkProven") {
            self.akProven = dict["AkProven"] as! String
        }
        if dict.keys.contains("mock") {
            self.mock = dict["mock"] as! Bool
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class GetQuotaResponseBody : Tea.TeaModel {
    public class BillingPolicy : Tea.TeaModel {
        public var billingMethod: String?

        public var odpsSpecCode: String?

        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingMethod != nil {
                map["billingMethod"] = self.billingMethod!
            }
            if self.odpsSpecCode != nil {
                map["odpsSpecCode"] = self.odpsSpecCode!
            }
            if self.orderId != nil {
                map["orderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("billingMethod") {
                self.billingMethod = dict["billingMethod"] as! String
            }
            if dict.keys.contains("odpsSpecCode") {
                self.odpsSpecCode = dict["odpsSpecCode"] as! String
            }
            if dict.keys.contains("orderId") {
                self.orderId = dict["orderId"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public class BillingPolicy : Tea.TeaModel {
            public var billingMethod: String?

            public var odpsSpecCode: String?

            public var orderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingMethod != nil {
                    map["billingMethod"] = self.billingMethod!
                }
                if self.odpsSpecCode != nil {
                    map["odpsSpecCode"] = self.odpsSpecCode!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("billingMethod") {
                    self.billingMethod = dict["billingMethod"] as! String
                }
                if dict.keys.contains("odpsSpecCode") {
                    self.odpsSpecCode = dict["odpsSpecCode"] as! String
                }
                if dict.keys.contains("orderId") {
                    self.orderId = dict["orderId"] as! String
                }
            }
        }
        public class SaleTag : Tea.TeaModel {
            public var resourceIds: [String]?

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
                if self.resourceIds != nil {
                    map["resourceIds"] = self.resourceIds!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resourceIds") {
                    self.resourceIds = dict["resourceIds"] as! [String]
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public class ScheduleInfo : Tea.TeaModel {
            public var currPlan: String?

            public var currTime: String?

            public var nextPlan: String?

            public var nextTime: String?

            public var oncePlan: String?

            public var onceTime: String?

            public var operatorName: String?

            public var timezone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currPlan != nil {
                    map["currPlan"] = self.currPlan!
                }
                if self.currTime != nil {
                    map["currTime"] = self.currTime!
                }
                if self.nextPlan != nil {
                    map["nextPlan"] = self.nextPlan!
                }
                if self.nextTime != nil {
                    map["nextTime"] = self.nextTime!
                }
                if self.oncePlan != nil {
                    map["oncePlan"] = self.oncePlan!
                }
                if self.onceTime != nil {
                    map["onceTime"] = self.onceTime!
                }
                if self.operatorName != nil {
                    map["operatorName"] = self.operatorName!
                }
                if self.timezone != nil {
                    map["timezone"] = self.timezone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("currPlan") {
                    self.currPlan = dict["currPlan"] as! String
                }
                if dict.keys.contains("currTime") {
                    self.currTime = dict["currTime"] as! String
                }
                if dict.keys.contains("nextPlan") {
                    self.nextPlan = dict["nextPlan"] as! String
                }
                if dict.keys.contains("nextTime") {
                    self.nextTime = dict["nextTime"] as! String
                }
                if dict.keys.contains("oncePlan") {
                    self.oncePlan = dict["oncePlan"] as! String
                }
                if dict.keys.contains("onceTime") {
                    self.onceTime = dict["onceTime"] as! String
                }
                if dict.keys.contains("operatorName") {
                    self.operatorName = dict["operatorName"] as! String
                }
                if dict.keys.contains("timezone") {
                    self.timezone = dict["timezone"] as! String
                }
            }
        }
        public class SubQuotaInfoList : Tea.TeaModel {
            public class BillingPolicy : Tea.TeaModel {
                public var billingMethod: String?

                public var odpsSpecCode: String?

                public var orderId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billingMethod != nil {
                        map["billingMethod"] = self.billingMethod!
                    }
                    if self.odpsSpecCode != nil {
                        map["odpsSpecCode"] = self.odpsSpecCode!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("billingMethod") {
                        self.billingMethod = dict["billingMethod"] as! String
                    }
                    if dict.keys.contains("odpsSpecCode") {
                        self.odpsSpecCode = dict["odpsSpecCode"] as! String
                    }
                    if dict.keys.contains("orderId") {
                        self.orderId = dict["orderId"] as! String
                    }
                }
            }
            public class SaleTag : Tea.TeaModel {
                public var resourceIds: [String]?

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
                    if self.resourceIds != nil {
                        map["resourceIds"] = self.resourceIds!
                    }
                    if self.resourceType != nil {
                        map["resourceType"] = self.resourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("resourceIds") {
                        self.resourceIds = dict["resourceIds"] as! [String]
                    }
                    if dict.keys.contains("resourceType") {
                        self.resourceType = dict["resourceType"] as! String
                    }
                }
            }
            public class ScheduleInfo : Tea.TeaModel {
                public var currPlan: String?

                public var currTime: String?

                public var nextPlan: String?

                public var nextTime: String?

                public var oncePlan: String?

                public var onceTime: String?

                public var operatorName: String?

                public var timezone: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.currPlan != nil {
                        map["currPlan"] = self.currPlan!
                    }
                    if self.currTime != nil {
                        map["currTime"] = self.currTime!
                    }
                    if self.nextPlan != nil {
                        map["nextPlan"] = self.nextPlan!
                    }
                    if self.nextTime != nil {
                        map["nextTime"] = self.nextTime!
                    }
                    if self.oncePlan != nil {
                        map["oncePlan"] = self.oncePlan!
                    }
                    if self.onceTime != nil {
                        map["onceTime"] = self.onceTime!
                    }
                    if self.operatorName != nil {
                        map["operatorName"] = self.operatorName!
                    }
                    if self.timezone != nil {
                        map["timezone"] = self.timezone!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("currPlan") {
                        self.currPlan = dict["currPlan"] as! String
                    }
                    if dict.keys.contains("currTime") {
                        self.currTime = dict["currTime"] as! String
                    }
                    if dict.keys.contains("nextPlan") {
                        self.nextPlan = dict["nextPlan"] as! String
                    }
                    if dict.keys.contains("nextTime") {
                        self.nextTime = dict["nextTime"] as! String
                    }
                    if dict.keys.contains("oncePlan") {
                        self.oncePlan = dict["oncePlan"] as! String
                    }
                    if dict.keys.contains("onceTime") {
                        self.onceTime = dict["onceTime"] as! String
                    }
                    if dict.keys.contains("operatorName") {
                        self.operatorName = dict["operatorName"] as! String
                    }
                    if dict.keys.contains("timezone") {
                        self.timezone = dict["timezone"] as! String
                    }
                }
            }
            public var billingPolicy: GetQuotaResponseBody.Data.SubQuotaInfoList.BillingPolicy?

            public var cluster: String?

            public var createTime: Int64?

            public var creatorId: String?

            public var id: String?

            public var name: String?

            public var nickName: String?

            public var parameter: [String: Any]?

            public var parentId: String?

            public var regionId: String?

            public var saleTag: GetQuotaResponseBody.Data.SubQuotaInfoList.SaleTag?

            public var scheduleInfo: GetQuotaResponseBody.Data.SubQuotaInfoList.ScheduleInfo?

            public var status: String?

            public var tag: String?

            public var tenantId: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.billingPolicy?.validate()
                try self.saleTag?.validate()
                try self.scheduleInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingPolicy != nil {
                    map["billingPolicy"] = self.billingPolicy?.toMap()
                }
                if self.cluster != nil {
                    map["cluster"] = self.cluster!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorId != nil {
                    map["creatorId"] = self.creatorId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter!
                }
                if self.parentId != nil {
                    map["parentId"] = self.parentId!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.saleTag != nil {
                    map["saleTag"] = self.saleTag?.toMap()
                }
                if self.scheduleInfo != nil {
                    map["scheduleInfo"] = self.scheduleInfo?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("billingPolicy") {
                    var model = GetQuotaResponseBody.Data.SubQuotaInfoList.BillingPolicy()
                    model.fromMap(dict["billingPolicy"] as! [String: Any])
                    self.billingPolicy = model
                }
                if dict.keys.contains("cluster") {
                    self.cluster = dict["cluster"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorId") {
                    self.creatorId = dict["creatorId"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    self.parameter = dict["parameter"] as! [String: Any]
                }
                if dict.keys.contains("parentId") {
                    self.parentId = dict["parentId"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("saleTag") {
                    var model = GetQuotaResponseBody.Data.SubQuotaInfoList.SaleTag()
                    model.fromMap(dict["saleTag"] as! [String: Any])
                    self.saleTag = model
                }
                if dict.keys.contains("scheduleInfo") {
                    var model = GetQuotaResponseBody.Data.SubQuotaInfoList.ScheduleInfo()
                    model.fromMap(dict["scheduleInfo"] as! [String: Any])
                    self.scheduleInfo = model
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var billingPolicy: GetQuotaResponseBody.Data.BillingPolicy?

        public var cluster: String?

        public var createTime: Int64?

        public var creatorId: String?

        public var id: String?

        public var name: String?

        public var nickName: String?

        public var parameter: [String: Any]?

        public var parentId: String?

        public var regionId: String?

        public var saleTag: GetQuotaResponseBody.Data.SaleTag?

        public var scheduleInfo: GetQuotaResponseBody.Data.ScheduleInfo?

        public var status: String?

        public var subQuotaInfoList: [GetQuotaResponseBody.Data.SubQuotaInfoList]?

        public var tag: String?

        public var tenantId: String?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.billingPolicy?.validate()
            try self.saleTag?.validate()
            try self.scheduleInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingPolicy != nil {
                map["billingPolicy"] = self.billingPolicy?.toMap()
            }
            if self.cluster != nil {
                map["cluster"] = self.cluster!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nickName != nil {
                map["nickName"] = self.nickName!
            }
            if self.parameter != nil {
                map["parameter"] = self.parameter!
            }
            if self.parentId != nil {
                map["parentId"] = self.parentId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.saleTag != nil {
                map["saleTag"] = self.saleTag?.toMap()
            }
            if self.scheduleInfo != nil {
                map["scheduleInfo"] = self.scheduleInfo?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subQuotaInfoList != nil {
                var tmp : [Any] = []
                for k in self.subQuotaInfoList! {
                    tmp.append(k.toMap())
                }
                map["subQuotaInfoList"] = tmp
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("billingPolicy") {
                var model = GetQuotaResponseBody.Data.BillingPolicy()
                model.fromMap(dict["billingPolicy"] as! [String: Any])
                self.billingPolicy = model
            }
            if dict.keys.contains("cluster") {
                self.cluster = dict["cluster"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorId") {
                self.creatorId = dict["creatorId"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nickName") {
                self.nickName = dict["nickName"] as! String
            }
            if dict.keys.contains("parameter") {
                self.parameter = dict["parameter"] as! [String: Any]
            }
            if dict.keys.contains("parentId") {
                self.parentId = dict["parentId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("saleTag") {
                var model = GetQuotaResponseBody.Data.SaleTag()
                model.fromMap(dict["saleTag"] as! [String: Any])
                self.saleTag = model
            }
            if dict.keys.contains("scheduleInfo") {
                var model = GetQuotaResponseBody.Data.ScheduleInfo()
                model.fromMap(dict["scheduleInfo"] as! [String: Any])
                self.scheduleInfo = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("subQuotaInfoList") {
                var tmp : [GetQuotaResponseBody.Data.SubQuotaInfoList] = []
                for v in dict["subQuotaInfoList"] as! [Any] {
                    var model = GetQuotaResponseBody.Data.SubQuotaInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subQuotaInfoList = tmp
            }
            if dict.keys.contains("tag") {
                self.tag = dict["tag"] as! String
            }
            if dict.keys.contains("tenantId") {
                self.tenantId = dict["tenantId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public class SaleTag : Tea.TeaModel {
        public var resourceIds: [String]?

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
            if self.resourceIds != nil {
                map["resourceIds"] = self.resourceIds!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("resourceIds") {
                self.resourceIds = dict["resourceIds"] as! [String]
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
        }
    }
    public class ScheduleInfo : Tea.TeaModel {
        public var currPlan: String?

        public var currTime: String?

        public var nextPlan: String?

        public var nextTime: String?

        public var oncePlan: String?

        public var onceTime: String?

        public var operatorName: String?

        public var timezone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currPlan != nil {
                map["currPlan"] = self.currPlan!
            }
            if self.currTime != nil {
                map["currTime"] = self.currTime!
            }
            if self.nextPlan != nil {
                map["nextPlan"] = self.nextPlan!
            }
            if self.nextTime != nil {
                map["nextTime"] = self.nextTime!
            }
            if self.oncePlan != nil {
                map["oncePlan"] = self.oncePlan!
            }
            if self.onceTime != nil {
                map["onceTime"] = self.onceTime!
            }
            if self.operatorName != nil {
                map["operatorName"] = self.operatorName!
            }
            if self.timezone != nil {
                map["timezone"] = self.timezone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currPlan") {
                self.currPlan = dict["currPlan"] as! String
            }
            if dict.keys.contains("currTime") {
                self.currTime = dict["currTime"] as! String
            }
            if dict.keys.contains("nextPlan") {
                self.nextPlan = dict["nextPlan"] as! String
            }
            if dict.keys.contains("nextTime") {
                self.nextTime = dict["nextTime"] as! String
            }
            if dict.keys.contains("oncePlan") {
                self.oncePlan = dict["oncePlan"] as! String
            }
            if dict.keys.contains("onceTime") {
                self.onceTime = dict["onceTime"] as! String
            }
            if dict.keys.contains("operatorName") {
                self.operatorName = dict["operatorName"] as! String
            }
            if dict.keys.contains("timezone") {
                self.timezone = dict["timezone"] as! String
            }
        }
    }
    public class SubQuotaInfoList : Tea.TeaModel {
        public class BillingPolicy : Tea.TeaModel {
            public var billingMethod: String?

            public var odpsSpecCode: String?

            public var orderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingMethod != nil {
                    map["billingMethod"] = self.billingMethod!
                }
                if self.odpsSpecCode != nil {
                    map["odpsSpecCode"] = self.odpsSpecCode!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("billingMethod") {
                    self.billingMethod = dict["billingMethod"] as! String
                }
                if dict.keys.contains("odpsSpecCode") {
                    self.odpsSpecCode = dict["odpsSpecCode"] as! String
                }
                if dict.keys.contains("orderId") {
                    self.orderId = dict["orderId"] as! String
                }
            }
        }
        public class SaleTag : Tea.TeaModel {
            public var resourceIds: [String]?

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
                if self.resourceIds != nil {
                    map["resourceIds"] = self.resourceIds!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resourceIds") {
                    self.resourceIds = dict["resourceIds"] as! [String]
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public class ScheduleInfo : Tea.TeaModel {
            public var currPlan: String?

            public var currTime: String?

            public var nextPlan: String?

            public var nextTime: String?

            public var oncePlan: String?

            public var onceTime: String?

            public var operatorName: String?

            public var timezone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currPlan != nil {
                    map["currPlan"] = self.currPlan!
                }
                if self.currTime != nil {
                    map["currTime"] = self.currTime!
                }
                if self.nextPlan != nil {
                    map["nextPlan"] = self.nextPlan!
                }
                if self.nextTime != nil {
                    map["nextTime"] = self.nextTime!
                }
                if self.oncePlan != nil {
                    map["oncePlan"] = self.oncePlan!
                }
                if self.onceTime != nil {
                    map["onceTime"] = self.onceTime!
                }
                if self.operatorName != nil {
                    map["operatorName"] = self.operatorName!
                }
                if self.timezone != nil {
                    map["timezone"] = self.timezone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("currPlan") {
                    self.currPlan = dict["currPlan"] as! String
                }
                if dict.keys.contains("currTime") {
                    self.currTime = dict["currTime"] as! String
                }
                if dict.keys.contains("nextPlan") {
                    self.nextPlan = dict["nextPlan"] as! String
                }
                if dict.keys.contains("nextTime") {
                    self.nextTime = dict["nextTime"] as! String
                }
                if dict.keys.contains("oncePlan") {
                    self.oncePlan = dict["oncePlan"] as! String
                }
                if dict.keys.contains("onceTime") {
                    self.onceTime = dict["onceTime"] as! String
                }
                if dict.keys.contains("operatorName") {
                    self.operatorName = dict["operatorName"] as! String
                }
                if dict.keys.contains("timezone") {
                    self.timezone = dict["timezone"] as! String
                }
            }
        }
        public var billingPolicy: GetQuotaResponseBody.SubQuotaInfoList.BillingPolicy?

        public var cluster: String?

        public var createTime: Int64?

        public var creatorId: String?

        public var id: String?

        public var name: String?

        public var nickName: String?

        public var parameter: [String: Any]?

        public var parentId: String?

        public var regionId: String?

        public var saleTag: GetQuotaResponseBody.SubQuotaInfoList.SaleTag?

        public var scheduleInfo: GetQuotaResponseBody.SubQuotaInfoList.ScheduleInfo?

        public var status: String?

        public var tag: String?

        public var tenantId: String?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.billingPolicy?.validate()
            try self.saleTag?.validate()
            try self.scheduleInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingPolicy != nil {
                map["billingPolicy"] = self.billingPolicy?.toMap()
            }
            if self.cluster != nil {
                map["cluster"] = self.cluster!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nickName != nil {
                map["nickName"] = self.nickName!
            }
            if self.parameter != nil {
                map["parameter"] = self.parameter!
            }
            if self.parentId != nil {
                map["parentId"] = self.parentId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.saleTag != nil {
                map["saleTag"] = self.saleTag?.toMap()
            }
            if self.scheduleInfo != nil {
                map["scheduleInfo"] = self.scheduleInfo?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("billingPolicy") {
                var model = GetQuotaResponseBody.SubQuotaInfoList.BillingPolicy()
                model.fromMap(dict["billingPolicy"] as! [String: Any])
                self.billingPolicy = model
            }
            if dict.keys.contains("cluster") {
                self.cluster = dict["cluster"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorId") {
                self.creatorId = dict["creatorId"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nickName") {
                self.nickName = dict["nickName"] as! String
            }
            if dict.keys.contains("parameter") {
                self.parameter = dict["parameter"] as! [String: Any]
            }
            if dict.keys.contains("parentId") {
                self.parentId = dict["parentId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("saleTag") {
                var model = GetQuotaResponseBody.SubQuotaInfoList.SaleTag()
                model.fromMap(dict["saleTag"] as! [String: Any])
                self.saleTag = model
            }
            if dict.keys.contains("scheduleInfo") {
                var model = GetQuotaResponseBody.SubQuotaInfoList.ScheduleInfo()
                model.fromMap(dict["scheduleInfo"] as! [String: Any])
                self.scheduleInfo = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tag") {
                self.tag = dict["tag"] as! String
            }
            if dict.keys.contains("tenantId") {
                self.tenantId = dict["tenantId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var billingPolicy: GetQuotaResponseBody.BillingPolicy?

    public var cluster: String?

    public var createTime: Int64?

    public var creatorId: String?

    public var data: GetQuotaResponseBody.Data?

    public var id: String?

    public var name: String?

    public var nickName: String?

    public var parameter: [String: Any]?

    public var parentId: String?

    public var regionId: String?

    public var requestId: String?

    public var saleTag: GetQuotaResponseBody.SaleTag?

    public var scheduleInfo: GetQuotaResponseBody.ScheduleInfo?

    public var status: String?

    public var subQuotaInfoList: [GetQuotaResponseBody.SubQuotaInfoList]?

    public var tag: String?

    public var tenantId: String?

    public var type: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.billingPolicy?.validate()
        try self.data?.validate()
        try self.saleTag?.validate()
        try self.scheduleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingPolicy != nil {
            map["billingPolicy"] = self.billingPolicy?.toMap()
        }
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.creatorId != nil {
            map["creatorId"] = self.creatorId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nickName != nil {
            map["nickName"] = self.nickName!
        }
        if self.parameter != nil {
            map["parameter"] = self.parameter!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.saleTag != nil {
            map["saleTag"] = self.saleTag?.toMap()
        }
        if self.scheduleInfo != nil {
            map["scheduleInfo"] = self.scheduleInfo?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.subQuotaInfoList != nil {
            var tmp : [Any] = []
            for k in self.subQuotaInfoList! {
                tmp.append(k.toMap())
            }
            map["subQuotaInfoList"] = tmp
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("billingPolicy") {
            var model = GetQuotaResponseBody.BillingPolicy()
            model.fromMap(dict["billingPolicy"] as! [String: Any])
            self.billingPolicy = model
        }
        if dict.keys.contains("cluster") {
            self.cluster = dict["cluster"] as! String
        }
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! Int64
        }
        if dict.keys.contains("creatorId") {
            self.creatorId = dict["creatorId"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetQuotaResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nickName") {
            self.nickName = dict["nickName"] as! String
        }
        if dict.keys.contains("parameter") {
            self.parameter = dict["parameter"] as! [String: Any]
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("saleTag") {
            var model = GetQuotaResponseBody.SaleTag()
            model.fromMap(dict["saleTag"] as! [String: Any])
            self.saleTag = model
        }
        if dict.keys.contains("scheduleInfo") {
            var model = GetQuotaResponseBody.ScheduleInfo()
            model.fromMap(dict["scheduleInfo"] as! [String: Any])
            self.scheduleInfo = model
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("subQuotaInfoList") {
            var tmp : [GetQuotaResponseBody.SubQuotaInfoList] = []
            for v in dict["subQuotaInfoList"] as! [Any] {
                var model = GetQuotaResponseBody.SubQuotaInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subQuotaInfoList = tmp
        }
        if dict.keys.contains("tag") {
            self.tag = dict["tag"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
    }
}

public class GetQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQuotaPlanRequest : Tea.TeaModel {
    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class GetQuotaPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Quota : Tea.TeaModel {
            public class BillingPolicy : Tea.TeaModel {
                public var billingMethod: String?

                public var odpsSpecCode: String?

                public var orderId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billingMethod != nil {
                        map["billingMethod"] = self.billingMethod!
                    }
                    if self.odpsSpecCode != nil {
                        map["odpsSpecCode"] = self.odpsSpecCode!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("billingMethod") {
                        self.billingMethod = dict["billingMethod"] as! String
                    }
                    if dict.keys.contains("odpsSpecCode") {
                        self.odpsSpecCode = dict["odpsSpecCode"] as! String
                    }
                    if dict.keys.contains("orderId") {
                        self.orderId = dict["orderId"] as! String
                    }
                }
            }
            public class ScheduleInfo : Tea.TeaModel {
                public var currPlan: String?

                public var currTime: String?

                public var nextPlan: String?

                public var nextTime: String?

                public var oncePlan: String?

                public var onceTime: String?

                public var operatorName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.currPlan != nil {
                        map["currPlan"] = self.currPlan!
                    }
                    if self.currTime != nil {
                        map["currTime"] = self.currTime!
                    }
                    if self.nextPlan != nil {
                        map["nextPlan"] = self.nextPlan!
                    }
                    if self.nextTime != nil {
                        map["nextTime"] = self.nextTime!
                    }
                    if self.oncePlan != nil {
                        map["oncePlan"] = self.oncePlan!
                    }
                    if self.onceTime != nil {
                        map["onceTime"] = self.onceTime!
                    }
                    if self.operatorName != nil {
                        map["operatorName"] = self.operatorName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("currPlan") {
                        self.currPlan = dict["currPlan"] as! String
                    }
                    if dict.keys.contains("currTime") {
                        self.currTime = dict["currTime"] as! String
                    }
                    if dict.keys.contains("nextPlan") {
                        self.nextPlan = dict["nextPlan"] as! String
                    }
                    if dict.keys.contains("nextTime") {
                        self.nextTime = dict["nextTime"] as! String
                    }
                    if dict.keys.contains("oncePlan") {
                        self.oncePlan = dict["oncePlan"] as! String
                    }
                    if dict.keys.contains("onceTime") {
                        self.onceTime = dict["onceTime"] as! String
                    }
                    if dict.keys.contains("operatorName") {
                        self.operatorName = dict["operatorName"] as! String
                    }
                }
            }
            public class SubQuotaInfoList : Tea.TeaModel {
                public class BillingPolicy : Tea.TeaModel {
                    public var billingMethod: String?

                    public var odpsSpecCode: String?

                    public var orderId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.billingMethod != nil {
                            map["billingMethod"] = self.billingMethod!
                        }
                        if self.odpsSpecCode != nil {
                            map["odpsSpecCode"] = self.odpsSpecCode!
                        }
                        if self.orderId != nil {
                            map["orderId"] = self.orderId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("billingMethod") {
                            self.billingMethod = dict["billingMethod"] as! String
                        }
                        if dict.keys.contains("odpsSpecCode") {
                            self.odpsSpecCode = dict["odpsSpecCode"] as! String
                        }
                        if dict.keys.contains("orderId") {
                            self.orderId = dict["orderId"] as! String
                        }
                    }
                }
                public class ScheduleInfo : Tea.TeaModel {
                    public var currPlan: String?

                    public var currTime: String?

                    public var nextPlan: String?

                    public var nextTime: String?

                    public var oncePlan: String?

                    public var onceTime: String?

                    public var operatorName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.currPlan != nil {
                            map["currPlan"] = self.currPlan!
                        }
                        if self.currTime != nil {
                            map["currTime"] = self.currTime!
                        }
                        if self.nextPlan != nil {
                            map["nextPlan"] = self.nextPlan!
                        }
                        if self.nextTime != nil {
                            map["nextTime"] = self.nextTime!
                        }
                        if self.oncePlan != nil {
                            map["oncePlan"] = self.oncePlan!
                        }
                        if self.onceTime != nil {
                            map["onceTime"] = self.onceTime!
                        }
                        if self.operatorName != nil {
                            map["operatorName"] = self.operatorName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("currPlan") {
                            self.currPlan = dict["currPlan"] as! String
                        }
                        if dict.keys.contains("currTime") {
                            self.currTime = dict["currTime"] as! String
                        }
                        if dict.keys.contains("nextPlan") {
                            self.nextPlan = dict["nextPlan"] as! String
                        }
                        if dict.keys.contains("nextTime") {
                            self.nextTime = dict["nextTime"] as! String
                        }
                        if dict.keys.contains("oncePlan") {
                            self.oncePlan = dict["oncePlan"] as! String
                        }
                        if dict.keys.contains("onceTime") {
                            self.onceTime = dict["onceTime"] as! String
                        }
                        if dict.keys.contains("operatorName") {
                            self.operatorName = dict["operatorName"] as! String
                        }
                    }
                }
                public var billingPolicy: GetQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList.BillingPolicy?

                public var cluster: String?

                public var createTime: Int64?

                public var creatorId: String?

                public var id: String?

                public var name: String?

                public var nickName: String?

                public var parameter: [String: Any]?

                public var parentId: String?

                public var regionId: String?

                public var scheduleInfo: GetQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList.ScheduleInfo?

                public var status: String?

                public var tag: String?

                public var tenantId: String?

                public var type: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.billingPolicy?.validate()
                    try self.scheduleInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billingPolicy != nil {
                        map["billingPolicy"] = self.billingPolicy?.toMap()
                    }
                    if self.cluster != nil {
                        map["cluster"] = self.cluster!
                    }
                    if self.createTime != nil {
                        map["createTime"] = self.createTime!
                    }
                    if self.creatorId != nil {
                        map["creatorId"] = self.creatorId!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nickName != nil {
                        map["nickName"] = self.nickName!
                    }
                    if self.parameter != nil {
                        map["parameter"] = self.parameter!
                    }
                    if self.parentId != nil {
                        map["parentId"] = self.parentId!
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.scheduleInfo != nil {
                        map["scheduleInfo"] = self.scheduleInfo?.toMap()
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.tenantId != nil {
                        map["tenantId"] = self.tenantId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("billingPolicy") {
                        var model = GetQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList.BillingPolicy()
                        model.fromMap(dict["billingPolicy"] as! [String: Any])
                        self.billingPolicy = model
                    }
                    if dict.keys.contains("cluster") {
                        self.cluster = dict["cluster"] as! String
                    }
                    if dict.keys.contains("createTime") {
                        self.createTime = dict["createTime"] as! Int64
                    }
                    if dict.keys.contains("creatorId") {
                        self.creatorId = dict["creatorId"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nickName") {
                        self.nickName = dict["nickName"] as! String
                    }
                    if dict.keys.contains("parameter") {
                        self.parameter = dict["parameter"] as! [String: Any]
                    }
                    if dict.keys.contains("parentId") {
                        self.parentId = dict["parentId"] as! String
                    }
                    if dict.keys.contains("regionId") {
                        self.regionId = dict["regionId"] as! String
                    }
                    if dict.keys.contains("scheduleInfo") {
                        var model = GetQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList.ScheduleInfo()
                        model.fromMap(dict["scheduleInfo"] as! [String: Any])
                        self.scheduleInfo = model
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("tenantId") {
                        self.tenantId = dict["tenantId"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public var billingPolicy: GetQuotaPlanResponseBody.Data.Quota.BillingPolicy?

            public var cluster: String?

            public var createTime: Int64?

            public var creatorId: String?

            public var id: String?

            public var name: String?

            public var nickName: String?

            public var parameter: [String: Any]?

            public var parentId: String?

            public var regionId: String?

            public var scheduleInfo: GetQuotaPlanResponseBody.Data.Quota.ScheduleInfo?

            public var status: String?

            public var subQuotaInfoList: [GetQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList]?

            public var tag: String?

            public var tenantId: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.billingPolicy?.validate()
                try self.scheduleInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingPolicy != nil {
                    map["billingPolicy"] = self.billingPolicy?.toMap()
                }
                if self.cluster != nil {
                    map["cluster"] = self.cluster!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorId != nil {
                    map["creatorId"] = self.creatorId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter!
                }
                if self.parentId != nil {
                    map["parentId"] = self.parentId!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.scheduleInfo != nil {
                    map["scheduleInfo"] = self.scheduleInfo?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subQuotaInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.subQuotaInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["subQuotaInfoList"] = tmp
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("billingPolicy") {
                    var model = GetQuotaPlanResponseBody.Data.Quota.BillingPolicy()
                    model.fromMap(dict["billingPolicy"] as! [String: Any])
                    self.billingPolicy = model
                }
                if dict.keys.contains("cluster") {
                    self.cluster = dict["cluster"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorId") {
                    self.creatorId = dict["creatorId"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    self.parameter = dict["parameter"] as! [String: Any]
                }
                if dict.keys.contains("parentId") {
                    self.parentId = dict["parentId"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("scheduleInfo") {
                    var model = GetQuotaPlanResponseBody.Data.Quota.ScheduleInfo()
                    model.fromMap(dict["scheduleInfo"] as! [String: Any])
                    self.scheduleInfo = model
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("subQuotaInfoList") {
                    var tmp : [GetQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList] = []
                    for v in dict["subQuotaInfoList"] as! [Any] {
                        var model = GetQuotaPlanResponseBody.Data.Quota.SubQuotaInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subQuotaInfoList = tmp
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var createTime: String?

        public var name: String?

        public var quota: GetQuotaPlanResponseBody.Data.Quota?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.quota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.quota != nil {
                map["quota"] = self.quota?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("quota") {
                var model = GetQuotaPlanResponseBody.Data.Quota()
                model.fromMap(dict["quota"] as! [String: Any])
                self.quota = model
            }
        }
    }
    public var data: GetQuotaPlanResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetQuotaPlanResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQuotaScheduleRequest : Tea.TeaModel {
    public var displayTimezone: String?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayTimezone != nil {
            map["displayTimezone"] = self.displayTimezone!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("displayTimezone") {
            self.displayTimezone = dict["displayTimezone"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class GetQuotaScheduleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Condition : Tea.TeaModel {
            public var after: String?

            public var at: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.after != nil {
                    map["after"] = self.after!
                }
                if self.at != nil {
                    map["at"] = self.at!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("after") {
                    self.after = dict["after"] as! String
                }
                if dict.keys.contains("at") {
                    self.at = dict["at"] as! String
                }
            }
        }
        public var condition: GetQuotaScheduleResponseBody.Data.Condition?

        public var id: String?

        public var operator_: String?

        public var plan: String?

        public var timezone: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.condition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.condition != nil {
                map["condition"] = self.condition?.toMap()
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            if self.plan != nil {
                map["plan"] = self.plan!
            }
            if self.timezone != nil {
                map["timezone"] = self.timezone!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("condition") {
                var model = GetQuotaScheduleResponseBody.Data.Condition()
                model.fromMap(dict["condition"] as! [String: Any])
                self.condition = model
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("operator") {
                self.operator_ = dict["operator"] as! String
            }
            if dict.keys.contains("plan") {
                self.plan = dict["plan"] as! String
            }
            if dict.keys.contains("timezone") {
                self.timezone = dict["timezone"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var data: [GetQuotaScheduleResponseBody.Data]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [GetQuotaScheduleResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetQuotaScheduleResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetQuotaScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaScheduleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQuotaScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQuotaUsageRequest : Tea.TeaModel {
    public var aggMethod: String?

    public var from: Int64?

    public var plotTypes: [String]?

    public var productId: String?

    public var region: String?

    public var subQuotaNickname: String?

    public var tenantId: String?

    public var to: Int64?

    public var yAxisTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggMethod != nil {
            map["aggMethod"] = self.aggMethod!
        }
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.plotTypes != nil {
            map["plotTypes"] = self.plotTypes!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.subQuotaNickname != nil {
            map["subQuotaNickname"] = self.subQuotaNickname!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.yAxisTypes != nil {
            map["yAxisTypes"] = self.yAxisTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aggMethod") {
            self.aggMethod = dict["aggMethod"] as! String
        }
        if dict.keys.contains("from") {
            self.from = dict["from"] as! Int64
        }
        if dict.keys.contains("plotTypes") {
            self.plotTypes = dict["plotTypes"] as! [String]
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("subQuotaNickname") {
            self.subQuotaNickname = dict["subQuotaNickname"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
        if dict.keys.contains("to") {
            self.to = dict["to"] as! Int64
        }
        if dict.keys.contains("yAxisTypes") {
            self.yAxisTypes = dict["yAxisTypes"] as! [String]
        }
    }
}

public class GetQuotaUsageShrinkRequest : Tea.TeaModel {
    public var aggMethod: String?

    public var from: Int64?

    public var plotTypesShrink: String?

    public var productId: String?

    public var region: String?

    public var subQuotaNickname: String?

    public var tenantId: String?

    public var to: Int64?

    public var yAxisTypesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggMethod != nil {
            map["aggMethod"] = self.aggMethod!
        }
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.plotTypesShrink != nil {
            map["plotTypes"] = self.plotTypesShrink!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.subQuotaNickname != nil {
            map["subQuotaNickname"] = self.subQuotaNickname!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.yAxisTypesShrink != nil {
            map["yAxisTypes"] = self.yAxisTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aggMethod") {
            self.aggMethod = dict["aggMethod"] as! String
        }
        if dict.keys.contains("from") {
            self.from = dict["from"] as! Int64
        }
        if dict.keys.contains("plotTypes") {
            self.plotTypesShrink = dict["plotTypes"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("subQuotaNickname") {
            self.subQuotaNickname = dict["subQuotaNickname"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
        if dict.keys.contains("to") {
            self.to = dict["to"] as! Int64
        }
        if dict.keys.contains("yAxisTypes") {
            self.yAxisTypesShrink = dict["yAxisTypes"] as! String
        }
    }
}

public class GetQuotaUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Plot : Tea.TeaModel {
            public var title: String?

            public var type: String?

            public var yAxis: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.yAxis != nil {
                    map["yAxis"] = self.yAxis!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("yAxis") {
                    self.yAxis = dict["yAxis"] as! [String]
                }
            }
        }
        public var metrics: [String: Any]?

        public var plot: [GetQuotaUsageResponseBody.Data.Plot]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metrics != nil {
                map["metrics"] = self.metrics!
            }
            if self.plot != nil {
                var tmp : [Any] = []
                for k in self.plot! {
                    tmp.append(k.toMap())
                }
                map["plot"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("metrics") {
                self.metrics = dict["metrics"] as! [String: Any]
            }
            if dict.keys.contains("plot") {
                var tmp : [GetQuotaUsageResponseBody.Data.Plot] = []
                for v in dict["plot"] as! [Any] {
                    var model = GetQuotaUsageResponseBody.Data.Plot()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.plot = tmp
            }
        }
    }
    public var data: GetQuotaUsageResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetQuotaUsageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetQuotaUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQuotaUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRoleAclResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Function : Tea.TeaModel {
            public var actions: [String]?

            public var name: String?

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
                if self.actions != nil {
                    map["actions"] = self.actions!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("actions") {
                    self.actions = dict["actions"] as! [String]
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("schemaName") {
                    self.schemaName = dict["schemaName"] as! String
                }
            }
        }
        public class Instance : Tea.TeaModel {
            public var actions: [String]?

            public var name: String?

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
                if self.actions != nil {
                    map["actions"] = self.actions!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("actions") {
                    self.actions = dict["actions"] as! [String]
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("schemaName") {
                    self.schemaName = dict["schemaName"] as! String
                }
            }
        }
        public class Package : Tea.TeaModel {
            public var actions: [String]?

            public var name: String?

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
                if self.actions != nil {
                    map["actions"] = self.actions!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("actions") {
                    self.actions = dict["actions"] as! [String]
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("schemaName") {
                    self.schemaName = dict["schemaName"] as! String
                }
            }
        }
        public class Project : Tea.TeaModel {
            public var actions: [String]?

            public var name: String?

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
                if self.actions != nil {
                    map["actions"] = self.actions!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("actions") {
                    self.actions = dict["actions"] as! [String]
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("schemaName") {
                    self.schemaName = dict["schemaName"] as! String
                }
            }
        }
        public class Resource : Tea.TeaModel {
            public var actions: [String]?

            public var name: String?

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
                if self.actions != nil {
                    map["actions"] = self.actions!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("actions") {
                    self.actions = dict["actions"] as! [String]
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("schemaName") {
                    self.schemaName = dict["schemaName"] as! String
                }
            }
        }
        public class Table : Tea.TeaModel {
            public var actions: [String]?

            public var name: String?

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
                if self.actions != nil {
                    map["actions"] = self.actions!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("actions") {
                    self.actions = dict["actions"] as! [String]
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("schemaName") {
                    self.schemaName = dict["schemaName"] as! String
                }
            }
        }
        public var function: [GetRoleAclResponseBody.Data.Function]?

        public var instance: [GetRoleAclResponseBody.Data.Instance]?

        public var package: [GetRoleAclResponseBody.Data.Package]?

        public var project: [GetRoleAclResponseBody.Data.Project]?

        public var resource: [GetRoleAclResponseBody.Data.Resource]?

        public var table: [GetRoleAclResponseBody.Data.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.function != nil {
                var tmp : [Any] = []
                for k in self.function! {
                    tmp.append(k.toMap())
                }
                map["function"] = tmp
            }
            if self.instance != nil {
                var tmp : [Any] = []
                for k in self.instance! {
                    tmp.append(k.toMap())
                }
                map["instance"] = tmp
            }
            if self.package != nil {
                var tmp : [Any] = []
                for k in self.package! {
                    tmp.append(k.toMap())
                }
                map["package"] = tmp
            }
            if self.project != nil {
                var tmp : [Any] = []
                for k in self.project! {
                    tmp.append(k.toMap())
                }
                map["project"] = tmp
            }
            if self.resource != nil {
                var tmp : [Any] = []
                for k in self.resource! {
                    tmp.append(k.toMap())
                }
                map["resource"] = tmp
            }
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("function") {
                var tmp : [GetRoleAclResponseBody.Data.Function] = []
                for v in dict["function"] as! [Any] {
                    var model = GetRoleAclResponseBody.Data.Function()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.function = tmp
            }
            if dict.keys.contains("instance") {
                var tmp : [GetRoleAclResponseBody.Data.Instance] = []
                for v in dict["instance"] as! [Any] {
                    var model = GetRoleAclResponseBody.Data.Instance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instance = tmp
            }
            if dict.keys.contains("package") {
                var tmp : [GetRoleAclResponseBody.Data.Package] = []
                for v in dict["package"] as! [Any] {
                    var model = GetRoleAclResponseBody.Data.Package()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.package = tmp
            }
            if dict.keys.contains("project") {
                var tmp : [GetRoleAclResponseBody.Data.Project] = []
                for v in dict["project"] as! [Any] {
                    var model = GetRoleAclResponseBody.Data.Project()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.project = tmp
            }
            if dict.keys.contains("resource") {
                var tmp : [GetRoleAclResponseBody.Data.Resource] = []
                for v in dict["resource"] as! [Any] {
                    var model = GetRoleAclResponseBody.Data.Resource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resource = tmp
            }
            if dict.keys.contains("table") {
                var tmp : [GetRoleAclResponseBody.Data.Table] = []
                for v in dict["table"] as! [Any] {
                    var model = GetRoleAclResponseBody.Data.Table()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.table = tmp
            }
        }
    }
    public var data: GetRoleAclResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetRoleAclResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetRoleAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRoleAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRoleAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRoleAclOnObjectRequest : Tea.TeaModel {
    public var objectName: String?

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
        if self.objectName != nil {
            map["objectName"] = self.objectName!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("objectName") {
            self.objectName = dict["objectName"] as! String
        }
        if dict.keys.contains("objectType") {
            self.objectType = dict["objectType"] as! String
        }
    }
}

public class GetRoleAclOnObjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var actions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actions != nil {
                map["actions"] = self.actions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("actions") {
                self.actions = dict["actions"] as! [String]
            }
        }
    }
    public var data: GetRoleAclOnObjectResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetRoleAclOnObjectResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetRoleAclOnObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRoleAclOnObjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRoleAclOnObjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRolePolicyResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetRolePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRolePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRolePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRunningJobsRequest : Tea.TeaModel {
    public var from: Int64?

    public var jobOwnerList: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var quotaNicknameList: [String]?

    public var to: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.jobOwnerList != nil {
            map["jobOwnerList"] = self.jobOwnerList!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.quotaNicknameList != nil {
            map["quotaNicknameList"] = self.quotaNicknameList!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("from") {
            self.from = dict["from"] as! Int64
        }
        if dict.keys.contains("jobOwnerList") {
            self.jobOwnerList = dict["jobOwnerList"] as! [String]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("quotaNicknameList") {
            self.quotaNicknameList = dict["quotaNicknameList"] as! [String]
        }
        if dict.keys.contains("to") {
            self.to = dict["to"] as! Int64
        }
    }
}

public class GetRunningJobsShrinkRequest : Tea.TeaModel {
    public var from: Int64?

    public var jobOwnerListShrink: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var quotaNicknameListShrink: String?

    public var to: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.jobOwnerListShrink != nil {
            map["jobOwnerList"] = self.jobOwnerListShrink!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.quotaNicknameListShrink != nil {
            map["quotaNicknameList"] = self.quotaNicknameListShrink!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("from") {
            self.from = dict["from"] as! Int64
        }
        if dict.keys.contains("jobOwnerList") {
            self.jobOwnerListShrink = dict["jobOwnerList"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("quotaNicknameList") {
            self.quotaNicknameListShrink = dict["quotaNicknameList"] as! String
        }
        if dict.keys.contains("to") {
            self.to = dict["to"] as! Int64
        }
    }
}

public class GetRunningJobsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RunningJobInfoList : Tea.TeaModel {
            public var cuSnapshot: Double?

            public var instanceId: String?

            public var jobOwner: String?

            public var memorySnapshot: Double?

            public var progress: Double?

            public var project: String?

            public var quotaNickname: String?

            public var runningAtTime: Int64?

            public var submittedAtTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cuSnapshot != nil {
                    map["cuSnapshot"] = self.cuSnapshot!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.jobOwner != nil {
                    map["jobOwner"] = self.jobOwner!
                }
                if self.memorySnapshot != nil {
                    map["memorySnapshot"] = self.memorySnapshot!
                }
                if self.progress != nil {
                    map["progress"] = self.progress!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.quotaNickname != nil {
                    map["quotaNickname"] = self.quotaNickname!
                }
                if self.runningAtTime != nil {
                    map["runningAtTime"] = self.runningAtTime!
                }
                if self.submittedAtTime != nil {
                    map["submittedAtTime"] = self.submittedAtTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cuSnapshot") {
                    self.cuSnapshot = dict["cuSnapshot"] as! Double
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("jobOwner") {
                    self.jobOwner = dict["jobOwner"] as! String
                }
                if dict.keys.contains("memorySnapshot") {
                    self.memorySnapshot = dict["memorySnapshot"] as! Double
                }
                if dict.keys.contains("progress") {
                    self.progress = dict["progress"] as! Double
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("quotaNickname") {
                    self.quotaNickname = dict["quotaNickname"] as! String
                }
                if dict.keys.contains("runningAtTime") {
                    self.runningAtTime = dict["runningAtTime"] as! Int64
                }
                if dict.keys.contains("submittedAtTime") {
                    self.submittedAtTime = dict["submittedAtTime"] as! Int64
                }
            }
        }
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var runningJobInfoList: [GetRunningJobsResponseBody.Data.RunningJobInfoList]?

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
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.runningJobInfoList != nil {
                var tmp : [Any] = []
                for k in self.runningJobInfoList! {
                    tmp.append(k.toMap())
                }
                map["runningJobInfoList"] = tmp
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("runningJobInfoList") {
                var tmp : [GetRunningJobsResponseBody.Data.RunningJobInfoList] = []
                for v in dict["runningJobInfoList"] as! [Any] {
                    var model = GetRunningJobsResponseBody.Data.RunningJobInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.runningJobInfoList = tmp
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
            }
        }
    }
    public var data: GetRunningJobsResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetRunningJobsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetRunningJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRunningJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRunningJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTableInfoRequest : Tea.TeaModel {
    public var schemaName: String?

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
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("schemaName") {
            self.schemaName = dict["schemaName"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class GetTableInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ClusterInfo : Tea.TeaModel {
            public class SortCols : Tea.TeaModel {
                public var name: String?

                public var order: String?

                public override init() {
                    super.init()
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
                    if self.order != nil {
                        map["order"] = self.order!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("order") {
                        self.order = dict["order"] as! String
                    }
                }
            }
            public var bucketNum: Int64?

            public var clusterCols: [String]?

            public var clusterType: String?

            public var sortCols: [GetTableInfoResponseBody.Data.ClusterInfo.SortCols]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketNum != nil {
                    map["bucketNum"] = self.bucketNum!
                }
                if self.clusterCols != nil {
                    map["clusterCols"] = self.clusterCols!
                }
                if self.clusterType != nil {
                    map["clusterType"] = self.clusterType!
                }
                if self.sortCols != nil {
                    var tmp : [Any] = []
                    for k in self.sortCols! {
                        tmp.append(k.toMap())
                    }
                    map["sortCols"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("bucketNum") {
                    self.bucketNum = dict["bucketNum"] as! Int64
                }
                if dict.keys.contains("clusterCols") {
                    self.clusterCols = dict["clusterCols"] as! [String]
                }
                if dict.keys.contains("clusterType") {
                    self.clusterType = dict["clusterType"] as! String
                }
                if dict.keys.contains("sortCols") {
                    var tmp : [GetTableInfoResponseBody.Data.ClusterInfo.SortCols] = []
                    for v in dict["sortCols"] as! [Any] {
                        var model = GetTableInfoResponseBody.Data.ClusterInfo.SortCols()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sortCols = tmp
                }
            }
        }
        public class NativeColumns : Tea.TeaModel {
            public var comment: String?

            public var label: String?

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
                    map["comment"] = self.comment!
                }
                if self.label != nil {
                    map["label"] = self.label!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("comment") {
                    self.comment = dict["comment"] as! String
                }
                if dict.keys.contains("label") {
                    self.label = dict["label"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class PartitionColumns : Tea.TeaModel {
            public var comment: String?

            public var label: String?

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
                    map["comment"] = self.comment!
                }
                if self.label != nil {
                    map["label"] = self.label!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("comment") {
                    self.comment = dict["comment"] as! String
                }
                if dict.keys.contains("label") {
                    self.label = dict["label"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var autoRefreshEnabled: Bool?

        public var clusterInfo: GetTableInfoResponseBody.Data.ClusterInfo?

        public var comment: String?

        public var createTableDDL: String?

        public var creationTime: Int64?

        public var displayName: String?

        public var fileNum: Int64?

        public var isExternalTable: Bool?

        public var isOutdated: Bool?

        public var lastAccessTime: Int64?

        public var lastDDLTime: Int64?

        public var lastModifiedTime: Int64?

        public var lifecycle: String?

        public var location: String?

        public var materializedView: Bool?

        public var name: String?

        public var nativeColumns: [GetTableInfoResponseBody.Data.NativeColumns]?

        public var odpsPropertiesRolearn: String?

        public var odpsSqlTextOptionFlushHeader: Bool?

        public var odpsTextOptionHeaderLinesCount: Int64?

        public var owner: String?

        public var partitionColumns: [GetTableInfoResponseBody.Data.PartitionColumns]?

        public var physicalSize: Int64?

        public var projectName: String?

        public var rewriteEnabled: Bool?

        public var schema: String?

        public var size: Int64?

        public var storageHandler: String?

        public var tableLabel: String?

        public var tablesotreTableName: String?

        public var tablestoreColumnsMapping: String?

        public var type: String?

        public var viewText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.clusterInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRefreshEnabled != nil {
                map["autoRefreshEnabled"] = self.autoRefreshEnabled!
            }
            if self.clusterInfo != nil {
                map["clusterInfo"] = self.clusterInfo?.toMap()
            }
            if self.comment != nil {
                map["comment"] = self.comment!
            }
            if self.createTableDDL != nil {
                map["createTableDDL"] = self.createTableDDL!
            }
            if self.creationTime != nil {
                map["creationTime"] = self.creationTime!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.fileNum != nil {
                map["fileNum"] = self.fileNum!
            }
            if self.isExternalTable != nil {
                map["isExternalTable"] = self.isExternalTable!
            }
            if self.isOutdated != nil {
                map["isOutdated"] = self.isOutdated!
            }
            if self.lastAccessTime != nil {
                map["lastAccessTime"] = self.lastAccessTime!
            }
            if self.lastDDLTime != nil {
                map["lastDDLTime"] = self.lastDDLTime!
            }
            if self.lastModifiedTime != nil {
                map["lastModifiedTime"] = self.lastModifiedTime!
            }
            if self.lifecycle != nil {
                map["lifecycle"] = self.lifecycle!
            }
            if self.location != nil {
                map["location"] = self.location!
            }
            if self.materializedView != nil {
                map["materializedView"] = self.materializedView!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nativeColumns != nil {
                var tmp : [Any] = []
                for k in self.nativeColumns! {
                    tmp.append(k.toMap())
                }
                map["nativeColumns"] = tmp
            }
            if self.odpsPropertiesRolearn != nil {
                map["odpsPropertiesRolearn"] = self.odpsPropertiesRolearn!
            }
            if self.odpsSqlTextOptionFlushHeader != nil {
                map["odpsSqlTextOptionFlushHeader"] = self.odpsSqlTextOptionFlushHeader!
            }
            if self.odpsTextOptionHeaderLinesCount != nil {
                map["odpsTextOptionHeaderLinesCount"] = self.odpsTextOptionHeaderLinesCount!
            }
            if self.owner != nil {
                map["owner"] = self.owner!
            }
            if self.partitionColumns != nil {
                var tmp : [Any] = []
                for k in self.partitionColumns! {
                    tmp.append(k.toMap())
                }
                map["partitionColumns"] = tmp
            }
            if self.physicalSize != nil {
                map["physicalSize"] = self.physicalSize!
            }
            if self.projectName != nil {
                map["projectName"] = self.projectName!
            }
            if self.rewriteEnabled != nil {
                map["rewriteEnabled"] = self.rewriteEnabled!
            }
            if self.schema != nil {
                map["schema"] = self.schema!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.storageHandler != nil {
                map["storageHandler"] = self.storageHandler!
            }
            if self.tableLabel != nil {
                map["tableLabel"] = self.tableLabel!
            }
            if self.tablesotreTableName != nil {
                map["tablesotreTableName"] = self.tablesotreTableName!
            }
            if self.tablestoreColumnsMapping != nil {
                map["tablestoreColumnsMapping"] = self.tablestoreColumnsMapping!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.viewText != nil {
                map["viewText"] = self.viewText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoRefreshEnabled") {
                self.autoRefreshEnabled = dict["autoRefreshEnabled"] as! Bool
            }
            if dict.keys.contains("clusterInfo") {
                var model = GetTableInfoResponseBody.Data.ClusterInfo()
                model.fromMap(dict["clusterInfo"] as! [String: Any])
                self.clusterInfo = model
            }
            if dict.keys.contains("comment") {
                self.comment = dict["comment"] as! String
            }
            if dict.keys.contains("createTableDDL") {
                self.createTableDDL = dict["createTableDDL"] as! String
            }
            if dict.keys.contains("creationTime") {
                self.creationTime = dict["creationTime"] as! Int64
            }
            if dict.keys.contains("displayName") {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("fileNum") {
                self.fileNum = dict["fileNum"] as! Int64
            }
            if dict.keys.contains("isExternalTable") {
                self.isExternalTable = dict["isExternalTable"] as! Bool
            }
            if dict.keys.contains("isOutdated") {
                self.isOutdated = dict["isOutdated"] as! Bool
            }
            if dict.keys.contains("lastAccessTime") {
                self.lastAccessTime = dict["lastAccessTime"] as! Int64
            }
            if dict.keys.contains("lastDDLTime") {
                self.lastDDLTime = dict["lastDDLTime"] as! Int64
            }
            if dict.keys.contains("lastModifiedTime") {
                self.lastModifiedTime = dict["lastModifiedTime"] as! Int64
            }
            if dict.keys.contains("lifecycle") {
                self.lifecycle = dict["lifecycle"] as! String
            }
            if dict.keys.contains("location") {
                self.location = dict["location"] as! String
            }
            if dict.keys.contains("materializedView") {
                self.materializedView = dict["materializedView"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nativeColumns") {
                var tmp : [GetTableInfoResponseBody.Data.NativeColumns] = []
                for v in dict["nativeColumns"] as! [Any] {
                    var model = GetTableInfoResponseBody.Data.NativeColumns()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nativeColumns = tmp
            }
            if dict.keys.contains("odpsPropertiesRolearn") {
                self.odpsPropertiesRolearn = dict["odpsPropertiesRolearn"] as! String
            }
            if dict.keys.contains("odpsSqlTextOptionFlushHeader") {
                self.odpsSqlTextOptionFlushHeader = dict["odpsSqlTextOptionFlushHeader"] as! Bool
            }
            if dict.keys.contains("odpsTextOptionHeaderLinesCount") {
                self.odpsTextOptionHeaderLinesCount = dict["odpsTextOptionHeaderLinesCount"] as! Int64
            }
            if dict.keys.contains("owner") {
                self.owner = dict["owner"] as! String
            }
            if dict.keys.contains("partitionColumns") {
                var tmp : [GetTableInfoResponseBody.Data.PartitionColumns] = []
                for v in dict["partitionColumns"] as! [Any] {
                    var model = GetTableInfoResponseBody.Data.PartitionColumns()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.partitionColumns = tmp
            }
            if dict.keys.contains("physicalSize") {
                self.physicalSize = dict["physicalSize"] as! Int64
            }
            if dict.keys.contains("projectName") {
                self.projectName = dict["projectName"] as! String
            }
            if dict.keys.contains("rewriteEnabled") {
                self.rewriteEnabled = dict["rewriteEnabled"] as! Bool
            }
            if dict.keys.contains("schema") {
                self.schema = dict["schema"] as! String
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! Int64
            }
            if dict.keys.contains("storageHandler") {
                self.storageHandler = dict["storageHandler"] as! String
            }
            if dict.keys.contains("tableLabel") {
                self.tableLabel = dict["tableLabel"] as! String
            }
            if dict.keys.contains("tablesotreTableName") {
                self.tablesotreTableName = dict["tablesotreTableName"] as! String
            }
            if dict.keys.contains("tablestoreColumnsMapping") {
                self.tablestoreColumnsMapping = dict["tablestoreColumnsMapping"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("viewText") {
                self.viewText = dict["viewText"] as! String
            }
        }
    }
    public var data: GetTableInfoResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetTableInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetTableInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrustedProjectsResponseBody : Tea.TeaModel {
    public var data: [String]?

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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [String]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetTrustedProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrustedProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTrustedProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillJobsRequest : Tea.TeaModel {
    public var body: String?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class KillJobsResponseBody : Tea.TeaModel {
    public var data: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class KillJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = KillJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListComputeMetricsByInstanceRequest : Tea.TeaModel {
    public var endDate: Int64?

    public var instanceId: String?

    public var jobOwner: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projectNames: [String]?

    public var region: String?

    public var signature: String?

    public var specCodes: [String]?

    public var startDate: Int64?

    public var types: [String]?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.jobOwner != nil {
            map["jobOwner"] = self.jobOwner!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectNames != nil {
            map["projectNames"] = self.projectNames!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.signature != nil {
            map["signature"] = self.signature!
        }
        if self.specCodes != nil {
            map["specCodes"] = self.specCodes!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        if self.types != nil {
            map["types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! Int64
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("jobOwner") {
            self.jobOwner = dict["jobOwner"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("projectNames") {
            self.projectNames = dict["projectNames"] as! [String]
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("signature") {
            self.signature = dict["signature"] as! String
        }
        if dict.keys.contains("specCodes") {
            self.specCodes = dict["specCodes"] as! [String]
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! Int64
        }
        if dict.keys.contains("types") {
            self.types = dict["types"] as! [String]
        }
    }
}

public class ListComputeMetricsByInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceComputeMetrics : Tea.TeaModel {
            public var endTime: Int64?

            public var instanceId: String?

            public var jobOwner: String?

            public var projectName: String?

            public var signature: String?

            public var specCode: String?

            public var submitTime: Int64?

            public var type: String?

            public var unit: String?

            public var usage: Double?

            public override init() {
                super.init()
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
                    map["endTime"] = self.endTime!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.jobOwner != nil {
                    map["jobOwner"] = self.jobOwner!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                if self.signature != nil {
                    map["signature"] = self.signature!
                }
                if self.specCode != nil {
                    map["specCode"] = self.specCode!
                }
                if self.submitTime != nil {
                    map["submitTime"] = self.submitTime!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.unit != nil {
                    map["unit"] = self.unit!
                }
                if self.usage != nil {
                    map["usage"] = self.usage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! Int64
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("jobOwner") {
                    self.jobOwner = dict["jobOwner"] as! String
                }
                if dict.keys.contains("projectName") {
                    self.projectName = dict["projectName"] as! String
                }
                if dict.keys.contains("signature") {
                    self.signature = dict["signature"] as! String
                }
                if dict.keys.contains("specCode") {
                    self.specCode = dict["specCode"] as! String
                }
                if dict.keys.contains("submitTime") {
                    self.submitTime = dict["submitTime"] as! Int64
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("unit") {
                    self.unit = dict["unit"] as! String
                }
                if dict.keys.contains("usage") {
                    self.usage = dict["usage"] as! Double
                }
            }
        }
        public var instanceComputeMetrics: [ListComputeMetricsByInstanceResponseBody.Data.InstanceComputeMetrics]?

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
            if self.instanceComputeMetrics != nil {
                var tmp : [Any] = []
                for k in self.instanceComputeMetrics! {
                    tmp.append(k.toMap())
                }
                map["instanceComputeMetrics"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceComputeMetrics") {
                var tmp : [ListComputeMetricsByInstanceResponseBody.Data.InstanceComputeMetrics] = []
                for v in dict["instanceComputeMetrics"] as! [Any] {
                    var model = ListComputeMetricsByInstanceResponseBody.Data.InstanceComputeMetrics()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceComputeMetrics = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
            }
        }
    }
    public var data: ListComputeMetricsByInstanceResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListComputeMetricsByInstanceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListComputeMetricsByInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListComputeMetricsByInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListComputeMetricsByInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListComputeQuotaPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PlanList : Tea.TeaModel {
            public class Quota : Tea.TeaModel {
                public class Parameter : Tea.TeaModel {
                    public var elasticReservedCU: Int64?

                    public var maxCU: Int64?

                    public var minCU: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.elasticReservedCU != nil {
                            map["elasticReservedCU"] = self.elasticReservedCU!
                        }
                        if self.maxCU != nil {
                            map["maxCU"] = self.maxCU!
                        }
                        if self.minCU != nil {
                            map["minCU"] = self.minCU!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("elasticReservedCU") {
                            self.elasticReservedCU = dict["elasticReservedCU"] as! Int64
                        }
                        if dict.keys.contains("maxCU") {
                            self.maxCU = dict["maxCU"] as! Int64
                        }
                        if dict.keys.contains("minCU") {
                            self.minCU = dict["minCU"] as! Int64
                        }
                    }
                }
                public class SubQuotaInfoList : Tea.TeaModel {
                    public class Parameter : Tea.TeaModel {
                        public var elasticReservedCU: Int64?

                        public var maxCU: Int64?

                        public var minCU: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.elasticReservedCU != nil {
                                map["elasticReservedCU"] = self.elasticReservedCU!
                            }
                            if self.maxCU != nil {
                                map["maxCU"] = self.maxCU!
                            }
                            if self.minCU != nil {
                                map["minCU"] = self.minCU!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("elasticReservedCU") {
                                self.elasticReservedCU = dict["elasticReservedCU"] as! Int64
                            }
                            if dict.keys.contains("maxCU") {
                                self.maxCU = dict["maxCU"] as! Int64
                            }
                            if dict.keys.contains("minCU") {
                                self.minCU = dict["minCU"] as! Int64
                            }
                        }
                    }
                    public var cluster: String?

                    public var createTime: Int64?

                    public var creatorId: String?

                    public var id: String?

                    public var name: String?

                    public var nickName: String?

                    public var parameter: ListComputeQuotaPlanResponseBody.Data.PlanList.Quota.SubQuotaInfoList.Parameter?

                    public var regionId: String?

                    public var status: String?

                    public var tenantId: String?

                    public var type: String?

                    public var version: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.parameter?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cluster != nil {
                            map["cluster"] = self.cluster!
                        }
                        if self.createTime != nil {
                            map["createTime"] = self.createTime!
                        }
                        if self.creatorId != nil {
                            map["creatorId"] = self.creatorId!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.nickName != nil {
                            map["nickName"] = self.nickName!
                        }
                        if self.parameter != nil {
                            map["parameter"] = self.parameter?.toMap()
                        }
                        if self.regionId != nil {
                            map["regionId"] = self.regionId!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.tenantId != nil {
                            map["tenantId"] = self.tenantId!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        if self.version != nil {
                            map["version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("cluster") {
                            self.cluster = dict["cluster"] as! String
                        }
                        if dict.keys.contains("createTime") {
                            self.createTime = dict["createTime"] as! Int64
                        }
                        if dict.keys.contains("creatorId") {
                            self.creatorId = dict["creatorId"] as! String
                        }
                        if dict.keys.contains("id") {
                            self.id = dict["id"] as! String
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("nickName") {
                            self.nickName = dict["nickName"] as! String
                        }
                        if dict.keys.contains("parameter") {
                            var model = ListComputeQuotaPlanResponseBody.Data.PlanList.Quota.SubQuotaInfoList.Parameter()
                            model.fromMap(dict["parameter"] as! [String: Any])
                            self.parameter = model
                        }
                        if dict.keys.contains("regionId") {
                            self.regionId = dict["regionId"] as! String
                        }
                        if dict.keys.contains("status") {
                            self.status = dict["status"] as! String
                        }
                        if dict.keys.contains("tenantId") {
                            self.tenantId = dict["tenantId"] as! String
                        }
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                        if dict.keys.contains("version") {
                            self.version = dict["version"] as! String
                        }
                    }
                }
                public var cluster: String?

                public var createTime: Int64?

                public var creatorId: String?

                public var id: String?

                public var name: String?

                public var nickName: String?

                public var parameter: ListComputeQuotaPlanResponseBody.Data.PlanList.Quota.Parameter?

                public var regionId: String?

                public var status: String?

                public var subQuotaInfoList: [ListComputeQuotaPlanResponseBody.Data.PlanList.Quota.SubQuotaInfoList]?

                public var tenantId: String?

                public var type: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.parameter?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cluster != nil {
                        map["cluster"] = self.cluster!
                    }
                    if self.createTime != nil {
                        map["createTime"] = self.createTime!
                    }
                    if self.creatorId != nil {
                        map["creatorId"] = self.creatorId!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nickName != nil {
                        map["nickName"] = self.nickName!
                    }
                    if self.parameter != nil {
                        map["parameter"] = self.parameter?.toMap()
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.subQuotaInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.subQuotaInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["subQuotaInfoList"] = tmp
                    }
                    if self.tenantId != nil {
                        map["tenantId"] = self.tenantId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cluster") {
                        self.cluster = dict["cluster"] as! String
                    }
                    if dict.keys.contains("createTime") {
                        self.createTime = dict["createTime"] as! Int64
                    }
                    if dict.keys.contains("creatorId") {
                        self.creatorId = dict["creatorId"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nickName") {
                        self.nickName = dict["nickName"] as! String
                    }
                    if dict.keys.contains("parameter") {
                        var model = ListComputeQuotaPlanResponseBody.Data.PlanList.Quota.Parameter()
                        model.fromMap(dict["parameter"] as! [String: Any])
                        self.parameter = model
                    }
                    if dict.keys.contains("regionId") {
                        self.regionId = dict["regionId"] as! String
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("subQuotaInfoList") {
                        var tmp : [ListComputeQuotaPlanResponseBody.Data.PlanList.Quota.SubQuotaInfoList] = []
                        for v in dict["subQuotaInfoList"] as! [Any] {
                            var model = ListComputeQuotaPlanResponseBody.Data.PlanList.Quota.SubQuotaInfoList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.subQuotaInfoList = tmp
                    }
                    if dict.keys.contains("tenantId") {
                        self.tenantId = dict["tenantId"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public var createTime: String?

            public var name: String?

            public var quota: ListComputeQuotaPlanResponseBody.Data.PlanList.Quota?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.quota?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.quota != nil {
                    map["quota"] = self.quota?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("quota") {
                    var model = ListComputeQuotaPlanResponseBody.Data.PlanList.Quota()
                    model.fromMap(dict["quota"] as! [String: Any])
                    self.quota = model
                }
            }
        }
        public var planList: [ListComputeQuotaPlanResponseBody.Data.PlanList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.planList != nil {
                var tmp : [Any] = []
                for k in self.planList! {
                    tmp.append(k.toMap())
                }
                map["planList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("planList") {
                var tmp : [ListComputeQuotaPlanResponseBody.Data.PlanList] = []
                for v in dict["planList"] as! [Any] {
                    var model = ListComputeQuotaPlanResponseBody.Data.PlanList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.planList = tmp
            }
        }
    }
    public var data: ListComputeQuotaPlanResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListComputeQuotaPlanResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListComputeQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListComputeQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListComputeQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionsRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItem: Int32?

    public var prefix_: String?

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
        if self.marker != nil {
            map["marker"] = self.marker!
        }
        if self.maxItem != nil {
            map["maxItem"] = self.maxItem!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("marker") {
            self.marker = dict["marker"] as! String
        }
        if dict.keys.contains("maxItem") {
            self.maxItem = dict["maxItem"] as! Int32
        }
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("schemaName") {
            self.schemaName = dict["schemaName"] as! String
        }
    }
}

public class ListFunctionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Functions : Tea.TeaModel {
            public var class_: String?

            public var creationTime: Int64?

            public var displayName: String?

            public var name: String?

            public var owner: String?

            public var resources: String?

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
                if self.class_ != nil {
                    map["class"] = self.class_!
                }
                if self.creationTime != nil {
                    map["creationTime"] = self.creationTime!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.owner != nil {
                    map["owner"] = self.owner!
                }
                if self.resources != nil {
                    map["resources"] = self.resources!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("class") {
                    self.class_ = dict["class"] as! String
                }
                if dict.keys.contains("creationTime") {
                    self.creationTime = dict["creationTime"] as! Int64
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("owner") {
                    self.owner = dict["owner"] as! String
                }
                if dict.keys.contains("resources") {
                    self.resources = dict["resources"] as! String
                }
                if dict.keys.contains("schema") {
                    self.schema = dict["schema"] as! String
                }
            }
        }
        public var functions: [ListFunctionsResponseBody.Data.Functions]?

        public var marker: String?

        public var maxItem: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.functions != nil {
                var tmp : [Any] = []
                for k in self.functions! {
                    tmp.append(k.toMap())
                }
                map["functions"] = tmp
            }
            if self.marker != nil {
                map["marker"] = self.marker!
            }
            if self.maxItem != nil {
                map["maxItem"] = self.maxItem!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("functions") {
                var tmp : [ListFunctionsResponseBody.Data.Functions] = []
                for v in dict["functions"] as! [Any] {
                    var model = ListFunctionsResponseBody.Data.Functions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.functions = tmp
            }
            if dict.keys.contains("marker") {
                self.marker = dict["marker"] as! String
            }
            if dict.keys.contains("maxItem") {
                self.maxItem = dict["maxItem"] as! Int32
            }
        }
    }
    public var data: ListFunctionsResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListFunctionsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListFunctionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFunctionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobInfosRequest : Tea.TeaModel {
    public var ascOrder: Bool?

    public var extNodeIdList: [String]?

    public var from: Int64?

    public var instanceIdList: [String]?

    public var jobOwnerList: [String]?

    public var priorityList: [Int64]?

    public var projectList: [String]?

    public var quotaNickname: String?

    public var sceneTagList: [String]?

    public var signatureList: [String]?

    public var sortByList: [String]?

    public var sortOrderList: [String]?

    public var statusList: [String]?

    public var to: Int64?

    public var typeList: [String]?

    public var orderColumn: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascOrder != nil {
            map["ascOrder"] = self.ascOrder!
        }
        if self.extNodeIdList != nil {
            map["extNodeIdList"] = self.extNodeIdList!
        }
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.instanceIdList != nil {
            map["instanceIdList"] = self.instanceIdList!
        }
        if self.jobOwnerList != nil {
            map["jobOwnerList"] = self.jobOwnerList!
        }
        if self.priorityList != nil {
            map["priorityList"] = self.priorityList!
        }
        if self.projectList != nil {
            map["projectList"] = self.projectList!
        }
        if self.quotaNickname != nil {
            map["quotaNickname"] = self.quotaNickname!
        }
        if self.sceneTagList != nil {
            map["sceneTagList"] = self.sceneTagList!
        }
        if self.signatureList != nil {
            map["signatureList"] = self.signatureList!
        }
        if self.sortByList != nil {
            map["sortByList"] = self.sortByList!
        }
        if self.sortOrderList != nil {
            map["sortOrderList"] = self.sortOrderList!
        }
        if self.statusList != nil {
            map["statusList"] = self.statusList!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.typeList != nil {
            map["typeList"] = self.typeList!
        }
        if self.orderColumn != nil {
            map["orderColumn"] = self.orderColumn!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ascOrder") {
            self.ascOrder = dict["ascOrder"] as! Bool
        }
        if dict.keys.contains("extNodeIdList") {
            self.extNodeIdList = dict["extNodeIdList"] as! [String]
        }
        if dict.keys.contains("from") {
            self.from = dict["from"] as! Int64
        }
        if dict.keys.contains("instanceIdList") {
            self.instanceIdList = dict["instanceIdList"] as! [String]
        }
        if dict.keys.contains("jobOwnerList") {
            self.jobOwnerList = dict["jobOwnerList"] as! [String]
        }
        if dict.keys.contains("priorityList") {
            self.priorityList = dict["priorityList"] as! [Int64]
        }
        if dict.keys.contains("projectList") {
            self.projectList = dict["projectList"] as! [String]
        }
        if dict.keys.contains("quotaNickname") {
            self.quotaNickname = dict["quotaNickname"] as! String
        }
        if dict.keys.contains("sceneTagList") {
            self.sceneTagList = dict["sceneTagList"] as! [String]
        }
        if dict.keys.contains("signatureList") {
            self.signatureList = dict["signatureList"] as! [String]
        }
        if dict.keys.contains("sortByList") {
            self.sortByList = dict["sortByList"] as! [String]
        }
        if dict.keys.contains("sortOrderList") {
            self.sortOrderList = dict["sortOrderList"] as! [String]
        }
        if dict.keys.contains("statusList") {
            self.statusList = dict["statusList"] as! [String]
        }
        if dict.keys.contains("to") {
            self.to = dict["to"] as! Int64
        }
        if dict.keys.contains("typeList") {
            self.typeList = dict["typeList"] as! [String]
        }
        if dict.keys.contains("orderColumn") {
            self.orderColumn = dict["orderColumn"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class ListJobInfosResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobInfoList : Tea.TeaModel {
            public class SceneResults : Tea.TeaModel {
                public var description_: String?

                public var params: [String: String]?

                public var scene: String?

                public var sceneTag: String?

                public var summary: String?

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
                    if self.params != nil {
                        map["params"] = self.params!
                    }
                    if self.scene != nil {
                        map["scene"] = self.scene!
                    }
                    if self.sceneTag != nil {
                        map["sceneTag"] = self.sceneTag!
                    }
                    if self.summary != nil {
                        map["summary"] = self.summary!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("description") {
                        self.description_ = dict["description"] as! String
                    }
                    if dict.keys.contains("params") {
                        self.params = dict["params"] as! [String: String]
                    }
                    if dict.keys.contains("scene") {
                        self.scene = dict["scene"] as! String
                    }
                    if dict.keys.contains("sceneTag") {
                        self.sceneTag = dict["sceneTag"] as! String
                    }
                    if dict.keys.contains("summary") {
                        self.summary = dict["summary"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var cluster: String?

            public var cuSnapshot: Double?

            public var cuUsage: Int64?

            public var endAtTime: Int64?

            public var extNodeId: String?

            public var extNodeOnDuty: String?

            public var extPlantFrom: String?

            public var instanceId: String?

            public var jobOwner: String?

            public var jobType: String?

            public var memorySnapshot: Double?

            public var memoryUsage: Int64?

            public var priority: Int64?

            public var project: String?

            public var quotaNickname: String?

            public var quotaType: String?

            public var region: String?

            public var runningAtTime: Int64?

            public var runningTime: Int64?

            public var sceneResults: [ListJobInfosResponseBody.Data.JobInfoList.SceneResults]?

            public var signature: String?

            public var status: String?

            public var statusSnapshot: String?

            public var submittedAtTime: Int64?

            public var tags: String?

            public var tenantId: String?

            public var totalTime: Int64?

            public var waitingTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cluster != nil {
                    map["cluster"] = self.cluster!
                }
                if self.cuSnapshot != nil {
                    map["cuSnapshot"] = self.cuSnapshot!
                }
                if self.cuUsage != nil {
                    map["cuUsage"] = self.cuUsage!
                }
                if self.endAtTime != nil {
                    map["endAtTime"] = self.endAtTime!
                }
                if self.extNodeId != nil {
                    map["extNodeId"] = self.extNodeId!
                }
                if self.extNodeOnDuty != nil {
                    map["extNodeOnDuty"] = self.extNodeOnDuty!
                }
                if self.extPlantFrom != nil {
                    map["extPlantFrom"] = self.extPlantFrom!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.jobOwner != nil {
                    map["jobOwner"] = self.jobOwner!
                }
                if self.jobType != nil {
                    map["jobType"] = self.jobType!
                }
                if self.memorySnapshot != nil {
                    map["memorySnapshot"] = self.memorySnapshot!
                }
                if self.memoryUsage != nil {
                    map["memoryUsage"] = self.memoryUsage!
                }
                if self.priority != nil {
                    map["priority"] = self.priority!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.quotaNickname != nil {
                    map["quotaNickname"] = self.quotaNickname!
                }
                if self.quotaType != nil {
                    map["quotaType"] = self.quotaType!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.runningAtTime != nil {
                    map["runningAtTime"] = self.runningAtTime!
                }
                if self.runningTime != nil {
                    map["runningTime"] = self.runningTime!
                }
                if self.sceneResults != nil {
                    var tmp : [Any] = []
                    for k in self.sceneResults! {
                        tmp.append(k.toMap())
                    }
                    map["sceneResults"] = tmp
                }
                if self.signature != nil {
                    map["signature"] = self.signature!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.statusSnapshot != nil {
                    map["statusSnapshot"] = self.statusSnapshot!
                }
                if self.submittedAtTime != nil {
                    map["submittedAtTime"] = self.submittedAtTime!
                }
                if self.tags != nil {
                    map["tags"] = self.tags!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.totalTime != nil {
                    map["totalTime"] = self.totalTime!
                }
                if self.waitingTime != nil {
                    map["waitingTime"] = self.waitingTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cluster") {
                    self.cluster = dict["cluster"] as! String
                }
                if dict.keys.contains("cuSnapshot") {
                    self.cuSnapshot = dict["cuSnapshot"] as! Double
                }
                if dict.keys.contains("cuUsage") {
                    self.cuUsage = dict["cuUsage"] as! Int64
                }
                if dict.keys.contains("endAtTime") {
                    self.endAtTime = dict["endAtTime"] as! Int64
                }
                if dict.keys.contains("extNodeId") {
                    self.extNodeId = dict["extNodeId"] as! String
                }
                if dict.keys.contains("extNodeOnDuty") {
                    self.extNodeOnDuty = dict["extNodeOnDuty"] as! String
                }
                if dict.keys.contains("extPlantFrom") {
                    self.extPlantFrom = dict["extPlantFrom"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("jobOwner") {
                    self.jobOwner = dict["jobOwner"] as! String
                }
                if dict.keys.contains("jobType") {
                    self.jobType = dict["jobType"] as! String
                }
                if dict.keys.contains("memorySnapshot") {
                    self.memorySnapshot = dict["memorySnapshot"] as! Double
                }
                if dict.keys.contains("memoryUsage") {
                    self.memoryUsage = dict["memoryUsage"] as! Int64
                }
                if dict.keys.contains("priority") {
                    self.priority = dict["priority"] as! Int64
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("quotaNickname") {
                    self.quotaNickname = dict["quotaNickname"] as! String
                }
                if dict.keys.contains("quotaType") {
                    self.quotaType = dict["quotaType"] as! String
                }
                if dict.keys.contains("region") {
                    self.region = dict["region"] as! String
                }
                if dict.keys.contains("runningAtTime") {
                    self.runningAtTime = dict["runningAtTime"] as! Int64
                }
                if dict.keys.contains("runningTime") {
                    self.runningTime = dict["runningTime"] as! Int64
                }
                if dict.keys.contains("sceneResults") {
                    var tmp : [ListJobInfosResponseBody.Data.JobInfoList.SceneResults] = []
                    for v in dict["sceneResults"] as! [Any] {
                        var model = ListJobInfosResponseBody.Data.JobInfoList.SceneResults()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sceneResults = tmp
                }
                if dict.keys.contains("signature") {
                    self.signature = dict["signature"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("statusSnapshot") {
                    self.statusSnapshot = dict["statusSnapshot"] as! String
                }
                if dict.keys.contains("submittedAtTime") {
                    self.submittedAtTime = dict["submittedAtTime"] as! Int64
                }
                if dict.keys.contains("tags") {
                    self.tags = dict["tags"] as! String
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("totalTime") {
                    self.totalTime = dict["totalTime"] as! Int64
                }
                if dict.keys.contains("waitingTime") {
                    self.waitingTime = dict["waitingTime"] as! Int64
                }
            }
        }
        public var jobInfoList: [ListJobInfosResponseBody.Data.JobInfoList]?

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
            if self.jobInfoList != nil {
                var tmp : [Any] = []
                for k in self.jobInfoList! {
                    tmp.append(k.toMap())
                }
                map["jobInfoList"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("jobInfoList") {
                var tmp : [ListJobInfosResponseBody.Data.JobInfoList] = []
                for v in dict["jobInfoList"] as! [Any] {
                    var model = ListJobInfosResponseBody.Data.JobInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobInfoList = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
            }
        }
    }
    public var data: ListJobInfosResponseBody.Data?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListJobInfosResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListJobInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListJobInfosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobMetricRequest : Tea.TeaModel {
    public var group: String?

    public var metric: String?

    public var period: Int64?

    public var project: [String]?

    public var quota: [String]?

    public var type: String?

    public var endTime: Int64?

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
        if self.group != nil {
            map["group"] = self.group!
        }
        if self.metric != nil {
            map["metric"] = self.metric!
        }
        if self.period != nil {
            map["period"] = self.period!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        if self.quota != nil {
            map["quota"] = self.quota!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("group") {
            self.group = dict["group"] as! String
        }
        if dict.keys.contains("metric") {
            self.metric = dict["metric"] as! String
        }
        if dict.keys.contains("period") {
            self.period = dict["period"] as! Int64
        }
        if dict.keys.contains("project") {
            self.project = dict["project"] as! [String]
        }
        if dict.keys.contains("quota") {
            self.quota = dict["quota"] as! [String]
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
    }
}

public class ListJobMetricResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Metrics : Tea.TeaModel {
            public var metric: [String: String]?

            public var values: [[Double]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.metric != nil {
                    map["metric"] = self.metric!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("metric") {
                    self.metric = dict["metric"] as! [String: String]
                }
                if dict.keys.contains("values") {
                    self.values = dict["values"] as! [[Double]]
                }
            }
        }
        public var category: String?

        public var metrics: [ListJobMetricResponseBody.Data.Metrics]?

        public var name: String?

        public var period: Int64?

        public override init() {
            super.init()
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
                map["category"] = self.category!
            }
            if self.metrics != nil {
                var tmp : [Any] = []
                for k in self.metrics! {
                    tmp.append(k.toMap())
                }
                map["metrics"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.period != nil {
                map["period"] = self.period!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("metrics") {
                var tmp : [ListJobMetricResponseBody.Data.Metrics] = []
                for v in dict["metrics"] as! [Any] {
                    var model = ListJobMetricResponseBody.Data.Metrics()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.metrics = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("period") {
                self.period = dict["period"] as! Int64
            }
        }
    }
    public var data: ListJobMetricResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListJobMetricResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListJobMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListJobMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobSnapshotInfosRequest : Tea.TeaModel {
    public var ascOrder: Bool?

    public var extNodeIdList: [String]?

    public var from: Int64?

    public var instanceIdList: [String]?

    public var jobOwnerList: [String]?

    public var priorityList: [Int64]?

    public var projectList: [String]?

    public var quotaNickname: String?

    public var signatureList: [String]?

    public var sortByList: [String]?

    public var sortOrderList: [String]?

    public var statusList: [String]?

    public var to: Int64?

    public var typeList: [String]?

    public var orderColumn: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascOrder != nil {
            map["ascOrder"] = self.ascOrder!
        }
        if self.extNodeIdList != nil {
            map["extNodeIdList"] = self.extNodeIdList!
        }
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.instanceIdList != nil {
            map["instanceIdList"] = self.instanceIdList!
        }
        if self.jobOwnerList != nil {
            map["jobOwnerList"] = self.jobOwnerList!
        }
        if self.priorityList != nil {
            map["priorityList"] = self.priorityList!
        }
        if self.projectList != nil {
            map["projectList"] = self.projectList!
        }
        if self.quotaNickname != nil {
            map["quotaNickname"] = self.quotaNickname!
        }
        if self.signatureList != nil {
            map["signatureList"] = self.signatureList!
        }
        if self.sortByList != nil {
            map["sortByList"] = self.sortByList!
        }
        if self.sortOrderList != nil {
            map["sortOrderList"] = self.sortOrderList!
        }
        if self.statusList != nil {
            map["statusList"] = self.statusList!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        if self.typeList != nil {
            map["typeList"] = self.typeList!
        }
        if self.orderColumn != nil {
            map["orderColumn"] = self.orderColumn!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ascOrder") {
            self.ascOrder = dict["ascOrder"] as! Bool
        }
        if dict.keys.contains("extNodeIdList") {
            self.extNodeIdList = dict["extNodeIdList"] as! [String]
        }
        if dict.keys.contains("from") {
            self.from = dict["from"] as! Int64
        }
        if dict.keys.contains("instanceIdList") {
            self.instanceIdList = dict["instanceIdList"] as! [String]
        }
        if dict.keys.contains("jobOwnerList") {
            self.jobOwnerList = dict["jobOwnerList"] as! [String]
        }
        if dict.keys.contains("priorityList") {
            self.priorityList = dict["priorityList"] as! [Int64]
        }
        if dict.keys.contains("projectList") {
            self.projectList = dict["projectList"] as! [String]
        }
        if dict.keys.contains("quotaNickname") {
            self.quotaNickname = dict["quotaNickname"] as! String
        }
        if dict.keys.contains("signatureList") {
            self.signatureList = dict["signatureList"] as! [String]
        }
        if dict.keys.contains("sortByList") {
            self.sortByList = dict["sortByList"] as! [String]
        }
        if dict.keys.contains("sortOrderList") {
            self.sortOrderList = dict["sortOrderList"] as! [String]
        }
        if dict.keys.contains("statusList") {
            self.statusList = dict["statusList"] as! [String]
        }
        if dict.keys.contains("to") {
            self.to = dict["to"] as! Int64
        }
        if dict.keys.contains("typeList") {
            self.typeList = dict["typeList"] as! [String]
        }
        if dict.keys.contains("orderColumn") {
            self.orderColumn = dict["orderColumn"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class ListJobSnapshotInfosResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobInfoList : Tea.TeaModel {
            public var cpuRequest: Int64?

            public var cpuUsage: Int64?

            public var cpuUsageToRequestRatio: Double?

            public var extNodeId: String?

            public var extNodeOnDuty: String?

            public var extPlantFrom: String?

            public var instanceId: String?

            public var jobOwner: String?

            public var jobType: String?

            public var maxCpuPct: Double?

            public var maxMemoryPct: Double?

            public var memoryRequest: Int64?

            public var memoryUsage: Int64?

            public var memoryUsageToRequestRatio: Double?

            public var minCpuPct: Double?

            public var minMemoryPct: Double?

            public var priority: Int64?

            public var project: String?

            public var quotaNickname: String?

            public var quotaType: String?

            public var region: String?

            public var runningAtTime: Int64?

            public var runningTime: Int64?

            public var signature: String?

            public var snapshotTime: Int64?

            public var status: String?

            public var submittedAtTime: Int64?

            public var tenantId: String?

            public var totalTime: Int64?

            public var waitingTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuRequest != nil {
                    map["cpuRequest"] = self.cpuRequest!
                }
                if self.cpuUsage != nil {
                    map["cpuUsage"] = self.cpuUsage!
                }
                if self.cpuUsageToRequestRatio != nil {
                    map["cpuUsageToRequestRatio"] = self.cpuUsageToRequestRatio!
                }
                if self.extNodeId != nil {
                    map["extNodeId"] = self.extNodeId!
                }
                if self.extNodeOnDuty != nil {
                    map["extNodeOnDuty"] = self.extNodeOnDuty!
                }
                if self.extPlantFrom != nil {
                    map["extPlantFrom"] = self.extPlantFrom!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.jobOwner != nil {
                    map["jobOwner"] = self.jobOwner!
                }
                if self.jobType != nil {
                    map["jobType"] = self.jobType!
                }
                if self.maxCpuPct != nil {
                    map["maxCpuPct"] = self.maxCpuPct!
                }
                if self.maxMemoryPct != nil {
                    map["maxMemoryPct"] = self.maxMemoryPct!
                }
                if self.memoryRequest != nil {
                    map["memoryRequest"] = self.memoryRequest!
                }
                if self.memoryUsage != nil {
                    map["memoryUsage"] = self.memoryUsage!
                }
                if self.memoryUsageToRequestRatio != nil {
                    map["memoryUsageToRequestRatio"] = self.memoryUsageToRequestRatio!
                }
                if self.minCpuPct != nil {
                    map["minCpuPct"] = self.minCpuPct!
                }
                if self.minMemoryPct != nil {
                    map["minMemoryPct"] = self.minMemoryPct!
                }
                if self.priority != nil {
                    map["priority"] = self.priority!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.quotaNickname != nil {
                    map["quotaNickname"] = self.quotaNickname!
                }
                if self.quotaType != nil {
                    map["quotaType"] = self.quotaType!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.runningAtTime != nil {
                    map["runningAtTime"] = self.runningAtTime!
                }
                if self.runningTime != nil {
                    map["runningTime"] = self.runningTime!
                }
                if self.signature != nil {
                    map["signature"] = self.signature!
                }
                if self.snapshotTime != nil {
                    map["snapshotTime"] = self.snapshotTime!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.submittedAtTime != nil {
                    map["submittedAtTime"] = self.submittedAtTime!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.totalTime != nil {
                    map["totalTime"] = self.totalTime!
                }
                if self.waitingTime != nil {
                    map["waitingTime"] = self.waitingTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cpuRequest") {
                    self.cpuRequest = dict["cpuRequest"] as! Int64
                }
                if dict.keys.contains("cpuUsage") {
                    self.cpuUsage = dict["cpuUsage"] as! Int64
                }
                if dict.keys.contains("cpuUsageToRequestRatio") {
                    self.cpuUsageToRequestRatio = dict["cpuUsageToRequestRatio"] as! Double
                }
                if dict.keys.contains("extNodeId") {
                    self.extNodeId = dict["extNodeId"] as! String
                }
                if dict.keys.contains("extNodeOnDuty") {
                    self.extNodeOnDuty = dict["extNodeOnDuty"] as! String
                }
                if dict.keys.contains("extPlantFrom") {
                    self.extPlantFrom = dict["extPlantFrom"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("jobOwner") {
                    self.jobOwner = dict["jobOwner"] as! String
                }
                if dict.keys.contains("jobType") {
                    self.jobType = dict["jobType"] as! String
                }
                if dict.keys.contains("maxCpuPct") {
                    self.maxCpuPct = dict["maxCpuPct"] as! Double
                }
                if dict.keys.contains("maxMemoryPct") {
                    self.maxMemoryPct = dict["maxMemoryPct"] as! Double
                }
                if dict.keys.contains("memoryRequest") {
                    self.memoryRequest = dict["memoryRequest"] as! Int64
                }
                if dict.keys.contains("memoryUsage") {
                    self.memoryUsage = dict["memoryUsage"] as! Int64
                }
                if dict.keys.contains("memoryUsageToRequestRatio") {
                    self.memoryUsageToRequestRatio = dict["memoryUsageToRequestRatio"] as! Double
                }
                if dict.keys.contains("minCpuPct") {
                    self.minCpuPct = dict["minCpuPct"] as! Double
                }
                if dict.keys.contains("minMemoryPct") {
                    self.minMemoryPct = dict["minMemoryPct"] as! Double
                }
                if dict.keys.contains("priority") {
                    self.priority = dict["priority"] as! Int64
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("quotaNickname") {
                    self.quotaNickname = dict["quotaNickname"] as! String
                }
                if dict.keys.contains("quotaType") {
                    self.quotaType = dict["quotaType"] as! String
                }
                if dict.keys.contains("region") {
                    self.region = dict["region"] as! String
                }
                if dict.keys.contains("runningAtTime") {
                    self.runningAtTime = dict["runningAtTime"] as! Int64
                }
                if dict.keys.contains("runningTime") {
                    self.runningTime = dict["runningTime"] as! Int64
                }
                if dict.keys.contains("signature") {
                    self.signature = dict["signature"] as! String
                }
                if dict.keys.contains("snapshotTime") {
                    self.snapshotTime = dict["snapshotTime"] as! Int64
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("submittedAtTime") {
                    self.submittedAtTime = dict["submittedAtTime"] as! Int64
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("totalTime") {
                    self.totalTime = dict["totalTime"] as! Int64
                }
                if dict.keys.contains("waitingTime") {
                    self.waitingTime = dict["waitingTime"] as! Int64
                }
            }
        }
        public var jobInfoList: [ListJobSnapshotInfosResponseBody.Data.JobInfoList]?

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
            if self.jobInfoList != nil {
                var tmp : [Any] = []
                for k in self.jobInfoList! {
                    tmp.append(k.toMap())
                }
                map["jobInfoList"] = tmp
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("jobInfoList") {
                var tmp : [ListJobSnapshotInfosResponseBody.Data.JobInfoList] = []
                for v in dict["jobInfoList"] as! [Any] {
                    var model = ListJobSnapshotInfosResponseBody.Data.JobInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobInfoList = tmp
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
            }
        }
    }
    public var data: ListJobSnapshotInfosResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListJobSnapshotInfosResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListJobSnapshotInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobSnapshotInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListJobSnapshotInfosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMmsDataSourcesRequest : Tea.TeaModel {
    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var region: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListMmsDataSourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ObjectList : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var desc: String?

                public var enums: [String]?

                public var group: String?

                public var key: String?

                public var name: String?

                public var placeHolder: String?

                public var required_: Bool?

                public var subType: String?

                public var type: String?

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
                    if self.desc != nil {
                        map["desc"] = self.desc!
                    }
                    if self.enums != nil {
                        map["enums"] = self.enums!
                    }
                    if self.group != nil {
                        map["group"] = self.group!
                    }
                    if self.key != nil {
                        map["key"] = self.key!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.placeHolder != nil {
                        map["placeHolder"] = self.placeHolder!
                    }
                    if self.required_ != nil {
                        map["required"] = self.required_!
                    }
                    if self.subType != nil {
                        map["subType"] = self.subType!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("desc") {
                        self.desc = dict["desc"] as! String
                    }
                    if dict.keys.contains("enums") {
                        self.enums = dict["enums"] as! [String]
                    }
                    if dict.keys.contains("group") {
                        self.group = dict["group"] as! String
                    }
                    if dict.keys.contains("key") {
                        self.key = dict["key"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("placeHolder") {
                        self.placeHolder = dict["placeHolder"] as! String
                    }
                    if dict.keys.contains("required") {
                        self.required_ = dict["required"] as! Bool
                    }
                    if dict.keys.contains("subType") {
                        self.subType = dict["subType"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! Any
                    }
                }
            }
            public var agentIsOnline: Bool?

            public var config: [ListMmsDataSourcesResponseBody.Data.ObjectList.Config]?

            public var createTime: String?

            public var dbNum: Int32?

            public var errMsg: String?

            public var id: Int64?

            public var lastUpdateTime: String?

            public var name: String?

            public var networklink: String?

            public var partitionNum: Int32?

            public var partitionsDoingNum: Int32?

            public var partitionsDoneNum: Int32?

            public var partitionsFailedNum: Int32?

            public var region: String?

            public var scanId: Int64?

            public var status: String?

            public var tableNum: Int32?

            public var tablesDoingNum: Int32?

            public var tablesDoneNum: Int32?

            public var tablesFailedNum: Int32?

            public var tablesPartDoneNum: Int32?

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
                if self.agentIsOnline != nil {
                    map["agentIsOnline"] = self.agentIsOnline!
                }
                if self.config != nil {
                    var tmp : [Any] = []
                    for k in self.config! {
                        tmp.append(k.toMap())
                    }
                    map["config"] = tmp
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.dbNum != nil {
                    map["dbNum"] = self.dbNum!
                }
                if self.errMsg != nil {
                    map["errMsg"] = self.errMsg!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.lastUpdateTime != nil {
                    map["lastUpdateTime"] = self.lastUpdateTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.networklink != nil {
                    map["networklink"] = self.networklink!
                }
                if self.partitionNum != nil {
                    map["partitionNum"] = self.partitionNum!
                }
                if self.partitionsDoingNum != nil {
                    map["partitionsDoingNum"] = self.partitionsDoingNum!
                }
                if self.partitionsDoneNum != nil {
                    map["partitionsDoneNum"] = self.partitionsDoneNum!
                }
                if self.partitionsFailedNum != nil {
                    map["partitionsFailedNum"] = self.partitionsFailedNum!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.scanId != nil {
                    map["scanId"] = self.scanId!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.tableNum != nil {
                    map["tableNum"] = self.tableNum!
                }
                if self.tablesDoingNum != nil {
                    map["tablesDoingNum"] = self.tablesDoingNum!
                }
                if self.tablesDoneNum != nil {
                    map["tablesDoneNum"] = self.tablesDoneNum!
                }
                if self.tablesFailedNum != nil {
                    map["tablesFailedNum"] = self.tablesFailedNum!
                }
                if self.tablesPartDoneNum != nil {
                    map["tablesPartDoneNum"] = self.tablesPartDoneNum!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("agentIsOnline") {
                    self.agentIsOnline = dict["agentIsOnline"] as! Bool
                }
                if dict.keys.contains("config") {
                    var tmp : [ListMmsDataSourcesResponseBody.Data.ObjectList.Config] = []
                    for v in dict["config"] as! [Any] {
                        var model = ListMmsDataSourcesResponseBody.Data.ObjectList.Config()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.config = tmp
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("dbNum") {
                    self.dbNum = dict["dbNum"] as! Int32
                }
                if dict.keys.contains("errMsg") {
                    self.errMsg = dict["errMsg"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("lastUpdateTime") {
                    self.lastUpdateTime = dict["lastUpdateTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("networklink") {
                    self.networklink = dict["networklink"] as! String
                }
                if dict.keys.contains("partitionNum") {
                    self.partitionNum = dict["partitionNum"] as! Int32
                }
                if dict.keys.contains("partitionsDoingNum") {
                    self.partitionsDoingNum = dict["partitionsDoingNum"] as! Int32
                }
                if dict.keys.contains("partitionsDoneNum") {
                    self.partitionsDoneNum = dict["partitionsDoneNum"] as! Int32
                }
                if dict.keys.contains("partitionsFailedNum") {
                    self.partitionsFailedNum = dict["partitionsFailedNum"] as! Int32
                }
                if dict.keys.contains("region") {
                    self.region = dict["region"] as! String
                }
                if dict.keys.contains("scanId") {
                    self.scanId = dict["scanId"] as! Int64
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("tableNum") {
                    self.tableNum = dict["tableNum"] as! Int32
                }
                if dict.keys.contains("tablesDoingNum") {
                    self.tablesDoingNum = dict["tablesDoingNum"] as! Int32
                }
                if dict.keys.contains("tablesDoneNum") {
                    self.tablesDoneNum = dict["tablesDoneNum"] as! Int32
                }
                if dict.keys.contains("tablesFailedNum") {
                    self.tablesFailedNum = dict["tablesFailedNum"] as! Int32
                }
                if dict.keys.contains("tablesPartDoneNum") {
                    self.tablesPartDoneNum = dict["tablesPartDoneNum"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var objectList: [ListMmsDataSourcesResponseBody.Data.ObjectList]?

        public var pageNum: Int32?

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
            if self.objectList != nil {
                var tmp : [Any] = []
                for k in self.objectList! {
                    tmp.append(k.toMap())
                }
                map["objectList"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("objectList") {
                var tmp : [ListMmsDataSourcesResponseBody.Data.ObjectList] = []
                for v in dict["objectList"] as! [Any] {
                    var model = ListMmsDataSourcesResponseBody.Data.ObjectList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.objectList = tmp
            }
            if dict.keys.contains("pageNum") {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var data: ListMmsDataSourcesResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListMmsDataSourcesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListMmsDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMmsDataSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMmsDataSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMmsDbsRequest : Tea.TeaModel {
    public class Sorter : Tea.TeaModel {
        public var numRows: String?

        public var size: String?

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
            if self.numRows != nil {
                map["numRows"] = self.numRows!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("numRows") {
                self.numRows = dict["numRows"] as! String
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
        }
    }
    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var sorter: ListMmsDbsRequest.Sorter?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sorter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sorter != nil {
            map["sorter"] = self.sorter?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("sorter") {
            var model = ListMmsDbsRequest.Sorter()
            model.fromMap(dict["sorter"] as! [String: Any])
            self.sorter = model
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListMmsDbsShrinkRequest : Tea.TeaModel {
    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var sorterShrink: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sorterShrink != nil {
            map["sorter"] = self.sorterShrink!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("sorter") {
            self.sorterShrink = dict["sorter"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListMmsDbsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ObjectList : Tea.TeaModel {
            public var createTime: String?

            public var deleted: Bool?

            public var description_: String?

            public var extra: String?

            public var id: Int64?

            public var lastDdlTime: String?

            public var location: String?

            public var name: String?

            public var numRows: Int64?

            public var owner: String?

            public var partitions: Int32?

            public var partitionsDoing: Int32?

            public var partitionsDone: Int32?

            public var partitionsFailed: Int32?

            public var size: Int64?

            public var sourceId: Int64?

            public var sourceName: String?

            public var status: String?

            public var tables: Int32?

            public var tablesDoing: Int32?

            public var tablesDone: Int32?

            public var tablesFailed: Int32?

            public var tablesPartDone: Int32?

            public var updateTime: String?

            public var updated: Bool?

            public override init() {
                super.init()
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
                if self.deleted != nil {
                    map["deleted"] = self.deleted!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.extra != nil {
                    map["extra"] = self.extra!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.lastDdlTime != nil {
                    map["lastDdlTime"] = self.lastDdlTime!
                }
                if self.location != nil {
                    map["location"] = self.location!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.numRows != nil {
                    map["numRows"] = self.numRows!
                }
                if self.owner != nil {
                    map["owner"] = self.owner!
                }
                if self.partitions != nil {
                    map["partitions"] = self.partitions!
                }
                if self.partitionsDoing != nil {
                    map["partitionsDoing"] = self.partitionsDoing!
                }
                if self.partitionsDone != nil {
                    map["partitionsDone"] = self.partitionsDone!
                }
                if self.partitionsFailed != nil {
                    map["partitionsFailed"] = self.partitionsFailed!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                if self.sourceId != nil {
                    map["sourceId"] = self.sourceId!
                }
                if self.sourceName != nil {
                    map["sourceName"] = self.sourceName!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.tables != nil {
                    map["tables"] = self.tables!
                }
                if self.tablesDoing != nil {
                    map["tablesDoing"] = self.tablesDoing!
                }
                if self.tablesDone != nil {
                    map["tablesDone"] = self.tablesDone!
                }
                if self.tablesFailed != nil {
                    map["tablesFailed"] = self.tablesFailed!
                }
                if self.tablesPartDone != nil {
                    map["tablesPartDone"] = self.tablesPartDone!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.updated != nil {
                    map["updated"] = self.updated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("deleted") {
                    self.deleted = dict["deleted"] as! Bool
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("extra") {
                    self.extra = dict["extra"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("lastDdlTime") {
                    self.lastDdlTime = dict["lastDdlTime"] as! String
                }
                if dict.keys.contains("location") {
                    self.location = dict["location"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("numRows") {
                    self.numRows = dict["numRows"] as! Int64
                }
                if dict.keys.contains("owner") {
                    self.owner = dict["owner"] as! String
                }
                if dict.keys.contains("partitions") {
                    self.partitions = dict["partitions"] as! Int32
                }
                if dict.keys.contains("partitionsDoing") {
                    self.partitionsDoing = dict["partitionsDoing"] as! Int32
                }
                if dict.keys.contains("partitionsDone") {
                    self.partitionsDone = dict["partitionsDone"] as! Int32
                }
                if dict.keys.contains("partitionsFailed") {
                    self.partitionsFailed = dict["partitionsFailed"] as! Int32
                }
                if dict.keys.contains("size") {
                    self.size = dict["size"] as! Int64
                }
                if dict.keys.contains("sourceId") {
                    self.sourceId = dict["sourceId"] as! Int64
                }
                if dict.keys.contains("sourceName") {
                    self.sourceName = dict["sourceName"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("tables") {
                    self.tables = dict["tables"] as! Int32
                }
                if dict.keys.contains("tablesDoing") {
                    self.tablesDoing = dict["tablesDoing"] as! Int32
                }
                if dict.keys.contains("tablesDone") {
                    self.tablesDone = dict["tablesDone"] as! Int32
                }
                if dict.keys.contains("tablesFailed") {
                    self.tablesFailed = dict["tablesFailed"] as! Int32
                }
                if dict.keys.contains("tablesPartDone") {
                    self.tablesPartDone = dict["tablesPartDone"] as! Int32
                }
                if dict.keys.contains("updateTime") {
                    self.updateTime = dict["updateTime"] as! String
                }
                if dict.keys.contains("updated") {
                    self.updated = dict["updated"] as! Bool
                }
            }
        }
        public var objectList: [ListMmsDbsResponseBody.Data.ObjectList]?

        public var pageNum: Int32?

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
            if self.objectList != nil {
                var tmp : [Any] = []
                for k in self.objectList! {
                    tmp.append(k.toMap())
                }
                map["objectList"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("objectList") {
                var tmp : [ListMmsDbsResponseBody.Data.ObjectList] = []
                for v in dict["objectList"] as! [Any] {
                    var model = ListMmsDbsResponseBody.Data.ObjectList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.objectList = tmp
            }
            if dict.keys.contains("pageNum") {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var data: ListMmsDbsResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListMmsDbsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListMmsDbsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMmsDbsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMmsDbsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMmsJobsRequest : Tea.TeaModel {
    public class Sorter : Tea.TeaModel {
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
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var sorter: ListMmsJobsRequest.Sorter?

    public var dstDbName: String?

    public var dstTableName: String?

    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var srcDbName: String?

    public var srcTableName: String?

    public var status: String?

    public var stopped: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sorter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sorter != nil {
            map["sorter"] = self.sorter?.toMap()
        }
        if self.dstDbName != nil {
            map["dstDbName"] = self.dstDbName!
        }
        if self.dstTableName != nil {
            map["dstTableName"] = self.dstTableName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.srcDbName != nil {
            map["srcDbName"] = self.srcDbName!
        }
        if self.srcTableName != nil {
            map["srcTableName"] = self.srcTableName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.stopped != nil {
            map["stopped"] = self.stopped!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sorter") {
            var model = ListMmsJobsRequest.Sorter()
            model.fromMap(dict["sorter"] as! [String: Any])
            self.sorter = model
        }
        if dict.keys.contains("dstDbName") {
            self.dstDbName = dict["dstDbName"] as! String
        }
        if dict.keys.contains("dstTableName") {
            self.dstTableName = dict["dstTableName"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("srcDbName") {
            self.srcDbName = dict["srcDbName"] as! String
        }
        if dict.keys.contains("srcTableName") {
            self.srcTableName = dict["srcTableName"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("stopped") {
            self.stopped = dict["stopped"] as! Int64
        }
    }
}

public class ListMmsJobsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ObjectList : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var columnMapping: [String: String]?

                public var enableVerification: Bool?

                public var increment: Bool?

                public var others: [String: Any]?

                public var partitionFilters: [String: String]?

                public var partitions: [Int64]?

                public var schemaOnly: Bool?

                public var tableBlackList: [String]?

                public var tableMapping: [String: String]?

                public var tableWhiteList: [String]?

                public var tables: [String]?

                public var taskType: String?

                public var tunnelQuota: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.columnMapping != nil {
                        map["columnMapping"] = self.columnMapping!
                    }
                    if self.enableVerification != nil {
                        map["enableVerification"] = self.enableVerification!
                    }
                    if self.increment != nil {
                        map["increment"] = self.increment!
                    }
                    if self.others != nil {
                        map["others"] = self.others!
                    }
                    if self.partitionFilters != nil {
                        map["partitionFilters"] = self.partitionFilters!
                    }
                    if self.partitions != nil {
                        map["partitions"] = self.partitions!
                    }
                    if self.schemaOnly != nil {
                        map["schemaOnly"] = self.schemaOnly!
                    }
                    if self.tableBlackList != nil {
                        map["tableBlackList"] = self.tableBlackList!
                    }
                    if self.tableMapping != nil {
                        map["tableMapping"] = self.tableMapping!
                    }
                    if self.tableWhiteList != nil {
                        map["tableWhiteList"] = self.tableWhiteList!
                    }
                    if self.tables != nil {
                        map["tables"] = self.tables!
                    }
                    if self.taskType != nil {
                        map["taskType"] = self.taskType!
                    }
                    if self.tunnelQuota != nil {
                        map["tunnelQuota"] = self.tunnelQuota!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("columnMapping") {
                        self.columnMapping = dict["columnMapping"] as! [String: String]
                    }
                    if dict.keys.contains("enableVerification") {
                        self.enableVerification = dict["enableVerification"] as! Bool
                    }
                    if dict.keys.contains("increment") {
                        self.increment = dict["increment"] as! Bool
                    }
                    if dict.keys.contains("others") {
                        self.others = dict["others"] as! [String: Any]
                    }
                    if dict.keys.contains("partitionFilters") {
                        self.partitionFilters = dict["partitionFilters"] as! [String: String]
                    }
                    if dict.keys.contains("partitions") {
                        self.partitions = dict["partitions"] as! [Int64]
                    }
                    if dict.keys.contains("schemaOnly") {
                        self.schemaOnly = dict["schemaOnly"] as! Bool
                    }
                    if dict.keys.contains("tableBlackList") {
                        self.tableBlackList = dict["tableBlackList"] as! [String]
                    }
                    if dict.keys.contains("tableMapping") {
                        self.tableMapping = dict["tableMapping"] as! [String: String]
                    }
                    if dict.keys.contains("tableWhiteList") {
                        self.tableWhiteList = dict["tableWhiteList"] as! [String]
                    }
                    if dict.keys.contains("tables") {
                        self.tables = dict["tables"] as! [String]
                    }
                    if dict.keys.contains("taskType") {
                        self.taskType = dict["taskType"] as! String
                    }
                    if dict.keys.contains("tunnelQuota") {
                        self.tunnelQuota = dict["tunnelQuota"] as! String
                    }
                }
            }
            public var config: ListMmsJobsResponseBody.Data.ObjectList.Config?

            public var createTime: String?

            public var dbId: Int64?

            public var dstDbName: String?

            public var dstSchemaName: String?

            public var eta: String?

            public var id: Int64?

            public var name: String?

            public var sourceId: Int64?

            public var sourceName: String?

            public var srcDbName: String?

            public var srcSchemaName: String?

            public var status: String?

            public var stopped: Bool?

            public var taskDone: Int32?

            public var taskNum: Int32?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.config?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.config != nil {
                    map["config"] = self.config?.toMap()
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.dbId != nil {
                    map["dbId"] = self.dbId!
                }
                if self.dstDbName != nil {
                    map["dstDbName"] = self.dstDbName!
                }
                if self.dstSchemaName != nil {
                    map["dstSchemaName"] = self.dstSchemaName!
                }
                if self.eta != nil {
                    map["eta"] = self.eta!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.sourceId != nil {
                    map["sourceId"] = self.sourceId!
                }
                if self.sourceName != nil {
                    map["sourceName"] = self.sourceName!
                }
                if self.srcDbName != nil {
                    map["srcDbName"] = self.srcDbName!
                }
                if self.srcSchemaName != nil {
                    map["srcSchemaName"] = self.srcSchemaName!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.stopped != nil {
                    map["stopped"] = self.stopped!
                }
                if self.taskDone != nil {
                    map["taskDone"] = self.taskDone!
                }
                if self.taskNum != nil {
                    map["taskNum"] = self.taskNum!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("config") {
                    var model = ListMmsJobsResponseBody.Data.ObjectList.Config()
                    model.fromMap(dict["config"] as! [String: Any])
                    self.config = model
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("dbId") {
                    self.dbId = dict["dbId"] as! Int64
                }
                if dict.keys.contains("dstDbName") {
                    self.dstDbName = dict["dstDbName"] as! String
                }
                if dict.keys.contains("dstSchemaName") {
                    self.dstSchemaName = dict["dstSchemaName"] as! String
                }
                if dict.keys.contains("eta") {
                    self.eta = dict["eta"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("sourceId") {
                    self.sourceId = dict["sourceId"] as! Int64
                }
                if dict.keys.contains("sourceName") {
                    self.sourceName = dict["sourceName"] as! String
                }
                if dict.keys.contains("srcDbName") {
                    self.srcDbName = dict["srcDbName"] as! String
                }
                if dict.keys.contains("srcSchemaName") {
                    self.srcSchemaName = dict["srcSchemaName"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("stopped") {
                    self.stopped = dict["stopped"] as! Bool
                }
                if dict.keys.contains("taskDone") {
                    self.taskDone = dict["taskDone"] as! Int32
                }
                if dict.keys.contains("taskNum") {
                    self.taskNum = dict["taskNum"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var objectList: [ListMmsJobsResponseBody.Data.ObjectList]?

        public var pageNum: Int32?

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
            if self.objectList != nil {
                var tmp : [Any] = []
                for k in self.objectList! {
                    tmp.append(k.toMap())
                }
                map["objectList"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("objectList") {
                var tmp : [ListMmsJobsResponseBody.Data.ObjectList] = []
                for v in dict["objectList"] as! [Any] {
                    var model = ListMmsJobsResponseBody.Data.ObjectList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.objectList = tmp
            }
            if dict.keys.contains("pageNum") {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var data: ListMmsJobsResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListMmsJobsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListMmsJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMmsJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMmsJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMmsPartitionsRequest : Tea.TeaModel {
    public class Sorter : Tea.TeaModel {
        public var lastDdlTime: String?

        public var numRows: String?

        public var size: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastDdlTime != nil {
                map["lastDdlTime"] = self.lastDdlTime!
            }
            if self.numRows != nil {
                map["numRows"] = self.numRows!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("lastDdlTime") {
                self.lastDdlTime = dict["lastDdlTime"] as! String
            }
            if dict.keys.contains("numRows") {
                self.numRows = dict["numRows"] as! String
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! String
            }
        }
    }
    public var sorter: ListMmsPartitionsRequest.Sorter?

    public var dbId: Int64?

    public var dbName: String?

    public var lastDdlTimeEnd: String?

    public var lastDdlTimeStart: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var status: [String]?

    public var tableName: String?

    public var updated: Bool?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sorter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sorter != nil {
            map["sorter"] = self.sorter?.toMap()
        }
        if self.dbId != nil {
            map["dbId"] = self.dbId!
        }
        if self.dbName != nil {
            map["dbName"] = self.dbName!
        }
        if self.lastDdlTimeEnd != nil {
            map["lastDdlTimeEnd"] = self.lastDdlTimeEnd!
        }
        if self.lastDdlTimeStart != nil {
            map["lastDdlTimeStart"] = self.lastDdlTimeStart!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.updated != nil {
            map["updated"] = self.updated!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sorter") {
            var model = ListMmsPartitionsRequest.Sorter()
            model.fromMap(dict["sorter"] as! [String: Any])
            self.sorter = model
        }
        if dict.keys.contains("dbId") {
            self.dbId = dict["dbId"] as! Int64
        }
        if dict.keys.contains("dbName") {
            self.dbName = dict["dbName"] as! String
        }
        if dict.keys.contains("lastDdlTimeEnd") {
            self.lastDdlTimeEnd = dict["lastDdlTimeEnd"] as! String
        }
        if dict.keys.contains("lastDdlTimeStart") {
            self.lastDdlTimeStart = dict["lastDdlTimeStart"] as! String
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! [String]
        }
        if dict.keys.contains("tableName") {
            self.tableName = dict["tableName"] as! String
        }
        if dict.keys.contains("updated") {
            self.updated = dict["updated"] as! Bool
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class ListMmsPartitionsShrinkRequest : Tea.TeaModel {
    public class Sorter : Tea.TeaModel {
        public var lastDdlTime: String?

        public var numRows: String?

        public var size: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastDdlTime != nil {
                map["lastDdlTime"] = self.lastDdlTime!
            }
            if self.numRows != nil {
                map["numRows"] = self.numRows!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("lastDdlTime") {
                self.lastDdlTime = dict["lastDdlTime"] as! String
            }
            if dict.keys.contains("numRows") {
                self.numRows = dict["numRows"] as! String
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! String
            }
        }
    }
    public var sorter: ListMmsPartitionsShrinkRequest.Sorter?

    public var dbId: Int64?

    public var dbName: String?

    public var lastDdlTimeEnd: String?

    public var lastDdlTimeStart: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusShrink: String?

    public var tableName: String?

    public var updated: Bool?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sorter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sorter != nil {
            map["sorter"] = self.sorter?.toMap()
        }
        if self.dbId != nil {
            map["dbId"] = self.dbId!
        }
        if self.dbName != nil {
            map["dbName"] = self.dbName!
        }
        if self.lastDdlTimeEnd != nil {
            map["lastDdlTimeEnd"] = self.lastDdlTimeEnd!
        }
        if self.lastDdlTimeStart != nil {
            map["lastDdlTimeStart"] = self.lastDdlTimeStart!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.statusShrink != nil {
            map["status"] = self.statusShrink!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.updated != nil {
            map["updated"] = self.updated!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sorter") {
            var model = ListMmsPartitionsShrinkRequest.Sorter()
            model.fromMap(dict["sorter"] as! [String: Any])
            self.sorter = model
        }
        if dict.keys.contains("dbId") {
            self.dbId = dict["dbId"] as! Int64
        }
        if dict.keys.contains("dbName") {
            self.dbName = dict["dbName"] as! String
        }
        if dict.keys.contains("lastDdlTimeEnd") {
            self.lastDdlTimeEnd = dict["lastDdlTimeEnd"] as! String
        }
        if dict.keys.contains("lastDdlTimeStart") {
            self.lastDdlTimeStart = dict["lastDdlTimeStart"] as! String
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.statusShrink = dict["status"] as! String
        }
        if dict.keys.contains("tableName") {
            self.tableName = dict["tableName"] as! String
        }
        if dict.keys.contains("updated") {
            self.updated = dict["updated"] as! Bool
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class ListMmsPartitionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ObjectList : Tea.TeaModel {
            public var dbId: Int64?

            public var dbName: String?

            public var id: Int64?

            public var lastDdlTime: String?

            public var numRows: Int64?

            public var size: Int64?

            public var sourceId: Int64?

            public var sourceName: String?

            public var status: String?

            public var tableId: Int64?

            public var tableName: String?

            public var updated: Bool?

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
                if self.dbId != nil {
                    map["DbId"] = self.dbId!
                }
                if self.dbName != nil {
                    map["dbName"] = self.dbName!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.lastDdlTime != nil {
                    map["lastDdlTime"] = self.lastDdlTime!
                }
                if self.numRows != nil {
                    map["numRows"] = self.numRows!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                if self.sourceId != nil {
                    map["sourceId"] = self.sourceId!
                }
                if self.sourceName != nil {
                    map["sourceName"] = self.sourceName!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.tableId != nil {
                    map["tableId"] = self.tableId!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                if self.updated != nil {
                    map["updated"] = self.updated!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DbId") {
                    self.dbId = dict["DbId"] as! Int64
                }
                if dict.keys.contains("dbName") {
                    self.dbName = dict["dbName"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("lastDdlTime") {
                    self.lastDdlTime = dict["lastDdlTime"] as! String
                }
                if dict.keys.contains("numRows") {
                    self.numRows = dict["numRows"] as! Int64
                }
                if dict.keys.contains("size") {
                    self.size = dict["size"] as! Int64
                }
                if dict.keys.contains("sourceId") {
                    self.sourceId = dict["sourceId"] as! Int64
                }
                if dict.keys.contains("sourceName") {
                    self.sourceName = dict["sourceName"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("tableId") {
                    self.tableId = dict["tableId"] as! Int64
                }
                if dict.keys.contains("tableName") {
                    self.tableName = dict["tableName"] as! String
                }
                if dict.keys.contains("updated") {
                    self.updated = dict["updated"] as! Bool
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var objectList: [ListMmsPartitionsResponseBody.Data.ObjectList]?

        public var pageNum: Int32?

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
            if self.objectList != nil {
                var tmp : [Any] = []
                for k in self.objectList! {
                    tmp.append(k.toMap())
                }
                map["objectList"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("objectList") {
                var tmp : [ListMmsPartitionsResponseBody.Data.ObjectList] = []
                for v in dict["objectList"] as! [Any] {
                    var model = ListMmsPartitionsResponseBody.Data.ObjectList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.objectList = tmp
            }
            if dict.keys.contains("pageNum") {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var data: ListMmsPartitionsResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListMmsPartitionsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListMmsPartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMmsPartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMmsPartitionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMmsTablesRequest : Tea.TeaModel {
    public class Sorter : Tea.TeaModel {
        public var lastDdlTime: String?

        public var numRows: String?

        public var size: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastDdlTime != nil {
                map["lastDdlTime"] = self.lastDdlTime!
            }
            if self.numRows != nil {
                map["numRows"] = self.numRows!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("lastDdlTime") {
                self.lastDdlTime = dict["lastDdlTime"] as! String
            }
            if dict.keys.contains("numRows") {
                self.numRows = dict["numRows"] as! String
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! String
            }
        }
    }
    public var sorter: ListMmsTablesRequest.Sorter?

    public var dbId: Int64?

    public var dbName: String?

    public var hasPartitions: Bool?

    public var lastDdlTimeEnd: String?

    public var lastDdlTimeStart: String?

    public var name: String?

    public var onlyName: Bool?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var status: [String]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sorter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sorter != nil {
            map["sorter"] = self.sorter?.toMap()
        }
        if self.dbId != nil {
            map["dbId"] = self.dbId!
        }
        if self.dbName != nil {
            map["dbName"] = self.dbName!
        }
        if self.hasPartitions != nil {
            map["hasPartitions"] = self.hasPartitions!
        }
        if self.lastDdlTimeEnd != nil {
            map["lastDdlTimeEnd"] = self.lastDdlTimeEnd!
        }
        if self.lastDdlTimeStart != nil {
            map["lastDdlTimeStart"] = self.lastDdlTimeStart!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.onlyName != nil {
            map["onlyName"] = self.onlyName!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sorter") {
            var model = ListMmsTablesRequest.Sorter()
            model.fromMap(dict["sorter"] as! [String: Any])
            self.sorter = model
        }
        if dict.keys.contains("dbId") {
            self.dbId = dict["dbId"] as! Int64
        }
        if dict.keys.contains("dbName") {
            self.dbName = dict["dbName"] as! String
        }
        if dict.keys.contains("hasPartitions") {
            self.hasPartitions = dict["hasPartitions"] as! Bool
        }
        if dict.keys.contains("lastDdlTimeEnd") {
            self.lastDdlTimeEnd = dict["lastDdlTimeEnd"] as! String
        }
        if dict.keys.contains("lastDdlTimeStart") {
            self.lastDdlTimeStart = dict["lastDdlTimeStart"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("onlyName") {
            self.onlyName = dict["onlyName"] as! Bool
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! [String]
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListMmsTablesShrinkRequest : Tea.TeaModel {
    public class Sorter : Tea.TeaModel {
        public var lastDdlTime: String?

        public var numRows: String?

        public var size: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastDdlTime != nil {
                map["lastDdlTime"] = self.lastDdlTime!
            }
            if self.numRows != nil {
                map["numRows"] = self.numRows!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("lastDdlTime") {
                self.lastDdlTime = dict["lastDdlTime"] as! String
            }
            if dict.keys.contains("numRows") {
                self.numRows = dict["numRows"] as! String
            }
            if dict.keys.contains("size") {
                self.size = dict["size"] as! String
            }
        }
    }
    public var sorter: ListMmsTablesShrinkRequest.Sorter?

    public var dbId: Int64?

    public var dbName: String?

    public var hasPartitions: Bool?

    public var lastDdlTimeEnd: String?

    public var lastDdlTimeStart: String?

    public var name: String?

    public var onlyName: Bool?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusShrink: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sorter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sorter != nil {
            map["sorter"] = self.sorter?.toMap()
        }
        if self.dbId != nil {
            map["dbId"] = self.dbId!
        }
        if self.dbName != nil {
            map["dbName"] = self.dbName!
        }
        if self.hasPartitions != nil {
            map["hasPartitions"] = self.hasPartitions!
        }
        if self.lastDdlTimeEnd != nil {
            map["lastDdlTimeEnd"] = self.lastDdlTimeEnd!
        }
        if self.lastDdlTimeStart != nil {
            map["lastDdlTimeStart"] = self.lastDdlTimeStart!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.onlyName != nil {
            map["onlyName"] = self.onlyName!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.statusShrink != nil {
            map["status"] = self.statusShrink!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sorter") {
            var model = ListMmsTablesShrinkRequest.Sorter()
            model.fromMap(dict["sorter"] as! [String: Any])
            self.sorter = model
        }
        if dict.keys.contains("dbId") {
            self.dbId = dict["dbId"] as! Int64
        }
        if dict.keys.contains("dbName") {
            self.dbName = dict["dbName"] as! String
        }
        if dict.keys.contains("hasPartitions") {
            self.hasPartitions = dict["hasPartitions"] as! Bool
        }
        if dict.keys.contains("lastDdlTimeEnd") {
            self.lastDdlTimeEnd = dict["lastDdlTimeEnd"] as! String
        }
        if dict.keys.contains("lastDdlTimeStart") {
            self.lastDdlTimeStart = dict["lastDdlTimeStart"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("onlyName") {
            self.onlyName = dict["onlyName"] as! Bool
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.statusShrink = dict["status"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListMmsTablesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ObjectList : Tea.TeaModel {
            public class Schema : Tea.TeaModel {
                public class Columns : Tea.TeaModel {
                    public var comment: String?

                    public var defaultValue: String?

                    public var name: String?

                    public var nullable: Bool?

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
                            map["comment"] = self.comment!
                        }
                        if self.defaultValue != nil {
                            map["defaultValue"] = self.defaultValue!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.nullable != nil {
                            map["nullable"] = self.nullable!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("comment") {
                            self.comment = dict["comment"] as! String
                        }
                        if dict.keys.contains("defaultValue") {
                            self.defaultValue = dict["defaultValue"] as! String
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("nullable") {
                            self.nullable = dict["nullable"] as! Bool
                        }
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                    }
                }
                public class Partitions : Tea.TeaModel {
                    public var comment: String?

                    public var defaultValue: String?

                    public var name: String?

                    public var nullable: Bool?

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
                            map["comment"] = self.comment!
                        }
                        if self.defaultValue != nil {
                            map["defaultValue"] = self.defaultValue!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.nullable != nil {
                            map["nullable"] = self.nullable!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("comment") {
                            self.comment = dict["comment"] as! String
                        }
                        if dict.keys.contains("defaultValue") {
                            self.defaultValue = dict["defaultValue"] as! String
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("nullable") {
                            self.nullable = dict["nullable"] as! Bool
                        }
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                    }
                }
                public var columns: [ListMmsTablesResponseBody.Data.ObjectList.Schema.Columns]?

                public var comment: String?

                public var name: String?

                public var partitions: [ListMmsTablesResponseBody.Data.ObjectList.Schema.Partitions]?

                public override init() {
                    super.init()
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
                    if self.comment != nil {
                        map["comment"] = self.comment!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("columns") {
                        var tmp : [ListMmsTablesResponseBody.Data.ObjectList.Schema.Columns] = []
                        for v in dict["columns"] as! [Any] {
                            var model = ListMmsTablesResponseBody.Data.ObjectList.Schema.Columns()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.columns = tmp
                    }
                    if dict.keys.contains("comment") {
                        self.comment = dict["comment"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("partitions") {
                        var tmp : [ListMmsTablesResponseBody.Data.ObjectList.Schema.Partitions] = []
                        for v in dict["partitions"] as! [Any] {
                            var model = ListMmsTablesResponseBody.Data.ObjectList.Schema.Partitions()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.partitions = tmp
                    }
                }
            }
            public var dbId: Int64?

            public var dbName: String?

            public var extra: String?

            public var hasPartitions: Bool?

            public var id: Int64?

            public var inputFormat: String?

            public var lastDdlTime: String?

            public var location: String?

            public var name: String?

            public var numRows: Int64?

            public var outputFormat: String?

            public var owner: String?

            public var partitions: Int32?

            public var partitionsDoing: Int32?

            public var partitionsDone: Int32?

            public var partitionsFailed: Int32?

            public var schema: ListMmsTablesResponseBody.Data.ObjectList.Schema?

            public var serde: String?

            public var size: Int64?

            public var sourceId: Int64?

            public var sourceName: String?

            public var status: String?

            public var type: String?

            public var updated: Bool?

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
                if self.dbId != nil {
                    map["dbId"] = self.dbId!
                }
                if self.dbName != nil {
                    map["dbName"] = self.dbName!
                }
                if self.extra != nil {
                    map["extra"] = self.extra!
                }
                if self.hasPartitions != nil {
                    map["hasPartitions"] = self.hasPartitions!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.inputFormat != nil {
                    map["inputFormat"] = self.inputFormat!
                }
                if self.lastDdlTime != nil {
                    map["lastDdlTime"] = self.lastDdlTime!
                }
                if self.location != nil {
                    map["location"] = self.location!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.numRows != nil {
                    map["numRows"] = self.numRows!
                }
                if self.outputFormat != nil {
                    map["outputFormat"] = self.outputFormat!
                }
                if self.owner != nil {
                    map["owner"] = self.owner!
                }
                if self.partitions != nil {
                    map["partitions"] = self.partitions!
                }
                if self.partitionsDoing != nil {
                    map["partitionsDoing"] = self.partitionsDoing!
                }
                if self.partitionsDone != nil {
                    map["partitionsDone"] = self.partitionsDone!
                }
                if self.partitionsFailed != nil {
                    map["partitionsFailed"] = self.partitionsFailed!
                }
                if self.schema != nil {
                    map["schema"] = self.schema?.toMap()
                }
                if self.serde != nil {
                    map["serde"] = self.serde!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                if self.sourceId != nil {
                    map["sourceId"] = self.sourceId!
                }
                if self.sourceName != nil {
                    map["sourceName"] = self.sourceName!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.updated != nil {
                    map["updated"] = self.updated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dbId") {
                    self.dbId = dict["dbId"] as! Int64
                }
                if dict.keys.contains("dbName") {
                    self.dbName = dict["dbName"] as! String
                }
                if dict.keys.contains("extra") {
                    self.extra = dict["extra"] as! String
                }
                if dict.keys.contains("hasPartitions") {
                    self.hasPartitions = dict["hasPartitions"] as! Bool
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("inputFormat") {
                    self.inputFormat = dict["inputFormat"] as! String
                }
                if dict.keys.contains("lastDdlTime") {
                    self.lastDdlTime = dict["lastDdlTime"] as! String
                }
                if dict.keys.contains("location") {
                    self.location = dict["location"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("numRows") {
                    self.numRows = dict["numRows"] as! Int64
                }
                if dict.keys.contains("outputFormat") {
                    self.outputFormat = dict["outputFormat"] as! String
                }
                if dict.keys.contains("owner") {
                    self.owner = dict["owner"] as! String
                }
                if dict.keys.contains("partitions") {
                    self.partitions = dict["partitions"] as! Int32
                }
                if dict.keys.contains("partitionsDoing") {
                    self.partitionsDoing = dict["partitionsDoing"] as! Int32
                }
                if dict.keys.contains("partitionsDone") {
                    self.partitionsDone = dict["partitionsDone"] as! Int32
                }
                if dict.keys.contains("partitionsFailed") {
                    self.partitionsFailed = dict["partitionsFailed"] as! Int32
                }
                if dict.keys.contains("schema") {
                    var model = ListMmsTablesResponseBody.Data.ObjectList.Schema()
                    model.fromMap(dict["schema"] as! [String: Any])
                    self.schema = model
                }
                if dict.keys.contains("serde") {
                    self.serde = dict["serde"] as! String
                }
                if dict.keys.contains("size") {
                    self.size = dict["size"] as! Int64
                }
                if dict.keys.contains("sourceId") {
                    self.sourceId = dict["sourceId"] as! Int64
                }
                if dict.keys.contains("sourceName") {
                    self.sourceName = dict["sourceName"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("updated") {
                    self.updated = dict["updated"] as! Bool
                }
            }
        }
        public var objectList: [ListMmsTablesResponseBody.Data.ObjectList]?

        public var pageNum: Int32?

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
            if self.objectList != nil {
                var tmp : [Any] = []
                for k in self.objectList! {
                    tmp.append(k.toMap())
                }
                map["objectList"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("objectList") {
                var tmp : [ListMmsTablesResponseBody.Data.ObjectList] = []
                for v in dict["objectList"] as! [Any] {
                    var model = ListMmsTablesResponseBody.Data.ObjectList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.objectList = tmp
            }
            if dict.keys.contains("pageNum") {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var data: ListMmsTablesResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListMmsTablesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListMmsTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMmsTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMmsTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMmsTaskLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var action: String?

        public var createTime: String?

        public var id: Int64?

        public var msg: String?

        public var sourceId: Int64?

        public var status: String?

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
            if self.action != nil {
                map["action"] = self.action!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.msg != nil {
                map["msg"] = self.msg!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("action") {
                self.action = dict["action"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("msg") {
                self.msg = dict["msg"] as! String
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! Int64
            }
        }
    }
    public var data: [ListMmsTaskLogsResponseBody.Data]?

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
            map["data"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [ListMmsTaskLogsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListMmsTaskLogsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListMmsTaskLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMmsTaskLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMmsTaskLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMmsTasksRequest : Tea.TeaModel {
    public class Sorter : Tea.TeaModel {
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
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var sorter: ListMmsTasksRequest.Sorter?

    public var dstDbName: String?

    public var dstTableName: String?

    public var jobId: Int64?

    public var jobName: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var partition: String?

    public var srcDbName: String?

    public var srcTableName: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sorter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sorter != nil {
            map["sorter"] = self.sorter?.toMap()
        }
        if self.dstDbName != nil {
            map["dstDbName"] = self.dstDbName!
        }
        if self.dstTableName != nil {
            map["dstTableName"] = self.dstTableName!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.jobName != nil {
            map["jobName"] = self.jobName!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.srcDbName != nil {
            map["srcDbName"] = self.srcDbName!
        }
        if self.srcTableName != nil {
            map["srcTableName"] = self.srcTableName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sorter") {
            var model = ListMmsTasksRequest.Sorter()
            model.fromMap(dict["sorter"] as! [String: Any])
            self.sorter = model
        }
        if dict.keys.contains("dstDbName") {
            self.dstDbName = dict["dstDbName"] as! String
        }
        if dict.keys.contains("dstTableName") {
            self.dstTableName = dict["dstTableName"] as! String
        }
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! Int64
        }
        if dict.keys.contains("jobName") {
            self.jobName = dict["jobName"] as! String
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! String
        }
        if dict.keys.contains("srcDbName") {
            self.srcDbName = dict["srcDbName"] as! String
        }
        if dict.keys.contains("srcTableName") {
            self.srcTableName = dict["srcTableName"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListMmsTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ObjectList : Tea.TeaModel {
            public var createTime: String?

            public var dbId: Int64?

            public var dstDbName: String?

            public var dstSchemaName: String?

            public var dstTableName: String?

            public var endTime: String?

            public var id: Int64?

            public var jobId: Int64?

            public var jobName: String?

            public var retriedTimes: Int32?

            public var running: Bool?

            public var sourceId: Int64?

            public var sourceName: String?

            public var srcDbName: String?

            public var srcSchemaName: String?

            public var srcTableName: String?

            public var startTime: String?

            public var status: String?

            public var stopped: Bool?

            public var tableId: Int64?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.dbId != nil {
                    map["dbId"] = self.dbId!
                }
                if self.dstDbName != nil {
                    map["dstDbName"] = self.dstDbName!
                }
                if self.dstSchemaName != nil {
                    map["dstSchemaName"] = self.dstSchemaName!
                }
                if self.dstTableName != nil {
                    map["dstTableName"] = self.dstTableName!
                }
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.jobId != nil {
                    map["jobId"] = self.jobId!
                }
                if self.jobName != nil {
                    map["jobName"] = self.jobName!
                }
                if self.retriedTimes != nil {
                    map["retriedTimes"] = self.retriedTimes!
                }
                if self.running != nil {
                    map["running"] = self.running!
                }
                if self.sourceId != nil {
                    map["sourceId"] = self.sourceId!
                }
                if self.sourceName != nil {
                    map["sourceName"] = self.sourceName!
                }
                if self.srcDbName != nil {
                    map["srcDbName"] = self.srcDbName!
                }
                if self.srcSchemaName != nil {
                    map["srcSchemaName"] = self.srcSchemaName!
                }
                if self.srcTableName != nil {
                    map["srcTableName"] = self.srcTableName!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.stopped != nil {
                    map["stopped"] = self.stopped!
                }
                if self.tableId != nil {
                    map["tableId"] = self.tableId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("dbId") {
                    self.dbId = dict["dbId"] as! Int64
                }
                if dict.keys.contains("dstDbName") {
                    self.dstDbName = dict["dstDbName"] as! String
                }
                if dict.keys.contains("dstSchemaName") {
                    self.dstSchemaName = dict["dstSchemaName"] as! String
                }
                if dict.keys.contains("dstTableName") {
                    self.dstTableName = dict["dstTableName"] as! String
                }
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("jobId") {
                    self.jobId = dict["jobId"] as! Int64
                }
                if dict.keys.contains("jobName") {
                    self.jobName = dict["jobName"] as! String
                }
                if dict.keys.contains("retriedTimes") {
                    self.retriedTimes = dict["retriedTimes"] as! Int32
                }
                if dict.keys.contains("running") {
                    self.running = dict["running"] as! Bool
                }
                if dict.keys.contains("sourceId") {
                    self.sourceId = dict["sourceId"] as! Int64
                }
                if dict.keys.contains("sourceName") {
                    self.sourceName = dict["sourceName"] as! String
                }
                if dict.keys.contains("srcDbName") {
                    self.srcDbName = dict["srcDbName"] as! String
                }
                if dict.keys.contains("srcSchemaName") {
                    self.srcSchemaName = dict["srcSchemaName"] as! String
                }
                if dict.keys.contains("srcTableName") {
                    self.srcTableName = dict["srcTableName"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("stopped") {
                    self.stopped = dict["stopped"] as! Bool
                }
                if dict.keys.contains("tableId") {
                    self.tableId = dict["tableId"] as! Int64
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var objectList: [ListMmsTasksResponseBody.Data.ObjectList]?

        public var pageNum: Int32?

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
            if self.objectList != nil {
                var tmp : [Any] = []
                for k in self.objectList! {
                    tmp.append(k.toMap())
                }
                map["objectList"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("objectList") {
                var tmp : [ListMmsTasksResponseBody.Data.ObjectList] = []
                for v in dict["objectList"] as! [Any] {
                    var model = ListMmsTasksResponseBody.Data.ObjectList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.objectList = tmp
            }
            if dict.keys.contains("pageNum") {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var data: ListMmsTasksResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListMmsTasksResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListMmsTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMmsTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMmsTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPackagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CreatedPackages : Tea.TeaModel {
            public var createTime: Int64?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public class InstalledPackages : Tea.TeaModel {
            public var installTime: Int64?

            public var name: String?

            public var sourceProject: String?

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
                if self.installTime != nil {
                    map["installTime"] = self.installTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.sourceProject != nil {
                    map["sourceProject"] = self.sourceProject!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("installTime") {
                    self.installTime = dict["installTime"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("sourceProject") {
                    self.sourceProject = dict["sourceProject"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
            }
        }
        public var createdPackages: [ListPackagesResponseBody.Data.CreatedPackages]?

        public var installedPackages: [ListPackagesResponseBody.Data.InstalledPackages]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdPackages != nil {
                var tmp : [Any] = []
                for k in self.createdPackages! {
                    tmp.append(k.toMap())
                }
                map["createdPackages"] = tmp
            }
            if self.installedPackages != nil {
                var tmp : [Any] = []
                for k in self.installedPackages! {
                    tmp.append(k.toMap())
                }
                map["installedPackages"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createdPackages") {
                var tmp : [ListPackagesResponseBody.Data.CreatedPackages] = []
                for v in dict["createdPackages"] as! [Any] {
                    var model = ListPackagesResponseBody.Data.CreatedPackages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.createdPackages = tmp
            }
            if dict.keys.contains("installedPackages") {
                var tmp : [ListPackagesResponseBody.Data.InstalledPackages] = []
                for v in dict["installedPackages"] as! [Any] {
                    var model = ListPackagesResponseBody.Data.InstalledPackages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.installedPackages = tmp
            }
        }
    }
    public var data: ListPackagesResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListPackagesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPackagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Users : Tea.TeaModel {
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var users: [ListProjectUsersResponseBody.Data.Users]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("users") {
                var tmp : [ListProjectUsersResponseBody.Data.Users] = []
                for v in dict["users"] as! [Any] {
                    var model = ListProjectUsersResponseBody.Data.Users()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.users = tmp
            }
        }
    }
    public var data: ListProjectUsersResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListProjectUsersResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListProjectUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProjectUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var listSystemCatalog: Bool?

    public var marker: String?

    public var maxItem: Int32?

    public var prefix_: String?

    public var quotaName: String?

    public var quotaNickName: String?

    public var region: String?

    public var saleTags: String?

    public var tenantId: String?

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
        if self.listSystemCatalog != nil {
            map["listSystemCatalog"] = self.listSystemCatalog!
        }
        if self.marker != nil {
            map["marker"] = self.marker!
        }
        if self.maxItem != nil {
            map["maxItem"] = self.maxItem!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.quotaName != nil {
            map["quotaName"] = self.quotaName!
        }
        if self.quotaNickName != nil {
            map["quotaNickName"] = self.quotaNickName!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.saleTags != nil {
            map["saleTags"] = self.saleTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("listSystemCatalog") {
            self.listSystemCatalog = dict["listSystemCatalog"] as! Bool
        }
        if dict.keys.contains("marker") {
            self.marker = dict["marker"] as! String
        }
        if dict.keys.contains("maxItem") {
            self.maxItem = dict["maxItem"] as! Int32
        }
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("quotaName") {
            self.quotaName = dict["quotaName"] as! String
        }
        if dict.keys.contains("quotaNickName") {
            self.quotaNickName = dict["quotaNickName"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("saleTags") {
            self.saleTags = dict["saleTags"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Projects : Tea.TeaModel {
            public class IpWhiteList : Tea.TeaModel {
                public var ipList: String?

                public var vpcIpList: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ipList != nil {
                        map["ipList"] = self.ipList!
                    }
                    if self.vpcIpList != nil {
                        map["vpcIpList"] = self.vpcIpList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ipList") {
                        self.ipList = dict["ipList"] as! String
                    }
                    if dict.keys.contains("vpcIpList") {
                        self.vpcIpList = dict["vpcIpList"] as! String
                    }
                }
            }
            public class Properties : Tea.TeaModel {
                public class Encryption : Tea.TeaModel {
                    public var algorithm: String?

                    public var enable: Bool?

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
                        if self.algorithm != nil {
                            map["algorithm"] = self.algorithm!
                        }
                        if self.enable != nil {
                            map["enable"] = self.enable!
                        }
                        if self.key != nil {
                            map["key"] = self.key!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("algorithm") {
                            self.algorithm = dict["algorithm"] as! String
                        }
                        if dict.keys.contains("enable") {
                            self.enable = dict["enable"] as! Bool
                        }
                        if dict.keys.contains("key") {
                            self.key = dict["key"] as! String
                        }
                    }
                }
                public class ExternalProjectProperties : Tea.TeaModel {
                    public var isExternalCatalogBound: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isExternalCatalogBound != nil {
                            map["isExternalCatalogBound"] = self.isExternalCatalogBound!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isExternalCatalogBound") {
                            self.isExternalCatalogBound = dict["isExternalCatalogBound"] as! String
                        }
                    }
                }
                public class TableLifecycle : Tea.TeaModel {
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
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public var allowFullScan: Bool?

                public var enableDecimal2: Bool?

                public var enableTunnelQuotaRoute: Bool?

                public var encryption: ListProjectsResponseBody.Data.Projects.Properties.Encryption?

                public var externalProjectProperties: ListProjectsResponseBody.Data.Projects.Properties.ExternalProjectProperties?

                public var retentionDays: Int64?

                public var sqlMeteringMax: String?

                public var tableLifecycle: ListProjectsResponseBody.Data.Projects.Properties.TableLifecycle?

                public var timezone: String?

                public var tunnelQuota: String?

                public var typeSystem: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.encryption?.validate()
                    try self.externalProjectProperties?.validate()
                    try self.tableLifecycle?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.allowFullScan != nil {
                        map["allowFullScan"] = self.allowFullScan!
                    }
                    if self.enableDecimal2 != nil {
                        map["enableDecimal2"] = self.enableDecimal2!
                    }
                    if self.enableTunnelQuotaRoute != nil {
                        map["enableTunnelQuotaRoute"] = self.enableTunnelQuotaRoute!
                    }
                    if self.encryption != nil {
                        map["encryption"] = self.encryption?.toMap()
                    }
                    if self.externalProjectProperties != nil {
                        map["externalProjectProperties"] = self.externalProjectProperties?.toMap()
                    }
                    if self.retentionDays != nil {
                        map["retentionDays"] = self.retentionDays!
                    }
                    if self.sqlMeteringMax != nil {
                        map["sqlMeteringMax"] = self.sqlMeteringMax!
                    }
                    if self.tableLifecycle != nil {
                        map["tableLifecycle"] = self.tableLifecycle?.toMap()
                    }
                    if self.timezone != nil {
                        map["timezone"] = self.timezone!
                    }
                    if self.tunnelQuota != nil {
                        map["tunnelQuota"] = self.tunnelQuota!
                    }
                    if self.typeSystem != nil {
                        map["typeSystem"] = self.typeSystem!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("allowFullScan") {
                        self.allowFullScan = dict["allowFullScan"] as! Bool
                    }
                    if dict.keys.contains("enableDecimal2") {
                        self.enableDecimal2 = dict["enableDecimal2"] as! Bool
                    }
                    if dict.keys.contains("enableTunnelQuotaRoute") {
                        self.enableTunnelQuotaRoute = dict["enableTunnelQuotaRoute"] as! Bool
                    }
                    if dict.keys.contains("encryption") {
                        var model = ListProjectsResponseBody.Data.Projects.Properties.Encryption()
                        model.fromMap(dict["encryption"] as! [String: Any])
                        self.encryption = model
                    }
                    if dict.keys.contains("externalProjectProperties") {
                        var model = ListProjectsResponseBody.Data.Projects.Properties.ExternalProjectProperties()
                        model.fromMap(dict["externalProjectProperties"] as! [String: Any])
                        self.externalProjectProperties = model
                    }
                    if dict.keys.contains("retentionDays") {
                        self.retentionDays = dict["retentionDays"] as! Int64
                    }
                    if dict.keys.contains("sqlMeteringMax") {
                        self.sqlMeteringMax = dict["sqlMeteringMax"] as! String
                    }
                    if dict.keys.contains("tableLifecycle") {
                        var model = ListProjectsResponseBody.Data.Projects.Properties.TableLifecycle()
                        model.fromMap(dict["tableLifecycle"] as! [String: Any])
                        self.tableLifecycle = model
                    }
                    if dict.keys.contains("timezone") {
                        self.timezone = dict["timezone"] as! String
                    }
                    if dict.keys.contains("tunnelQuota") {
                        self.tunnelQuota = dict["tunnelQuota"] as! String
                    }
                    if dict.keys.contains("typeSystem") {
                        self.typeSystem = dict["typeSystem"] as! String
                    }
                }
            }
            public class SaleTag : Tea.TeaModel {
                public var resourceId: String?

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
                    if self.resourceId != nil {
                        map["resourceId"] = self.resourceId!
                    }
                    if self.resourceType != nil {
                        map["resourceType"] = self.resourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("resourceId") {
                        self.resourceId = dict["resourceId"] as! String
                    }
                    if dict.keys.contains("resourceType") {
                        self.resourceType = dict["resourceType"] as! String
                    }
                }
            }
            public class SecurityProperties : Tea.TeaModel {
                public class ProjectProtection : Tea.TeaModel {
                    public var exceptionPolicy: String?

                    public var protected: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.exceptionPolicy != nil {
                            map["exceptionPolicy"] = self.exceptionPolicy!
                        }
                        if self.protected != nil {
                            map["protected"] = self.protected!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("exceptionPolicy") {
                            self.exceptionPolicy = dict["exceptionPolicy"] as! String
                        }
                        if dict.keys.contains("protected") {
                            self.protected = dict["protected"] as! Bool
                        }
                    }
                }
                public var enableDownloadPrivilege: Bool?

                public var labelSecurity: Bool?

                public var objectCreatorHasAccessPermission: Bool?

                public var objectCreatorHasGrantPermission: Bool?

                public var projectProtection: ListProjectsResponseBody.Data.Projects.SecurityProperties.ProjectProtection?

                public var usingAcl: Bool?

                public var usingPolicy: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.projectProtection?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enableDownloadPrivilege != nil {
                        map["enableDownloadPrivilege"] = self.enableDownloadPrivilege!
                    }
                    if self.labelSecurity != nil {
                        map["labelSecurity"] = self.labelSecurity!
                    }
                    if self.objectCreatorHasAccessPermission != nil {
                        map["objectCreatorHasAccessPermission"] = self.objectCreatorHasAccessPermission!
                    }
                    if self.objectCreatorHasGrantPermission != nil {
                        map["objectCreatorHasGrantPermission"] = self.objectCreatorHasGrantPermission!
                    }
                    if self.projectProtection != nil {
                        map["projectProtection"] = self.projectProtection?.toMap()
                    }
                    if self.usingAcl != nil {
                        map["usingAcl"] = self.usingAcl!
                    }
                    if self.usingPolicy != nil {
                        map["usingPolicy"] = self.usingPolicy!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enableDownloadPrivilege") {
                        self.enableDownloadPrivilege = dict["enableDownloadPrivilege"] as! Bool
                    }
                    if dict.keys.contains("labelSecurity") {
                        self.labelSecurity = dict["labelSecurity"] as! Bool
                    }
                    if dict.keys.contains("objectCreatorHasAccessPermission") {
                        self.objectCreatorHasAccessPermission = dict["objectCreatorHasAccessPermission"] as! Bool
                    }
                    if dict.keys.contains("objectCreatorHasGrantPermission") {
                        self.objectCreatorHasGrantPermission = dict["objectCreatorHasGrantPermission"] as! Bool
                    }
                    if dict.keys.contains("projectProtection") {
                        var model = ListProjectsResponseBody.Data.Projects.SecurityProperties.ProjectProtection()
                        model.fromMap(dict["projectProtection"] as! [String: Any])
                        self.projectProtection = model
                    }
                    if dict.keys.contains("usingAcl") {
                        self.usingAcl = dict["usingAcl"] as! Bool
                    }
                    if dict.keys.contains("usingPolicy") {
                        self.usingPolicy = dict["usingPolicy"] as! Bool
                    }
                }
            }
            public var comment: String?

            public var costStorage: String?

            public var createdTime: Int64?

            public var defaultQuota: String?

            public var ipWhiteList: ListProjectsResponseBody.Data.Projects.IpWhiteList?

            public var name: String?

            public var owner: String?

            public var properties: ListProjectsResponseBody.Data.Projects.Properties?

            public var regionId: String?

            public var saleTag: ListProjectsResponseBody.Data.Projects.SaleTag?

            public var securityProperties: ListProjectsResponseBody.Data.Projects.SecurityProperties?

            public var status: String?

            public var threeTierModel: Bool?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ipWhiteList?.validate()
                try self.properties?.validate()
                try self.saleTag?.validate()
                try self.securityProperties?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comment != nil {
                    map["comment"] = self.comment!
                }
                if self.costStorage != nil {
                    map["costStorage"] = self.costStorage!
                }
                if self.createdTime != nil {
                    map["createdTime"] = self.createdTime!
                }
                if self.defaultQuota != nil {
                    map["defaultQuota"] = self.defaultQuota!
                }
                if self.ipWhiteList != nil {
                    map["ipWhiteList"] = self.ipWhiteList?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.owner != nil {
                    map["owner"] = self.owner!
                }
                if self.properties != nil {
                    map["properties"] = self.properties?.toMap()
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.saleTag != nil {
                    map["saleTag"] = self.saleTag?.toMap()
                }
                if self.securityProperties != nil {
                    map["securityProperties"] = self.securityProperties?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.threeTierModel != nil {
                    map["threeTierModel"] = self.threeTierModel!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("comment") {
                    self.comment = dict["comment"] as! String
                }
                if dict.keys.contains("costStorage") {
                    self.costStorage = dict["costStorage"] as! String
                }
                if dict.keys.contains("createdTime") {
                    self.createdTime = dict["createdTime"] as! Int64
                }
                if dict.keys.contains("defaultQuota") {
                    self.defaultQuota = dict["defaultQuota"] as! String
                }
                if dict.keys.contains("ipWhiteList") {
                    var model = ListProjectsResponseBody.Data.Projects.IpWhiteList()
                    model.fromMap(dict["ipWhiteList"] as! [String: Any])
                    self.ipWhiteList = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("owner") {
                    self.owner = dict["owner"] as! String
                }
                if dict.keys.contains("properties") {
                    var model = ListProjectsResponseBody.Data.Projects.Properties()
                    model.fromMap(dict["properties"] as! [String: Any])
                    self.properties = model
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("saleTag") {
                    var model = ListProjectsResponseBody.Data.Projects.SaleTag()
                    model.fromMap(dict["saleTag"] as! [String: Any])
                    self.saleTag = model
                }
                if dict.keys.contains("securityProperties") {
                    var model = ListProjectsResponseBody.Data.Projects.SecurityProperties()
                    model.fromMap(dict["securityProperties"] as! [String: Any])
                    self.securityProperties = model
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("threeTierModel") {
                    self.threeTierModel = dict["threeTierModel"] as! Bool
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var nextToken: String?

        public var marker: String?

        public var maxItem: Int32?

        public var projects: [ListProjectsResponseBody.Data.Projects]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.marker != nil {
                map["marker"] = self.marker!
            }
            if self.maxItem != nil {
                map["maxItem"] = self.maxItem!
            }
            if self.projects != nil {
                var tmp : [Any] = []
                for k in self.projects! {
                    tmp.append(k.toMap())
                }
                map["projects"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("marker") {
                self.marker = dict["marker"] as! String
            }
            if dict.keys.contains("maxItem") {
                self.maxItem = dict["maxItem"] as! Int32
            }
            if dict.keys.contains("projects") {
                var tmp : [ListProjectsResponseBody.Data.Projects] = []
                for v in dict["projects"] as! [Any] {
                    var model = ListProjectsResponseBody.Data.Projects()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.projects = tmp
            }
        }
    }
    public var data: ListProjectsResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListProjectsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQuotasRequest : Tea.TeaModel {
    public var billingType: String?

    public var marker: String?

    public var maxItem: Int64?

    public var productId: String?

    public var region: String?

    public var saleTags: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
        if self.marker != nil {
            map["marker"] = self.marker!
        }
        if self.maxItem != nil {
            map["maxItem"] = self.maxItem!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.saleTags != nil {
            map["saleTags"] = self.saleTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("billingType") {
            self.billingType = dict["billingType"] as! String
        }
        if dict.keys.contains("marker") {
            self.marker = dict["marker"] as! String
        }
        if dict.keys.contains("maxItem") {
            self.maxItem = dict["maxItem"] as! Int64
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("saleTags") {
            self.saleTags = dict["saleTags"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class ListQuotasResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QuotaInfoList : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public var tagKey: String?

                public var tagValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagKey != nil {
                        map["TagKey"] = self.tagKey!
                    }
                    if self.tagValue != nil {
                        map["TagValue"] = self.tagValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagKey") {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public class BillingPolicy : Tea.TeaModel {
                public var billingMethod: String?

                public var odpsSpecCode: String?

                public var orderId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billingMethod != nil {
                        map["billingMethod"] = self.billingMethod!
                    }
                    if self.odpsSpecCode != nil {
                        map["odpsSpecCode"] = self.odpsSpecCode!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("billingMethod") {
                        self.billingMethod = dict["billingMethod"] as! String
                    }
                    if dict.keys.contains("odpsSpecCode") {
                        self.odpsSpecCode = dict["odpsSpecCode"] as! String
                    }
                    if dict.keys.contains("orderId") {
                        self.orderId = dict["orderId"] as! String
                    }
                }
            }
            public class SaleTag : Tea.TeaModel {
                public var resourceIds: [String]?

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
                    if self.resourceIds != nil {
                        map["resourceIds"] = self.resourceIds!
                    }
                    if self.resourceType != nil {
                        map["resourceType"] = self.resourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("resourceIds") {
                        self.resourceIds = dict["resourceIds"] as! [String]
                    }
                    if dict.keys.contains("resourceType") {
                        self.resourceType = dict["resourceType"] as! String
                    }
                }
            }
            public class ScheduleInfo : Tea.TeaModel {
                public var currPlan: String?

                public var currTime: String?

                public var nextPlan: String?

                public var nextTime: String?

                public var oncePlan: String?

                public var onceTime: String?

                public var operatorName: String?

                public var timezone: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.currPlan != nil {
                        map["currPlan"] = self.currPlan!
                    }
                    if self.currTime != nil {
                        map["currTime"] = self.currTime!
                    }
                    if self.nextPlan != nil {
                        map["nextPlan"] = self.nextPlan!
                    }
                    if self.nextTime != nil {
                        map["nextTime"] = self.nextTime!
                    }
                    if self.oncePlan != nil {
                        map["oncePlan"] = self.oncePlan!
                    }
                    if self.onceTime != nil {
                        map["onceTime"] = self.onceTime!
                    }
                    if self.operatorName != nil {
                        map["operatorName"] = self.operatorName!
                    }
                    if self.timezone != nil {
                        map["timezone"] = self.timezone!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("currPlan") {
                        self.currPlan = dict["currPlan"] as! String
                    }
                    if dict.keys.contains("currTime") {
                        self.currTime = dict["currTime"] as! String
                    }
                    if dict.keys.contains("nextPlan") {
                        self.nextPlan = dict["nextPlan"] as! String
                    }
                    if dict.keys.contains("nextTime") {
                        self.nextTime = dict["nextTime"] as! String
                    }
                    if dict.keys.contains("oncePlan") {
                        self.oncePlan = dict["oncePlan"] as! String
                    }
                    if dict.keys.contains("onceTime") {
                        self.onceTime = dict["onceTime"] as! String
                    }
                    if dict.keys.contains("operatorName") {
                        self.operatorName = dict["operatorName"] as! String
                    }
                    if dict.keys.contains("timezone") {
                        self.timezone = dict["timezone"] as! String
                    }
                }
            }
            public class SubQuotaInfoList : Tea.TeaModel {
                public class BillingPolicy : Tea.TeaModel {
                    public var billingMethod: String?

                    public var odpsSpecCode: String?

                    public var orderId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.billingMethod != nil {
                            map["billingMethod"] = self.billingMethod!
                        }
                        if self.odpsSpecCode != nil {
                            map["odpsSpecCode"] = self.odpsSpecCode!
                        }
                        if self.orderId != nil {
                            map["orderId"] = self.orderId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("billingMethod") {
                            self.billingMethod = dict["billingMethod"] as! String
                        }
                        if dict.keys.contains("odpsSpecCode") {
                            self.odpsSpecCode = dict["odpsSpecCode"] as! String
                        }
                        if dict.keys.contains("orderId") {
                            self.orderId = dict["orderId"] as! String
                        }
                    }
                }
                public class SaleTag : Tea.TeaModel {
                    public var resourceIds: [String]?

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
                        if self.resourceIds != nil {
                            map["resourceIds"] = self.resourceIds!
                        }
                        if self.resourceType != nil {
                            map["resourceType"] = self.resourceType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("resourceIds") {
                            self.resourceIds = dict["resourceIds"] as! [String]
                        }
                        if dict.keys.contains("resourceType") {
                            self.resourceType = dict["resourceType"] as! String
                        }
                    }
                }
                public class ScheduleInfo : Tea.TeaModel {
                    public var currPlan: String?

                    public var currTime: String?

                    public var nextPlan: String?

                    public var nextTime: String?

                    public var oncePlan: String?

                    public var onceTime: String?

                    public var operatorName: String?

                    public var timezone: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.currPlan != nil {
                            map["currPlan"] = self.currPlan!
                        }
                        if self.currTime != nil {
                            map["currTime"] = self.currTime!
                        }
                        if self.nextPlan != nil {
                            map["nextPlan"] = self.nextPlan!
                        }
                        if self.nextTime != nil {
                            map["nextTime"] = self.nextTime!
                        }
                        if self.oncePlan != nil {
                            map["oncePlan"] = self.oncePlan!
                        }
                        if self.onceTime != nil {
                            map["onceTime"] = self.onceTime!
                        }
                        if self.operatorName != nil {
                            map["operatorName"] = self.operatorName!
                        }
                        if self.timezone != nil {
                            map["timezone"] = self.timezone!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("currPlan") {
                            self.currPlan = dict["currPlan"] as! String
                        }
                        if dict.keys.contains("currTime") {
                            self.currTime = dict["currTime"] as! String
                        }
                        if dict.keys.contains("nextPlan") {
                            self.nextPlan = dict["nextPlan"] as! String
                        }
                        if dict.keys.contains("nextTime") {
                            self.nextTime = dict["nextTime"] as! String
                        }
                        if dict.keys.contains("oncePlan") {
                            self.oncePlan = dict["oncePlan"] as! String
                        }
                        if dict.keys.contains("onceTime") {
                            self.onceTime = dict["onceTime"] as! String
                        }
                        if dict.keys.contains("operatorName") {
                            self.operatorName = dict["operatorName"] as! String
                        }
                        if dict.keys.contains("timezone") {
                            self.timezone = dict["timezone"] as! String
                        }
                    }
                }
                public var billingPolicy: ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList.BillingPolicy?

                public var cluster: String?

                public var createTime: Int64?

                public var creatorId: String?

                public var id: String?

                public var name: String?

                public var nickName: String?

                public var parameter: [String: Any]?

                public var parentId: String?

                public var regionId: String?

                public var saleTag: ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList.SaleTag?

                public var scheduleInfo: ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList.ScheduleInfo?

                public var status: String?

                public var tag: String?

                public var tenantId: String?

                public var type: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.billingPolicy?.validate()
                    try self.saleTag?.validate()
                    try self.scheduleInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billingPolicy != nil {
                        map["billingPolicy"] = self.billingPolicy?.toMap()
                    }
                    if self.cluster != nil {
                        map["cluster"] = self.cluster!
                    }
                    if self.createTime != nil {
                        map["createTime"] = self.createTime!
                    }
                    if self.creatorId != nil {
                        map["creatorId"] = self.creatorId!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nickName != nil {
                        map["nickName"] = self.nickName!
                    }
                    if self.parameter != nil {
                        map["parameter"] = self.parameter!
                    }
                    if self.parentId != nil {
                        map["parentId"] = self.parentId!
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.saleTag != nil {
                        map["saleTag"] = self.saleTag?.toMap()
                    }
                    if self.scheduleInfo != nil {
                        map["scheduleInfo"] = self.scheduleInfo?.toMap()
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.tenantId != nil {
                        map["tenantId"] = self.tenantId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("billingPolicy") {
                        var model = ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList.BillingPolicy()
                        model.fromMap(dict["billingPolicy"] as! [String: Any])
                        self.billingPolicy = model
                    }
                    if dict.keys.contains("cluster") {
                        self.cluster = dict["cluster"] as! String
                    }
                    if dict.keys.contains("createTime") {
                        self.createTime = dict["createTime"] as! Int64
                    }
                    if dict.keys.contains("creatorId") {
                        self.creatorId = dict["creatorId"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nickName") {
                        self.nickName = dict["nickName"] as! String
                    }
                    if dict.keys.contains("parameter") {
                        self.parameter = dict["parameter"] as! [String: Any]
                    }
                    if dict.keys.contains("parentId") {
                        self.parentId = dict["parentId"] as! String
                    }
                    if dict.keys.contains("regionId") {
                        self.regionId = dict["regionId"] as! String
                    }
                    if dict.keys.contains("saleTag") {
                        var model = ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList.SaleTag()
                        model.fromMap(dict["saleTag"] as! [String: Any])
                        self.saleTag = model
                    }
                    if dict.keys.contains("scheduleInfo") {
                        var model = ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList.ScheduleInfo()
                        model.fromMap(dict["scheduleInfo"] as! [String: Any])
                        self.scheduleInfo = model
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("tenantId") {
                        self.tenantId = dict["tenantId"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public var tags: [ListQuotasResponseBody.Data.QuotaInfoList.Tags]?

            public var billingPolicy: ListQuotasResponseBody.Data.QuotaInfoList.BillingPolicy?

            public var cluster: String?

            public var createTime: Int64?

            public var creatorId: String?

            public var id: String?

            public var name: String?

            public var nickName: String?

            public var parameter: [String: Any]?

            public var parentId: String?

            public var regionId: String?

            public var saleTag: ListQuotasResponseBody.Data.QuotaInfoList.SaleTag?

            public var scheduleInfo: ListQuotasResponseBody.Data.QuotaInfoList.ScheduleInfo?

            public var status: String?

            public var subQuotaInfoList: [ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList]?

            public var tag: String?

            public var tenantId: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.billingPolicy?.validate()
                try self.saleTag?.validate()
                try self.scheduleInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.billingPolicy != nil {
                    map["billingPolicy"] = self.billingPolicy?.toMap()
                }
                if self.cluster != nil {
                    map["cluster"] = self.cluster!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorId != nil {
                    map["creatorId"] = self.creatorId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter!
                }
                if self.parentId != nil {
                    map["parentId"] = self.parentId!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.saleTag != nil {
                    map["saleTag"] = self.saleTag?.toMap()
                }
                if self.scheduleInfo != nil {
                    map["scheduleInfo"] = self.scheduleInfo?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.subQuotaInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.subQuotaInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["subQuotaInfoList"] = tmp
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Tags") {
                    var tmp : [ListQuotasResponseBody.Data.QuotaInfoList.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = ListQuotasResponseBody.Data.QuotaInfoList.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("billingPolicy") {
                    var model = ListQuotasResponseBody.Data.QuotaInfoList.BillingPolicy()
                    model.fromMap(dict["billingPolicy"] as! [String: Any])
                    self.billingPolicy = model
                }
                if dict.keys.contains("cluster") {
                    self.cluster = dict["cluster"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorId") {
                    self.creatorId = dict["creatorId"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    self.parameter = dict["parameter"] as! [String: Any]
                }
                if dict.keys.contains("parentId") {
                    self.parentId = dict["parentId"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("saleTag") {
                    var model = ListQuotasResponseBody.Data.QuotaInfoList.SaleTag()
                    model.fromMap(dict["saleTag"] as! [String: Any])
                    self.saleTag = model
                }
                if dict.keys.contains("scheduleInfo") {
                    var model = ListQuotasResponseBody.Data.QuotaInfoList.ScheduleInfo()
                    model.fromMap(dict["scheduleInfo"] as! [String: Any])
                    self.scheduleInfo = model
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("subQuotaInfoList") {
                    var tmp : [ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList] = []
                    for v in dict["subQuotaInfoList"] as! [Any] {
                        var model = ListQuotasResponseBody.Data.QuotaInfoList.SubQuotaInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subQuotaInfoList = tmp
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var nextToken: String?

        public var marker: String?

        public var maxItem: Int64?

        public var quotaInfoList: [ListQuotasResponseBody.Data.QuotaInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.marker != nil {
                map["marker"] = self.marker!
            }
            if self.maxItem != nil {
                map["maxItem"] = self.maxItem!
            }
            if self.quotaInfoList != nil {
                var tmp : [Any] = []
                for k in self.quotaInfoList! {
                    tmp.append(k.toMap())
                }
                map["quotaInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("marker") {
                self.marker = dict["marker"] as! String
            }
            if dict.keys.contains("maxItem") {
                self.maxItem = dict["maxItem"] as! Int64
            }
            if dict.keys.contains("quotaInfoList") {
                var tmp : [ListQuotasResponseBody.Data.QuotaInfoList] = []
                for v in dict["quotaInfoList"] as! [Any] {
                    var model = ListQuotasResponseBody.Data.QuotaInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.quotaInfoList = tmp
            }
        }
    }
    public class QuotaInfoList : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public class BillingPolicy : Tea.TeaModel {
            public var billingMethod: String?

            public var odpsSpecCode: String?

            public var orderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingMethod != nil {
                    map["billingMethod"] = self.billingMethod!
                }
                if self.odpsSpecCode != nil {
                    map["odpsSpecCode"] = self.odpsSpecCode!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("billingMethod") {
                    self.billingMethod = dict["billingMethod"] as! String
                }
                if dict.keys.contains("odpsSpecCode") {
                    self.odpsSpecCode = dict["odpsSpecCode"] as! String
                }
                if dict.keys.contains("orderId") {
                    self.orderId = dict["orderId"] as! String
                }
            }
        }
        public class SaleTag : Tea.TeaModel {
            public var resourceIds: [String]?

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
                if self.resourceIds != nil {
                    map["resourceIds"] = self.resourceIds!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resourceIds") {
                    self.resourceIds = dict["resourceIds"] as! [String]
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public class ScheduleInfo : Tea.TeaModel {
            public var currPlan: String?

            public var currTime: String?

            public var nextPlan: String?

            public var nextTime: String?

            public var oncePlan: String?

            public var onceTime: String?

            public var operatorName: String?

            public var timezone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currPlan != nil {
                    map["currPlan"] = self.currPlan!
                }
                if self.currTime != nil {
                    map["currTime"] = self.currTime!
                }
                if self.nextPlan != nil {
                    map["nextPlan"] = self.nextPlan!
                }
                if self.nextTime != nil {
                    map["nextTime"] = self.nextTime!
                }
                if self.oncePlan != nil {
                    map["oncePlan"] = self.oncePlan!
                }
                if self.onceTime != nil {
                    map["onceTime"] = self.onceTime!
                }
                if self.operatorName != nil {
                    map["operatorName"] = self.operatorName!
                }
                if self.timezone != nil {
                    map["timezone"] = self.timezone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("currPlan") {
                    self.currPlan = dict["currPlan"] as! String
                }
                if dict.keys.contains("currTime") {
                    self.currTime = dict["currTime"] as! String
                }
                if dict.keys.contains("nextPlan") {
                    self.nextPlan = dict["nextPlan"] as! String
                }
                if dict.keys.contains("nextTime") {
                    self.nextTime = dict["nextTime"] as! String
                }
                if dict.keys.contains("oncePlan") {
                    self.oncePlan = dict["oncePlan"] as! String
                }
                if dict.keys.contains("onceTime") {
                    self.onceTime = dict["onceTime"] as! String
                }
                if dict.keys.contains("operatorName") {
                    self.operatorName = dict["operatorName"] as! String
                }
                if dict.keys.contains("timezone") {
                    self.timezone = dict["timezone"] as! String
                }
            }
        }
        public class SubQuotaInfoList : Tea.TeaModel {
            public class BillingPolicy : Tea.TeaModel {
                public var billingMethod: String?

                public var odpsSpecCode: String?

                public var orderId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billingMethod != nil {
                        map["billingMethod"] = self.billingMethod!
                    }
                    if self.odpsSpecCode != nil {
                        map["odpsSpecCode"] = self.odpsSpecCode!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("billingMethod") {
                        self.billingMethod = dict["billingMethod"] as! String
                    }
                    if dict.keys.contains("odpsSpecCode") {
                        self.odpsSpecCode = dict["odpsSpecCode"] as! String
                    }
                    if dict.keys.contains("orderId") {
                        self.orderId = dict["orderId"] as! String
                    }
                }
            }
            public class SaleTag : Tea.TeaModel {
                public var resourceIds: [String]?

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
                    if self.resourceIds != nil {
                        map["resourceIds"] = self.resourceIds!
                    }
                    if self.resourceType != nil {
                        map["resourceType"] = self.resourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("resourceIds") {
                        self.resourceIds = dict["resourceIds"] as! [String]
                    }
                    if dict.keys.contains("resourceType") {
                        self.resourceType = dict["resourceType"] as! String
                    }
                }
            }
            public class ScheduleInfo : Tea.TeaModel {
                public var currPlan: String?

                public var currTime: String?

                public var nextPlan: String?

                public var nextTime: String?

                public var oncePlan: String?

                public var onceTime: String?

                public var operatorName: String?

                public var timezone: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.currPlan != nil {
                        map["currPlan"] = self.currPlan!
                    }
                    if self.currTime != nil {
                        map["currTime"] = self.currTime!
                    }
                    if self.nextPlan != nil {
                        map["nextPlan"] = self.nextPlan!
                    }
                    if self.nextTime != nil {
                        map["nextTime"] = self.nextTime!
                    }
                    if self.oncePlan != nil {
                        map["oncePlan"] = self.oncePlan!
                    }
                    if self.onceTime != nil {
                        map["onceTime"] = self.onceTime!
                    }
                    if self.operatorName != nil {
                        map["operatorName"] = self.operatorName!
                    }
                    if self.timezone != nil {
                        map["timezone"] = self.timezone!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("currPlan") {
                        self.currPlan = dict["currPlan"] as! String
                    }
                    if dict.keys.contains("currTime") {
                        self.currTime = dict["currTime"] as! String
                    }
                    if dict.keys.contains("nextPlan") {
                        self.nextPlan = dict["nextPlan"] as! String
                    }
                    if dict.keys.contains("nextTime") {
                        self.nextTime = dict["nextTime"] as! String
                    }
                    if dict.keys.contains("oncePlan") {
                        self.oncePlan = dict["oncePlan"] as! String
                    }
                    if dict.keys.contains("onceTime") {
                        self.onceTime = dict["onceTime"] as! String
                    }
                    if dict.keys.contains("operatorName") {
                        self.operatorName = dict["operatorName"] as! String
                    }
                    if dict.keys.contains("timezone") {
                        self.timezone = dict["timezone"] as! String
                    }
                }
            }
            public var billingPolicy: ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList.BillingPolicy?

            public var cluster: String?

            public var createTime: Int64?

            public var creatorId: String?

            public var id: String?

            public var name: String?

            public var nickName: String?

            public var parameter: [String: Any]?

            public var parentId: String?

            public var regionId: String?

            public var saleTag: ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList.SaleTag?

            public var scheduleInfo: ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList.ScheduleInfo?

            public var status: String?

            public var tag: String?

            public var tenantId: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.billingPolicy?.validate()
                try self.saleTag?.validate()
                try self.scheduleInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingPolicy != nil {
                    map["billingPolicy"] = self.billingPolicy?.toMap()
                }
                if self.cluster != nil {
                    map["cluster"] = self.cluster!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorId != nil {
                    map["creatorId"] = self.creatorId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter!
                }
                if self.parentId != nil {
                    map["parentId"] = self.parentId!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.saleTag != nil {
                    map["saleTag"] = self.saleTag?.toMap()
                }
                if self.scheduleInfo != nil {
                    map["scheduleInfo"] = self.scheduleInfo?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("billingPolicy") {
                    var model = ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList.BillingPolicy()
                    model.fromMap(dict["billingPolicy"] as! [String: Any])
                    self.billingPolicy = model
                }
                if dict.keys.contains("cluster") {
                    self.cluster = dict["cluster"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorId") {
                    self.creatorId = dict["creatorId"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    self.parameter = dict["parameter"] as! [String: Any]
                }
                if dict.keys.contains("parentId") {
                    self.parentId = dict["parentId"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("saleTag") {
                    var model = ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList.SaleTag()
                    model.fromMap(dict["saleTag"] as! [String: Any])
                    self.saleTag = model
                }
                if dict.keys.contains("scheduleInfo") {
                    var model = ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList.ScheduleInfo()
                    model.fromMap(dict["scheduleInfo"] as! [String: Any])
                    self.scheduleInfo = model
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var tags: [ListQuotasResponseBody.QuotaInfoList.Tags]?

        public var billingPolicy: ListQuotasResponseBody.QuotaInfoList.BillingPolicy?

        public var cluster: String?

        public var createTime: Int64?

        public var creatorId: String?

        public var id: String?

        public var name: String?

        public var nickName: String?

        public var parameter: [String: Any]?

        public var parentId: String?

        public var regionId: String?

        public var saleTag: ListQuotasResponseBody.QuotaInfoList.SaleTag?

        public var scheduleInfo: ListQuotasResponseBody.QuotaInfoList.ScheduleInfo?

        public var status: String?

        public var subQuotaInfoList: [ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList]?

        public var tag: String?

        public var tenantId: String?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.billingPolicy?.validate()
            try self.saleTag?.validate()
            try self.scheduleInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.billingPolicy != nil {
                map["billingPolicy"] = self.billingPolicy?.toMap()
            }
            if self.cluster != nil {
                map["cluster"] = self.cluster!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nickName != nil {
                map["nickName"] = self.nickName!
            }
            if self.parameter != nil {
                map["parameter"] = self.parameter!
            }
            if self.parentId != nil {
                map["parentId"] = self.parentId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.saleTag != nil {
                map["saleTag"] = self.saleTag?.toMap()
            }
            if self.scheduleInfo != nil {
                map["scheduleInfo"] = self.scheduleInfo?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subQuotaInfoList != nil {
                var tmp : [Any] = []
                for k in self.subQuotaInfoList! {
                    tmp.append(k.toMap())
                }
                map["subQuotaInfoList"] = tmp
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tags") {
                var tmp : [ListQuotasResponseBody.QuotaInfoList.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListQuotasResponseBody.QuotaInfoList.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("billingPolicy") {
                var model = ListQuotasResponseBody.QuotaInfoList.BillingPolicy()
                model.fromMap(dict["billingPolicy"] as! [String: Any])
                self.billingPolicy = model
            }
            if dict.keys.contains("cluster") {
                self.cluster = dict["cluster"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorId") {
                self.creatorId = dict["creatorId"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nickName") {
                self.nickName = dict["nickName"] as! String
            }
            if dict.keys.contains("parameter") {
                self.parameter = dict["parameter"] as! [String: Any]
            }
            if dict.keys.contains("parentId") {
                self.parentId = dict["parentId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("saleTag") {
                var model = ListQuotasResponseBody.QuotaInfoList.SaleTag()
                model.fromMap(dict["saleTag"] as! [String: Any])
                self.saleTag = model
            }
            if dict.keys.contains("scheduleInfo") {
                var model = ListQuotasResponseBody.QuotaInfoList.ScheduleInfo()
                model.fromMap(dict["scheduleInfo"] as! [String: Any])
                self.scheduleInfo = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("subQuotaInfoList") {
                var tmp : [ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList] = []
                for v in dict["subQuotaInfoList"] as! [Any] {
                    var model = ListQuotasResponseBody.QuotaInfoList.SubQuotaInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subQuotaInfoList = tmp
            }
            if dict.keys.contains("tag") {
                self.tag = dict["tag"] as! String
            }
            if dict.keys.contains("tenantId") {
                self.tenantId = dict["tenantId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var nextToken: String?

    public var data: ListQuotasResponseBody.Data?

    public var marker: String?

    public var maxItem: Int64?

    public var quotaInfoList: [ListQuotasResponseBody.QuotaInfoList]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.marker != nil {
            map["marker"] = self.marker!
        }
        if self.maxItem != nil {
            map["maxItem"] = self.maxItem!
        }
        if self.quotaInfoList != nil {
            var tmp : [Any] = []
            for k in self.quotaInfoList! {
                tmp.append(k.toMap())
            }
            map["quotaInfoList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListQuotasResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("marker") {
            self.marker = dict["marker"] as! String
        }
        if dict.keys.contains("maxItem") {
            self.maxItem = dict["maxItem"] as! Int64
        }
        if dict.keys.contains("quotaInfoList") {
            var tmp : [ListQuotasResponseBody.QuotaInfoList] = []
            for v in dict["quotaInfoList"] as! [Any] {
                var model = ListQuotasResponseBody.QuotaInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.quotaInfoList = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListQuotasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListQuotasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQuotasPlansRequest : Tea.TeaModel {
    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class ListQuotasPlansResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PlanList : Tea.TeaModel {
            public class Quota : Tea.TeaModel {
                public class BillingPolicy : Tea.TeaModel {
                    public var billingMethod: String?

                    public var odpsSpecCode: String?

                    public var orderId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.billingMethod != nil {
                            map["billingMethod"] = self.billingMethod!
                        }
                        if self.odpsSpecCode != nil {
                            map["odpsSpecCode"] = self.odpsSpecCode!
                        }
                        if self.orderId != nil {
                            map["orderId"] = self.orderId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("billingMethod") {
                            self.billingMethod = dict["billingMethod"] as! String
                        }
                        if dict.keys.contains("odpsSpecCode") {
                            self.odpsSpecCode = dict["odpsSpecCode"] as! String
                        }
                        if dict.keys.contains("orderId") {
                            self.orderId = dict["orderId"] as! String
                        }
                    }
                }
                public class ScheduleInfo : Tea.TeaModel {
                    public var currPlan: String?

                    public var currTime: String?

                    public var nextPlan: String?

                    public var nextTime: String?

                    public var oncePlan: String?

                    public var onceTime: String?

                    public var operatorName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.currPlan != nil {
                            map["currPlan"] = self.currPlan!
                        }
                        if self.currTime != nil {
                            map["currTime"] = self.currTime!
                        }
                        if self.nextPlan != nil {
                            map["nextPlan"] = self.nextPlan!
                        }
                        if self.nextTime != nil {
                            map["nextTime"] = self.nextTime!
                        }
                        if self.oncePlan != nil {
                            map["oncePlan"] = self.oncePlan!
                        }
                        if self.onceTime != nil {
                            map["onceTime"] = self.onceTime!
                        }
                        if self.operatorName != nil {
                            map["operatorName"] = self.operatorName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("currPlan") {
                            self.currPlan = dict["currPlan"] as! String
                        }
                        if dict.keys.contains("currTime") {
                            self.currTime = dict["currTime"] as! String
                        }
                        if dict.keys.contains("nextPlan") {
                            self.nextPlan = dict["nextPlan"] as! String
                        }
                        if dict.keys.contains("nextTime") {
                            self.nextTime = dict["nextTime"] as! String
                        }
                        if dict.keys.contains("oncePlan") {
                            self.oncePlan = dict["oncePlan"] as! String
                        }
                        if dict.keys.contains("onceTime") {
                            self.onceTime = dict["onceTime"] as! String
                        }
                        if dict.keys.contains("operatorName") {
                            self.operatorName = dict["operatorName"] as! String
                        }
                    }
                }
                public class SubQuotaInfoList : Tea.TeaModel {
                    public class BillingPolicy : Tea.TeaModel {
                        public var billingMethod: String?

                        public var odpsSpecCode: String?

                        public var orderId: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.billingMethod != nil {
                                map["billingMethod"] = self.billingMethod!
                            }
                            if self.odpsSpecCode != nil {
                                map["odpsSpecCode"] = self.odpsSpecCode!
                            }
                            if self.orderId != nil {
                                map["orderId"] = self.orderId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("billingMethod") {
                                self.billingMethod = dict["billingMethod"] as! String
                            }
                            if dict.keys.contains("odpsSpecCode") {
                                self.odpsSpecCode = dict["odpsSpecCode"] as! String
                            }
                            if dict.keys.contains("orderId") {
                                self.orderId = dict["orderId"] as! String
                            }
                        }
                    }
                    public class ScheduleInfo : Tea.TeaModel {
                        public var currPlan: String?

                        public var currTime: String?

                        public var nextPlan: String?

                        public var nextTime: String?

                        public var oncePlan: String?

                        public var onceTime: String?

                        public var operatorName: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.currPlan != nil {
                                map["currPlan"] = self.currPlan!
                            }
                            if self.currTime != nil {
                                map["currTime"] = self.currTime!
                            }
                            if self.nextPlan != nil {
                                map["nextPlan"] = self.nextPlan!
                            }
                            if self.nextTime != nil {
                                map["nextTime"] = self.nextTime!
                            }
                            if self.oncePlan != nil {
                                map["oncePlan"] = self.oncePlan!
                            }
                            if self.onceTime != nil {
                                map["onceTime"] = self.onceTime!
                            }
                            if self.operatorName != nil {
                                map["operatorName"] = self.operatorName!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("currPlan") {
                                self.currPlan = dict["currPlan"] as! String
                            }
                            if dict.keys.contains("currTime") {
                                self.currTime = dict["currTime"] as! String
                            }
                            if dict.keys.contains("nextPlan") {
                                self.nextPlan = dict["nextPlan"] as! String
                            }
                            if dict.keys.contains("nextTime") {
                                self.nextTime = dict["nextTime"] as! String
                            }
                            if dict.keys.contains("oncePlan") {
                                self.oncePlan = dict["oncePlan"] as! String
                            }
                            if dict.keys.contains("onceTime") {
                                self.onceTime = dict["onceTime"] as! String
                            }
                            if dict.keys.contains("operatorName") {
                                self.operatorName = dict["operatorName"] as! String
                            }
                        }
                    }
                    public var billingPolicy: ListQuotasPlansResponseBody.Data.PlanList.Quota.SubQuotaInfoList.BillingPolicy?

                    public var cluster: String?

                    public var createTime: Int64?

                    public var creatorId: String?

                    public var id: String?

                    public var name: String?

                    public var nickName: String?

                    public var parameter: [String: Any]?

                    public var parentId: String?

                    public var regionId: String?

                    public var scheduleInfo: ListQuotasPlansResponseBody.Data.PlanList.Quota.SubQuotaInfoList.ScheduleInfo?

                    public var status: String?

                    public var tag: String?

                    public var tenantId: String?

                    public var type: String?

                    public var version: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.billingPolicy?.validate()
                        try self.scheduleInfo?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.billingPolicy != nil {
                            map["billingPolicy"] = self.billingPolicy?.toMap()
                        }
                        if self.cluster != nil {
                            map["cluster"] = self.cluster!
                        }
                        if self.createTime != nil {
                            map["createTime"] = self.createTime!
                        }
                        if self.creatorId != nil {
                            map["creatorId"] = self.creatorId!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.nickName != nil {
                            map["nickName"] = self.nickName!
                        }
                        if self.parameter != nil {
                            map["parameter"] = self.parameter!
                        }
                        if self.parentId != nil {
                            map["parentId"] = self.parentId!
                        }
                        if self.regionId != nil {
                            map["regionId"] = self.regionId!
                        }
                        if self.scheduleInfo != nil {
                            map["scheduleInfo"] = self.scheduleInfo?.toMap()
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.tag != nil {
                            map["tag"] = self.tag!
                        }
                        if self.tenantId != nil {
                            map["tenantId"] = self.tenantId!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        if self.version != nil {
                            map["version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("billingPolicy") {
                            var model = ListQuotasPlansResponseBody.Data.PlanList.Quota.SubQuotaInfoList.BillingPolicy()
                            model.fromMap(dict["billingPolicy"] as! [String: Any])
                            self.billingPolicy = model
                        }
                        if dict.keys.contains("cluster") {
                            self.cluster = dict["cluster"] as! String
                        }
                        if dict.keys.contains("createTime") {
                            self.createTime = dict["createTime"] as! Int64
                        }
                        if dict.keys.contains("creatorId") {
                            self.creatorId = dict["creatorId"] as! String
                        }
                        if dict.keys.contains("id") {
                            self.id = dict["id"] as! String
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("nickName") {
                            self.nickName = dict["nickName"] as! String
                        }
                        if dict.keys.contains("parameter") {
                            self.parameter = dict["parameter"] as! [String: Any]
                        }
                        if dict.keys.contains("parentId") {
                            self.parentId = dict["parentId"] as! String
                        }
                        if dict.keys.contains("regionId") {
                            self.regionId = dict["regionId"] as! String
                        }
                        if dict.keys.contains("scheduleInfo") {
                            var model = ListQuotasPlansResponseBody.Data.PlanList.Quota.SubQuotaInfoList.ScheduleInfo()
                            model.fromMap(dict["scheduleInfo"] as! [String: Any])
                            self.scheduleInfo = model
                        }
                        if dict.keys.contains("status") {
                            self.status = dict["status"] as! String
                        }
                        if dict.keys.contains("tag") {
                            self.tag = dict["tag"] as! String
                        }
                        if dict.keys.contains("tenantId") {
                            self.tenantId = dict["tenantId"] as! String
                        }
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                        if dict.keys.contains("version") {
                            self.version = dict["version"] as! String
                        }
                    }
                }
                public var billingPolicy: ListQuotasPlansResponseBody.Data.PlanList.Quota.BillingPolicy?

                public var cluster: String?

                public var createTime: Int64?

                public var creatorId: String?

                public var id: String?

                public var name: String?

                public var nickName: String?

                public var parameter: [String: Any]?

                public var parentId: String?

                public var regionId: String?

                public var scheduleInfo: ListQuotasPlansResponseBody.Data.PlanList.Quota.ScheduleInfo?

                public var status: String?

                public var subQuotaInfoList: [ListQuotasPlansResponseBody.Data.PlanList.Quota.SubQuotaInfoList]?

                public var tag: String?

                public var tenantId: String?

                public var type: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.billingPolicy?.validate()
                    try self.scheduleInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billingPolicy != nil {
                        map["billingPolicy"] = self.billingPolicy?.toMap()
                    }
                    if self.cluster != nil {
                        map["cluster"] = self.cluster!
                    }
                    if self.createTime != nil {
                        map["createTime"] = self.createTime!
                    }
                    if self.creatorId != nil {
                        map["creatorId"] = self.creatorId!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.nickName != nil {
                        map["nickName"] = self.nickName!
                    }
                    if self.parameter != nil {
                        map["parameter"] = self.parameter!
                    }
                    if self.parentId != nil {
                        map["parentId"] = self.parentId!
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.scheduleInfo != nil {
                        map["scheduleInfo"] = self.scheduleInfo?.toMap()
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.subQuotaInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.subQuotaInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["subQuotaInfoList"] = tmp
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.tenantId != nil {
                        map["tenantId"] = self.tenantId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("billingPolicy") {
                        var model = ListQuotasPlansResponseBody.Data.PlanList.Quota.BillingPolicy()
                        model.fromMap(dict["billingPolicy"] as! [String: Any])
                        self.billingPolicy = model
                    }
                    if dict.keys.contains("cluster") {
                        self.cluster = dict["cluster"] as! String
                    }
                    if dict.keys.contains("createTime") {
                        self.createTime = dict["createTime"] as! Int64
                    }
                    if dict.keys.contains("creatorId") {
                        self.creatorId = dict["creatorId"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("nickName") {
                        self.nickName = dict["nickName"] as! String
                    }
                    if dict.keys.contains("parameter") {
                        self.parameter = dict["parameter"] as! [String: Any]
                    }
                    if dict.keys.contains("parentId") {
                        self.parentId = dict["parentId"] as! String
                    }
                    if dict.keys.contains("regionId") {
                        self.regionId = dict["regionId"] as! String
                    }
                    if dict.keys.contains("scheduleInfo") {
                        var model = ListQuotasPlansResponseBody.Data.PlanList.Quota.ScheduleInfo()
                        model.fromMap(dict["scheduleInfo"] as! [String: Any])
                        self.scheduleInfo = model
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("subQuotaInfoList") {
                        var tmp : [ListQuotasPlansResponseBody.Data.PlanList.Quota.SubQuotaInfoList] = []
                        for v in dict["subQuotaInfoList"] as! [Any] {
                            var model = ListQuotasPlansResponseBody.Data.PlanList.Quota.SubQuotaInfoList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.subQuotaInfoList = tmp
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("tenantId") {
                        self.tenantId = dict["tenantId"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public var createTime: String?

            public var name: String?

            public var quota: ListQuotasPlansResponseBody.Data.PlanList.Quota?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.quota?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.quota != nil {
                    map["quota"] = self.quota?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("quota") {
                    var model = ListQuotasPlansResponseBody.Data.PlanList.Quota()
                    model.fromMap(dict["quota"] as! [String: Any])
                    self.quota = model
                }
            }
        }
        public var planList: [ListQuotasPlansResponseBody.Data.PlanList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.planList != nil {
                var tmp : [Any] = []
                for k in self.planList! {
                    tmp.append(k.toMap())
                }
                map["planList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("planList") {
                var tmp : [ListQuotasPlansResponseBody.Data.PlanList] = []
                for v in dict["planList"] as! [Any] {
                    var model = ListQuotasPlansResponseBody.Data.PlanList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.planList = tmp
            }
        }
    }
    public var data: ListQuotasPlansResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListQuotasPlansResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListQuotasPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotasPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListQuotasPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcesRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItem: Int32?

    public var name: String?

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
        if self.marker != nil {
            map["marker"] = self.marker!
        }
        if self.maxItem != nil {
            map["maxItem"] = self.maxItem!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("marker") {
            self.marker = dict["marker"] as! String
        }
        if dict.keys.contains("maxItem") {
            self.maxItem = dict["maxItem"] as! Int32
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("schemaName") {
            self.schemaName = dict["schemaName"] as! String
        }
    }
}

public class ListResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Resources : Tea.TeaModel {
            public var comment: String?

            public var contentMD5: String?

            public var creationTime: Int64?

            public var displayName: String?

            public var lastModifiedTime: Int64?

            public var lastUpdator: String?

            public var name: String?

            public var owner: String?

            public var schema: String?

            public var size: Int64?

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
                    map["comment"] = self.comment!
                }
                if self.contentMD5 != nil {
                    map["contentMD5"] = self.contentMD5!
                }
                if self.creationTime != nil {
                    map["creationTime"] = self.creationTime!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.lastModifiedTime != nil {
                    map["lastModifiedTime"] = self.lastModifiedTime!
                }
                if self.lastUpdator != nil {
                    map["lastUpdator"] = self.lastUpdator!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.owner != nil {
                    map["owner"] = self.owner!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("comment") {
                    self.comment = dict["comment"] as! String
                }
                if dict.keys.contains("contentMD5") {
                    self.contentMD5 = dict["contentMD5"] as! String
                }
                if dict.keys.contains("creationTime") {
                    self.creationTime = dict["creationTime"] as! Int64
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("lastModifiedTime") {
                    self.lastModifiedTime = dict["lastModifiedTime"] as! Int64
                }
                if dict.keys.contains("lastUpdator") {
                    self.lastUpdator = dict["lastUpdator"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("owner") {
                    self.owner = dict["owner"] as! String
                }
                if dict.keys.contains("schema") {
                    self.schema = dict["schema"] as! String
                }
                if dict.keys.contains("size") {
                    self.size = dict["size"] as! Int64
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var marker: String?

        public var maxItem: Int32?

        public var resources: [ListResourcesResponseBody.Data.Resources]?

        public override init() {
            super.init()
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
                map["marker"] = self.marker!
            }
            if self.maxItem != nil {
                map["maxItem"] = self.maxItem!
            }
            if self.resources != nil {
                var tmp : [Any] = []
                for k in self.resources! {
                    tmp.append(k.toMap())
                }
                map["resources"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("marker") {
                self.marker = dict["marker"] as! String
            }
            if dict.keys.contains("maxItem") {
                self.maxItem = dict["maxItem"] as! Int32
            }
            if dict.keys.contains("resources") {
                var tmp : [ListResourcesResponseBody.Data.Resources] = []
                for v in dict["resources"] as! [Any] {
                    var model = ListResourcesResponseBody.Data.Resources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resources = tmp
            }
        }
    }
    public var data: ListResourcesResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListResourcesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Roles : Tea.TeaModel {
            public class Acl : Tea.TeaModel {
                public class Function : Tea.TeaModel {
                    public var actions: [String]?

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
                        if self.actions != nil {
                            map["actions"] = self.actions!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("actions") {
                            self.actions = dict["actions"] as! [String]
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public class Instance : Tea.TeaModel {
                    public var actions: [String]?

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
                        if self.actions != nil {
                            map["actions"] = self.actions!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("actions") {
                            self.actions = dict["actions"] as! [String]
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public class Package : Tea.TeaModel {
                    public var actions: [String]?

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
                        if self.actions != nil {
                            map["actions"] = self.actions!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("actions") {
                            self.actions = dict["actions"] as! [String]
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public class Project : Tea.TeaModel {
                    public var actions: [String]?

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
                        if self.actions != nil {
                            map["actions"] = self.actions!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("actions") {
                            self.actions = dict["actions"] as! [String]
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public class Resource : Tea.TeaModel {
                    public var actions: [String]?

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
                        if self.actions != nil {
                            map["actions"] = self.actions!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("actions") {
                            self.actions = dict["actions"] as! [String]
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public class Table : Tea.TeaModel {
                    public var actions: [String]?

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
                        if self.actions != nil {
                            map["actions"] = self.actions!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("actions") {
                            self.actions = dict["actions"] as! [String]
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public var function: [ListRolesResponseBody.Data.Roles.Acl.Function]?

                public var instance: [ListRolesResponseBody.Data.Roles.Acl.Instance]?

                public var package: [ListRolesResponseBody.Data.Roles.Acl.Package]?

                public var project: [ListRolesResponseBody.Data.Roles.Acl.Project]?

                public var resource: [ListRolesResponseBody.Data.Roles.Acl.Resource]?

                public var table: [ListRolesResponseBody.Data.Roles.Acl.Table]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.function != nil {
                        var tmp : [Any] = []
                        for k in self.function! {
                            tmp.append(k.toMap())
                        }
                        map["function"] = tmp
                    }
                    if self.instance != nil {
                        var tmp : [Any] = []
                        for k in self.instance! {
                            tmp.append(k.toMap())
                        }
                        map["instance"] = tmp
                    }
                    if self.package != nil {
                        var tmp : [Any] = []
                        for k in self.package! {
                            tmp.append(k.toMap())
                        }
                        map["package"] = tmp
                    }
                    if self.project != nil {
                        var tmp : [Any] = []
                        for k in self.project! {
                            tmp.append(k.toMap())
                        }
                        map["project"] = tmp
                    }
                    if self.resource != nil {
                        var tmp : [Any] = []
                        for k in self.resource! {
                            tmp.append(k.toMap())
                        }
                        map["resource"] = tmp
                    }
                    if self.table != nil {
                        var tmp : [Any] = []
                        for k in self.table! {
                            tmp.append(k.toMap())
                        }
                        map["table"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("function") {
                        var tmp : [ListRolesResponseBody.Data.Roles.Acl.Function] = []
                        for v in dict["function"] as! [Any] {
                            var model = ListRolesResponseBody.Data.Roles.Acl.Function()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.function = tmp
                    }
                    if dict.keys.contains("instance") {
                        var tmp : [ListRolesResponseBody.Data.Roles.Acl.Instance] = []
                        for v in dict["instance"] as! [Any] {
                            var model = ListRolesResponseBody.Data.Roles.Acl.Instance()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.instance = tmp
                    }
                    if dict.keys.contains("package") {
                        var tmp : [ListRolesResponseBody.Data.Roles.Acl.Package] = []
                        for v in dict["package"] as! [Any] {
                            var model = ListRolesResponseBody.Data.Roles.Acl.Package()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.package = tmp
                    }
                    if dict.keys.contains("project") {
                        var tmp : [ListRolesResponseBody.Data.Roles.Acl.Project] = []
                        for v in dict["project"] as! [Any] {
                            var model = ListRolesResponseBody.Data.Roles.Acl.Project()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.project = tmp
                    }
                    if dict.keys.contains("resource") {
                        var tmp : [ListRolesResponseBody.Data.Roles.Acl.Resource] = []
                        for v in dict["resource"] as! [Any] {
                            var model = ListRolesResponseBody.Data.Roles.Acl.Resource()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.resource = tmp
                    }
                    if dict.keys.contains("table") {
                        var tmp : [ListRolesResponseBody.Data.Roles.Acl.Table] = []
                        for v in dict["table"] as! [Any] {
                            var model = ListRolesResponseBody.Data.Roles.Acl.Table()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.table = tmp
                    }
                }
            }
            public var acl: ListRolesResponseBody.Data.Roles.Acl?

            public var name: String?

            public var policy: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.acl?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acl != nil {
                    map["acl"] = self.acl?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.policy != nil {
                    map["policy"] = self.policy!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("acl") {
                    var model = ListRolesResponseBody.Data.Roles.Acl()
                    model.fromMap(dict["acl"] as! [String: Any])
                    self.acl = model
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("policy") {
                    self.policy = dict["policy"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var roles: [ListRolesResponseBody.Data.Roles]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roles != nil {
                var tmp : [Any] = []
                for k in self.roles! {
                    tmp.append(k.toMap())
                }
                map["roles"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("roles") {
                var tmp : [ListRolesResponseBody.Data.Roles] = []
                for v in dict["roles"] as! [Any] {
                    var model = ListRolesResponseBody.Data.Roles()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.roles = tmp
            }
        }
    }
    public var data: ListRolesResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListRolesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStoragePartitionsInfoRequest : Tea.TeaModel {
    public var ascOrder: Bool?

    public var date: String?

    public var orderColumn: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var partitionPrefix: String?

    public var region: String?

    public var schema: String?

    public var tenantId: String?

    public var types: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascOrder != nil {
            map["ascOrder"] = self.ascOrder!
        }
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.orderColumn != nil {
            map["orderColumn"] = self.orderColumn!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.partitionPrefix != nil {
            map["partitionPrefix"] = self.partitionPrefix!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.schema != nil {
            map["schema"] = self.schema!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.types != nil {
            map["types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ascOrder") {
            self.ascOrder = dict["ascOrder"] as! Bool
        }
        if dict.keys.contains("date") {
            self.date = dict["date"] as! String
        }
        if dict.keys.contains("orderColumn") {
            self.orderColumn = dict["orderColumn"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("partitionPrefix") {
            self.partitionPrefix = dict["partitionPrefix"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("schema") {
            self.schema = dict["schema"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
        if dict.keys.contains("types") {
            self.types = dict["types"] as! [String]
        }
    }
}

public class ListStoragePartitionsInfoShrinkRequest : Tea.TeaModel {
    public var ascOrder: Bool?

    public var date: String?

    public var orderColumn: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var partitionPrefix: String?

    public var region: String?

    public var schema: String?

    public var tenantId: String?

    public var typesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascOrder != nil {
            map["ascOrder"] = self.ascOrder!
        }
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.orderColumn != nil {
            map["orderColumn"] = self.orderColumn!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.partitionPrefix != nil {
            map["partitionPrefix"] = self.partitionPrefix!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.schema != nil {
            map["schema"] = self.schema!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.typesShrink != nil {
            map["types"] = self.typesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ascOrder") {
            self.ascOrder = dict["ascOrder"] as! Bool
        }
        if dict.keys.contains("date") {
            self.date = dict["date"] as! String
        }
        if dict.keys.contains("orderColumn") {
            self.orderColumn = dict["orderColumn"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("partitionPrefix") {
            self.partitionPrefix = dict["partitionPrefix"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("schema") {
            self.schema = dict["schema"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
        if dict.keys.contains("types") {
            self.typesShrink = dict["types"] as! String
        }
    }
}

public class ListStoragePartitionsInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StoragePartitionInfoList : Tea.TeaModel {
            public var fileCount: Int64?

            public var fileSize: Double?

            public var fileSizeUnit: String?

            public var isPartitioned: Bool?

            public var lastAccessTime: Int64?

            public var partition: String?

            public var projectName: String?

            public var rate: Double?

            public var schemaName: String?

            public var storageType: String?

            public var tableName: String?

            public var totalFrequency: Int64?

            public var totalInputAmount: Double?

            public var totalInputAmountUnit: String?

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
                if self.fileCount != nil {
                    map["fileCount"] = self.fileCount!
                }
                if self.fileSize != nil {
                    map["fileSize"] = self.fileSize!
                }
                if self.fileSizeUnit != nil {
                    map["fileSizeUnit"] = self.fileSizeUnit!
                }
                if self.isPartitioned != nil {
                    map["isPartitioned"] = self.isPartitioned!
                }
                if self.lastAccessTime != nil {
                    map["lastAccessTime"] = self.lastAccessTime!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                if self.rate != nil {
                    map["rate"] = self.rate!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                if self.storageType != nil {
                    map["storageType"] = self.storageType!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                if self.totalFrequency != nil {
                    map["totalFrequency"] = self.totalFrequency!
                }
                if self.totalInputAmount != nil {
                    map["totalInputAmount"] = self.totalInputAmount!
                }
                if self.totalInputAmountUnit != nil {
                    map["totalInputAmountUnit"] = self.totalInputAmountUnit!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("fileCount") {
                    self.fileCount = dict["fileCount"] as! Int64
                }
                if dict.keys.contains("fileSize") {
                    self.fileSize = dict["fileSize"] as! Double
                }
                if dict.keys.contains("fileSizeUnit") {
                    self.fileSizeUnit = dict["fileSizeUnit"] as! String
                }
                if dict.keys.contains("isPartitioned") {
                    self.isPartitioned = dict["isPartitioned"] as! Bool
                }
                if dict.keys.contains("lastAccessTime") {
                    self.lastAccessTime = dict["lastAccessTime"] as! Int64
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! String
                }
                if dict.keys.contains("projectName") {
                    self.projectName = dict["projectName"] as! String
                }
                if dict.keys.contains("rate") {
                    self.rate = dict["rate"] as! Double
                }
                if dict.keys.contains("schemaName") {
                    self.schemaName = dict["schemaName"] as! String
                }
                if dict.keys.contains("storageType") {
                    self.storageType = dict["storageType"] as! String
                }
                if dict.keys.contains("tableName") {
                    self.tableName = dict["tableName"] as! String
                }
                if dict.keys.contains("totalFrequency") {
                    self.totalFrequency = dict["totalFrequency"] as! Int64
                }
                if dict.keys.contains("totalInputAmount") {
                    self.totalInputAmount = dict["totalInputAmount"] as! Double
                }
                if dict.keys.contains("totalInputAmountUnit") {
                    self.totalInputAmountUnit = dict["totalInputAmountUnit"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var date: String?

        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var storagePartitionInfoList: [ListStoragePartitionsInfoResponseBody.Data.StoragePartitionInfoList]?

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
            if self.date != nil {
                map["date"] = self.date!
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.storagePartitionInfoList != nil {
                var tmp : [Any] = []
                for k in self.storagePartitionInfoList! {
                    tmp.append(k.toMap())
                }
                map["storagePartitionInfoList"] = tmp
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("date") {
                self.date = dict["date"] as! String
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("storagePartitionInfoList") {
                var tmp : [ListStoragePartitionsInfoResponseBody.Data.StoragePartitionInfoList] = []
                for v in dict["storagePartitionInfoList"] as! [Any] {
                    var model = ListStoragePartitionsInfoResponseBody.Data.StoragePartitionInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.storagePartitionInfoList = tmp
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
            }
        }
    }
    public var data: ListStoragePartitionsInfoResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListStoragePartitionsInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListStoragePartitionsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStoragePartitionsInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListStoragePartitionsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStorageTablesInfoRequest : Tea.TeaModel {
    public var ascOrder: Bool?

    public var date: String?

    public var orderColumn: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var recentDays: Int32?

    public var region: String?

    public var schema: String?

    public var tablePrefix: String?

    public var tenantId: String?

    public var types: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascOrder != nil {
            map["ascOrder"] = self.ascOrder!
        }
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.orderColumn != nil {
            map["orderColumn"] = self.orderColumn!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.recentDays != nil {
            map["recentDays"] = self.recentDays!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.schema != nil {
            map["schema"] = self.schema!
        }
        if self.tablePrefix != nil {
            map["tablePrefix"] = self.tablePrefix!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.types != nil {
            map["types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ascOrder") {
            self.ascOrder = dict["ascOrder"] as! Bool
        }
        if dict.keys.contains("date") {
            self.date = dict["date"] as! String
        }
        if dict.keys.contains("orderColumn") {
            self.orderColumn = dict["orderColumn"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("recentDays") {
            self.recentDays = dict["recentDays"] as! Int32
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("schema") {
            self.schema = dict["schema"] as! String
        }
        if dict.keys.contains("tablePrefix") {
            self.tablePrefix = dict["tablePrefix"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
        if dict.keys.contains("types") {
            self.types = dict["types"] as! [String]
        }
    }
}

public class ListStorageTablesInfoShrinkRequest : Tea.TeaModel {
    public var ascOrder: Bool?

    public var date: String?

    public var orderColumn: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var recentDays: Int32?

    public var region: String?

    public var schema: String?

    public var tablePrefix: String?

    public var tenantId: String?

    public var typesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascOrder != nil {
            map["ascOrder"] = self.ascOrder!
        }
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.orderColumn != nil {
            map["orderColumn"] = self.orderColumn!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.recentDays != nil {
            map["recentDays"] = self.recentDays!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.schema != nil {
            map["schema"] = self.schema!
        }
        if self.tablePrefix != nil {
            map["tablePrefix"] = self.tablePrefix!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.typesShrink != nil {
            map["types"] = self.typesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ascOrder") {
            self.ascOrder = dict["ascOrder"] as! Bool
        }
        if dict.keys.contains("date") {
            self.date = dict["date"] as! String
        }
        if dict.keys.contains("orderColumn") {
            self.orderColumn = dict["orderColumn"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("recentDays") {
            self.recentDays = dict["recentDays"] as! Int32
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("schema") {
            self.schema = dict["schema"] as! String
        }
        if dict.keys.contains("tablePrefix") {
            self.tablePrefix = dict["tablePrefix"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
        if dict.keys.contains("types") {
            self.typesShrink = dict["types"] as! String
        }
    }
}

public class ListStorageTablesInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StorageTableInfoList : Tea.TeaModel {
            public var date: String?

            public var isPartitioned: Bool?

            public var lastAccessTime: Int64?

            public var longTermStorage: Double?

            public var longTermStorageFileCount: Int64?

            public var longTermStorageUnit: String?

            public var lowFreqStorage: Double?

            public var lowFreqStorageFileCount: Int64?

            public var lowFreqStorageUnit: String?

            public var projectName: String?

            public var rate: Double?

            public var schemaName: String?

            public var standardStorage: Double?

            public var standardStorageFileCount: Int64?

            public var standardStorageUnit: String?

            public var storageType: String?

            public var tableName: String?

            public var totalFrequency: Int64?

            public var totalInputAmount: Double?

            public var totalInputAmountUnit: String?

            public var totalStorage: Double?

            public var totalStorageFileCount: Int64?

            public var totalStorageUnit: String?

            public override init() {
                super.init()
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
                if self.isPartitioned != nil {
                    map["isPartitioned"] = self.isPartitioned!
                }
                if self.lastAccessTime != nil {
                    map["lastAccessTime"] = self.lastAccessTime!
                }
                if self.longTermStorage != nil {
                    map["longTermStorage"] = self.longTermStorage!
                }
                if self.longTermStorageFileCount != nil {
                    map["longTermStorageFileCount"] = self.longTermStorageFileCount!
                }
                if self.longTermStorageUnit != nil {
                    map["longTermStorageUnit"] = self.longTermStorageUnit!
                }
                if self.lowFreqStorage != nil {
                    map["lowFreqStorage"] = self.lowFreqStorage!
                }
                if self.lowFreqStorageFileCount != nil {
                    map["lowFreqStorageFileCount"] = self.lowFreqStorageFileCount!
                }
                if self.lowFreqStorageUnit != nil {
                    map["lowFreqStorageUnit"] = self.lowFreqStorageUnit!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                if self.rate != nil {
                    map["rate"] = self.rate!
                }
                if self.schemaName != nil {
                    map["schemaName"] = self.schemaName!
                }
                if self.standardStorage != nil {
                    map["standardStorage"] = self.standardStorage!
                }
                if self.standardStorageFileCount != nil {
                    map["standardStorageFileCount"] = self.standardStorageFileCount!
                }
                if self.standardStorageUnit != nil {
                    map["standardStorageUnit"] = self.standardStorageUnit!
                }
                if self.storageType != nil {
                    map["storageType"] = self.storageType!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                if self.totalFrequency != nil {
                    map["totalFrequency"] = self.totalFrequency!
                }
                if self.totalInputAmount != nil {
                    map["totalInputAmount"] = self.totalInputAmount!
                }
                if self.totalInputAmountUnit != nil {
                    map["totalInputAmountUnit"] = self.totalInputAmountUnit!
                }
                if self.totalStorage != nil {
                    map["totalStorage"] = self.totalStorage!
                }
                if self.totalStorageFileCount != nil {
                    map["totalStorageFileCount"] = self.totalStorageFileCount!
                }
                if self.totalStorageUnit != nil {
                    map["totalStorageUnit"] = self.totalStorageUnit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("date") {
                    self.date = dict["date"] as! String
                }
                if dict.keys.contains("isPartitioned") {
                    self.isPartitioned = dict["isPartitioned"] as! Bool
                }
                if dict.keys.contains("lastAccessTime") {
                    self.lastAccessTime = dict["lastAccessTime"] as! Int64
                }
                if dict.keys.contains("longTermStorage") {
                    self.longTermStorage = dict["longTermStorage"] as! Double
                }
                if dict.keys.contains("longTermStorageFileCount") {
                    self.longTermStorageFileCount = dict["longTermStorageFileCount"] as! Int64
                }
                if dict.keys.contains("longTermStorageUnit") {
                    self.longTermStorageUnit = dict["longTermStorageUnit"] as! String
                }
                if dict.keys.contains("lowFreqStorage") {
                    self.lowFreqStorage = dict["lowFreqStorage"] as! Double
                }
                if dict.keys.contains("lowFreqStorageFileCount") {
                    self.lowFreqStorageFileCount = dict["lowFreqStorageFileCount"] as! Int64
                }
                if dict.keys.contains("lowFreqStorageUnit") {
                    self.lowFreqStorageUnit = dict["lowFreqStorageUnit"] as! String
                }
                if dict.keys.contains("projectName") {
                    self.projectName = dict["projectName"] as! String
                }
                if dict.keys.contains("rate") {
                    self.rate = dict["rate"] as! Double
                }
                if dict.keys.contains("schemaName") {
                    self.schemaName = dict["schemaName"] as! String
                }
                if dict.keys.contains("standardStorage") {
                    self.standardStorage = dict["standardStorage"] as! Double
                }
                if dict.keys.contains("standardStorageFileCount") {
                    self.standardStorageFileCount = dict["standardStorageFileCount"] as! Int64
                }
                if dict.keys.contains("standardStorageUnit") {
                    self.standardStorageUnit = dict["standardStorageUnit"] as! String
                }
                if dict.keys.contains("storageType") {
                    self.storageType = dict["storageType"] as! String
                }
                if dict.keys.contains("tableName") {
                    self.tableName = dict["tableName"] as! String
                }
                if dict.keys.contains("totalFrequency") {
                    self.totalFrequency = dict["totalFrequency"] as! Int64
                }
                if dict.keys.contains("totalInputAmount") {
                    self.totalInputAmount = dict["totalInputAmount"] as! Double
                }
                if dict.keys.contains("totalInputAmountUnit") {
                    self.totalInputAmountUnit = dict["totalInputAmountUnit"] as! String
                }
                if dict.keys.contains("totalStorage") {
                    self.totalStorage = dict["totalStorage"] as! Double
                }
                if dict.keys.contains("totalStorageFileCount") {
                    self.totalStorageFileCount = dict["totalStorageFileCount"] as! Int64
                }
                if dict.keys.contains("totalStorageUnit") {
                    self.totalStorageUnit = dict["totalStorageUnit"] as! String
                }
            }
        }
        public var date: String?

        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var storageTableInfoList: [ListStorageTablesInfoResponseBody.Data.StorageTableInfoList]?

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
            if self.date != nil {
                map["date"] = self.date!
            }
            if self.pageNumber != nil {
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.storageTableInfoList != nil {
                var tmp : [Any] = []
                for k in self.storageTableInfoList! {
                    tmp.append(k.toMap())
                }
                map["storageTableInfoList"] = tmp
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("date") {
                self.date = dict["date"] as! String
            }
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("storageTableInfoList") {
                var tmp : [ListStorageTablesInfoResponseBody.Data.StorageTableInfoList] = []
                for v in dict["storageTableInfoList"] as! [Any] {
                    var model = ListStorageTablesInfoResponseBody.Data.StorageTableInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.storageTableInfoList = tmp
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
            }
        }
    }
    public var data: ListStorageTablesInfoResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListStorageTablesInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListStorageTablesInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStorageTablesInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListStorageTablesInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTablesRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItem: Int32?

    public var prefix_: String?

    public var schemaName: String?

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
        if self.marker != nil {
            map["marker"] = self.marker!
        }
        if self.maxItem != nil {
            map["maxItem"] = self.maxItem!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("marker") {
            self.marker = dict["marker"] as! String
        }
        if dict.keys.contains("maxItem") {
            self.maxItem = dict["maxItem"] as! Int32
        }
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("schemaName") {
            self.schemaName = dict["schemaName"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListTablesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
            public var creationTime: Int64?

            public var displayName: String?

            public var name: String?

            public var owner: String?

            public var schema: String?

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
                if self.creationTime != nil {
                    map["creationTime"] = self.creationTime!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.owner != nil {
                    map["owner"] = self.owner!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("creationTime") {
                    self.creationTime = dict["creationTime"] as! Int64
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("owner") {
                    self.owner = dict["owner"] as! String
                }
                if dict.keys.contains("schema") {
                    self.schema = dict["schema"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var marker: String?

        public var maxItem: Int32?

        public var tables: [ListTablesResponseBody.Data.Tables]?

        public override init() {
            super.init()
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
                map["marker"] = self.marker!
            }
            if self.maxItem != nil {
                map["maxItem"] = self.maxItem!
            }
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["tables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("marker") {
                self.marker = dict["marker"] as! String
            }
            if dict.keys.contains("maxItem") {
                self.maxItem = dict["maxItem"] as! Int32
            }
            if dict.keys.contains("tables") {
                var tmp : [ListTablesResponseBody.Data.Tables] = []
                for v in dict["tables"] as! [Any] {
                    var model = ListTablesResponseBody.Data.Tables()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tables = tmp
            }
        }
    }
    public var data: ListTablesResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListTablesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTunnelQuotaTimerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TunnelQuotaParameter : Tea.TeaModel {
            public var elasticReservedSlotNum: Int64?

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
                if self.elasticReservedSlotNum != nil {
                    map["elasticReservedSlotNum"] = self.elasticReservedSlotNum!
                }
                if self.slotNum != nil {
                    map["slotNum"] = self.slotNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("elasticReservedSlotNum") {
                    self.elasticReservedSlotNum = dict["elasticReservedSlotNum"] as! Int64
                }
                if dict.keys.contains("slotNum") {
                    self.slotNum = dict["slotNum"] as! Int64
                }
            }
        }
        public var beginTime: String?

        public var endTime: String?

        public var timezone: String?

        public var tunnelQuotaParameter: ListTunnelQuotaTimerResponseBody.Data.TunnelQuotaParameter?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tunnelQuotaParameter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["beginTime"] = self.beginTime!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.timezone != nil {
                map["timezone"] = self.timezone!
            }
            if self.tunnelQuotaParameter != nil {
                map["tunnelQuotaParameter"] = self.tunnelQuotaParameter?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("beginTime") {
                self.beginTime = dict["beginTime"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("timezone") {
                self.timezone = dict["timezone"] as! String
            }
            if dict.keys.contains("tunnelQuotaParameter") {
                var model = ListTunnelQuotaTimerResponseBody.Data.TunnelQuotaParameter()
                model.fromMap(dict["tunnelQuotaParameter"] as! [String: Any])
                self.tunnelQuotaParameter = model
            }
        }
    }
    public var data: [ListTunnelQuotaTimerResponseBody.Data]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [ListTunnelQuotaTimerResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListTunnelQuotaTimerResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListTunnelQuotaTimerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTunnelQuotaTimerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTunnelQuotaTimerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Users : Tea.TeaModel {
            public var accountId: String?

            public var accountName: String?

            public var accountType: String?

            public var displayName: String?

            public var tenantId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["accountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["accountName"] = self.accountName!
                }
                if self.accountType != nil {
                    map["accountType"] = self.accountType!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accountId") {
                    self.accountId = dict["accountId"] as! String
                }
                if dict.keys.contains("accountName") {
                    self.accountName = dict["accountName"] as! String
                }
                if dict.keys.contains("accountType") {
                    self.accountType = dict["accountType"] as! String
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var users: [ListUsersResponseBody.Data.Users]?

        public override init() {
            super.init()
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
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int32
            }
            if dict.keys.contains("users") {
                var tmp : [ListUsersResponseBody.Data.Users] = []
                for v in dict["users"] as! [Any] {
                    var model = ListUsersResponseBody.Data.Users()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.users = tmp
            }
        }
    }
    public var data: ListUsersResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListUsersResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersByRoleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Users : Tea.TeaModel {
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var users: [ListUsersByRoleResponseBody.Data.Users]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("users") {
                var tmp : [ListUsersByRoleResponseBody.Data.Users] = []
                for v in dict["users"] as! [Any] {
                    var model = ListUsersByRoleResponseBody.Data.Users()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.users = tmp
            }
        }
    }
    public var data: ListUsersByRoleResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = ListUsersByRoleResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListUsersByRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersByRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersByRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryQuotaRequest : Tea.TeaModel {
    public var akProven: String?

    public var mock: Bool?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.akProven != nil {
            map["AkProven"] = self.akProven!
        }
        if self.mock != nil {
            map["mock"] = self.mock!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AkProven") {
            self.akProven = dict["AkProven"] as! String
        }
        if dict.keys.contains("mock") {
            self.mock = dict["mock"] as! Bool
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class QueryQuotaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BillingPolicy : Tea.TeaModel {
            public var billingMethod: String?

            public var instanceId: String?

            public var odpsSpecCode: String?

            public var orderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingMethod != nil {
                    map["billingMethod"] = self.billingMethod!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.odpsSpecCode != nil {
                    map["odpsSpecCode"] = self.odpsSpecCode!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("billingMethod") {
                    self.billingMethod = dict["billingMethod"] as! String
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("odpsSpecCode") {
                    self.odpsSpecCode = dict["odpsSpecCode"] as! String
                }
                if dict.keys.contains("orderId") {
                    self.orderId = dict["orderId"] as! String
                }
            }
        }
        public class SaleTag : Tea.TeaModel {
            public var resourceIds: [String]?

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
                if self.resourceIds != nil {
                    map["resourceIds"] = self.resourceIds!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resourceIds") {
                    self.resourceIds = dict["resourceIds"] as! [String]
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public class ScheduleInfo : Tea.TeaModel {
            public var currPlan: String?

            public var currTime: String?

            public var nextPlan: String?

            public var nextTime: String?

            public var oncePlan: String?

            public var onceTime: String?

            public var operatorName: String?

            public var timezone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currPlan != nil {
                    map["currPlan"] = self.currPlan!
                }
                if self.currTime != nil {
                    map["currTime"] = self.currTime!
                }
                if self.nextPlan != nil {
                    map["nextPlan"] = self.nextPlan!
                }
                if self.nextTime != nil {
                    map["nextTime"] = self.nextTime!
                }
                if self.oncePlan != nil {
                    map["oncePlan"] = self.oncePlan!
                }
                if self.onceTime != nil {
                    map["onceTime"] = self.onceTime!
                }
                if self.operatorName != nil {
                    map["operatorName"] = self.operatorName!
                }
                if self.timezone != nil {
                    map["timezone"] = self.timezone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("currPlan") {
                    self.currPlan = dict["currPlan"] as! String
                }
                if dict.keys.contains("currTime") {
                    self.currTime = dict["currTime"] as! String
                }
                if dict.keys.contains("nextPlan") {
                    self.nextPlan = dict["nextPlan"] as! String
                }
                if dict.keys.contains("nextTime") {
                    self.nextTime = dict["nextTime"] as! String
                }
                if dict.keys.contains("oncePlan") {
                    self.oncePlan = dict["oncePlan"] as! String
                }
                if dict.keys.contains("onceTime") {
                    self.onceTime = dict["onceTime"] as! String
                }
                if dict.keys.contains("operatorName") {
                    self.operatorName = dict["operatorName"] as! String
                }
                if dict.keys.contains("timezone") {
                    self.timezone = dict["timezone"] as! String
                }
            }
        }
        public class SubQuotaInfoList : Tea.TeaModel {
            public class BillingPolicy : Tea.TeaModel {
                public var billingMethod: String?

                public var instanceId: String?

                public var odpsSpecCode: String?

                public var orderId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.billingMethod != nil {
                        map["billingMethod"] = self.billingMethod!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.odpsSpecCode != nil {
                        map["odpsSpecCode"] = self.odpsSpecCode!
                    }
                    if self.orderId != nil {
                        map["orderId"] = self.orderId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("billingMethod") {
                        self.billingMethod = dict["billingMethod"] as! String
                    }
                    if dict.keys.contains("instanceId") {
                        self.instanceId = dict["instanceId"] as! String
                    }
                    if dict.keys.contains("odpsSpecCode") {
                        self.odpsSpecCode = dict["odpsSpecCode"] as! String
                    }
                    if dict.keys.contains("orderId") {
                        self.orderId = dict["orderId"] as! String
                    }
                }
            }
            public class SaleTag : Tea.TeaModel {
                public var resourceIds: [String]?

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
                    if self.resourceIds != nil {
                        map["resourceIds"] = self.resourceIds!
                    }
                    if self.resourceType != nil {
                        map["resourceType"] = self.resourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("resourceIds") {
                        self.resourceIds = dict["resourceIds"] as! [String]
                    }
                    if dict.keys.contains("resourceType") {
                        self.resourceType = dict["resourceType"] as! String
                    }
                }
            }
            public class ScheduleInfo : Tea.TeaModel {
                public var currPlan: String?

                public var currTime: String?

                public var nextPlan: String?

                public var nextTime: String?

                public var oncePlan: String?

                public var onceTime: String?

                public var operatorName: String?

                public var timezone: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.currPlan != nil {
                        map["currPlan"] = self.currPlan!
                    }
                    if self.currTime != nil {
                        map["currTime"] = self.currTime!
                    }
                    if self.nextPlan != nil {
                        map["nextPlan"] = self.nextPlan!
                    }
                    if self.nextTime != nil {
                        map["nextTime"] = self.nextTime!
                    }
                    if self.oncePlan != nil {
                        map["oncePlan"] = self.oncePlan!
                    }
                    if self.onceTime != nil {
                        map["onceTime"] = self.onceTime!
                    }
                    if self.operatorName != nil {
                        map["operatorName"] = self.operatorName!
                    }
                    if self.timezone != nil {
                        map["timezone"] = self.timezone!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("currPlan") {
                        self.currPlan = dict["currPlan"] as! String
                    }
                    if dict.keys.contains("currTime") {
                        self.currTime = dict["currTime"] as! String
                    }
                    if dict.keys.contains("nextPlan") {
                        self.nextPlan = dict["nextPlan"] as! String
                    }
                    if dict.keys.contains("nextTime") {
                        self.nextTime = dict["nextTime"] as! String
                    }
                    if dict.keys.contains("oncePlan") {
                        self.oncePlan = dict["oncePlan"] as! String
                    }
                    if dict.keys.contains("onceTime") {
                        self.onceTime = dict["onceTime"] as! String
                    }
                    if dict.keys.contains("operatorName") {
                        self.operatorName = dict["operatorName"] as! String
                    }
                    if dict.keys.contains("timezone") {
                        self.timezone = dict["timezone"] as! String
                    }
                }
            }
            public var billingPolicy: QueryQuotaResponseBody.Data.SubQuotaInfoList.BillingPolicy?

            public var cluster: String?

            public var createTime: Int64?

            public var creatorId: String?

            public var groupName: String?

            public var id: String?

            public var name: String?

            public var nickName: String?

            public var parameter: [String: Any]?

            public var parentId: String?

            public var regionId: String?

            public var saleTag: QueryQuotaResponseBody.Data.SubQuotaInfoList.SaleTag?

            public var scheduleInfo: QueryQuotaResponseBody.Data.SubQuotaInfoList.ScheduleInfo?

            public var status: String?

            public var tag: String?

            public var tenantId: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.billingPolicy?.validate()
                try self.saleTag?.validate()
                try self.scheduleInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingPolicy != nil {
                    map["billingPolicy"] = self.billingPolicy?.toMap()
                }
                if self.cluster != nil {
                    map["cluster"] = self.cluster!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorId != nil {
                    map["creatorId"] = self.creatorId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter!
                }
                if self.parentId != nil {
                    map["parentId"] = self.parentId!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.saleTag != nil {
                    map["saleTag"] = self.saleTag?.toMap()
                }
                if self.scheduleInfo != nil {
                    map["scheduleInfo"] = self.scheduleInfo?.toMap()
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("billingPolicy") {
                    var model = QueryQuotaResponseBody.Data.SubQuotaInfoList.BillingPolicy()
                    model.fromMap(dict["billingPolicy"] as! [String: Any])
                    self.billingPolicy = model
                }
                if dict.keys.contains("cluster") {
                    self.cluster = dict["cluster"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorId") {
                    self.creatorId = dict["creatorId"] as! String
                }
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    self.parameter = dict["parameter"] as! [String: Any]
                }
                if dict.keys.contains("parentId") {
                    self.parentId = dict["parentId"] as! String
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("saleTag") {
                    var model = QueryQuotaResponseBody.Data.SubQuotaInfoList.SaleTag()
                    model.fromMap(dict["saleTag"] as! [String: Any])
                    self.saleTag = model
                }
                if dict.keys.contains("scheduleInfo") {
                    var model = QueryQuotaResponseBody.Data.SubQuotaInfoList.ScheduleInfo()
                    model.fromMap(dict["scheduleInfo"] as! [String: Any])
                    self.scheduleInfo = model
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
                if dict.keys.contains("tenantId") {
                    self.tenantId = dict["tenantId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var billingPolicy: QueryQuotaResponseBody.Data.BillingPolicy?

        public var cluster: String?

        public var createTime: Int64?

        public var creatorId: String?

        public var groupName: String?

        public var id: String?

        public var name: String?

        public var nickName: String?

        public var parameter: [String: Any]?

        public var parentId: String?

        public var regionId: String?

        public var saleTag: QueryQuotaResponseBody.Data.SaleTag?

        public var scheduleInfo: QueryQuotaResponseBody.Data.ScheduleInfo?

        public var status: String?

        public var subQuotaInfoList: [QueryQuotaResponseBody.Data.SubQuotaInfoList]?

        public var tag: String?

        public var tenantId: String?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.billingPolicy?.validate()
            try self.saleTag?.validate()
            try self.scheduleInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingPolicy != nil {
                map["billingPolicy"] = self.billingPolicy?.toMap()
            }
            if self.cluster != nil {
                map["cluster"] = self.cluster!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.groupName != nil {
                map["groupName"] = self.groupName!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nickName != nil {
                map["nickName"] = self.nickName!
            }
            if self.parameter != nil {
                map["parameter"] = self.parameter!
            }
            if self.parentId != nil {
                map["parentId"] = self.parentId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.saleTag != nil {
                map["saleTag"] = self.saleTag?.toMap()
            }
            if self.scheduleInfo != nil {
                map["scheduleInfo"] = self.scheduleInfo?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subQuotaInfoList != nil {
                var tmp : [Any] = []
                for k in self.subQuotaInfoList! {
                    tmp.append(k.toMap())
                }
                map["subQuotaInfoList"] = tmp
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("billingPolicy") {
                var model = QueryQuotaResponseBody.Data.BillingPolicy()
                model.fromMap(dict["billingPolicy"] as! [String: Any])
                self.billingPolicy = model
            }
            if dict.keys.contains("cluster") {
                self.cluster = dict["cluster"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorId") {
                self.creatorId = dict["creatorId"] as! String
            }
            if dict.keys.contains("groupName") {
                self.groupName = dict["groupName"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nickName") {
                self.nickName = dict["nickName"] as! String
            }
            if dict.keys.contains("parameter") {
                self.parameter = dict["parameter"] as! [String: Any]
            }
            if dict.keys.contains("parentId") {
                self.parentId = dict["parentId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("saleTag") {
                var model = QueryQuotaResponseBody.Data.SaleTag()
                model.fromMap(dict["saleTag"] as! [String: Any])
                self.saleTag = model
            }
            if dict.keys.contains("scheduleInfo") {
                var model = QueryQuotaResponseBody.Data.ScheduleInfo()
                model.fromMap(dict["scheduleInfo"] as! [String: Any])
                self.scheduleInfo = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("subQuotaInfoList") {
                var tmp : [QueryQuotaResponseBody.Data.SubQuotaInfoList] = []
                for v in dict["subQuotaInfoList"] as! [Any] {
                    var model = QueryQuotaResponseBody.Data.SubQuotaInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subQuotaInfoList = tmp
            }
            if dict.keys.contains("tag") {
                self.tag = dict["tag"] as! String
            }
            if dict.keys.contains("tenantId") {
                self.tenantId = dict["tenantId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var data: QueryQuotaResponseBody.Data?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = QueryQuotaResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class QueryQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RetryMmsJobResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class RetryMmsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryMmsJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RetryMmsJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartMmsJobResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class StartMmsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartMmsJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartMmsJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopMmsJobResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class StopMmsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopMmsJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopMmsJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateComputeQuotaPlanRequest : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public class Parameter : Tea.TeaModel {
            public var elasticReservedCU: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.elasticReservedCU != nil {
                    map["elasticReservedCU"] = self.elasticReservedCU!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("elasticReservedCU") {
                    self.elasticReservedCU = dict["elasticReservedCU"] as! Int64
                }
            }
        }
        public class SubQuotaInfoList : Tea.TeaModel {
            public class Parameter : Tea.TeaModel {
                public var elasticReservedCU: Int64?

                public var maxCU: Int64?

                public var minCU: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.elasticReservedCU != nil {
                        map["elasticReservedCU"] = self.elasticReservedCU!
                    }
                    if self.maxCU != nil {
                        map["maxCU"] = self.maxCU!
                    }
                    if self.minCU != nil {
                        map["minCU"] = self.minCU!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("elasticReservedCU") {
                        self.elasticReservedCU = dict["elasticReservedCU"] as! Int64
                    }
                    if dict.keys.contains("maxCU") {
                        self.maxCU = dict["maxCU"] as! Int64
                    }
                    if dict.keys.contains("minCU") {
                        self.minCU = dict["minCU"] as! Int64
                    }
                }
            }
            public var nickName: String?

            public var parameter: UpdateComputeQuotaPlanRequest.Quota.SubQuotaInfoList.Parameter?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.parameter?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.parameter != nil {
                    map["parameter"] = self.parameter?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("parameter") {
                    var model = UpdateComputeQuotaPlanRequest.Quota.SubQuotaInfoList.Parameter()
                    model.fromMap(dict["parameter"] as! [String: Any])
                    self.parameter = model
                }
            }
        }
        public var parameter: UpdateComputeQuotaPlanRequest.Quota.Parameter?

        public var subQuotaInfoList: [UpdateComputeQuotaPlanRequest.Quota.SubQuotaInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.parameter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameter != nil {
                map["parameter"] = self.parameter?.toMap()
            }
            if self.subQuotaInfoList != nil {
                var tmp : [Any] = []
                for k in self.subQuotaInfoList! {
                    tmp.append(k.toMap())
                }
                map["subQuotaInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("parameter") {
                var model = UpdateComputeQuotaPlanRequest.Quota.Parameter()
                model.fromMap(dict["parameter"] as! [String: Any])
                self.parameter = model
            }
            if dict.keys.contains("subQuotaInfoList") {
                var tmp : [UpdateComputeQuotaPlanRequest.Quota.SubQuotaInfoList] = []
                for v in dict["subQuotaInfoList"] as! [Any] {
                    var model = UpdateComputeQuotaPlanRequest.Quota.SubQuotaInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subQuotaInfoList = tmp
            }
        }
    }
    public var name: String?

    public var quota: UpdateComputeQuotaPlanRequest.Quota?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("quota") {
            var model = UpdateComputeQuotaPlanRequest.Quota()
            model.fromMap(dict["quota"] as! [String: Any])
            self.quota = model
        }
    }
}

public class UpdateComputeQuotaPlanResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateComputeQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateComputeQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateComputeQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateComputeQuotaScheduleRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Condition : Tea.TeaModel {
            public var at: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.at != nil {
                    map["at"] = self.at!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("at") {
                    self.at = dict["at"] as! String
                }
            }
        }
        public var condition: UpdateComputeQuotaScheduleRequest.Body.Condition?

        public var plan: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.condition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.condition != nil {
                map["condition"] = self.condition?.toMap()
            }
            if self.plan != nil {
                map["plan"] = self.plan!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("condition") {
                var model = UpdateComputeQuotaScheduleRequest.Body.Condition()
                model.fromMap(dict["condition"] as! [String: Any])
                self.condition = model
            }
            if dict.keys.contains("plan") {
                self.plan = dict["plan"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var body: [UpdateComputeQuotaScheduleRequest.Body]?

    public var scheduleTimezone: String?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        if self.scheduleTimezone != nil {
            map["scheduleTimezone"] = self.scheduleTimezone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var tmp : [UpdateComputeQuotaScheduleRequest.Body] = []
            for v in dict["body"] as! [Any] {
                var model = UpdateComputeQuotaScheduleRequest.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
        if dict.keys.contains("scheduleTimezone") {
            self.scheduleTimezone = dict["scheduleTimezone"] as! String
        }
    }
}

public class UpdateComputeQuotaScheduleResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateComputeQuotaScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateComputeQuotaScheduleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateComputeQuotaScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateComputeSubQuotaRequest : Tea.TeaModel {
    public class SubQuotaInfoList : Tea.TeaModel {
        public class Parameter : Tea.TeaModel {
            public var enablePriority: Bool?

            public var forceReservedMin: Bool?

            public var maxCU: Int64?

            public var minCU: Int64?

            public var schedulerType: String?

            public var singleJobCULimit: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enablePriority != nil {
                    map["enablePriority"] = self.enablePriority!
                }
                if self.forceReservedMin != nil {
                    map["forceReservedMin"] = self.forceReservedMin!
                }
                if self.maxCU != nil {
                    map["maxCU"] = self.maxCU!
                }
                if self.minCU != nil {
                    map["minCU"] = self.minCU!
                }
                if self.schedulerType != nil {
                    map["schedulerType"] = self.schedulerType!
                }
                if self.singleJobCULimit != nil {
                    map["singleJobCULimit"] = self.singleJobCULimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enablePriority") {
                    self.enablePriority = dict["enablePriority"] as! Bool
                }
                if dict.keys.contains("forceReservedMin") {
                    self.forceReservedMin = dict["forceReservedMin"] as! Bool
                }
                if dict.keys.contains("maxCU") {
                    self.maxCU = dict["maxCU"] as! Int64
                }
                if dict.keys.contains("minCU") {
                    self.minCU = dict["minCU"] as! Int64
                }
                if dict.keys.contains("schedulerType") {
                    self.schedulerType = dict["schedulerType"] as! String
                }
                if dict.keys.contains("singleJobCULimit") {
                    self.singleJobCULimit = dict["singleJobCULimit"] as! Int64
                }
            }
        }
        public var nickName: String?

        public var parameter: UpdateComputeSubQuotaRequest.SubQuotaInfoList.Parameter?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.parameter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nickName != nil {
                map["nickName"] = self.nickName!
            }
            if self.parameter != nil {
                map["parameter"] = self.parameter?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("nickName") {
                self.nickName = dict["nickName"] as! String
            }
            if dict.keys.contains("parameter") {
                var model = UpdateComputeSubQuotaRequest.SubQuotaInfoList.Parameter()
                model.fromMap(dict["parameter"] as! [String: Any])
                self.parameter = model
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var subQuotaInfoList: [UpdateComputeSubQuotaRequest.SubQuotaInfoList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subQuotaInfoList != nil {
            var tmp : [Any] = []
            for k in self.subQuotaInfoList! {
                tmp.append(k.toMap())
            }
            map["subQuotaInfoList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("subQuotaInfoList") {
            var tmp : [UpdateComputeSubQuotaRequest.SubQuotaInfoList] = []
            for v in dict["subQuotaInfoList"] as! [Any] {
                var model = UpdateComputeSubQuotaRequest.SubQuotaInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subQuotaInfoList = tmp
        }
    }
}

public class UpdateComputeSubQuotaResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateComputeSubQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateComputeSubQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateComputeSubQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMmsDataSourceRequest : Tea.TeaModel {
    public var action: String?

    public var config: [String: Any]?

    public var name: String?

    public var test: Bool?

    public override init() {
        super.init()
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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.test != nil {
            map["test"] = self.test!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! [String: Any]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("test") {
            self.test = dict["test"] as! Bool
        }
    }
}

public class UpdateMmsDataSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var asyncTaskId: Int64?

        public var sourceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncTaskId != nil {
                map["asyncTaskId"] = self.asyncTaskId!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("asyncTaskId") {
                self.asyncTaskId = dict["asyncTaskId"] as! Int64
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
        }
    }
    public var data: UpdateMmsDataSourceResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = UpdateMmsDataSourceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateMmsDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMmsDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateMmsDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePackageRequest : Tea.TeaModel {
    public var body: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
    }
}

public class UpdatePackageResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdatePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectBasicMetaRequest : Tea.TeaModel {
    public class Properties : Tea.TeaModel {
        public class Encryption : Tea.TeaModel {
            public var algorithm: String?

            public var enable: Bool?

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
                if self.algorithm != nil {
                    map["algorithm"] = self.algorithm!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.key != nil {
                    map["key"] = self.key!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("algorithm") {
                    self.algorithm = dict["algorithm"] as! String
                }
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
            }
        }
        public class TableLifecycle : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var allowFullScan: Bool?

        public var enableDecimal2: Bool?

        public var enableTunnelQuotaRoute: Bool?

        public var encryption: UpdateProjectBasicMetaRequest.Properties.Encryption?

        public var retentionDays: Int64?

        public var sqlMeteringMax: String?

        public var tableLifecycle: UpdateProjectBasicMetaRequest.Properties.TableLifecycle?

        public var timezone: String?

        public var tunnelQuota: String?

        public var typeSystem: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.encryption?.validate()
            try self.tableLifecycle?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowFullScan != nil {
                map["allowFullScan"] = self.allowFullScan!
            }
            if self.enableDecimal2 != nil {
                map["enableDecimal2"] = self.enableDecimal2!
            }
            if self.enableTunnelQuotaRoute != nil {
                map["enableTunnelQuotaRoute"] = self.enableTunnelQuotaRoute!
            }
            if self.encryption != nil {
                map["encryption"] = self.encryption?.toMap()
            }
            if self.retentionDays != nil {
                map["retentionDays"] = self.retentionDays!
            }
            if self.sqlMeteringMax != nil {
                map["sqlMeteringMax"] = self.sqlMeteringMax!
            }
            if self.tableLifecycle != nil {
                map["tableLifecycle"] = self.tableLifecycle?.toMap()
            }
            if self.timezone != nil {
                map["timezone"] = self.timezone!
            }
            if self.tunnelQuota != nil {
                map["tunnelQuota"] = self.tunnelQuota!
            }
            if self.typeSystem != nil {
                map["typeSystem"] = self.typeSystem!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("allowFullScan") {
                self.allowFullScan = dict["allowFullScan"] as! Bool
            }
            if dict.keys.contains("enableDecimal2") {
                self.enableDecimal2 = dict["enableDecimal2"] as! Bool
            }
            if dict.keys.contains("enableTunnelQuotaRoute") {
                self.enableTunnelQuotaRoute = dict["enableTunnelQuotaRoute"] as! Bool
            }
            if dict.keys.contains("encryption") {
                var model = UpdateProjectBasicMetaRequest.Properties.Encryption()
                model.fromMap(dict["encryption"] as! [String: Any])
                self.encryption = model
            }
            if dict.keys.contains("retentionDays") {
                self.retentionDays = dict["retentionDays"] as! Int64
            }
            if dict.keys.contains("sqlMeteringMax") {
                self.sqlMeteringMax = dict["sqlMeteringMax"] as! String
            }
            if dict.keys.contains("tableLifecycle") {
                var model = UpdateProjectBasicMetaRequest.Properties.TableLifecycle()
                model.fromMap(dict["tableLifecycle"] as! [String: Any])
                self.tableLifecycle = model
            }
            if dict.keys.contains("timezone") {
                self.timezone = dict["timezone"] as! String
            }
            if dict.keys.contains("tunnelQuota") {
                self.tunnelQuota = dict["tunnelQuota"] as! String
            }
            if dict.keys.contains("typeSystem") {
                self.typeSystem = dict["typeSystem"] as! String
            }
        }
    }
    public var comment: String?

    public var properties: UpdateProjectBasicMetaRequest.Properties?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.properties?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.properties != nil {
            map["properties"] = self.properties?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
        if dict.keys.contains("properties") {
            var model = UpdateProjectBasicMetaRequest.Properties()
            model.fromMap(dict["properties"] as! [String: Any])
            self.properties = model
        }
    }
}

public class UpdateProjectBasicMetaResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateProjectBasicMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectBasicMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateProjectBasicMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectDefaultQuotaRequest : Tea.TeaModel {
    public var quota: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quota != nil {
            map["quota"] = self.quota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("quota") {
            self.quota = dict["quota"] as! String
        }
    }
}

public class UpdateProjectDefaultQuotaResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateProjectDefaultQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectDefaultQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateProjectDefaultQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectIpWhiteListRequest : Tea.TeaModel {
    public var body: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
    }
}

public class UpdateProjectIpWhiteListResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateProjectIpWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectIpWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateProjectIpWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateQuotaPlanRequest : Tea.TeaModel {
    public var body: String?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class UpdateQuotaPlanResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateQuotaPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQuotaPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateQuotaPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateQuotaScheduleRequest : Tea.TeaModel {
    public var body: String?

    public var region: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("tenantId") {
            self.tenantId = dict["tenantId"] as! String
        }
    }
}

public class UpdateQuotaScheduleResponseBody : Tea.TeaModel {
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
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateQuotaScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQuotaScheduleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateQuotaScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTunnelQuotaTimerRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class TunnelQuotaParameter : Tea.TeaModel {
            public var elasticReservedSlotNum: Int64?

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
                if self.elasticReservedSlotNum != nil {
                    map["elasticReservedSlotNum"] = self.elasticReservedSlotNum!
                }
                if self.slotNum != nil {
                    map["slotNum"] = self.slotNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("elasticReservedSlotNum") {
                    self.elasticReservedSlotNum = dict["elasticReservedSlotNum"] as! Int64
                }
                if dict.keys.contains("slotNum") {
                    self.slotNum = dict["slotNum"] as! Int64
                }
            }
        }
        public var beginTime: String?

        public var endTime: String?

        public var tunnelQuotaParameter: UpdateTunnelQuotaTimerRequest.Body.TunnelQuotaParameter?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tunnelQuotaParameter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["beginTime"] = self.beginTime!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.tunnelQuotaParameter != nil {
                map["tunnelQuotaParameter"] = self.tunnelQuotaParameter?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("beginTime") {
                self.beginTime = dict["beginTime"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("tunnelQuotaParameter") {
                var model = UpdateTunnelQuotaTimerRequest.Body.TunnelQuotaParameter()
                model.fromMap(dict["tunnelQuotaParameter"] as! [String: Any])
                self.tunnelQuotaParameter = model
            }
        }
    }
    public var body: [UpdateTunnelQuotaTimerRequest.Body]?

    public var timezone: String?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        if self.timezone != nil {
            map["timezone"] = self.timezone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var tmp : [UpdateTunnelQuotaTimerRequest.Body] = []
            for v in dict["body"] as! [Any] {
                var model = UpdateTunnelQuotaTimerRequest.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
        if dict.keys.contains("timezone") {
            self.timezone = dict["timezone"] as! String
        }
    }
}

public class UpdateTunnelQuotaTimerResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpCode: Int32?

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
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateTunnelQuotaTimerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTunnelQuotaTimerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTunnelQuotaTimerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
