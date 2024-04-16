import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Artifact : Tea.TeaModel {
    public var bizId: String?

    public var creator: Int64?

    public var credential: Credential?

    public var gmtCreated: String?

    public var gmtModified: String?

    public var location: String?

    public var modifier: Int64?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credential?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["bizId"] = self.bizId!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.credential != nil {
            map["credential"] = self.credential?.toMap()
        }
        if self.gmtCreated != nil {
            map["gmtCreated"] = self.gmtCreated!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bizId") && dict["bizId"] != nil {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("credential") && dict["credential"] != nil {
            var model = Credential()
            model.fromMap(dict["credential"] as! [String: Any])
            self.credential = model
        }
        if dict.keys.contains("gmtCreated") && dict["gmtCreated"] != nil {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("location") && dict["location"] != nil {
            self.location = dict["location"] as! String
        }
        if dict.keys.contains("modifier") && dict["modifier"] != nil {
            self.modifier = dict["modifier"] as! Int64
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
    }
}

public class Category : Tea.TeaModel {
    public var bizId: String?

    public var creator: Int64?

    public var gmtCreated: String?

    public var gmtModified: String?

    public var modifier: Int64?

    public var name: String?

    public var parentBizId: String?

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
        if self.bizId != nil {
            map["bizId"] = self.bizId!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.gmtCreated != nil {
            map["gmtCreated"] = self.gmtCreated!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentBizId != nil {
            map["parentBizId"] = self.parentBizId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bizId") && dict["bizId"] != nil {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("gmtCreated") && dict["gmtCreated"] != nil {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("modifier") && dict["modifier"] != nil {
            self.modifier = dict["modifier"] as! Int64
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentBizId") && dict["parentBizId"] != nil {
            self.parentBizId = dict["parentBizId"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class Configuration : Tea.TeaModel {
    public var configFileName: String?

    public var configItemKey: String?

    public var configItemValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configFileName != nil {
            map["configFileName"] = self.configFileName!
        }
        if self.configItemKey != nil {
            map["configItemKey"] = self.configItemKey!
        }
        if self.configItemValue != nil {
            map["configItemValue"] = self.configItemValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("configFileName") && dict["configFileName"] != nil {
            self.configFileName = dict["configFileName"] as! String
        }
        if dict.keys.contains("configItemKey") && dict["configItemKey"] != nil {
            self.configItemKey = dict["configItemKey"] as! String
        }
        if dict.keys.contains("configItemValue") && dict["configItemValue"] != nil {
            self.configItemValue = dict["configItemValue"] as! String
        }
    }
}

public class Credential : Tea.TeaModel {
    public var accessId: String?

    public var dir: String?

    public var expire: String?

    public var host: String?

    public var policy: String?

    public var securityToken: String?

    public var signature: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessId != nil {
            map["accessId"] = self.accessId!
        }
        if self.dir != nil {
            map["dir"] = self.dir!
        }
        if self.expire != nil {
            map["expire"] = self.expire!
        }
        if self.host != nil {
            map["host"] = self.host!
        }
        if self.policy != nil {
            map["policy"] = self.policy!
        }
        if self.securityToken != nil {
            map["securityToken"] = self.securityToken!
        }
        if self.signature != nil {
            map["signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessId") && dict["accessId"] != nil {
            self.accessId = dict["accessId"] as! String
        }
        if dict.keys.contains("dir") && dict["dir"] != nil {
            self.dir = dict["dir"] as! String
        }
        if dict.keys.contains("expire") && dict["expire"] != nil {
            self.expire = dict["expire"] as! String
        }
        if dict.keys.contains("host") && dict["host"] != nil {
            self.host = dict["host"] as! String
        }
        if dict.keys.contains("policy") && dict["policy"] != nil {
            self.policy = dict["policy"] as! String
        }
        if dict.keys.contains("securityToken") && dict["securityToken"] != nil {
            self.securityToken = dict["securityToken"] as! String
        }
        if dict.keys.contains("signature") && dict["signature"] != nil {
            self.signature = dict["signature"] as! String
        }
    }
}

public class JobDriver : Tea.TeaModel {
    public class SparkSubmit : Tea.TeaModel {
        public var entryPoint: String?

        public var entryPointArguments: [String]?

        public var sparkSubmitParameters: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entryPoint != nil {
                map["entryPoint"] = self.entryPoint!
            }
            if self.entryPointArguments != nil {
                map["entryPointArguments"] = self.entryPointArguments!
            }
            if self.sparkSubmitParameters != nil {
                map["sparkSubmitParameters"] = self.sparkSubmitParameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("entryPoint") && dict["entryPoint"] != nil {
                self.entryPoint = dict["entryPoint"] as! String
            }
            if dict.keys.contains("entryPointArguments") && dict["entryPointArguments"] != nil {
                self.entryPointArguments = dict["entryPointArguments"] as! [String]
            }
            if dict.keys.contains("sparkSubmitParameters") && dict["sparkSubmitParameters"] != nil {
                self.sparkSubmitParameters = dict["sparkSubmitParameters"] as! String
            }
        }
    }
    public var sparkSubmit: JobDriver.SparkSubmit?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sparkSubmit?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sparkSubmit != nil {
            map["sparkSubmit"] = self.sparkSubmit?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sparkSubmit") && dict["sparkSubmit"] != nil {
            var model = JobDriver.SparkSubmit()
            model.fromMap(dict["sparkSubmit"] as! [String: Any])
            self.sparkSubmit = model
        }
    }
}

public class PrincipalAction : Tea.TeaModel {
    public var actionArn: String?

    public var principalArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionArn != nil {
            map["actionArn"] = self.actionArn!
        }
        if self.principalArn != nil {
            map["principalArn"] = self.principalArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("actionArn") && dict["actionArn"] != nil {
            self.actionArn = dict["actionArn"] as! String
        }
        if dict.keys.contains("principalArn") && dict["principalArn"] != nil {
            self.principalArn = dict["principalArn"] as! String
        }
    }
}

public class ReleaseVersionImage : Tea.TeaModel {
    public var cpuArchitecture: String?

    public var imageId: String?

    public var runtimeEngineType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpuArchitecture != nil {
            map["cpuArchitecture"] = self.cpuArchitecture!
        }
        if self.imageId != nil {
            map["imageId"] = self.imageId!
        }
        if self.runtimeEngineType != nil {
            map["runtimeEngineType"] = self.runtimeEngineType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cpuArchitecture") && dict["cpuArchitecture"] != nil {
            self.cpuArchitecture = dict["cpuArchitecture"] as! String
        }
        if dict.keys.contains("imageId") && dict["imageId"] != nil {
            self.imageId = dict["imageId"] as! String
        }
        if dict.keys.contains("runtimeEngineType") && dict["runtimeEngineType"] != nil {
            self.runtimeEngineType = dict["runtimeEngineType"] as! String
        }
    }
}

public class RunLog : Tea.TeaModel {
    public var driverStdError: String?

    public var driverStdOut: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.driverStdError != nil {
            map["driverStdError"] = self.driverStdError!
        }
        if self.driverStdOut != nil {
            map["driverStdOut"] = self.driverStdOut!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("driverStdError") && dict["driverStdError"] != nil {
            self.driverStdError = dict["driverStdError"] as! String
        }
        if dict.keys.contains("driverStdOut") && dict["driverStdOut"] != nil {
            self.driverStdOut = dict["driverStdOut"] as! String
        }
    }
}

public class SparkConf : Tea.TeaModel {
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

public class SqlOutput : Tea.TeaModel {
    public class Rows : Tea.TeaModel {
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
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("values") && dict["values"] != nil {
                self.values = dict["values"] as! [String]
            }
        }
    }
    public class Schema : Tea.TeaModel {
        public class Fields : Tea.TeaModel {
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
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nullable") && dict["nullable"] != nil {
                    self.nullable = dict["nullable"] as! Bool
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var fields: [SqlOutput.Schema.Fields]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fields != nil {
                var tmp : [Any] = []
                for k in self.fields! {
                    tmp.append(k.toMap())
                }
                map["fields"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fields") && dict["fields"] != nil {
                var tmp : [SqlOutput.Schema.Fields] = []
                for v in dict["fields"] as! [Any] {
                    var model = SqlOutput.Schema.Fields()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fields = tmp
            }
        }
    }
    public var rows: [SqlOutput.Rows]?

    public var schema: SqlOutput.Schema?

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
        if self.rows != nil {
            var tmp : [Any] = []
            for k in self.rows! {
                tmp.append(k.toMap())
            }
            map["rows"] = tmp
        }
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("rows") && dict["rows"] != nil {
            var tmp : [SqlOutput.Rows] = []
            for v in dict["rows"] as! [Any] {
                var model = SqlOutput.Rows()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rows = tmp
        }
        if dict.keys.contains("schema") && dict["schema"] != nil {
            var model = SqlOutput.Schema()
            model.fromMap(dict["schema"] as! [String: Any])
            self.schema = model
        }
    }
}

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

public class Task : Tea.TeaModel {
    public var artifactUrl: String?

    public var bizId: String?

    public var categoryBizId: String?

    public var content: String?

    public var creator: Int64?

    public var defaultCatalogId: String?

    public var defaultDatabase: String?

    public var defaultResourceQueueId: String?

    public var defaultSqlComputeId: String?

    public var extraArtifactIds: [String]?

    public var gmtCreated: String?

    public var gmtModified: String?

    public var hasChanged: Bool?

    public var hasCommited: Bool?

    public var lastRunResourceQueueId: String?

    public var modifier: Int64?

    public var name: String?

    public var pyFiles: [String]?

    public var sparkArgs: String?

    public var sparkConf: [SparkConf]?

    public var sparkDriverCores: Int32?

    public var sparkDriverMemory: Int64?

    public var sparkEntrypoint: String?

    public var sparkExecutorCores: Int32?

    public var sparkExecutorMemory: Int64?

    public var sparkLogLevel: String?

    public var sparkLogPath: String?

    public var sparkVersion: String?

    public var tags: [String: String]?

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
        if self.artifactUrl != nil {
            map["artifactUrl"] = self.artifactUrl!
        }
        if self.bizId != nil {
            map["bizId"] = self.bizId!
        }
        if self.categoryBizId != nil {
            map["categoryBizId"] = self.categoryBizId!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.defaultCatalogId != nil {
            map["defaultCatalogId"] = self.defaultCatalogId!
        }
        if self.defaultDatabase != nil {
            map["defaultDatabase"] = self.defaultDatabase!
        }
        if self.defaultResourceQueueId != nil {
            map["defaultResourceQueueId"] = self.defaultResourceQueueId!
        }
        if self.defaultSqlComputeId != nil {
            map["defaultSqlComputeId"] = self.defaultSqlComputeId!
        }
        if self.extraArtifactIds != nil {
            map["extraArtifactIds"] = self.extraArtifactIds!
        }
        if self.gmtCreated != nil {
            map["gmtCreated"] = self.gmtCreated!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.hasChanged != nil {
            map["hasChanged"] = self.hasChanged!
        }
        if self.hasCommited != nil {
            map["hasCommited"] = self.hasCommited!
        }
        if self.lastRunResourceQueueId != nil {
            map["lastRunResourceQueueId"] = self.lastRunResourceQueueId!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pyFiles != nil {
            map["pyFiles"] = self.pyFiles!
        }
        if self.sparkArgs != nil {
            map["sparkArgs"] = self.sparkArgs!
        }
        if self.sparkConf != nil {
            var tmp : [Any] = []
            for k in self.sparkConf! {
                tmp.append(k.toMap())
            }
            map["sparkConf"] = tmp
        }
        if self.sparkDriverCores != nil {
            map["sparkDriverCores"] = self.sparkDriverCores!
        }
        if self.sparkDriverMemory != nil {
            map["sparkDriverMemory"] = self.sparkDriverMemory!
        }
        if self.sparkEntrypoint != nil {
            map["sparkEntrypoint"] = self.sparkEntrypoint!
        }
        if self.sparkExecutorCores != nil {
            map["sparkExecutorCores"] = self.sparkExecutorCores!
        }
        if self.sparkExecutorMemory != nil {
            map["sparkExecutorMemory"] = self.sparkExecutorMemory!
        }
        if self.sparkLogLevel != nil {
            map["sparkLogLevel"] = self.sparkLogLevel!
        }
        if self.sparkLogPath != nil {
            map["sparkLogPath"] = self.sparkLogPath!
        }
        if self.sparkVersion != nil {
            map["sparkVersion"] = self.sparkVersion!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifactUrl") && dict["artifactUrl"] != nil {
            self.artifactUrl = dict["artifactUrl"] as! String
        }
        if dict.keys.contains("bizId") && dict["bizId"] != nil {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("categoryBizId") && dict["categoryBizId"] != nil {
            self.categoryBizId = dict["categoryBizId"] as! String
        }
        if dict.keys.contains("content") && dict["content"] != nil {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("defaultCatalogId") && dict["defaultCatalogId"] != nil {
            self.defaultCatalogId = dict["defaultCatalogId"] as! String
        }
        if dict.keys.contains("defaultDatabase") && dict["defaultDatabase"] != nil {
            self.defaultDatabase = dict["defaultDatabase"] as! String
        }
        if dict.keys.contains("defaultResourceQueueId") && dict["defaultResourceQueueId"] != nil {
            self.defaultResourceQueueId = dict["defaultResourceQueueId"] as! String
        }
        if dict.keys.contains("defaultSqlComputeId") && dict["defaultSqlComputeId"] != nil {
            self.defaultSqlComputeId = dict["defaultSqlComputeId"] as! String
        }
        if dict.keys.contains("extraArtifactIds") && dict["extraArtifactIds"] != nil {
            self.extraArtifactIds = dict["extraArtifactIds"] as! [String]
        }
        if dict.keys.contains("gmtCreated") && dict["gmtCreated"] != nil {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("hasChanged") && dict["hasChanged"] != nil {
            self.hasChanged = dict["hasChanged"] as! Bool
        }
        if dict.keys.contains("hasCommited") && dict["hasCommited"] != nil {
            self.hasCommited = dict["hasCommited"] as! Bool
        }
        if dict.keys.contains("lastRunResourceQueueId") && dict["lastRunResourceQueueId"] != nil {
            self.lastRunResourceQueueId = dict["lastRunResourceQueueId"] as! String
        }
        if dict.keys.contains("modifier") && dict["modifier"] != nil {
            self.modifier = dict["modifier"] as! Int64
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pyFiles") && dict["pyFiles"] != nil {
            self.pyFiles = dict["pyFiles"] as! [String]
        }
        if dict.keys.contains("sparkArgs") && dict["sparkArgs"] != nil {
            self.sparkArgs = dict["sparkArgs"] as! String
        }
        if dict.keys.contains("sparkConf") && dict["sparkConf"] != nil {
            var tmp : [SparkConf] = []
            for v in dict["sparkConf"] as! [Any] {
                var model = SparkConf()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sparkConf = tmp
        }
        if dict.keys.contains("sparkDriverCores") && dict["sparkDriverCores"] != nil {
            self.sparkDriverCores = dict["sparkDriverCores"] as! Int32
        }
        if dict.keys.contains("sparkDriverMemory") && dict["sparkDriverMemory"] != nil {
            self.sparkDriverMemory = dict["sparkDriverMemory"] as! Int64
        }
        if dict.keys.contains("sparkEntrypoint") && dict["sparkEntrypoint"] != nil {
            self.sparkEntrypoint = dict["sparkEntrypoint"] as! String
        }
        if dict.keys.contains("sparkExecutorCores") && dict["sparkExecutorCores"] != nil {
            self.sparkExecutorCores = dict["sparkExecutorCores"] as! Int32
        }
        if dict.keys.contains("sparkExecutorMemory") && dict["sparkExecutorMemory"] != nil {
            self.sparkExecutorMemory = dict["sparkExecutorMemory"] as! Int64
        }
        if dict.keys.contains("sparkLogLevel") && dict["sparkLogLevel"] != nil {
            self.sparkLogLevel = dict["sparkLogLevel"] as! String
        }
        if dict.keys.contains("sparkLogPath") && dict["sparkLogPath"] != nil {
            self.sparkLogPath = dict["sparkLogPath"] as! String
        }
        if dict.keys.contains("sparkVersion") && dict["sparkVersion"] != nil {
            self.sparkVersion = dict["sparkVersion"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tags = dict["tags"] as! [String: String]
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class TaskInstance : Tea.TeaModel {
    public var bizId: String?

    public var creator: Int64?

    public var fenixRunId: String?

    public var gmtCreated: String?

    public var taskBizId: String?

    public var taskInfo: Task?

    public var taskStatus: String?

    public var workspaceBizId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["bizId"] = self.bizId!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.fenixRunId != nil {
            map["fenixRunId"] = self.fenixRunId!
        }
        if self.gmtCreated != nil {
            map["gmtCreated"] = self.gmtCreated!
        }
        if self.taskBizId != nil {
            map["taskBizId"] = self.taskBizId!
        }
        if self.taskInfo != nil {
            map["taskInfo"] = self.taskInfo?.toMap()
        }
        if self.taskStatus != nil {
            map["taskStatus"] = self.taskStatus!
        }
        if self.workspaceBizId != nil {
            map["workspaceBizId"] = self.workspaceBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bizId") && dict["bizId"] != nil {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("fenixRunId") && dict["fenixRunId"] != nil {
            self.fenixRunId = dict["fenixRunId"] as! String
        }
        if dict.keys.contains("gmtCreated") && dict["gmtCreated"] != nil {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("taskBizId") && dict["taskBizId"] != nil {
            self.taskBizId = dict["taskBizId"] as! String
        }
        if dict.keys.contains("taskInfo") && dict["taskInfo"] != nil {
            var model = Task()
            model.fromMap(dict["taskInfo"] as! [String: Any])
            self.taskInfo = model
        }
        if dict.keys.contains("taskStatus") && dict["taskStatus"] != nil {
            self.taskStatus = dict["taskStatus"] as! String
        }
        if dict.keys.contains("workspaceBizId") && dict["workspaceBizId"] != nil {
            self.workspaceBizId = dict["workspaceBizId"] as! String
        }
    }
}

public class TaskSnapshot : Tea.TeaModel {
    public var bizId: String?

    public var commiter: Int64?

    public var gmtCreated: String?

    public var item: Task?

    public var message: String?

    public var taskBizId: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.item?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["bizId"] = self.bizId!
        }
        if self.commiter != nil {
            map["commiter"] = self.commiter!
        }
        if self.gmtCreated != nil {
            map["gmtCreated"] = self.gmtCreated!
        }
        if self.item != nil {
            map["item"] = self.item?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.taskBizId != nil {
            map["taskBizId"] = self.taskBizId!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bizId") && dict["bizId"] != nil {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("commiter") && dict["commiter"] != nil {
            self.commiter = dict["commiter"] as! Int64
        }
        if dict.keys.contains("gmtCreated") && dict["gmtCreated"] != nil {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("item") && dict["item"] != nil {
            var model = Task()
            model.fromMap(dict["item"] as! [String: Any])
            self.item = model
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("taskBizId") && dict["taskBizId"] != nil {
            self.taskBizId = dict["taskBizId"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class Template : Tea.TeaModel {
    public var creator: Int64?

    public var gmtCreated: String?

    public var gmtModified: String?

    public var modifier: Int64?

    public var sparkConf: [SparkConf]?

    public var sparkDriverCores: Int32?

    public var sparkDriverMemory: Int64?

    public var sparkExecutorCores: Int32?

    public var sparkExecutorMemory: Int64?

    public var sparkLogLevel: String?

    public var sparkLogPath: String?

    public var sparkVersion: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.gmtCreated != nil {
            map["gmtCreated"] = self.gmtCreated!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.sparkConf != nil {
            var tmp : [Any] = []
            for k in self.sparkConf! {
                tmp.append(k.toMap())
            }
            map["sparkConf"] = tmp
        }
        if self.sparkDriverCores != nil {
            map["sparkDriverCores"] = self.sparkDriverCores!
        }
        if self.sparkDriverMemory != nil {
            map["sparkDriverMemory"] = self.sparkDriverMemory!
        }
        if self.sparkExecutorCores != nil {
            map["sparkExecutorCores"] = self.sparkExecutorCores!
        }
        if self.sparkExecutorMemory != nil {
            map["sparkExecutorMemory"] = self.sparkExecutorMemory!
        }
        if self.sparkLogLevel != nil {
            map["sparkLogLevel"] = self.sparkLogLevel!
        }
        if self.sparkLogPath != nil {
            map["sparkLogPath"] = self.sparkLogPath!
        }
        if self.sparkVersion != nil {
            map["sparkVersion"] = self.sparkVersion!
        }
        if self.templateType != nil {
            map["templateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("gmtCreated") && dict["gmtCreated"] != nil {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("modifier") && dict["modifier"] != nil {
            self.modifier = dict["modifier"] as! Int64
        }
        if dict.keys.contains("sparkConf") && dict["sparkConf"] != nil {
            var tmp : [SparkConf] = []
            for v in dict["sparkConf"] as! [Any] {
                var model = SparkConf()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sparkConf = tmp
        }
        if dict.keys.contains("sparkDriverCores") && dict["sparkDriverCores"] != nil {
            self.sparkDriverCores = dict["sparkDriverCores"] as! Int32
        }
        if dict.keys.contains("sparkDriverMemory") && dict["sparkDriverMemory"] != nil {
            self.sparkDriverMemory = dict["sparkDriverMemory"] as! Int64
        }
        if dict.keys.contains("sparkExecutorCores") && dict["sparkExecutorCores"] != nil {
            self.sparkExecutorCores = dict["sparkExecutorCores"] as! Int32
        }
        if dict.keys.contains("sparkExecutorMemory") && dict["sparkExecutorMemory"] != nil {
            self.sparkExecutorMemory = dict["sparkExecutorMemory"] as! Int64
        }
        if dict.keys.contains("sparkLogLevel") && dict["sparkLogLevel"] != nil {
            self.sparkLogLevel = dict["sparkLogLevel"] as! String
        }
        if dict.keys.contains("sparkLogPath") && dict["sparkLogPath"] != nil {
            self.sparkLogPath = dict["sparkLogPath"] as! String
        }
        if dict.keys.contains("sparkVersion") && dict["sparkVersion"] != nil {
            self.sparkVersion = dict["sparkVersion"] as! String
        }
        if dict.keys.contains("templateType") && dict["templateType"] != nil {
            self.templateType = dict["templateType"] as! String
        }
    }
}

public class TimeRange : Tea.TeaModel {
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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! Int64
        }
    }
}

public class CancelJobRunRequest : Tea.TeaModel {
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
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class CancelJobRunResponseBody : Tea.TeaModel {
    public var jobRunId: String?

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
        if self.jobRunId != nil {
            map["jobRunId"] = self.jobRunId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobRunId") && dict["jobRunId"] != nil {
            self.jobRunId = dict["jobRunId"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CancelJobRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelJobRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CancelJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobRunRequest : Tea.TeaModel {
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
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class GetJobRunResponseBody : Tea.TeaModel {
    public class JobRun : Tea.TeaModel {
        public class ConfigurationOverrides : Tea.TeaModel {
            public var configurations: [Configuration]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configurations != nil {
                    var tmp : [Any] = []
                    for k in self.configurations! {
                        tmp.append(k.toMap())
                    }
                    map["configurations"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("configurations") && dict["configurations"] != nil {
                    var tmp : [Configuration] = []
                    for v in dict["configurations"] as! [Any] {
                        var model = Configuration()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.configurations = tmp
                }
            }
        }
        public class StateChangeReason : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.message != nil {
                    map["message"] = self.message!
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
            }
        }
        public var codeType: String?

        public var configurationOverrides: GetJobRunResponseBody.JobRun.ConfigurationOverrides?

        public var endTime: Int64?

        public var executionTimeoutSeconds: Int32?

        public var jobDriver: JobDriver?

        public var jobRunId: String?

        public var log: RunLog?

        public var name: String?

        public var releaseVersion: String?

        public var resourceOwnerId: String?

        public var resourceQueueId: String?

        public var state: String?

        public var stateChangeReason: GetJobRunResponseBody.JobRun.StateChangeReason?

        public var submitTime: Int64?

        public var tags: [Tag]?

        public var webUI: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.configurationOverrides?.validate()
            try self.jobDriver?.validate()
            try self.log?.validate()
            try self.stateChangeReason?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeType != nil {
                map["codeType"] = self.codeType!
            }
            if self.configurationOverrides != nil {
                map["configurationOverrides"] = self.configurationOverrides?.toMap()
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.executionTimeoutSeconds != nil {
                map["executionTimeoutSeconds"] = self.executionTimeoutSeconds!
            }
            if self.jobDriver != nil {
                map["jobDriver"] = self.jobDriver?.toMap()
            }
            if self.jobRunId != nil {
                map["jobRunId"] = self.jobRunId!
            }
            if self.log != nil {
                map["log"] = self.log?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.releaseVersion != nil {
                map["releaseVersion"] = self.releaseVersion!
            }
            if self.resourceOwnerId != nil {
                map["resourceOwnerId"] = self.resourceOwnerId!
            }
            if self.resourceQueueId != nil {
                map["resourceQueueId"] = self.resourceQueueId!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.stateChangeReason != nil {
                map["stateChangeReason"] = self.stateChangeReason?.toMap()
            }
            if self.submitTime != nil {
                map["submitTime"] = self.submitTime!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.webUI != nil {
                map["webUI"] = self.webUI!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("codeType") && dict["codeType"] != nil {
                self.codeType = dict["codeType"] as! String
            }
            if dict.keys.contains("configurationOverrides") && dict["configurationOverrides"] != nil {
                var model = GetJobRunResponseBody.JobRun.ConfigurationOverrides()
                model.fromMap(dict["configurationOverrides"] as! [String: Any])
                self.configurationOverrides = model
            }
            if dict.keys.contains("endTime") && dict["endTime"] != nil {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("executionTimeoutSeconds") && dict["executionTimeoutSeconds"] != nil {
                self.executionTimeoutSeconds = dict["executionTimeoutSeconds"] as! Int32
            }
            if dict.keys.contains("jobDriver") && dict["jobDriver"] != nil {
                var model = JobDriver()
                model.fromMap(dict["jobDriver"] as! [String: Any])
                self.jobDriver = model
            }
            if dict.keys.contains("jobRunId") && dict["jobRunId"] != nil {
                self.jobRunId = dict["jobRunId"] as! String
            }
            if dict.keys.contains("log") && dict["log"] != nil {
                var model = RunLog()
                model.fromMap(dict["log"] as! [String: Any])
                self.log = model
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("releaseVersion") && dict["releaseVersion"] != nil {
                self.releaseVersion = dict["releaseVersion"] as! String
            }
            if dict.keys.contains("resourceOwnerId") && dict["resourceOwnerId"] != nil {
                self.resourceOwnerId = dict["resourceOwnerId"] as! String
            }
            if dict.keys.contains("resourceQueueId") && dict["resourceQueueId"] != nil {
                self.resourceQueueId = dict["resourceQueueId"] as! String
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("stateChangeReason") && dict["stateChangeReason"] != nil {
                var model = GetJobRunResponseBody.JobRun.StateChangeReason()
                model.fromMap(dict["stateChangeReason"] as! [String: Any])
                self.stateChangeReason = model
            }
            if dict.keys.contains("submitTime") && dict["submitTime"] != nil {
                self.submitTime = dict["submitTime"] as! Int64
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [Tag] = []
                for v in dict["tags"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("webUI") && dict["webUI"] != nil {
                self.webUI = dict["webUI"] as! String
            }
            if dict.keys.contains("workspaceId") && dict["workspaceId"] != nil {
                self.workspaceId = dict["workspaceId"] as! String
            }
        }
    }
    public var jobRun: GetJobRunResponseBody.JobRun?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobRun?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobRun != nil {
            map["jobRun"] = self.jobRun?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobRun") && dict["jobRun"] != nil {
            var model = GetJobRunResponseBody.JobRun()
            model.fromMap(dict["jobRun"] as! [String: Any])
            self.jobRun = model
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetJobRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobRunsRequest : Tea.TeaModel {
    public class EndTime : Tea.TeaModel {
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
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endTime") && dict["endTime"] != nil {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("startTime") && dict["startTime"] != nil {
                self.startTime = dict["startTime"] as! Int64
            }
        }
    }
    public class StartTime : Tea.TeaModel {
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
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endTime") && dict["endTime"] != nil {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("startTime") && dict["startTime"] != nil {
                self.startTime = dict["startTime"] as! Int64
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
    public var creator: String?

    public var endTime: ListJobRunsRequest.EndTime?

    public var jobRunId: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceQueueId: String?

    public var startTime: ListJobRunsRequest.StartTime?

    public var states: [String]?

    public var tags: [ListJobRunsRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.endTime?.validate()
        try self.startTime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime?.toMap()
        }
        if self.jobRunId != nil {
            map["jobRunId"] = self.jobRunId!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceQueueId != nil {
            map["resourceQueueId"] = self.resourceQueueId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime?.toMap()
        }
        if self.states != nil {
            map["states"] = self.states!
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
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            var model = ListJobRunsRequest.EndTime()
            model.fromMap(dict["endTime"] as! [String: Any])
            self.endTime = model
        }
        if dict.keys.contains("jobRunId") && dict["jobRunId"] != nil {
            self.jobRunId = dict["jobRunId"] as! String
        }
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceQueueId") && dict["resourceQueueId"] != nil {
            self.resourceQueueId = dict["resourceQueueId"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            var model = ListJobRunsRequest.StartTime()
            model.fromMap(dict["startTime"] as! [String: Any])
            self.startTime = model
        }
        if dict.keys.contains("states") && dict["states"] != nil {
            self.states = dict["states"] as! [String]
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [ListJobRunsRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = ListJobRunsRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListJobRunsShrinkRequest : Tea.TeaModel {
    public var creator: String?

    public var endTimeShrink: String?

    public var jobRunId: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceQueueId: String?

    public var startTimeShrink: String?

    public var statesShrink: String?

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
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.endTimeShrink != nil {
            map["endTime"] = self.endTimeShrink!
        }
        if self.jobRunId != nil {
            map["jobRunId"] = self.jobRunId!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceQueueId != nil {
            map["resourceQueueId"] = self.resourceQueueId!
        }
        if self.startTimeShrink != nil {
            map["startTime"] = self.startTimeShrink!
        }
        if self.statesShrink != nil {
            map["states"] = self.statesShrink!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTimeShrink = dict["endTime"] as! String
        }
        if dict.keys.contains("jobRunId") && dict["jobRunId"] != nil {
            self.jobRunId = dict["jobRunId"] as! String
        }
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceQueueId") && dict["resourceQueueId"] != nil {
            self.resourceQueueId = dict["resourceQueueId"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTimeShrink = dict["startTime"] as! String
        }
        if dict.keys.contains("states") && dict["states"] != nil {
            self.statesShrink = dict["states"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tagsShrink = dict["tags"] as! String
        }
    }
}

public class ListJobRunsResponseBody : Tea.TeaModel {
    public class JobRuns : Tea.TeaModel {
        public class ConfigurationOverrides : Tea.TeaModel {
            public var configurations: [Configuration]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configurations != nil {
                    var tmp : [Any] = []
                    for k in self.configurations! {
                        tmp.append(k.toMap())
                    }
                    map["configurations"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("configurations") && dict["configurations"] != nil {
                    var tmp : [Configuration] = []
                    for v in dict["configurations"] as! [Any] {
                        var model = Configuration()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.configurations = tmp
                }
            }
        }
        public class StateChangeReason : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.message != nil {
                    map["message"] = self.message!
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
            }
        }
        public var codeType: String?

        public var configurationOverrides: ListJobRunsResponseBody.JobRuns.ConfigurationOverrides?

        public var creator: String?

        public var endTime: Int64?

        public var executionTimeoutSeconds: Int32?

        public var jobDriver: JobDriver?

        public var jobRunId: String?

        public var log: RunLog?

        public var name: String?

        public var releaseVersion: String?

        public var state: String?

        public var stateChangeReason: ListJobRunsResponseBody.JobRuns.StateChangeReason?

        public var submitTime: Int64?

        public var tags: [Tag]?

        public var webUI: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.configurationOverrides?.validate()
            try self.jobDriver?.validate()
            try self.log?.validate()
            try self.stateChangeReason?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeType != nil {
                map["codeType"] = self.codeType!
            }
            if self.configurationOverrides != nil {
                map["configurationOverrides"] = self.configurationOverrides?.toMap()
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.executionTimeoutSeconds != nil {
                map["executionTimeoutSeconds"] = self.executionTimeoutSeconds!
            }
            if self.jobDriver != nil {
                map["jobDriver"] = self.jobDriver?.toMap()
            }
            if self.jobRunId != nil {
                map["jobRunId"] = self.jobRunId!
            }
            if self.log != nil {
                map["log"] = self.log?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.releaseVersion != nil {
                map["releaseVersion"] = self.releaseVersion!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.stateChangeReason != nil {
                map["stateChangeReason"] = self.stateChangeReason?.toMap()
            }
            if self.submitTime != nil {
                map["submitTime"] = self.submitTime!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.webUI != nil {
                map["webUI"] = self.webUI!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("codeType") && dict["codeType"] != nil {
                self.codeType = dict["codeType"] as! String
            }
            if dict.keys.contains("configurationOverrides") && dict["configurationOverrides"] != nil {
                var model = ListJobRunsResponseBody.JobRuns.ConfigurationOverrides()
                model.fromMap(dict["configurationOverrides"] as! [String: Any])
                self.configurationOverrides = model
            }
            if dict.keys.contains("creator") && dict["creator"] != nil {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("endTime") && dict["endTime"] != nil {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("executionTimeoutSeconds") && dict["executionTimeoutSeconds"] != nil {
                self.executionTimeoutSeconds = dict["executionTimeoutSeconds"] as! Int32
            }
            if dict.keys.contains("jobDriver") && dict["jobDriver"] != nil {
                var model = JobDriver()
                model.fromMap(dict["jobDriver"] as! [String: Any])
                self.jobDriver = model
            }
            if dict.keys.contains("jobRunId") && dict["jobRunId"] != nil {
                self.jobRunId = dict["jobRunId"] as! String
            }
            if dict.keys.contains("log") && dict["log"] != nil {
                var model = RunLog()
                model.fromMap(dict["log"] as! [String: Any])
                self.log = model
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("releaseVersion") && dict["releaseVersion"] != nil {
                self.releaseVersion = dict["releaseVersion"] as! String
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("stateChangeReason") && dict["stateChangeReason"] != nil {
                var model = ListJobRunsResponseBody.JobRuns.StateChangeReason()
                model.fromMap(dict["stateChangeReason"] as! [String: Any])
                self.stateChangeReason = model
            }
            if dict.keys.contains("submitTime") && dict["submitTime"] != nil {
                self.submitTime = dict["submitTime"] as! Int64
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [Tag] = []
                for v in dict["tags"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("webUI") && dict["webUI"] != nil {
                self.webUI = dict["webUI"] as! String
            }
            if dict.keys.contains("workspaceId") && dict["workspaceId"] != nil {
                self.workspaceId = dict["workspaceId"] as! String
            }
        }
    }
    public var jobRuns: [ListJobRunsResponseBody.JobRuns]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.jobRuns != nil {
            var tmp : [Any] = []
            for k in self.jobRuns! {
                tmp.append(k.toMap())
            }
            map["jobRuns"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobRuns") && dict["jobRuns"] != nil {
            var tmp : [ListJobRunsResponseBody.JobRuns] = []
            for v in dict["jobRuns"] as! [Any] {
                var model = ListJobRunsResponseBody.JobRuns()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobRuns = tmp
        }
        if dict.keys.contains("maxResults") && dict["maxResults"] != nil {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListJobRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobRunsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListJobRunsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartJobRunRequest : Tea.TeaModel {
    public class ConfigurationOverrides : Tea.TeaModel {
        public class Configurations : Tea.TeaModel {
            public var configFileName: String?

            public var configItemKey: String?

            public var configItemValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configFileName != nil {
                    map["configFileName"] = self.configFileName!
                }
                if self.configItemKey != nil {
                    map["configItemKey"] = self.configItemKey!
                }
                if self.configItemValue != nil {
                    map["configItemValue"] = self.configItemValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("configFileName") && dict["configFileName"] != nil {
                    self.configFileName = dict["configFileName"] as! String
                }
                if dict.keys.contains("configItemKey") && dict["configItemKey"] != nil {
                    self.configItemKey = dict["configItemKey"] as! String
                }
                if dict.keys.contains("configItemValue") && dict["configItemValue"] != nil {
                    self.configItemValue = dict["configItemValue"] as! String
                }
            }
        }
        public var configurations: [StartJobRunRequest.ConfigurationOverrides.Configurations]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configurations != nil {
                var tmp : [Any] = []
                for k in self.configurations! {
                    tmp.append(k.toMap())
                }
                map["configurations"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("configurations") && dict["configurations"] != nil {
                var tmp : [StartJobRunRequest.ConfigurationOverrides.Configurations] = []
                for v in dict["configurations"] as! [Any] {
                    var model = StartJobRunRequest.ConfigurationOverrides.Configurations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.configurations = tmp
            }
        }
    }
    public var clientToken: String?

    public var codeType: String?

    public var configurationOverrides: StartJobRunRequest.ConfigurationOverrides?

    public var executionTimeoutSeconds: Int32?

    public var jobDriver: JobDriver?

    public var jobId: String?

    public var name: String?

    public var releaseVersion: String?

    public var resourceQueueId: String?

    public var tags: [Tag]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configurationOverrides?.validate()
        try self.jobDriver?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.codeType != nil {
            map["codeType"] = self.codeType!
        }
        if self.configurationOverrides != nil {
            map["configurationOverrides"] = self.configurationOverrides?.toMap()
        }
        if self.executionTimeoutSeconds != nil {
            map["executionTimeoutSeconds"] = self.executionTimeoutSeconds!
        }
        if self.jobDriver != nil {
            map["jobDriver"] = self.jobDriver?.toMap()
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.releaseVersion != nil {
            map["releaseVersion"] = self.releaseVersion!
        }
        if self.resourceQueueId != nil {
            map["resourceQueueId"] = self.resourceQueueId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") && dict["clientToken"] != nil {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("codeType") && dict["codeType"] != nil {
            self.codeType = dict["codeType"] as! String
        }
        if dict.keys.contains("configurationOverrides") && dict["configurationOverrides"] != nil {
            var model = StartJobRunRequest.ConfigurationOverrides()
            model.fromMap(dict["configurationOverrides"] as! [String: Any])
            self.configurationOverrides = model
        }
        if dict.keys.contains("executionTimeoutSeconds") && dict["executionTimeoutSeconds"] != nil {
            self.executionTimeoutSeconds = dict["executionTimeoutSeconds"] as! Int32
        }
        if dict.keys.contains("jobDriver") && dict["jobDriver"] != nil {
            var model = JobDriver()
            model.fromMap(dict["jobDriver"] as! [String: Any])
            self.jobDriver = model
        }
        if dict.keys.contains("jobId") && dict["jobId"] != nil {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("releaseVersion") && dict["releaseVersion"] != nil {
            self.releaseVersion = dict["releaseVersion"] as! String
        }
        if dict.keys.contains("resourceQueueId") && dict["resourceQueueId"] != nil {
            self.resourceQueueId = dict["resourceQueueId"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class StartJobRunResponseBody : Tea.TeaModel {
    public var jobRunId: String?

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
        if self.jobRunId != nil {
            map["jobRunId"] = self.jobRunId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobRunId") && dict["jobRunId"] != nil {
            self.jobRunId = dict["jobRunId"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class StartJobRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartJobRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
