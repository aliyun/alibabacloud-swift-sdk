import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ErrorResponse : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class VariablesValue : Tea.TeaModel {
    public class FuncValue : Tea.TeaModel {
        public var funcClassName: String?

        public var template: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.funcClassName != nil {
                map["funcClassName"] = self.funcClassName!
            }
            if self.template != nil {
                map["template"] = self.template!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("funcClassName") && dict["funcClassName"] != nil {
                self.funcClassName = dict["funcClassName"] as! String
            }
            if dict.keys.contains("template") && dict["template"] != nil {
                self.template = dict["template"] as! String
            }
        }
    }
    public var disableModify: Bool?

    public var isModify: Bool?

    public var value: String?

    public var description_: String?

    public var templateValue: String?

    public var type: String?

    public var funcValue: VariablesValue.FuncValue?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.funcValue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disableModify != nil {
            map["disableModify"] = self.disableModify!
        }
        if self.isModify != nil {
            map["isModify"] = self.isModify!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.templateValue != nil {
            map["templateValue"] = self.templateValue!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.funcValue != nil {
            map["funcValue"] = self.funcValue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("disableModify") && dict["disableModify"] != nil {
            self.disableModify = dict["disableModify"] as! Bool
        }
        if dict.keys.contains("isModify") && dict["isModify"] != nil {
            self.isModify = dict["isModify"] as! Bool
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("templateValue") && dict["templateValue"] != nil {
            self.templateValue = dict["templateValue"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("funcValue") && dict["funcValue"] != nil {
            var model = VariablesValue.FuncValue()
            model.fromMap(dict["funcValue"] as! [String: Any])
            self.funcValue = model
        }
    }
}

public class BuildIndexRequest : Tea.TeaModel {
    public var buildMode: String?

    public var dataSourceName: String?

    public var dataSourceType: String?

    public var dataTimeSec: Int32?

    public var domain: String?

    public var generation: Int64?

    public var partition: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildMode != nil {
            map["buildMode"] = self.buildMode!
        }
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.dataSourceType != nil {
            map["dataSourceType"] = self.dataSourceType!
        }
        if self.dataTimeSec != nil {
            map["dataTimeSec"] = self.dataTimeSec!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildMode") && dict["buildMode"] != nil {
            self.buildMode = dict["buildMode"] as! String
        }
        if dict.keys.contains("dataSourceName") && dict["dataSourceName"] != nil {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("dataSourceType") && dict["dataSourceType"] != nil {
            self.dataSourceType = dict["dataSourceType"] as! String
        }
        if dict.keys.contains("dataTimeSec") && dict["dataTimeSec"] != nil {
            self.dataTimeSec = dict["dataTimeSec"] as! Int32
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("generation") && dict["generation"] != nil {
            self.generation = dict["generation"] as! Int64
        }
        if dict.keys.contains("partition") && dict["partition"] != nil {
            self.partition = dict["partition"] as! String
        }
    }
}

public class BuildIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class BuildIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BuildIndexResponseBody?

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
            var model = BuildIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public class DataNode : Tea.TeaModel {
        public var number: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["number"] = self.number!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("number") && dict["number"] != nil {
                self.number = dict["number"] as! Int32
            }
        }
    }
    public class QueryNode : Tea.TeaModel {
        public var number: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["number"] = self.number!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("number") && dict["number"] != nil {
                self.number = dict["number"] as! Int32
            }
        }
    }
    public var autoLoad: Bool?

    public var dataNode: CreateClusterRequest.DataNode?

    public var description_: String?

    public var name: String?

    public var queryNode: CreateClusterRequest.QueryNode?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataNode?.validate()
        try self.queryNode?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoLoad != nil {
            map["autoLoad"] = self.autoLoad!
        }
        if self.dataNode != nil {
            map["dataNode"] = self.dataNode?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.queryNode != nil {
            map["queryNode"] = self.queryNode?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoLoad") && dict["autoLoad"] != nil {
            self.autoLoad = dict["autoLoad"] as! Bool
        }
        if dict.keys.contains("dataNode") && dict["dataNode"] != nil {
            var model = CreateClusterRequest.DataNode()
            model.fromMap(dict["dataNode"] as! [String: Any])
            self.dataNode = model
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("queryNode") && dict["queryNode"] != nil {
            var model = CreateClusterRequest.QueryNode()
            model.fromMap(dict["queryNode"] as! [String: Any])
            self.queryNode = model
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterResponseBody?

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
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDataSourceRequest : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public var accessKey: String?

        public var accessSecret: String?

        public var bucket: String?

        public var endpoint: String?

        public var namespace: String?

        public var ossPath: String?

        public var partition: String?

        public var path: String?

        public var project: String?

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
            if self.accessKey != nil {
                map["accessKey"] = self.accessKey!
            }
            if self.accessSecret != nil {
                map["accessSecret"] = self.accessSecret!
            }
            if self.bucket != nil {
                map["bucket"] = self.bucket!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.ossPath != nil {
                map["ossPath"] = self.ossPath!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            if self.table != nil {
                map["table"] = self.table!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessKey") && dict["accessKey"] != nil {
                self.accessKey = dict["accessKey"] as! String
            }
            if dict.keys.contains("accessSecret") && dict["accessSecret"] != nil {
                self.accessSecret = dict["accessSecret"] as! String
            }
            if dict.keys.contains("bucket") && dict["bucket"] != nil {
                self.bucket = dict["bucket"] as! String
            }
            if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("namespace") && dict["namespace"] != nil {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("ossPath") && dict["ossPath"] != nil {
                self.ossPath = dict["ossPath"] as! String
            }
            if dict.keys.contains("partition") && dict["partition"] != nil {
                self.partition = dict["partition"] as! String
            }
            if dict.keys.contains("path") && dict["path"] != nil {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("project") && dict["project"] != nil {
                self.project = dict["project"] as! String
            }
            if dict.keys.contains("table") && dict["table"] != nil {
                self.table = dict["table"] as! String
            }
        }
    }
    public class SaroConfig : Tea.TeaModel {
        public var namespace: String?

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
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.tableName != nil {
                map["tableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("namespace") && dict["namespace"] != nil {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("tableName") && dict["tableName"] != nil {
                self.tableName = dict["tableName"] as! String
            }
        }
    }
    public var autoBuildIndex: Bool?

    public var config: CreateDataSourceRequest.Config?

    public var domain: String?

    public var name: String?

    public var saroConfig: CreateDataSourceRequest.SaroConfig?

    public var type: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
        try self.saroConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoBuildIndex != nil {
            map["autoBuildIndex"] = self.autoBuildIndex!
        }
        if self.config != nil {
            map["config"] = self.config?.toMap()
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.saroConfig != nil {
            map["saroConfig"] = self.saroConfig?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoBuildIndex") && dict["autoBuildIndex"] != nil {
            self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
        }
        if dict.keys.contains("config") && dict["config"] != nil {
            var model = CreateDataSourceRequest.Config()
            model.fromMap(dict["config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("saroConfig") && dict["saroConfig"] != nil {
            var model = CreateDataSourceRequest.SaroConfig()
            model.fromMap(dict["saroConfig"] as! [String: Any])
            self.saroConfig = model
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class CreateDataSourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSourceResponseBody?

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
            var model = CreateDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIndexRequest : Tea.TeaModel {
    public class DataSourceInfo : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var accessKey: String?

            public var accessSecret: String?

            public var endpoint: String?

            public var partition: String?

            public var project: String?

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
                if self.accessKey != nil {
                    map["accessKey"] = self.accessKey!
                }
                if self.accessSecret != nil {
                    map["accessSecret"] = self.accessSecret!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.table != nil {
                    map["table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKey") && dict["accessKey"] != nil {
                    self.accessKey = dict["accessKey"] as! String
                }
                if dict.keys.contains("accessSecret") && dict["accessSecret"] != nil {
                    self.accessSecret = dict["accessSecret"] as! String
                }
                if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("partition") && dict["partition"] != nil {
                    self.partition = dict["partition"] as! String
                }
                if dict.keys.contains("project") && dict["project"] != nil {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("table") && dict["table"] != nil {
                    self.table = dict["table"] as! String
                }
            }
        }
        public var autoBuildIndex: Bool?

        public var config: CreateIndexRequest.DataSourceInfo.Config?

        public var processPartitionCount: Int32?

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
            if self.autoBuildIndex != nil {
                map["autoBuildIndex"] = self.autoBuildIndex!
            }
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.processPartitionCount != nil {
                map["processPartitionCount"] = self.processPartitionCount!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoBuildIndex") && dict["autoBuildIndex"] != nil {
                self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
            }
            if dict.keys.contains("config") && dict["config"] != nil {
                var model = CreateIndexRequest.DataSourceInfo.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("processPartitionCount") && dict["processPartitionCount"] != nil {
                self.processPartitionCount = dict["processPartitionCount"] as! Int32
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public var content: String?

    public var dataSource: String?

    public var dataSourceInfo: CreateIndexRequest.DataSourceInfo?

    public var domain: String?

    public var extend: [String: Any]?

    public var name: String?

    public var partition: Int32?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSourceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.dataSource != nil {
            map["dataSource"] = self.dataSource!
        }
        if self.dataSourceInfo != nil {
            map["dataSourceInfo"] = self.dataSourceInfo?.toMap()
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.extend != nil {
            map["extend"] = self.extend!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") && dict["content"] != nil {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("dataSource") && dict["dataSource"] != nil {
            self.dataSource = dict["dataSource"] as! String
        }
        if dict.keys.contains("dataSourceInfo") && dict["dataSourceInfo"] != nil {
            var model = CreateIndexRequest.DataSourceInfo()
            model.fromMap(dict["dataSourceInfo"] as! [String: Any])
            self.dataSourceInfo = model
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("extend") && dict["extend"] != nil {
            self.extend = dict["extend"] as! [String: Any]
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("partition") && dict["partition"] != nil {
            self.partition = dict["partition"] as! Int32
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class CreateIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIndexResponseBody?

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
            var model = CreateIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") && dict["code"] != nil {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public class Order : Tea.TeaModel {
        public var autoRenew: Bool?

        public var duration: Int64?

        public var pricingCycle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["autoRenew"] = self.autoRenew!
            }
            if self.duration != nil {
                map["duration"] = self.duration!
            }
            if self.pricingCycle != nil {
                map["pricingCycle"] = self.pricingCycle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoRenew") && dict["autoRenew"] != nil {
                self.autoRenew = dict["autoRenew"] as! Bool
            }
            if dict.keys.contains("duration") && dict["duration"] != nil {
                self.duration = dict["duration"] as! Int64
            }
            if dict.keys.contains("pricingCycle") && dict["pricingCycle"] != nil {
                self.pricingCycle = dict["pricingCycle"] as! String
            }
        }
    }
    public var chargeType: String?

    public var components: [CreateInstanceRequest.Components]?

    public var order: CreateInstanceRequest.Order?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.order?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["components"] = tmp
        }
        if self.order != nil {
            map["order"] = self.order?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
            self.chargeType = dict["chargeType"] as! String
        }
        if dict.keys.contains("components") && dict["components"] != nil {
            var tmp : [CreateInstanceRequest.Components] = []
            for v in dict["components"] as! [Any] {
                var model = CreateInstanceRequest.Components()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.components = tmp
        }
        if dict.keys.contains("order") && dict["order"] != nil {
            var model = CreateInstanceRequest.Order()
            model.fromMap(dict["order"] as! [String: Any])
            self.order = model
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = CreateInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

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
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAdvanceConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteAdvanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAdvanceConfigResponseBody?

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
            var model = DeleteAdvanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataSourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSourceResponseBody?

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
            var model = DeleteDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIndexRequest : Tea.TeaModel {
    public var dataSource: String?

    public var deleteDataSource: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSource != nil {
            map["dataSource"] = self.dataSource!
        }
        if self.deleteDataSource != nil {
            map["deleteDataSource"] = self.deleteDataSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSource") && dict["dataSource"] != nil {
            self.dataSource = dict["dataSource"] as! String
        }
        if dict.keys.contains("deleteDataSource") && dict["deleteDataSource"] != nil {
            self.deleteDataSource = dict["deleteDataSource"] as! Bool
        }
    }
}

public class DeleteIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndexResponseBody?

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
            var model = DeleteIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIndexVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteIndexVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndexVersionResponseBody?

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
            var model = DeleteIndexVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

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
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ForceSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ForceSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ForceSwitchResponseBody?

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
            var model = ForceSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAdvanceConfigRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class GetAdvanceConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Files : Tea.TeaModel {
            public var fullPathName: String?

            public var isDir: Bool?

            public var isTemplate: Bool?

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
                if self.fullPathName != nil {
                    map["fullPathName"] = self.fullPathName!
                }
                if self.isDir != nil {
                    map["isDir"] = self.isDir!
                }
                if self.isTemplate != nil {
                    map["isTemplate"] = self.isTemplate!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("fullPathName") && dict["fullPathName"] != nil {
                    self.fullPathName = dict["fullPathName"] as! String
                }
                if dict.keys.contains("isDir") && dict["isDir"] != nil {
                    self.isDir = dict["isDir"] as! Bool
                }
                if dict.keys.contains("isTemplate") && dict["isTemplate"] != nil {
                    self.isTemplate = dict["isTemplate"] as! Bool
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var content: String?

        public var contentType: String?

        public var desc: String?

        public var files: [GetAdvanceConfigResponseBody.Result.Files]?

        public var name: String?

        public var status: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.desc != nil {
                map["desc"] = self.desc!
            }
            if self.files != nil {
                var tmp : [Any] = []
                for k in self.files! {
                    tmp.append(k.toMap())
                }
                map["files"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("contentType") && dict["contentType"] != nil {
                self.contentType = dict["contentType"] as! String
            }
            if dict.keys.contains("desc") && dict["desc"] != nil {
                self.desc = dict["desc"] as! String
            }
            if dict.keys.contains("files") && dict["files"] != nil {
                var tmp : [GetAdvanceConfigResponseBody.Result.Files] = []
                for v in dict["files"] as! [Any] {
                    var model = GetAdvanceConfigResponseBody.Result.Files()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.files = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: GetAdvanceConfigResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetAdvanceConfigResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetAdvanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdvanceConfigResponseBody?

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
            var model = GetAdvanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAdvanceConfigFileRequest : Tea.TeaModel {
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
            map["fileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") && dict["fileName"] != nil {
            self.fileName = dict["fileName"] as! String
        }
    }
}

public class GetAdvanceConfigFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetAdvanceConfigFileResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetAdvanceConfigFileResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetAdvanceConfigFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdvanceConfigFileResponseBody?

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
            var model = GetAdvanceConfigFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataNode : Tea.TeaModel {
            public var name: String?

            public var number: Int32?

            public var partition: Int32?

            public override init() {
                super.init()
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
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") && dict["number"] != nil {
                    self.number = dict["number"] as! Int32
                }
                if dict.keys.contains("partition") && dict["partition"] != nil {
                    self.partition = dict["partition"] as! Int32
                }
            }
        }
        public class QueryNode : Tea.TeaModel {
            public var name: String?

            public var number: Int32?

            public var partition: Int32?

            public override init() {
                super.init()
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
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") && dict["number"] != nil {
                    self.number = dict["number"] as! Int32
                }
                if dict.keys.contains("partition") && dict["partition"] != nil {
                    self.partition = dict["partition"] as! Int32
                }
            }
        }
        public var configUpdateTime: String?

        public var currentAdvanceConfigVersion: String?

        public var currentOnlineConfigVersion: String?

        public var dataNode: GetClusterResponseBody.Result.DataNode?

        public var description_: String?

        public var latestAdvanceConfigVersion: String?

        public var latestOnlineConfigVersion: String?

        public var name: String?

        public var queryNode: GetClusterResponseBody.Result.QueryNode?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataNode?.validate()
            try self.queryNode?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configUpdateTime != nil {
                map["configUpdateTime"] = self.configUpdateTime!
            }
            if self.currentAdvanceConfigVersion != nil {
                map["currentAdvanceConfigVersion"] = self.currentAdvanceConfigVersion!
            }
            if self.currentOnlineConfigVersion != nil {
                map["currentOnlineConfigVersion"] = self.currentOnlineConfigVersion!
            }
            if self.dataNode != nil {
                map["dataNode"] = self.dataNode?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.latestAdvanceConfigVersion != nil {
                map["latestAdvanceConfigVersion"] = self.latestAdvanceConfigVersion!
            }
            if self.latestOnlineConfigVersion != nil {
                map["latestOnlineConfigVersion"] = self.latestOnlineConfigVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.queryNode != nil {
                map["queryNode"] = self.queryNode?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("configUpdateTime") && dict["configUpdateTime"] != nil {
                self.configUpdateTime = dict["configUpdateTime"] as! String
            }
            if dict.keys.contains("currentAdvanceConfigVersion") && dict["currentAdvanceConfigVersion"] != nil {
                self.currentAdvanceConfigVersion = dict["currentAdvanceConfigVersion"] as! String
            }
            if dict.keys.contains("currentOnlineConfigVersion") && dict["currentOnlineConfigVersion"] != nil {
                self.currentOnlineConfigVersion = dict["currentOnlineConfigVersion"] as! String
            }
            if dict.keys.contains("dataNode") && dict["dataNode"] != nil {
                var model = GetClusterResponseBody.Result.DataNode()
                model.fromMap(dict["dataNode"] as! [String: Any])
                self.dataNode = model
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("latestAdvanceConfigVersion") && dict["latestAdvanceConfigVersion"] != nil {
                self.latestAdvanceConfigVersion = dict["latestAdvanceConfigVersion"] as! String
            }
            if dict.keys.contains("latestOnlineConfigVersion") && dict["latestOnlineConfigVersion"] != nil {
                self.latestOnlineConfigVersion = dict["latestOnlineConfigVersion"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("queryNode") && dict["queryNode"] != nil {
                var model = GetClusterResponseBody.Result.QueryNode()
                model.fromMap(dict["queryNode"] as! [String: Any])
                self.queryNode = model
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetClusterResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetClusterResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterResponseBody?

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
            var model = GetClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterRunTimeInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataNodes : Tea.TeaModel {
            public class ConfigStatusList : Tea.TeaModel {
                public var configUpdateTime: String?

                public var donePercent: Int32?

                public var doneSize: Int32?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configUpdateTime != nil {
                        map["configUpdateTime"] = self.configUpdateTime!
                    }
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("configUpdateTime") && dict["configUpdateTime"] != nil {
                        self.configUpdateTime = dict["configUpdateTime"] as! String
                    }
                    if dict.keys.contains("donePercent") && dict["donePercent"] != nil {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") && dict["doneSize"] != nil {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public class DataStatusList : Tea.TeaModel {
                public class AdvanceConfigInfo : Tea.TeaModel {
                    public var configMetaName: String?

                    public var version: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configMetaName != nil {
                            map["configMetaName"] = self.configMetaName!
                        }
                        if self.version != nil {
                            map["version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("configMetaName") && dict["configMetaName"] != nil {
                            self.configMetaName = dict["configMetaName"] as! String
                        }
                        if dict.keys.contains("version") && dict["version"] != nil {
                            self.version = dict["version"] as! Int64
                        }
                    }
                }
                public class IndexConfigInfo : Tea.TeaModel {
                    public var configMetaName: String?

                    public var version: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configMetaName != nil {
                            map["configMetaName"] = self.configMetaName!
                        }
                        if self.version != nil {
                            map["version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("configMetaName") && dict["configMetaName"] != nil {
                            self.configMetaName = dict["configMetaName"] as! String
                        }
                        if dict.keys.contains("version") && dict["version"] != nil {
                            self.version = dict["version"] as! Int64
                        }
                    }
                }
                public var advanceConfigInfo: GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.AdvanceConfigInfo?

                public var deployFailedWorker: [String]?

                public var docSize: Int32?

                public var donePercent: Int32?

                public var doneSize: Int32?

                public var errorMsg: String?

                public var fullUpdateTime: String?

                public var fullVersion: Int64?

                public var incUpdateTime: String?

                public var incVersion: Int64?

                public var indexConfigInfo: GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.IndexConfigInfo?

                public var indexSize: Int64?

                public var lackDiskWorker: [String]?

                public var lackMemWorker: [String]?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.advanceConfigInfo?.validate()
                    try self.indexConfigInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.advanceConfigInfo != nil {
                        map["advanceConfigInfo"] = self.advanceConfigInfo?.toMap()
                    }
                    if self.deployFailedWorker != nil {
                        map["deployFailedWorker"] = self.deployFailedWorker!
                    }
                    if self.docSize != nil {
                        map["docSize"] = self.docSize!
                    }
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.errorMsg != nil {
                        map["errorMsg"] = self.errorMsg!
                    }
                    if self.fullUpdateTime != nil {
                        map["fullUpdateTime"] = self.fullUpdateTime!
                    }
                    if self.fullVersion != nil {
                        map["fullVersion"] = self.fullVersion!
                    }
                    if self.incUpdateTime != nil {
                        map["incUpdateTime"] = self.incUpdateTime!
                    }
                    if self.incVersion != nil {
                        map["incVersion"] = self.incVersion!
                    }
                    if self.indexConfigInfo != nil {
                        map["indexConfigInfo"] = self.indexConfigInfo?.toMap()
                    }
                    if self.indexSize != nil {
                        map["indexSize"] = self.indexSize!
                    }
                    if self.lackDiskWorker != nil {
                        map["lackDiskWorker"] = self.lackDiskWorker!
                    }
                    if self.lackMemWorker != nil {
                        map["lackMemWorker"] = self.lackMemWorker!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("advanceConfigInfo") && dict["advanceConfigInfo"] != nil {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.AdvanceConfigInfo()
                        model.fromMap(dict["advanceConfigInfo"] as! [String: Any])
                        self.advanceConfigInfo = model
                    }
                    if dict.keys.contains("deployFailedWorker") && dict["deployFailedWorker"] != nil {
                        self.deployFailedWorker = dict["deployFailedWorker"] as! [String]
                    }
                    if dict.keys.contains("docSize") && dict["docSize"] != nil {
                        self.docSize = dict["docSize"] as! Int32
                    }
                    if dict.keys.contains("donePercent") && dict["donePercent"] != nil {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") && dict["doneSize"] != nil {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("errorMsg") && dict["errorMsg"] != nil {
                        self.errorMsg = dict["errorMsg"] as! String
                    }
                    if dict.keys.contains("fullUpdateTime") && dict["fullUpdateTime"] != nil {
                        self.fullUpdateTime = dict["fullUpdateTime"] as! String
                    }
                    if dict.keys.contains("fullVersion") && dict["fullVersion"] != nil {
                        self.fullVersion = dict["fullVersion"] as! Int64
                    }
                    if dict.keys.contains("incUpdateTime") && dict["incUpdateTime"] != nil {
                        self.incUpdateTime = dict["incUpdateTime"] as! String
                    }
                    if dict.keys.contains("incVersion") && dict["incVersion"] != nil {
                        self.incVersion = dict["incVersion"] as! Int64
                    }
                    if dict.keys.contains("indexConfigInfo") && dict["indexConfigInfo"] != nil {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.IndexConfigInfo()
                        model.fromMap(dict["indexConfigInfo"] as! [String: Any])
                        self.indexConfigInfo = model
                    }
                    if dict.keys.contains("indexSize") && dict["indexSize"] != nil {
                        self.indexSize = dict["indexSize"] as! Int64
                    }
                    if dict.keys.contains("lackDiskWorker") && dict["lackDiskWorker"] != nil {
                        self.lackDiskWorker = dict["lackDiskWorker"] as! [String]
                    }
                    if dict.keys.contains("lackMemWorker") && dict["lackMemWorker"] != nil {
                        self.lackMemWorker = dict["lackMemWorker"] as! [String]
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public class ServiceStatus : Tea.TeaModel {
                public var donePercent: Int32?

                public var doneSize: Int32?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("donePercent") && dict["donePercent"] != nil {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") && dict["doneSize"] != nil {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public var configStatusList: [GetClusterRunTimeInfoResponseBody.Result.DataNodes.ConfigStatusList]?

            public var dataStatusList: [GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList]?

            public var serviceStatus: GetClusterRunTimeInfoResponseBody.Result.DataNodes.ServiceStatus?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serviceStatus?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configStatusList != nil {
                    var tmp : [Any] = []
                    for k in self.configStatusList! {
                        tmp.append(k.toMap())
                    }
                    map["configStatusList"] = tmp
                }
                if self.dataStatusList != nil {
                    var tmp : [Any] = []
                    for k in self.dataStatusList! {
                        tmp.append(k.toMap())
                    }
                    map["dataStatusList"] = tmp
                }
                if self.serviceStatus != nil {
                    map["serviceStatus"] = self.serviceStatus?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("configStatusList") && dict["configStatusList"] != nil {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes.ConfigStatusList] = []
                    for v in dict["configStatusList"] as! [Any] {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.ConfigStatusList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.configStatusList = tmp
                }
                if dict.keys.contains("dataStatusList") && dict["dataStatusList"] != nil {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList] = []
                    for v in dict["dataStatusList"] as! [Any] {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.dataStatusList = tmp
                }
                if dict.keys.contains("serviceStatus") && dict["serviceStatus"] != nil {
                    var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.ServiceStatus()
                    model.fromMap(dict["serviceStatus"] as! [String: Any])
                    self.serviceStatus = model
                }
            }
        }
        public class QueryNode : Tea.TeaModel {
            public class ConfigStatusList : Tea.TeaModel {
                public var configUpdateTime: String?

                public var donePercent: Int32?

                public var doneSize: Int32?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configUpdateTime != nil {
                        map["configUpdateTime"] = self.configUpdateTime!
                    }
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("configUpdateTime") && dict["configUpdateTime"] != nil {
                        self.configUpdateTime = dict["configUpdateTime"] as! String
                    }
                    if dict.keys.contains("donePercent") && dict["donePercent"] != nil {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") && dict["doneSize"] != nil {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public class ServiceStatus : Tea.TeaModel {
                public var donePercent: Int32?

                public var doneSize: Int32?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("donePercent") && dict["donePercent"] != nil {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") && dict["doneSize"] != nil {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public var configStatusList: [GetClusterRunTimeInfoResponseBody.Result.QueryNode.ConfigStatusList]?

            public var serviceStatus: GetClusterRunTimeInfoResponseBody.Result.QueryNode.ServiceStatus?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serviceStatus?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configStatusList != nil {
                    var tmp : [Any] = []
                    for k in self.configStatusList! {
                        tmp.append(k.toMap())
                    }
                    map["configStatusList"] = tmp
                }
                if self.serviceStatus != nil {
                    map["serviceStatus"] = self.serviceStatus?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("configStatusList") && dict["configStatusList"] != nil {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.QueryNode.ConfigStatusList] = []
                    for v in dict["configStatusList"] as! [Any] {
                        var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode.ConfigStatusList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.configStatusList = tmp
                }
                if dict.keys.contains("serviceStatus") && dict["serviceStatus"] != nil {
                    var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode.ServiceStatus()
                    model.fromMap(dict["serviceStatus"] as! [String: Any])
                    self.serviceStatus = model
                }
            }
        }
        public var clusterName: String?

        public var dataNodes: [GetClusterRunTimeInfoResponseBody.Result.DataNodes]?

        public var queryNode: GetClusterRunTimeInfoResponseBody.Result.QueryNode?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.queryNode?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterName != nil {
                map["clusterName"] = self.clusterName!
            }
            if self.dataNodes != nil {
                var tmp : [Any] = []
                for k in self.dataNodes! {
                    tmp.append(k.toMap())
                }
                map["dataNodes"] = tmp
            }
            if self.queryNode != nil {
                map["queryNode"] = self.queryNode?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterName") && dict["clusterName"] != nil {
                self.clusterName = dict["clusterName"] as! String
            }
            if dict.keys.contains("dataNodes") && dict["dataNodes"] != nil {
                var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes] = []
                for v in dict["dataNodes"] as! [Any] {
                    var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataNodes = tmp
            }
            if dict.keys.contains("queryNode") && dict["queryNode"] != nil {
                var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode()
                model.fromMap(dict["queryNode"] as! [String: Any])
                self.queryNode = model
            }
        }
    }
    public var requestId: String?

    public var result: [GetClusterRunTimeInfoResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [GetClusterRunTimeInfoResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = GetClusterRunTimeInfoResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class GetClusterRunTimeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterRunTimeInfoResponseBody?

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
            var model = GetClusterRunTimeInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataSourceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var domain: String?

        public var indexes: [String]?

        public var lastFulTime: Int64?

        public var name: String?

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
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.lastFulTime != nil {
                map["lastFulTime"] = self.lastFulTime!
            }
            if self.name != nil {
                map["name"] = self.name!
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
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("indexes") && dict["indexes"] != nil {
                self.indexes = dict["indexes"] as! [String]
            }
            if dict.keys.contains("lastFulTime") && dict["lastFulTime"] != nil {
                self.lastFulTime = dict["lastFulTime"] as! Int64
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetDataSourceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetDataSourceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataSourceResponseBody?

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
            var model = GetDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataSourceDeployResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Extend : Tea.TeaModel {
            public class Hdfs : Tea.TeaModel {
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
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("path") && dict["path"] != nil {
                        self.path = dict["path"] as! String
                    }
                }
            }
            public class Odps : Tea.TeaModel {
                public var partitions: [String: String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.partitions != nil {
                        map["partitions"] = self.partitions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("partitions") && dict["partitions"] != nil {
                        self.partitions = dict["partitions"] as! [String: String]
                    }
                }
            }
            public class Oss : Tea.TeaModel {
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
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("path") && dict["path"] != nil {
                        self.path = dict["path"] as! String
                    }
                }
            }
            public class Saro : Tea.TeaModel {
                public var path: String?

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
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("path") && dict["path"] != nil {
                        self.path = dict["path"] as! String
                    }
                    if dict.keys.contains("version") && dict["version"] != nil {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public var hdfs: GetDataSourceDeployResponseBody.Result.Extend.Hdfs?

            public var odps: GetDataSourceDeployResponseBody.Result.Extend.Odps?

            public var oss: GetDataSourceDeployResponseBody.Result.Extend.Oss?

            public var saro: GetDataSourceDeployResponseBody.Result.Extend.Saro?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.hdfs?.validate()
                try self.odps?.validate()
                try self.oss?.validate()
                try self.saro?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hdfs != nil {
                    map["hdfs"] = self.hdfs?.toMap()
                }
                if self.odps != nil {
                    map["odps"] = self.odps?.toMap()
                }
                if self.oss != nil {
                    map["oss"] = self.oss?.toMap()
                }
                if self.saro != nil {
                    map["saro"] = self.saro?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("hdfs") && dict["hdfs"] != nil {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Hdfs()
                    model.fromMap(dict["hdfs"] as! [String: Any])
                    self.hdfs = model
                }
                if dict.keys.contains("odps") && dict["odps"] != nil {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Odps()
                    model.fromMap(dict["odps"] as! [String: Any])
                    self.odps = model
                }
                if dict.keys.contains("oss") && dict["oss"] != nil {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Oss()
                    model.fromMap(dict["oss"] as! [String: Any])
                    self.oss = model
                }
                if dict.keys.contains("saro") && dict["saro"] != nil {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Saro()
                    model.fromMap(dict["saro"] as! [String: Any])
                    self.saro = model
                }
            }
        }
        public class Processor : Tea.TeaModel {
            public var args: String?

            public var resource: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.args != nil {
                    map["args"] = self.args!
                }
                if self.resource != nil {
                    map["resource"] = self.resource!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("args") && dict["args"] != nil {
                    self.args = dict["args"] as! String
                }
                if dict.keys.contains("resource") && dict["resource"] != nil {
                    self.resource = dict["resource"] as! String
                }
            }
        }
        public class Storage : Tea.TeaModel {
            public var accessKey: String?

            public var accessSecret: String?

            public var bucket: String?

            public var endpoint: String?

            public var namespace: String?

            public var ossPath: String?

            public var partition: String?

            public var path: String?

            public var project: String?

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
                if self.accessKey != nil {
                    map["accessKey"] = self.accessKey!
                }
                if self.accessSecret != nil {
                    map["accessSecret"] = self.accessSecret!
                }
                if self.bucket != nil {
                    map["bucket"] = self.bucket!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.ossPath != nil {
                    map["ossPath"] = self.ossPath!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.table != nil {
                    map["table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKey") && dict["accessKey"] != nil {
                    self.accessKey = dict["accessKey"] as! String
                }
                if dict.keys.contains("accessSecret") && dict["accessSecret"] != nil {
                    self.accessSecret = dict["accessSecret"] as! String
                }
                if dict.keys.contains("bucket") && dict["bucket"] != nil {
                    self.bucket = dict["bucket"] as! String
                }
                if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("namespace") && dict["namespace"] != nil {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("ossPath") && dict["ossPath"] != nil {
                    self.ossPath = dict["ossPath"] as! String
                }
                if dict.keys.contains("partition") && dict["partition"] != nil {
                    self.partition = dict["partition"] as! String
                }
                if dict.keys.contains("path") && dict["path"] != nil {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("project") && dict["project"] != nil {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("table") && dict["table"] != nil {
                    self.table = dict["table"] as! String
                }
            }
        }
        public class Swift : Tea.TeaModel {
            public var topic: String?

            public var zk: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.topic != nil {
                    map["topic"] = self.topic!
                }
                if self.zk != nil {
                    map["zk"] = self.zk!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("topic") && dict["topic"] != nil {
                    self.topic = dict["topic"] as! String
                }
                if dict.keys.contains("zk") && dict["zk"] != nil {
                    self.zk = dict["zk"] as! String
                }
            }
        }
        public var autoBuildIndex: Bool?

        public var extend: GetDataSourceDeployResponseBody.Result.Extend?

        public var processor: GetDataSourceDeployResponseBody.Result.Processor?

        public var storage: GetDataSourceDeployResponseBody.Result.Storage?

        public var swift: GetDataSourceDeployResponseBody.Result.Swift?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extend?.validate()
            try self.processor?.validate()
            try self.storage?.validate()
            try self.swift?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuildIndex != nil {
                map["autoBuildIndex"] = self.autoBuildIndex!
            }
            if self.extend != nil {
                map["extend"] = self.extend?.toMap()
            }
            if self.processor != nil {
                map["processor"] = self.processor?.toMap()
            }
            if self.storage != nil {
                map["storage"] = self.storage?.toMap()
            }
            if self.swift != nil {
                map["swift"] = self.swift?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoBuildIndex") && dict["autoBuildIndex"] != nil {
                self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
            }
            if dict.keys.contains("extend") && dict["extend"] != nil {
                var model = GetDataSourceDeployResponseBody.Result.Extend()
                model.fromMap(dict["extend"] as! [String: Any])
                self.extend = model
            }
            if dict.keys.contains("processor") && dict["processor"] != nil {
                var model = GetDataSourceDeployResponseBody.Result.Processor()
                model.fromMap(dict["processor"] as! [String: Any])
                self.processor = model
            }
            if dict.keys.contains("storage") && dict["storage"] != nil {
                var model = GetDataSourceDeployResponseBody.Result.Storage()
                model.fromMap(dict["storage"] as! [String: Any])
                self.storage = model
            }
            if dict.keys.contains("swift") && dict["swift"] != nil {
                var model = GetDataSourceDeployResponseBody.Result.Swift()
                model.fromMap(dict["swift"] as! [String: Any])
                self.swift = model
            }
        }
    }
    public var requestId: String?

    public var result: GetDataSourceDeployResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetDataSourceDeployResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetDataSourceDeployResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataSourceDeployResponseBody?

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
            var model = GetDataSourceDeployResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeployGraphResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Graph : Tea.TeaModel {
            public class IndexMetas : Tea.TeaModel {
                public var domainName: String?

                public var name: String?

                public var tableDeployId: Int64?

                public var tableName: String?

                public var tag: String?

                public var zoneName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.domainName != nil {
                        map["domainName"] = self.domainName!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.tableDeployId != nil {
                        map["tableDeployId"] = self.tableDeployId!
                    }
                    if self.tableName != nil {
                        map["tableName"] = self.tableName!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.zoneName != nil {
                        map["zoneName"] = self.zoneName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("domainName") && dict["domainName"] != nil {
                        self.domainName = dict["domainName"] as! String
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("tableDeployId") && dict["tableDeployId"] != nil {
                        self.tableDeployId = dict["tableDeployId"] as! Int64
                    }
                    if dict.keys.contains("tableName") && dict["tableName"] != nil {
                        self.tableName = dict["tableName"] as! String
                    }
                    if dict.keys.contains("tag") && dict["tag"] != nil {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("zoneName") && dict["zoneName"] != nil {
                        self.zoneName = dict["zoneName"] as! String
                    }
                }
            }
            public class OnlineMaster : Tea.TeaModel {
                public var domainName: String?

                public var hippoId: String?

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
                    if self.domainName != nil {
                        map["domainName"] = self.domainName!
                    }
                    if self.hippoId != nil {
                        map["hippoId"] = self.hippoId!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("domainName") && dict["domainName"] != nil {
                        self.domainName = dict["domainName"] as! String
                    }
                    if dict.keys.contains("hippoId") && dict["hippoId"] != nil {
                        self.hippoId = dict["hippoId"] as! String
                    }
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                }
            }
            public class TableMetas : Tea.TeaModel {
                public var buildDeployId: Int64?

                public var domainName: String?

                public var name: String?

                public var tableDeployId: Int64?

                public var tag: String?

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
                    if self.buildDeployId != nil {
                        map["buildDeployId"] = self.buildDeployId!
                    }
                    if self.domainName != nil {
                        map["domainName"] = self.domainName!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.tableDeployId != nil {
                        map["tableDeployId"] = self.tableDeployId!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("buildDeployId") && dict["buildDeployId"] != nil {
                        self.buildDeployId = dict["buildDeployId"] as! Int64
                    }
                    if dict.keys.contains("domainName") && dict["domainName"] != nil {
                        self.domainName = dict["domainName"] as! String
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("tableDeployId") && dict["tableDeployId"] != nil {
                        self.tableDeployId = dict["tableDeployId"] as! Int64
                    }
                    if dict.keys.contains("tag") && dict["tag"] != nil {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("type") && dict["type"] != nil {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public class ZoneMetas : Tea.TeaModel {
                public var domainInfo: String?

                public var name: String?

                public var suezAdminName: String?

                public var tag: String?

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
                    if self.domainInfo != nil {
                        map["domainInfo"] = self.domainInfo!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.suezAdminName != nil {
                        map["suezAdminName"] = self.suezAdminName!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("domainInfo") && dict["domainInfo"] != nil {
                        self.domainInfo = dict["domainInfo"] as! String
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("suezAdminName") && dict["suezAdminName"] != nil {
                        self.suezAdminName = dict["suezAdminName"] as! String
                    }
                    if dict.keys.contains("tag") && dict["tag"] != nil {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("type") && dict["type"] != nil {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var indexMetas: [GetDeployGraphResponseBody.Result.Graph.IndexMetas]?

            public var onlineMaster: [GetDeployGraphResponseBody.Result.Graph.OnlineMaster]?

            public var tableIndexRelation: [String: [String]]?

            public var tableMetas: [GetDeployGraphResponseBody.Result.Graph.TableMetas]?

            public var zoneIndexRelation: [String: [String]]?

            public var zoneMetas: [GetDeployGraphResponseBody.Result.Graph.ZoneMetas]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.indexMetas != nil {
                    var tmp : [Any] = []
                    for k in self.indexMetas! {
                        tmp.append(k.toMap())
                    }
                    map["indexMetas"] = tmp
                }
                if self.onlineMaster != nil {
                    var tmp : [Any] = []
                    for k in self.onlineMaster! {
                        tmp.append(k.toMap())
                    }
                    map["onlineMaster"] = tmp
                }
                if self.tableIndexRelation != nil {
                    map["tableIndexRelation"] = self.tableIndexRelation!
                }
                if self.tableMetas != nil {
                    var tmp : [Any] = []
                    for k in self.tableMetas! {
                        tmp.append(k.toMap())
                    }
                    map["tableMetas"] = tmp
                }
                if self.zoneIndexRelation != nil {
                    map["zoneIndexRelation"] = self.zoneIndexRelation!
                }
                if self.zoneMetas != nil {
                    var tmp : [Any] = []
                    for k in self.zoneMetas! {
                        tmp.append(k.toMap())
                    }
                    map["zoneMetas"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("indexMetas") && dict["indexMetas"] != nil {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.IndexMetas] = []
                    for v in dict["indexMetas"] as! [Any] {
                        var model = GetDeployGraphResponseBody.Result.Graph.IndexMetas()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.indexMetas = tmp
                }
                if dict.keys.contains("onlineMaster") && dict["onlineMaster"] != nil {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.OnlineMaster] = []
                    for v in dict["onlineMaster"] as! [Any] {
                        var model = GetDeployGraphResponseBody.Result.Graph.OnlineMaster()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.onlineMaster = tmp
                }
                if dict.keys.contains("tableIndexRelation") && dict["tableIndexRelation"] != nil {
                    self.tableIndexRelation = dict["tableIndexRelation"] as! [String: [String]]
                }
                if dict.keys.contains("tableMetas") && dict["tableMetas"] != nil {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.TableMetas] = []
                    for v in dict["tableMetas"] as! [Any] {
                        var model = GetDeployGraphResponseBody.Result.Graph.TableMetas()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tableMetas = tmp
                }
                if dict.keys.contains("zoneIndexRelation") && dict["zoneIndexRelation"] != nil {
                    self.zoneIndexRelation = dict["zoneIndexRelation"] as! [String: [String]]
                }
                if dict.keys.contains("zoneMetas") && dict["zoneMetas"] != nil {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.ZoneMetas] = []
                    for v in dict["zoneMetas"] as! [Any] {
                        var model = GetDeployGraphResponseBody.Result.Graph.ZoneMetas()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.zoneMetas = tmp
                }
            }
        }
        public var graph: GetDeployGraphResponseBody.Result.Graph?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.graph?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.graph != nil {
                map["graph"] = self.graph?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("graph") && dict["graph"] != nil {
                var model = GetDeployGraphResponseBody.Result.Graph()
                model.fromMap(dict["graph"] as! [String: Any])
                self.graph = model
            }
        }
    }
    public var requestId: String?

    public var result: GetDeployGraphResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetDeployGraphResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetDeployGraphResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeployGraphResponseBody?

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
            var model = GetDeployGraphResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileRequest : Tea.TeaModel {
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
            map["fileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") && dict["fileName"] != nil {
            self.fileName = dict["fileName"] as! String
        }
    }
}

public class GetFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public var dataSource: String?

        public var fullPathName: String?

        public var isDir: Bool?

        public var name: String?

        public var partition: Int64?

        public override init() {
            super.init()
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
            if self.dataSource != nil {
                map["dataSource"] = self.dataSource!
            }
            if self.fullPathName != nil {
                map["fullPathName"] = self.fullPathName!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("dataSource") && dict["dataSource"] != nil {
                self.dataSource = dict["dataSource"] as! String
            }
            if dict.keys.contains("fullPathName") && dict["fullPathName"] != nil {
                self.fullPathName = dict["fullPathName"] as! String
            }
            if dict.keys.contains("isDir") && dict["isDir"] != nil {
                self.isDir = dict["isDir"] as! Bool
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("partition") && dict["partition"] != nil {
                self.partition = dict["partition"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: GetFileResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetFileResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileResponseBody?

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
            var model = GetFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIndexResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataSourceInfo : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var accessKey: String?

                public var accessSecret: String?

                public var bucket: String?

                public var endpoint: String?

                public var namespace: String?

                public var ossPath: String?

                public var partition: String?

                public var path: String?

                public var project: String?

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
                    if self.accessKey != nil {
                        map["accessKey"] = self.accessKey!
                    }
                    if self.accessSecret != nil {
                        map["accessSecret"] = self.accessSecret!
                    }
                    if self.bucket != nil {
                        map["bucket"] = self.bucket!
                    }
                    if self.endpoint != nil {
                        map["endpoint"] = self.endpoint!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.ossPath != nil {
                        map["ossPath"] = self.ossPath!
                    }
                    if self.partition != nil {
                        map["partition"] = self.partition!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.project != nil {
                        map["project"] = self.project!
                    }
                    if self.table != nil {
                        map["table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("accessKey") && dict["accessKey"] != nil {
                        self.accessKey = dict["accessKey"] as! String
                    }
                    if dict.keys.contains("accessSecret") && dict["accessSecret"] != nil {
                        self.accessSecret = dict["accessSecret"] as! String
                    }
                    if dict.keys.contains("bucket") && dict["bucket"] != nil {
                        self.bucket = dict["bucket"] as! String
                    }
                    if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                        self.endpoint = dict["endpoint"] as! String
                    }
                    if dict.keys.contains("namespace") && dict["namespace"] != nil {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("ossPath") && dict["ossPath"] != nil {
                        self.ossPath = dict["ossPath"] as! String
                    }
                    if dict.keys.contains("partition") && dict["partition"] != nil {
                        self.partition = dict["partition"] as! String
                    }
                    if dict.keys.contains("path") && dict["path"] != nil {
                        self.path = dict["path"] as! String
                    }
                    if dict.keys.contains("project") && dict["project"] != nil {
                        self.project = dict["project"] as! String
                    }
                    if dict.keys.contains("table") && dict["table"] != nil {
                        self.table = dict["table"] as! String
                    }
                }
            }
            public class SaroConfig : Tea.TeaModel {
                public var namespace: String?

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
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.tableName != nil {
                        map["tableName"] = self.tableName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("namespace") && dict["namespace"] != nil {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("tableName") && dict["tableName"] != nil {
                        self.tableName = dict["tableName"] as! String
                    }
                }
            }
            public var autoBuildIndex: Bool?

            public var config: GetIndexResponseBody.Result.DataSourceInfo.Config?

            public var domain: String?

            public var name: String?

            public var processPartitionCount: Int32?

            public var saroConfig: GetIndexResponseBody.Result.DataSourceInfo.SaroConfig?

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
                try self.saroConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoBuildIndex != nil {
                    map["autoBuildIndex"] = self.autoBuildIndex!
                }
                if self.config != nil {
                    map["config"] = self.config?.toMap()
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.processPartitionCount != nil {
                    map["processPartitionCount"] = self.processPartitionCount!
                }
                if self.saroConfig != nil {
                    map["saroConfig"] = self.saroConfig?.toMap()
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("autoBuildIndex") && dict["autoBuildIndex"] != nil {
                    self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
                }
                if dict.keys.contains("config") && dict["config"] != nil {
                    var model = GetIndexResponseBody.Result.DataSourceInfo.Config()
                    model.fromMap(dict["config"] as! [String: Any])
                    self.config = model
                }
                if dict.keys.contains("domain") && dict["domain"] != nil {
                    self.domain = dict["domain"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("processPartitionCount") && dict["processPartitionCount"] != nil {
                    self.processPartitionCount = dict["processPartitionCount"] as! Int32
                }
                if dict.keys.contains("saroConfig") && dict["saroConfig"] != nil {
                    var model = GetIndexResponseBody.Result.DataSourceInfo.SaroConfig()
                    model.fromMap(dict["saroConfig"] as! [String: Any])
                    self.saroConfig = model
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class Versions : Tea.TeaModel {
            public class Files : Tea.TeaModel {
                public var fullPathName: String?

                public var isDir: Bool?

                public var isTemplate: Bool?

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
                    if self.fullPathName != nil {
                        map["fullPathName"] = self.fullPathName!
                    }
                    if self.isDir != nil {
                        map["isDir"] = self.isDir!
                    }
                    if self.isTemplate != nil {
                        map["isTemplate"] = self.isTemplate!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("fullPathName") && dict["fullPathName"] != nil {
                        self.fullPathName = dict["fullPathName"] as! String
                    }
                    if dict.keys.contains("isDir") && dict["isDir"] != nil {
                        self.isDir = dict["isDir"] as! Bool
                    }
                    if dict.keys.contains("isTemplate") && dict["isTemplate"] != nil {
                        self.isTemplate = dict["isTemplate"] as! Bool
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                }
            }
            public var desc: String?

            public var files: [GetIndexResponseBody.Result.Versions.Files]?

            public var name: String?

            public var status: String?

            public var updateTime: Int64?

            public var versionId: Int32?

            public override init() {
                super.init()
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
                if self.files != nil {
                    var tmp : [Any] = []
                    for k in self.files! {
                        tmp.append(k.toMap())
                    }
                    map["files"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.versionId != nil {
                    map["versionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("desc") && dict["desc"] != nil {
                    self.desc = dict["desc"] as! String
                }
                if dict.keys.contains("files") && dict["files"] != nil {
                    var tmp : [GetIndexResponseBody.Result.Versions.Files] = []
                    for v in dict["files"] as! [Any] {
                        var model = GetIndexResponseBody.Result.Versions.Files()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.files = tmp
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
                    self.updateTime = dict["updateTime"] as! Int64
                }
                if dict.keys.contains("versionId") && dict["versionId"] != nil {
                    self.versionId = dict["versionId"] as! Int32
                }
            }
        }
        public var content: String?

        public var dataSource: String?

        public var dataSourceInfo: GetIndexResponseBody.Result.DataSourceInfo?

        public var description_: String?

        public var domain: String?

        public var fullUpdateTime: String?

        public var fullVersion: Int64?

        public var incUpdateTime: String?

        public var indexSize: Int64?

        public var indexStatus: String?

        public var name: String?

        public var partition: Int32?

        public var versions: [GetIndexResponseBody.Result.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataSourceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.dataSource != nil {
                map["dataSource"] = self.dataSource!
            }
            if self.dataSourceInfo != nil {
                map["dataSourceInfo"] = self.dataSourceInfo?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.fullUpdateTime != nil {
                map["fullUpdateTime"] = self.fullUpdateTime!
            }
            if self.fullVersion != nil {
                map["fullVersion"] = self.fullVersion!
            }
            if self.incUpdateTime != nil {
                map["incUpdateTime"] = self.incUpdateTime!
            }
            if self.indexSize != nil {
                map["indexSize"] = self.indexSize!
            }
            if self.indexStatus != nil {
                map["indexStatus"] = self.indexStatus!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("dataSource") && dict["dataSource"] != nil {
                self.dataSource = dict["dataSource"] as! String
            }
            if dict.keys.contains("dataSourceInfo") && dict["dataSourceInfo"] != nil {
                var model = GetIndexResponseBody.Result.DataSourceInfo()
                model.fromMap(dict["dataSourceInfo"] as! [String: Any])
                self.dataSourceInfo = model
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("fullUpdateTime") && dict["fullUpdateTime"] != nil {
                self.fullUpdateTime = dict["fullUpdateTime"] as! String
            }
            if dict.keys.contains("fullVersion") && dict["fullVersion"] != nil {
                self.fullVersion = dict["fullVersion"] as! Int64
            }
            if dict.keys.contains("incUpdateTime") && dict["incUpdateTime"] != nil {
                self.incUpdateTime = dict["incUpdateTime"] as! String
            }
            if dict.keys.contains("indexSize") && dict["indexSize"] != nil {
                self.indexSize = dict["indexSize"] as! Int64
            }
            if dict.keys.contains("indexStatus") && dict["indexStatus"] != nil {
                self.indexStatus = dict["indexStatus"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("partition") && dict["partition"] != nil {
                self.partition = dict["partition"] as! Int32
            }
            if dict.keys.contains("versions") && dict["versions"] != nil {
                var tmp : [GetIndexResponseBody.Result.Versions] = []
                for v in dict["versions"] as! [Any] {
                    var model = GetIndexResponseBody.Result.Versions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.versions = tmp
            }
        }
    }
    public var requestId: String?

    public var result: GetIndexResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetIndexResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexResponseBody?

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
            var model = GetIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIndexVersionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class IndexVersions : Tea.TeaModel {
            public var buildDeployId: String?

            public var currentVersion: Int64?

            public var indexName: String?

            public var versions: [Int64]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildDeployId != nil {
                    map["buildDeployId"] = self.buildDeployId!
                }
                if self.currentVersion != nil {
                    map["currentVersion"] = self.currentVersion!
                }
                if self.indexName != nil {
                    map["indexName"] = self.indexName!
                }
                if self.versions != nil {
                    map["versions"] = self.versions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("buildDeployId") && dict["buildDeployId"] != nil {
                    self.buildDeployId = dict["buildDeployId"] as! String
                }
                if dict.keys.contains("currentVersion") && dict["currentVersion"] != nil {
                    self.currentVersion = dict["currentVersion"] as! Int64
                }
                if dict.keys.contains("indexName") && dict["indexName"] != nil {
                    self.indexName = dict["indexName"] as! String
                }
                if dict.keys.contains("versions") && dict["versions"] != nil {
                    self.versions = dict["versions"] as! [Int64]
                }
            }
        }
        public var cluster: String?

        public var indexVersions: [GetIndexVersionResponseBody.Result.IndexVersions]?

        public override init() {
            super.init()
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
            if self.indexVersions != nil {
                var tmp : [Any] = []
                for k in self.indexVersions! {
                    tmp.append(k.toMap())
                }
                map["indexVersions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster") && dict["cluster"] != nil {
                self.cluster = dict["cluster"] as! String
            }
            if dict.keys.contains("indexVersions") && dict["indexVersions"] != nil {
                var tmp : [GetIndexVersionResponseBody.Result.IndexVersions] = []
                for v in dict["indexVersions"] as! [Any] {
                    var model = GetIndexVersionResponseBody.Result.IndexVersions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.indexVersions = tmp
            }
        }
    }
    public var requestId: String?

    public var result: GetIndexVersionResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetIndexVersionResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetIndexVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexVersionResponseBody?

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
            var model = GetIndexVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") && dict["key"] != nil {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var chargeType: String?

        public var commodityCode: String?

        public var createTime: String?

        public var description_: String?

        public var expiredTime: String?

        public var inDebt: Bool?

        public var instanceId: String?

        public var lockMode: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [GetInstanceResponseBody.Result.Tags]?

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
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.expiredTime != nil {
                map["expiredTime"] = self.expiredTime!
            }
            if self.inDebt != nil {
                map["inDebt"] = self.inDebt!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("expiredTime") && dict["expiredTime"] != nil {
                self.expiredTime = dict["expiredTime"] as! String
            }
            if dict.keys.contains("inDebt") && dict["inDebt"] != nil {
                self.inDebt = dict["inDebt"] as! Bool
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [GetInstanceResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = GetInstanceResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
                self.updateTime = dict["updateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

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
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeConfigRequest : Tea.TeaModel {
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["clusterName"] = self.clusterName!
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
        if dict.keys.contains("clusterName") && dict["clusterName"] != nil {
            self.clusterName = dict["clusterName"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class GetNodeConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var dataDuplicateNumber: Int32?

        public var dataFragmentNumber: Int32?

        public var minServicePercent: Int32?

        public var published: Bool?

        public override init() {
            super.init()
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
                map["active"] = self.active!
            }
            if self.dataDuplicateNumber != nil {
                map["dataDuplicateNumber"] = self.dataDuplicateNumber!
            }
            if self.dataFragmentNumber != nil {
                map["dataFragmentNumber"] = self.dataFragmentNumber!
            }
            if self.minServicePercent != nil {
                map["minServicePercent"] = self.minServicePercent!
            }
            if self.published != nil {
                map["published"] = self.published!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") && dict["active"] != nil {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("dataDuplicateNumber") && dict["dataDuplicateNumber"] != nil {
                self.dataDuplicateNumber = dict["dataDuplicateNumber"] as! Int32
            }
            if dict.keys.contains("dataFragmentNumber") && dict["dataFragmentNumber"] != nil {
                self.dataFragmentNumber = dict["dataFragmentNumber"] as! Int32
            }
            if dict.keys.contains("minServicePercent") && dict["minServicePercent"] != nil {
                self.minServicePercent = dict["minServicePercent"] as! Int32
            }
            if dict.keys.contains("published") && dict["published"] != nil {
                self.published = dict["published"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var result: GetNodeConfigResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = GetNodeConfigResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetNodeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeConfigResponseBody?

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
            var model = GetNodeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAdvanceConfigDirRequest : Tea.TeaModel {
    public var dirName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dirName != nil {
            map["dirName"] = self.dirName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dirName") && dict["dirName"] != nil {
            self.dirName = dict["dirName"] as! String
        }
    }
}

public class ListAdvanceConfigDirResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var fullPathName: String?

        public var isDir: Bool?

        public var isTemplate: Bool?

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
            if self.fullPathName != nil {
                map["fullPathName"] = self.fullPathName!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.isTemplate != nil {
                map["isTemplate"] = self.isTemplate!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fullPathName") && dict["fullPathName"] != nil {
                self.fullPathName = dict["fullPathName"] as! String
            }
            if dict.keys.contains("isDir") && dict["isDir"] != nil {
                self.isDir = dict["isDir"] as! Bool
            }
            if dict.keys.contains("isTemplate") && dict["isTemplate"] != nil {
                self.isTemplate = dict["isTemplate"] as! Bool
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListAdvanceConfigDirResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListAdvanceConfigDirResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListAdvanceConfigDirResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListAdvanceConfigDirResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAdvanceConfigDirResponseBody?

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
            var model = ListAdvanceConfigDirResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAdvanceConfigsRequest : Tea.TeaModel {
    public var dataSourceName: String?

    public var indexName: String?

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
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.indexName != nil {
            map["indexName"] = self.indexName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSourceName") && dict["dataSourceName"] != nil {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("indexName") && dict["indexName"] != nil {
            self.indexName = dict["indexName"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class ListAdvanceConfigsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Files : Tea.TeaModel {
            public var fullPathName: String?

            public var isDir: Bool?

            public var isTemplate: Bool?

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
                if self.fullPathName != nil {
                    map["fullPathName"] = self.fullPathName!
                }
                if self.isDir != nil {
                    map["isDir"] = self.isDir!
                }
                if self.isTemplate != nil {
                    map["isTemplate"] = self.isTemplate!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("fullPathName") && dict["fullPathName"] != nil {
                    self.fullPathName = dict["fullPathName"] as! String
                }
                if dict.keys.contains("isDir") && dict["isDir"] != nil {
                    self.isDir = dict["isDir"] as! Bool
                }
                if dict.keys.contains("isTemplate") && dict["isTemplate"] != nil {
                    self.isTemplate = dict["isTemplate"] as! Bool
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var content: String?

        public var contentType: String?

        public var desc: String?

        public var files: [ListAdvanceConfigsResponseBody.Result.Files]?

        public var name: String?

        public var status: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.desc != nil {
                map["desc"] = self.desc!
            }
            if self.files != nil {
                var tmp : [Any] = []
                for k in self.files! {
                    tmp.append(k.toMap())
                }
                map["files"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("contentType") && dict["contentType"] != nil {
                self.contentType = dict["contentType"] as! String
            }
            if dict.keys.contains("desc") && dict["desc"] != nil {
                self.desc = dict["desc"] as! String
            }
            if dict.keys.contains("files") && dict["files"] != nil {
                var tmp : [ListAdvanceConfigsResponseBody.Result.Files] = []
                for v in dict["files"] as! [Any] {
                    var model = ListAdvanceConfigsResponseBody.Result.Files()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.files = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: [ListAdvanceConfigsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListAdvanceConfigsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListAdvanceConfigsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListAdvanceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAdvanceConfigsResponseBody?

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
            var model = ListAdvanceConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterNamesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var description_: String?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: ListClusterNamesResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = ListClusterNamesResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListClusterNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterNamesResponseBody?

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
            var model = ListClusterNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterTasksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var msg: String?

            public var tagLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.msg != nil {
                    map["msg"] = self.msg!
                }
                if self.tagLevel != nil {
                    map["tagLevel"] = self.tagLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("msg") && dict["msg"] != nil {
                    self.msg = dict["msg"] as! String
                }
                if dict.keys.contains("tagLevel") && dict["tagLevel"] != nil {
                    self.tagLevel = dict["tagLevel"] as! String
                }
            }
        }
        public class TaskNodes : Tea.TeaModel {
            public var finishDate: String?

            public var index: Int64?

            public var name: String?

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
                if self.finishDate != nil {
                    map["finishDate"] = self.finishDate!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("finishDate") && dict["finishDate"] != nil {
                    self.finishDate = dict["finishDate"] as! String
                }
                if dict.keys.contains("index") && dict["index"] != nil {
                    self.index = dict["index"] as! Int64
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
            }
        }
        public var extraAttribute: String?

        public var field3: String?

        public var fsmId: String?

        public var groupType: String?

        public var name: String?

        public var status: String?

        public var tags: [ListClusterTasksResponseBody.Result.Tags]?

        public var taskNodes: [ListClusterTasksResponseBody.Result.TaskNodes]?

        public var time: String?

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
            if self.extraAttribute != nil {
                map["extraAttribute"] = self.extraAttribute!
            }
            if self.field3 != nil {
                map["field3"] = self.field3!
            }
            if self.fsmId != nil {
                map["fsmId"] = self.fsmId!
            }
            if self.groupType != nil {
                map["groupType"] = self.groupType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskNodes != nil {
                var tmp : [Any] = []
                for k in self.taskNodes! {
                    tmp.append(k.toMap())
                }
                map["taskNodes"] = tmp
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("extraAttribute") && dict["extraAttribute"] != nil {
                self.extraAttribute = dict["extraAttribute"] as! String
            }
            if dict.keys.contains("field3") && dict["field3"] != nil {
                self.field3 = dict["field3"] as! String
            }
            if dict.keys.contains("fsmId") && dict["fsmId"] != nil {
                self.fsmId = dict["fsmId"] as! String
            }
            if dict.keys.contains("groupType") && dict["groupType"] != nil {
                self.groupType = dict["groupType"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [ListClusterTasksResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListClusterTasksResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("taskNodes") && dict["taskNodes"] != nil {
                var tmp : [ListClusterTasksResponseBody.Result.TaskNodes] = []
                for v in dict["taskNodes"] as! [Any] {
                    var model = ListClusterTasksResponseBody.Result.TaskNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskNodes = tmp
            }
            if dict.keys.contains("time") && dict["time"] != nil {
                self.time = dict["time"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("user") && dict["user"] != nil {
                self.user = dict["user"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListClusterTasksResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListClusterTasksResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListClusterTasksResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListClusterTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterTasksResponseBody?

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
            var model = ListClusterTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataNode : Tea.TeaModel {
            public var name: String?

            public var number: Int32?

            public var partition: Int32?

            public override init() {
                super.init()
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
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") && dict["number"] != nil {
                    self.number = dict["number"] as! Int32
                }
                if dict.keys.contains("partition") && dict["partition"] != nil {
                    self.partition = dict["partition"] as! Int32
                }
            }
        }
        public class QueryNode : Tea.TeaModel {
            public var name: String?

            public var number: Int32?

            public var partition: Int32?

            public override init() {
                super.init()
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
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") && dict["number"] != nil {
                    self.number = dict["number"] as! Int32
                }
                if dict.keys.contains("partition") && dict["partition"] != nil {
                    self.partition = dict["partition"] as! Int32
                }
            }
        }
        public var configUpdateTime: String?

        public var currentAdvanceConfigVersion: String?

        public var currentOfflineDictConfigVersion: String?

        public var currentOnlineConfigVersion: String?

        public var currentOnlineQueryConfigVersion: String?

        public var dataNode: ListClustersResponseBody.Result.DataNode?

        public var description_: String?

        public var latestAdvanceConfigVersion: String?

        public var latestOfflineDictConfigVersion: String?

        public var latestOnlineConfigVersion: String?

        public var latestOnlineQueryConfigVersion: String?

        public var name: String?

        public var queryNode: ListClustersResponseBody.Result.QueryNode?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataNode?.validate()
            try self.queryNode?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configUpdateTime != nil {
                map["configUpdateTime"] = self.configUpdateTime!
            }
            if self.currentAdvanceConfigVersion != nil {
                map["currentAdvanceConfigVersion"] = self.currentAdvanceConfigVersion!
            }
            if self.currentOfflineDictConfigVersion != nil {
                map["currentOfflineDictConfigVersion"] = self.currentOfflineDictConfigVersion!
            }
            if self.currentOnlineConfigVersion != nil {
                map["currentOnlineConfigVersion"] = self.currentOnlineConfigVersion!
            }
            if self.currentOnlineQueryConfigVersion != nil {
                map["currentOnlineQueryConfigVersion"] = self.currentOnlineQueryConfigVersion!
            }
            if self.dataNode != nil {
                map["dataNode"] = self.dataNode?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.latestAdvanceConfigVersion != nil {
                map["latestAdvanceConfigVersion"] = self.latestAdvanceConfigVersion!
            }
            if self.latestOfflineDictConfigVersion != nil {
                map["latestOfflineDictConfigVersion"] = self.latestOfflineDictConfigVersion!
            }
            if self.latestOnlineConfigVersion != nil {
                map["latestOnlineConfigVersion"] = self.latestOnlineConfigVersion!
            }
            if self.latestOnlineQueryConfigVersion != nil {
                map["latestOnlineQueryConfigVersion"] = self.latestOnlineQueryConfigVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.queryNode != nil {
                map["queryNode"] = self.queryNode?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("configUpdateTime") && dict["configUpdateTime"] != nil {
                self.configUpdateTime = dict["configUpdateTime"] as! String
            }
            if dict.keys.contains("currentAdvanceConfigVersion") && dict["currentAdvanceConfigVersion"] != nil {
                self.currentAdvanceConfigVersion = dict["currentAdvanceConfigVersion"] as! String
            }
            if dict.keys.contains("currentOfflineDictConfigVersion") && dict["currentOfflineDictConfigVersion"] != nil {
                self.currentOfflineDictConfigVersion = dict["currentOfflineDictConfigVersion"] as! String
            }
            if dict.keys.contains("currentOnlineConfigVersion") && dict["currentOnlineConfigVersion"] != nil {
                self.currentOnlineConfigVersion = dict["currentOnlineConfigVersion"] as! String
            }
            if dict.keys.contains("currentOnlineQueryConfigVersion") && dict["currentOnlineQueryConfigVersion"] != nil {
                self.currentOnlineQueryConfigVersion = dict["currentOnlineQueryConfigVersion"] as! String
            }
            if dict.keys.contains("dataNode") && dict["dataNode"] != nil {
                var model = ListClustersResponseBody.Result.DataNode()
                model.fromMap(dict["dataNode"] as! [String: Any])
                self.dataNode = model
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("latestAdvanceConfigVersion") && dict["latestAdvanceConfigVersion"] != nil {
                self.latestAdvanceConfigVersion = dict["latestAdvanceConfigVersion"] as! String
            }
            if dict.keys.contains("latestOfflineDictConfigVersion") && dict["latestOfflineDictConfigVersion"] != nil {
                self.latestOfflineDictConfigVersion = dict["latestOfflineDictConfigVersion"] as! String
            }
            if dict.keys.contains("latestOnlineConfigVersion") && dict["latestOnlineConfigVersion"] != nil {
                self.latestOnlineConfigVersion = dict["latestOnlineConfigVersion"] as! String
            }
            if dict.keys.contains("latestOnlineQueryConfigVersion") && dict["latestOnlineQueryConfigVersion"] != nil {
                self.latestOnlineQueryConfigVersion = dict["latestOnlineQueryConfigVersion"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("queryNode") && dict["queryNode"] != nil {
                var model = ListClustersResponseBody.Result.QueryNode()
                model.fromMap(dict["queryNode"] as! [String: Any])
                self.queryNode = model
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListClustersResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListClustersResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListClustersResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersResponseBody?

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
            var model = ListClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourceSchemasResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class PrimaryKey : Tea.TeaModel {
            public var hasPrimaryKeyAttribute: Bool?

            public var isPrimaryKey: Bool?

            public var isPrimaryKeySorted: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hasPrimaryKeyAttribute != nil {
                    map["hasPrimaryKeyAttribute"] = self.hasPrimaryKeyAttribute!
                }
                if self.isPrimaryKey != nil {
                    map["isPrimaryKey"] = self.isPrimaryKey!
                }
                if self.isPrimaryKeySorted != nil {
                    map["isPrimaryKeySorted"] = self.isPrimaryKeySorted!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("hasPrimaryKeyAttribute") && dict["hasPrimaryKeyAttribute"] != nil {
                    self.hasPrimaryKeyAttribute = dict["hasPrimaryKeyAttribute"] as! Bool
                }
                if dict.keys.contains("isPrimaryKey") && dict["isPrimaryKey"] != nil {
                    self.isPrimaryKey = dict["isPrimaryKey"] as! Bool
                }
                if dict.keys.contains("isPrimaryKeySorted") && dict["isPrimaryKeySorted"] != nil {
                    self.isPrimaryKeySorted = dict["isPrimaryKeySorted"] as! Bool
                }
            }
        }
        public var addIndex: Bool?

        public var attribute: Bool?

        public var custom: Bool?

        public var name: String?

        public var primaryKey: ListDataSourceSchemasResponseBody.Result.PrimaryKey?

        public var summary: Bool?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.primaryKey?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addIndex != nil {
                map["addIndex"] = self.addIndex!
            }
            if self.attribute != nil {
                map["attribute"] = self.attribute!
            }
            if self.custom != nil {
                map["custom"] = self.custom!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.primaryKey != nil {
                map["primaryKey"] = self.primaryKey?.toMap()
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
            if dict.keys.contains("addIndex") && dict["addIndex"] != nil {
                self.addIndex = dict["addIndex"] as! Bool
            }
            if dict.keys.contains("attribute") && dict["attribute"] != nil {
                self.attribute = dict["attribute"] as! Bool
            }
            if dict.keys.contains("custom") && dict["custom"] != nil {
                self.custom = dict["custom"] as! Bool
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("primaryKey") && dict["primaryKey"] != nil {
                var model = ListDataSourceSchemasResponseBody.Result.PrimaryKey()
                model.fromMap(dict["primaryKey"] as! [String: Any])
                self.primaryKey = model
            }
            if dict.keys.contains("summary") && dict["summary"] != nil {
                self.summary = dict["summary"] as! Bool
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataSourceSchemasResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListDataSourceSchemasResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDataSourceSchemasResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListDataSourceSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceSchemasResponseBody?

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
            var model = ListDataSourceSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourceTasksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var msg: String?

            public var tagLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.msg != nil {
                    map["msg"] = self.msg!
                }
                if self.tagLevel != nil {
                    map["tagLevel"] = self.tagLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("msg") && dict["msg"] != nil {
                    self.msg = dict["msg"] as! String
                }
                if dict.keys.contains("tagLevel") && dict["tagLevel"] != nil {
                    self.tagLevel = dict["tagLevel"] as! String
                }
            }
        }
        public class TaskNodes : Tea.TeaModel {
            public var finishDate: String?

            public var index: Int64?

            public var name: String?

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
                if self.finishDate != nil {
                    map["finishDate"] = self.finishDate!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("finishDate") && dict["finishDate"] != nil {
                    self.finishDate = dict["finishDate"] as! String
                }
                if dict.keys.contains("index") && dict["index"] != nil {
                    self.index = dict["index"] as! Int64
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
            }
        }
        public var extraAttribute: String?

        public var field3: String?

        public var fsmId: String?

        public var groupType: String?

        public var name: String?

        public var status: String?

        public var tags: [ListDataSourceTasksResponseBody.Result.Tags]?

        public var taskNodes: [ListDataSourceTasksResponseBody.Result.TaskNodes]?

        public var time: String?

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
            if self.extraAttribute != nil {
                map["extraAttribute"] = self.extraAttribute!
            }
            if self.field3 != nil {
                map["field3"] = self.field3!
            }
            if self.fsmId != nil {
                map["fsmId"] = self.fsmId!
            }
            if self.groupType != nil {
                map["groupType"] = self.groupType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskNodes != nil {
                var tmp : [Any] = []
                for k in self.taskNodes! {
                    tmp.append(k.toMap())
                }
                map["taskNodes"] = tmp
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("extraAttribute") && dict["extraAttribute"] != nil {
                self.extraAttribute = dict["extraAttribute"] as! String
            }
            if dict.keys.contains("field3") && dict["field3"] != nil {
                self.field3 = dict["field3"] as! String
            }
            if dict.keys.contains("fsmId") && dict["fsmId"] != nil {
                self.fsmId = dict["fsmId"] as! String
            }
            if dict.keys.contains("groupType") && dict["groupType"] != nil {
                self.groupType = dict["groupType"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [ListDataSourceTasksResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListDataSourceTasksResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("taskNodes") && dict["taskNodes"] != nil {
                var tmp : [ListDataSourceTasksResponseBody.Result.TaskNodes] = []
                for v in dict["taskNodes"] as! [Any] {
                    var model = ListDataSourceTasksResponseBody.Result.TaskNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskNodes = tmp
            }
            if dict.keys.contains("time") && dict["time"] != nil {
                self.time = dict["time"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("user") && dict["user"] != nil {
                self.user = dict["user"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataSourceTasksResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListDataSourceTasksResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDataSourceTasksResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListDataSourceTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceTasksResponseBody?

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
            var model = ListDataSourceTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourcesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var domain: String?

        public var indexes: [String]?

        public var lastFulTime: Int64?

        public var name: String?

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
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.lastFulTime != nil {
                map["lastFulTime"] = self.lastFulTime!
            }
            if self.name != nil {
                map["name"] = self.name!
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
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("indexes") && dict["indexes"] != nil {
                self.indexes = dict["indexes"] as! [String]
            }
            if dict.keys.contains("lastFulTime") && dict["lastFulTime"] != nil {
                self.lastFulTime = dict["lastFulTime"] as! Int64
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataSourcesResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListDataSourcesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDataSourcesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourcesResponseBody?

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
            var model = ListDataSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDateSourceGenerationsRequest : Tea.TeaModel {
    public var domainName: String?

    public var validStatus: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.validStatus != nil {
            map["validStatus"] = self.validStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domainName") && dict["domainName"] != nil {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("validStatus") && dict["validStatus"] != nil {
            self.validStatus = dict["validStatus"] as! Bool
        }
    }
}

public class ListDateSourceGenerationsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var buildDeployId: Int32?

        public var createTime: Int64?

        public var dataDumpRoot: String?

        public var generation: Int64?

        public var partition: [String: Int32]?

        public var status: String?

        public var timestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildDeployId != nil {
                map["buildDeployId"] = self.buildDeployId!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dataDumpRoot != nil {
                map["dataDumpRoot"] = self.dataDumpRoot!
            }
            if self.generation != nil {
                map["generation"] = self.generation!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("buildDeployId") && dict["buildDeployId"] != nil {
                self.buildDeployId = dict["buildDeployId"] as! Int32
            }
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("dataDumpRoot") && dict["dataDumpRoot"] != nil {
                self.dataDumpRoot = dict["dataDumpRoot"] as! String
            }
            if dict.keys.contains("generation") && dict["generation"] != nil {
                self.generation = dict["generation"] as! Int64
            }
            if dict.keys.contains("partition") && dict["partition"] != nil {
                self.partition = dict["partition"] as! [String: Int32]
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("timestamp") && dict["timestamp"] != nil {
                self.timestamp = dict["timestamp"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: [ListDateSourceGenerationsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListDateSourceGenerationsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDateSourceGenerationsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListDateSourceGenerationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDateSourceGenerationsResponseBody?

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
            var model = ListDateSourceGenerationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIndexesRequest : Tea.TeaModel {
    public var newMode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newMode != nil {
            map["newMode"] = self.newMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("newMode") && dict["newMode"] != nil {
            self.newMode = dict["newMode"] as! Bool
        }
    }
}

public class ListIndexesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataSourceInfo : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var accessKey: String?

                public var accessSecret: String?

                public var bucket: String?

                public var endpoint: String?

                public var namespace: String?

                public var ossPath: String?

                public var partition: String?

                public var path: String?

                public var project: String?

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
                    if self.accessKey != nil {
                        map["accessKey"] = self.accessKey!
                    }
                    if self.accessSecret != nil {
                        map["accessSecret"] = self.accessSecret!
                    }
                    if self.bucket != nil {
                        map["bucket"] = self.bucket!
                    }
                    if self.endpoint != nil {
                        map["endpoint"] = self.endpoint!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.ossPath != nil {
                        map["ossPath"] = self.ossPath!
                    }
                    if self.partition != nil {
                        map["partition"] = self.partition!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.project != nil {
                        map["project"] = self.project!
                    }
                    if self.table != nil {
                        map["table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("accessKey") && dict["accessKey"] != nil {
                        self.accessKey = dict["accessKey"] as! String
                    }
                    if dict.keys.contains("accessSecret") && dict["accessSecret"] != nil {
                        self.accessSecret = dict["accessSecret"] as! String
                    }
                    if dict.keys.contains("bucket") && dict["bucket"] != nil {
                        self.bucket = dict["bucket"] as! String
                    }
                    if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                        self.endpoint = dict["endpoint"] as! String
                    }
                    if dict.keys.contains("namespace") && dict["namespace"] != nil {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("ossPath") && dict["ossPath"] != nil {
                        self.ossPath = dict["ossPath"] as! String
                    }
                    if dict.keys.contains("partition") && dict["partition"] != nil {
                        self.partition = dict["partition"] as! String
                    }
                    if dict.keys.contains("path") && dict["path"] != nil {
                        self.path = dict["path"] as! String
                    }
                    if dict.keys.contains("project") && dict["project"] != nil {
                        self.project = dict["project"] as! String
                    }
                    if dict.keys.contains("table") && dict["table"] != nil {
                        self.table = dict["table"] as! String
                    }
                }
            }
            public class SaroConfig : Tea.TeaModel {
                public var namespace: String?

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
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.tableName != nil {
                        map["tableName"] = self.tableName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("namespace") && dict["namespace"] != nil {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("tableName") && dict["tableName"] != nil {
                        self.tableName = dict["tableName"] as! String
                    }
                }
            }
            public var autoBuildIndex: Bool?

            public var config: ListIndexesResponseBody.Result.DataSourceInfo.Config?

            public var domain: String?

            public var name: String?

            public var processPartitionCount: Int32?

            public var saroConfig: ListIndexesResponseBody.Result.DataSourceInfo.SaroConfig?

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
                try self.saroConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoBuildIndex != nil {
                    map["autoBuildIndex"] = self.autoBuildIndex!
                }
                if self.config != nil {
                    map["config"] = self.config?.toMap()
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.processPartitionCount != nil {
                    map["processPartitionCount"] = self.processPartitionCount!
                }
                if self.saroConfig != nil {
                    map["saroConfig"] = self.saroConfig?.toMap()
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("autoBuildIndex") && dict["autoBuildIndex"] != nil {
                    self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
                }
                if dict.keys.contains("config") && dict["config"] != nil {
                    var model = ListIndexesResponseBody.Result.DataSourceInfo.Config()
                    model.fromMap(dict["config"] as! [String: Any])
                    self.config = model
                }
                if dict.keys.contains("domain") && dict["domain"] != nil {
                    self.domain = dict["domain"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("processPartitionCount") && dict["processPartitionCount"] != nil {
                    self.processPartitionCount = dict["processPartitionCount"] as! Int32
                }
                if dict.keys.contains("saroConfig") && dict["saroConfig"] != nil {
                    var model = ListIndexesResponseBody.Result.DataSourceInfo.SaroConfig()
                    model.fromMap(dict["saroConfig"] as! [String: Any])
                    self.saroConfig = model
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class Versions : Tea.TeaModel {
            public class Files : Tea.TeaModel {
                public var fullPathName: String?

                public var isDir: Bool?

                public var isTemplate: Bool?

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
                    if self.fullPathName != nil {
                        map["fullPathName"] = self.fullPathName!
                    }
                    if self.isDir != nil {
                        map["isDir"] = self.isDir!
                    }
                    if self.isTemplate != nil {
                        map["isTemplate"] = self.isTemplate!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("fullPathName") && dict["fullPathName"] != nil {
                        self.fullPathName = dict["fullPathName"] as! String
                    }
                    if dict.keys.contains("isDir") && dict["isDir"] != nil {
                        self.isDir = dict["isDir"] as! Bool
                    }
                    if dict.keys.contains("isTemplate") && dict["isTemplate"] != nil {
                        self.isTemplate = dict["isTemplate"] as! Bool
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                }
            }
            public var desc: String?

            public var files: [ListIndexesResponseBody.Result.Versions.Files]?

            public var name: String?

            public var status: String?

            public var updateTime: Int64?

            public var versionId: Int32?

            public override init() {
                super.init()
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
                if self.files != nil {
                    var tmp : [Any] = []
                    for k in self.files! {
                        tmp.append(k.toMap())
                    }
                    map["files"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.versionId != nil {
                    map["versionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("desc") && dict["desc"] != nil {
                    self.desc = dict["desc"] as! String
                }
                if dict.keys.contains("files") && dict["files"] != nil {
                    var tmp : [ListIndexesResponseBody.Result.Versions.Files] = []
                    for v in dict["files"] as! [Any] {
                        var model = ListIndexesResponseBody.Result.Versions.Files()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.files = tmp
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
                    self.updateTime = dict["updateTime"] as! Int64
                }
                if dict.keys.contains("versionId") && dict["versionId"] != nil {
                    self.versionId = dict["versionId"] as! Int32
                }
            }
        }
        public var content: String?

        public var dataSource: String?

        public var dataSourceInfo: ListIndexesResponseBody.Result.DataSourceInfo?

        public var description_: String?

        public var domain: String?

        public var fullUpdateTime: String?

        public var fullVersion: Int64?

        public var incUpdateTime: String?

        public var indexSize: Int64?

        public var indexStatus: String?

        public var name: String?

        public var partition: Int32?

        public var versions: [ListIndexesResponseBody.Result.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataSourceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.dataSource != nil {
                map["dataSource"] = self.dataSource!
            }
            if self.dataSourceInfo != nil {
                map["dataSourceInfo"] = self.dataSourceInfo?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.fullUpdateTime != nil {
                map["fullUpdateTime"] = self.fullUpdateTime!
            }
            if self.fullVersion != nil {
                map["fullVersion"] = self.fullVersion!
            }
            if self.incUpdateTime != nil {
                map["incUpdateTime"] = self.incUpdateTime!
            }
            if self.indexSize != nil {
                map["indexSize"] = self.indexSize!
            }
            if self.indexStatus != nil {
                map["indexStatus"] = self.indexStatus!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("dataSource") && dict["dataSource"] != nil {
                self.dataSource = dict["dataSource"] as! String
            }
            if dict.keys.contains("dataSourceInfo") && dict["dataSourceInfo"] != nil {
                var model = ListIndexesResponseBody.Result.DataSourceInfo()
                model.fromMap(dict["dataSourceInfo"] as! [String: Any])
                self.dataSourceInfo = model
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") && dict["domain"] != nil {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("fullUpdateTime") && dict["fullUpdateTime"] != nil {
                self.fullUpdateTime = dict["fullUpdateTime"] as! String
            }
            if dict.keys.contains("fullVersion") && dict["fullVersion"] != nil {
                self.fullVersion = dict["fullVersion"] as! Int64
            }
            if dict.keys.contains("incUpdateTime") && dict["incUpdateTime"] != nil {
                self.incUpdateTime = dict["incUpdateTime"] as! String
            }
            if dict.keys.contains("indexSize") && dict["indexSize"] != nil {
                self.indexSize = dict["indexSize"] as! Int64
            }
            if dict.keys.contains("indexStatus") && dict["indexStatus"] != nil {
                self.indexStatus = dict["indexStatus"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("partition") && dict["partition"] != nil {
                self.partition = dict["partition"] as! Int32
            }
            if dict.keys.contains("versions") && dict["versions"] != nil {
                var tmp : [ListIndexesResponseBody.Result.Versions] = []
                for v in dict["versions"] as! [Any] {
                    var model = ListIndexesResponseBody.Result.Versions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.versions = tmp
            }
        }
    }
    public var requestId: String?

    public var result: [ListIndexesResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListIndexesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListIndexesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListIndexesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIndexesResponseBody?

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
            var model = ListIndexesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstanceSpecsRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class ListInstanceSpecsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var cpu: Int32?

        public var maxDisk: Int32?

        public var mem: Int32?

        public var minDisk: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["cpu"] = self.cpu!
            }
            if self.maxDisk != nil {
                map["maxDisk"] = self.maxDisk!
            }
            if self.mem != nil {
                map["mem"] = self.mem!
            }
            if self.minDisk != nil {
                map["minDisk"] = self.minDisk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cpu") && dict["cpu"] != nil {
                self.cpu = dict["cpu"] as! Int32
            }
            if dict.keys.contains("maxDisk") && dict["maxDisk"] != nil {
                self.maxDisk = dict["maxDisk"] as! Int32
            }
            if dict.keys.contains("mem") && dict["mem"] != nil {
                self.mem = dict["mem"] as! Int32
            }
            if dict.keys.contains("minDisk") && dict["minDisk"] != nil {
                self.minDisk = dict["minDisk"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: [ListInstanceSpecsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListInstanceSpecsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListInstanceSpecsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListInstanceSpecsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceSpecsResponseBody?

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
            var model = ListInstanceSpecsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var description_: String?

    public var edition: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var tags: [ListInstancesRequest.Tags]?

    public override init() {
        super.init()
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
        if self.edition != nil {
            map["edition"] = self.edition!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("edition") && dict["edition"] != nil {
            self.edition = dict["edition"] as! String
        }
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [ListInstancesRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = ListInstancesRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListInstancesShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var edition: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
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
        if self.edition != nil {
            map["edition"] = self.edition!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("edition") && dict["edition"] != nil {
            self.edition = dict["edition"] as! String
        }
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tagsShrink = dict["tags"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Network : Tea.TeaModel {
            public var endpoint: String?

            public var vSwitchId: String?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.vSwitchId != nil {
                    map["vSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("vSwitchId") && dict["vSwitchId"] != nil {
                    self.vSwitchId = dict["vSwitchId"] as! String
                }
                if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
                    self.vpcId = dict["vpcId"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") && dict["key"] != nil {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var chargeType: String?

        public var commodityCode: String?

        public var createTime: String?

        public var description_: String?

        public var expiredTime: String?

        public var inDebt: Bool?

        public var instanceId: String?

        public var lockMode: String?

        public var network: ListInstancesResponseBody.Result.Network?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [ListInstancesResponseBody.Result.Tags]?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.network?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.expiredTime != nil {
                map["expiredTime"] = self.expiredTime!
            }
            if self.inDebt != nil {
                map["inDebt"] = self.inDebt!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("expiredTime") && dict["expiredTime"] != nil {
                self.expiredTime = dict["expiredTime"] as! String
            }
            if dict.keys.contains("inDebt") && dict["inDebt"] != nil {
                self.inDebt = dict["inDebt"] as! Bool
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("network") && dict["network"] != nil {
                var model = ListInstancesResponseBody.Result.Network()
                model.fromMap(dict["network"] as! [String: Any])
                self.network = model
            }
            if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [ListInstancesResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListInstancesResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
                self.updateTime = dict["updateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListInstancesResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListInstancesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListInstancesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOnlineConfigsRequest : Tea.TeaModel {
    public var domain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
    }
}

public class ListOnlineConfigsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var config: String?

        public var indexName: String?

        public override init() {
            super.init()
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
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") && dict["config"] != nil {
                self.config = dict["config"] as! String
            }
            if dict.keys.contains("indexName") && dict["indexName"] != nil {
                self.indexName = dict["indexName"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListOnlineConfigsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var tmp : [ListOnlineConfigsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListOnlineConfigsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListOnlineConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOnlineConfigsResponseBody?

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
            var model = ListOnlineConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQueryResultRequest : Tea.TeaModel {
    public var query: String?

    public var sql: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.sql != nil {
            map["sql"] = self.sql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("query") && dict["query"] != nil {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("sql") && dict["sql"] != nil {
            self.sql = dict["sql"] as! String
        }
    }
}

public class ListQueryResultResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListQueryResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueryResultResponseBody?

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
            var model = ListQueryResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAdvanceConfigFileRequest : Tea.TeaModel {
    public var content: String?

    public var variables: [String: VariablesValue]?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") && dict["content"] != nil {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("variables") && dict["variables"] != nil {
            var tmp : [String: VariablesValue] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = VariablesValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
        if dict.keys.contains("fileName") && dict["fileName"] != nil {
            self.fileName = dict["fileName"] as! String
        }
    }
}

public class ModifyAdvanceConfigFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyAdvanceConfigFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAdvanceConfigFileResponseBody?

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
            var model = ModifyAdvanceConfigFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterDescRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public override init() {
        super.init()
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
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class ModifyClusterDescResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyClusterDescResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterDescResponseBody?

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
            var model = ModifyClusterDescResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterOfflineConfigRequest : Tea.TeaModel {
    public var buildMode: String?

    public var config: [String: Int32]?

    public var dataSource: String?

    public var dataSourceType: String?

    public var dataTimeSec: Int32?

    public var domain: String?

    public var generation: Int64?

    public var partition: String?

    public var triggerBuild: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildMode != nil {
            map["buildMode"] = self.buildMode!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.dataSource != nil {
            map["dataSource"] = self.dataSource!
        }
        if self.dataSourceType != nil {
            map["dataSourceType"] = self.dataSourceType!
        }
        if self.dataTimeSec != nil {
            map["dataTimeSec"] = self.dataTimeSec!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.triggerBuild != nil {
            map["triggerBuild"] = self.triggerBuild!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildMode") && dict["buildMode"] != nil {
            self.buildMode = dict["buildMode"] as! String
        }
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! [String: Int32]
        }
        if dict.keys.contains("dataSource") && dict["dataSource"] != nil {
            self.dataSource = dict["dataSource"] as! String
        }
        if dict.keys.contains("dataSourceType") && dict["dataSourceType"] != nil {
            self.dataSourceType = dict["dataSourceType"] as! String
        }
        if dict.keys.contains("dataTimeSec") && dict["dataTimeSec"] != nil {
            self.dataTimeSec = dict["dataTimeSec"] as! Int32
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("generation") && dict["generation"] != nil {
            self.generation = dict["generation"] as! Int64
        }
        if dict.keys.contains("partition") && dict["partition"] != nil {
            self.partition = dict["partition"] as! String
        }
        if dict.keys.contains("triggerBuild") && dict["triggerBuild"] != nil {
            self.triggerBuild = dict["triggerBuild"] as! Bool
        }
    }
}

public class ModifyClusterOfflineConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyClusterOfflineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterOfflineConfigResponseBody?

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
            var model = ModifyClusterOfflineConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterOnlineConfigRequest : Tea.TeaModel {
    public var clusters: [String]?

    public var config: [String: Int32]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            map["clusters"] = self.clusters!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusters") && dict["clusters"] != nil {
            self.clusters = dict["clusters"] as! [String]
        }
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! [String: Int32]
        }
    }
}

public class ModifyClusterOnlineConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyClusterOnlineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterOnlineConfigResponseBody?

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
            var model = ModifyClusterOnlineConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDataSourceRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public var dryRun: Bool?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
        }
        if dict.keys.contains("dryRun") && dict["dryRun"] != nil {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class ModifyDataSourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDataSourceResponseBody?

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
            var model = ModifyDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyFileRequest : Tea.TeaModel {
    public var content: String?

    public var partition: Int32?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") && dict["content"] != nil {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("partition") && dict["partition"] != nil {
            self.partition = dict["partition"] as! Int32
        }
        if dict.keys.contains("fileName") && dict["fileName"] != nil {
            self.fileName = dict["fileName"] as! String
        }
    }
}

public class ModifyFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFileResponseBody?

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
            var model = ModifyFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIndexPartitionRequest : Tea.TeaModel {
    public class IndexInfos : Tea.TeaModel {
        public var indexName: String?

        public var parallelNum: Int32?

        public var partitionCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            if self.parallelNum != nil {
                map["parallelNum"] = self.parallelNum!
            }
            if self.partitionCount != nil {
                map["partitionCount"] = self.partitionCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("indexName") && dict["indexName"] != nil {
                self.indexName = dict["indexName"] as! String
            }
            if dict.keys.contains("parallelNum") && dict["parallelNum"] != nil {
                self.parallelNum = dict["parallelNum"] as! Int32
            }
            if dict.keys.contains("partitionCount") && dict["partitionCount"] != nil {
                self.partitionCount = dict["partitionCount"] as! Int32
            }
        }
    }
    public var dataSourceName: String?

    public var domainName: String?

    public var generation: Int64?

    public var indexInfos: [ModifyIndexPartitionRequest.IndexInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.indexInfos != nil {
            var tmp : [Any] = []
            for k in self.indexInfos! {
                tmp.append(k.toMap())
            }
            map["indexInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSourceName") && dict["dataSourceName"] != nil {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("domainName") && dict["domainName"] != nil {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("generation") && dict["generation"] != nil {
            self.generation = dict["generation"] as! Int64
        }
        if dict.keys.contains("indexInfos") && dict["indexInfos"] != nil {
            var tmp : [ModifyIndexPartitionRequest.IndexInfos] = []
            for v in dict["indexInfos"] as! [Any] {
                var model = ModifyIndexPartitionRequest.IndexInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.indexInfos = tmp
        }
    }
}

public class ModifyIndexPartitionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyIndexPartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIndexPartitionResponseBody?

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
            var model = ModifyIndexPartitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIndexVersionRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var buildDeployId: String?

        public var indexName: String?

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
            if self.buildDeployId != nil {
                map["buildDeployId"] = self.buildDeployId!
            }
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("buildDeployId") && dict["buildDeployId"] != nil {
                self.buildDeployId = dict["buildDeployId"] as! String
            }
            if dict.keys.contains("indexName") && dict["indexName"] != nil {
                self.indexName = dict["indexName"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var body: [ModifyIndexVersionRequest.Body]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var tmp : [ModifyIndexVersionRequest.Body] = []
            for v in dict["body"] as! [Any] {
                var model = ModifyIndexVersionRequest.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class ModifyIndexVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyIndexVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIndexVersionResponseBody?

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
            var model = ModifyIndexVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyNodeConfigRequest : Tea.TeaModel {
    public var active: Bool?

    public var dataDuplicateNumber: Int32?

    public var dataFragmentNumber: Int32?

    public var minServicePercent: Int32?

    public var published: Bool?

    public var clusterName: String?

    public var dataSourceName: String?

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
        if self.active != nil {
            map["active"] = self.active!
        }
        if self.dataDuplicateNumber != nil {
            map["dataDuplicateNumber"] = self.dataDuplicateNumber!
        }
        if self.dataFragmentNumber != nil {
            map["dataFragmentNumber"] = self.dataFragmentNumber!
        }
        if self.minServicePercent != nil {
            map["minServicePercent"] = self.minServicePercent!
        }
        if self.published != nil {
            map["published"] = self.published!
        }
        if self.clusterName != nil {
            map["clusterName"] = self.clusterName!
        }
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
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
        if dict.keys.contains("active") && dict["active"] != nil {
            self.active = dict["active"] as! Bool
        }
        if dict.keys.contains("dataDuplicateNumber") && dict["dataDuplicateNumber"] != nil {
            self.dataDuplicateNumber = dict["dataDuplicateNumber"] as! Int32
        }
        if dict.keys.contains("dataFragmentNumber") && dict["dataFragmentNumber"] != nil {
            self.dataFragmentNumber = dict["dataFragmentNumber"] as! Int32
        }
        if dict.keys.contains("minServicePercent") && dict["minServicePercent"] != nil {
            self.minServicePercent = dict["minServicePercent"] as! Int32
        }
        if dict.keys.contains("published") && dict["published"] != nil {
            self.published = dict["published"] as! Bool
        }
        if dict.keys.contains("clusterName") && dict["clusterName"] != nil {
            self.clusterName = dict["clusterName"] as! String
        }
        if dict.keys.contains("dataSourceName") && dict["dataSourceName"] != nil {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class ModifyNodeConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyNodeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodeConfigResponseBody?

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
            var model = ModifyNodeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyOnlineConfigRequest : Tea.TeaModel {
    public var body: [String: String]?

    public override init() {
        super.init()
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
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: String]
        }
    }
}

public class ModifyOnlineConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyOnlineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOnlineConfigResponseBody?

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
            var model = ModifyOnlineConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPasswordRequest : Tea.TeaModel {
    public var password: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("password") && dict["password"] != nil {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("username") && dict["username"] != nil {
            self.username = dict["username"] as! String
        }
    }
}

public class ModifyPasswordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPasswordResponseBody?

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
            var model = ModifyPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishAdvanceConfigRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public override init() {
        super.init()
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
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class PublishAdvanceConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class PublishAdvanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishAdvanceConfigResponseBody?

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
            var model = PublishAdvanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishIndexVersionRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public override init() {
        super.init()
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
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class PublishIndexVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class PublishIndexVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishIndexVersionResponseBody?

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
            var model = PublishIndexVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoverIndexRequest : Tea.TeaModel {
    public var buildDeployId: Int32?

    public var dataSourceName: String?

    public var generation: String?

    public var indexName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildDeployId != nil {
            map["buildDeployId"] = self.buildDeployId!
        }
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.indexName != nil {
            map["indexName"] = self.indexName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildDeployId") && dict["buildDeployId"] != nil {
            self.buildDeployId = dict["buildDeployId"] as! Int32
        }
        if dict.keys.contains("dataSourceName") && dict["dataSourceName"] != nil {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("generation") && dict["generation"] != nil {
            self.generation = dict["generation"] as! String
        }
        if dict.keys.contains("indexName") && dict["indexName"] != nil {
            self.indexName = dict["indexName"] as! String
        }
    }
}

public class RecoverIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class RecoverIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoverIndexResponseBody?

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
            var model = RecoverIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class RemoveClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveClusterResponseBody?

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
            var model = RemoveClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class StopTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTaskResponseBody?

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
            var model = StopTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") && dict["code"] != nil {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var components: [UpdateInstanceRequest.Components]?

    public var description_: String?

    public var orderType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["components"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.orderType != nil {
            map["orderType"] = self.orderType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("components") && dict["components"] != nil {
            var tmp : [UpdateInstanceRequest.Components] = []
            for v in dict["components"] as! [Any] {
                var model = UpdateInstanceRequest.Components()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.components = tmp
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("orderType") && dict["orderType"] != nil {
            self.orderType = dict["orderType"] as! String
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chargeType: String?

        public var commodityCode: String?

        public var createTime: String?

        public var description_: String?

        public var expiredTime: String?

        public var inDebt: Bool?

        public var instanceId: String?

        public var lockMode: String?

        public var resourceGroupId: String?

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
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.expiredTime != nil {
                map["expiredTime"] = self.expiredTime!
            }
            if self.inDebt != nil {
                map["inDebt"] = self.inDebt!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("commodityCode") && dict["commodityCode"] != nil {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("expiredTime") && dict["expiredTime"] != nil {
                self.expiredTime = dict["expiredTime"] as! String
            }
            if dict.keys.contains("inDebt") && dict["inDebt"] != nil {
                self.inDebt = dict["inDebt"] as! Bool
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") && dict["lockMode"] != nil {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
                self.updateTime = dict["updateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: UpdateInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            var model = UpdateInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

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
            var model = UpdateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
