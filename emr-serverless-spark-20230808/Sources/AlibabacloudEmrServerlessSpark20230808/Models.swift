import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Artifact : Tea.TeaModel {
    public var bizId: String?

    public var catagoryBizId: String?

    public var creator: Int64?

    public var credential: Credential?

    public var fullPath: [String]?

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
        if self.catagoryBizId != nil {
            map["catagoryBizId"] = self.catagoryBizId!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.credential != nil {
            map["credential"] = self.credential?.toMap()
        }
        if self.fullPath != nil {
            map["fullPath"] = self.fullPath!
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
        if dict.keys.contains("bizId") {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("catagoryBizId") {
            self.catagoryBizId = dict["catagoryBizId"] as! String
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("credential") {
            var model = Credential()
            model.fromMap(dict["credential"] as! [String: Any])
            self.credential = model
        }
        if dict.keys.contains("fullPath") {
            self.fullPath = dict["fullPath"] as! [String]
        }
        if dict.keys.contains("gmtCreated") {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("location") {
            self.location = dict["location"] as! String
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! Int64
        }
        if dict.keys.contains("name") {
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
        if dict.keys.contains("bizId") {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("gmtCreated") {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentBizId") {
            self.parentBizId = dict["parentBizId"] as! String
        }
        if dict.keys.contains("type") {
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
        if dict.keys.contains("configFileName") {
            self.configFileName = dict["configFileName"] as! String
        }
        if dict.keys.contains("configItemKey") {
            self.configItemKey = dict["configItemKey"] as! String
        }
        if dict.keys.contains("configItemValue") {
            self.configItemValue = dict["configItemValue"] as! String
        }
    }
}

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
            if dict.keys.contains("configFileName") {
                self.configFileName = dict["configFileName"] as! String
            }
            if dict.keys.contains("configItemKey") {
                self.configItemKey = dict["configItemKey"] as! String
            }
            if dict.keys.contains("configItemValue") {
                self.configItemValue = dict["configItemValue"] as! String
            }
        }
    }
    public var configurations: [ConfigurationOverrides.Configurations]?

    public override init() {
        super.init()
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
        if dict.keys.contains("configurations") {
            var tmp : [ConfigurationOverrides.Configurations] = []
            for v in dict["configurations"] as! [Any] {
                var model = ConfigurationOverrides.Configurations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configurations = tmp
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
        if dict.keys.contains("accessId") {
            self.accessId = dict["accessId"] as! String
        }
        if dict.keys.contains("dir") {
            self.dir = dict["dir"] as! String
        }
        if dict.keys.contains("expire") {
            self.expire = dict["expire"] as! String
        }
        if dict.keys.contains("host") {
            self.host = dict["host"] as! String
        }
        if dict.keys.contains("policy") {
            self.policy = dict["policy"] as! String
        }
        if dict.keys.contains("securityToken") {
            self.securityToken = dict["securityToken"] as! String
        }
        if dict.keys.contains("signature") {
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
            if dict.keys.contains("entryPoint") {
                self.entryPoint = dict["entryPoint"] as! String
            }
            if dict.keys.contains("entryPointArguments") {
                self.entryPointArguments = dict["entryPointArguments"] as! [String]
            }
            if dict.keys.contains("sparkSubmitParameters") {
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
        if dict.keys.contains("sparkSubmit") {
            var model = JobDriver.SparkSubmit()
            model.fromMap(dict["sparkSubmit"] as! [String: Any])
            self.sparkSubmit = model
        }
    }
}

public class KerberosConf : Tea.TeaModel {
    public var creator: String?

    public var enabled: Bool?

    public var gmtCreated: String?

    public var gmtModified: String?

    public var kerberosConfId: String?

    public var keytabs: [String]?

    public var krb5Conf: String?

    public var name: String?

    public var networkServiceId: String?

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
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.gmtCreated != nil {
            map["gmtCreated"] = self.gmtCreated!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.kerberosConfId != nil {
            map["kerberosConfId"] = self.kerberosConfId!
        }
        if self.keytabs != nil {
            map["keytabs"] = self.keytabs!
        }
        if self.krb5Conf != nil {
            map["krb5Conf"] = self.krb5Conf!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networkServiceId != nil {
            map["networkServiceId"] = self.networkServiceId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("enabled") {
            self.enabled = dict["enabled"] as! Bool
        }
        if dict.keys.contains("gmtCreated") {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("kerberosConfId") {
            self.kerberosConfId = dict["kerberosConfId"] as! String
        }
        if dict.keys.contains("keytabs") {
            self.keytabs = dict["keytabs"] as! [String]
        }
        if dict.keys.contains("krb5Conf") {
            self.krb5Conf = dict["krb5Conf"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("networkServiceId") {
            self.networkServiceId = dict["networkServiceId"] as! String
        }
        if dict.keys.contains("workspaceId") {
            self.workspaceId = dict["workspaceId"] as! String
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
        if dict.keys.contains("actionArn") {
            self.actionArn = dict["actionArn"] as! String
        }
        if dict.keys.contains("principalArn") {
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
        if dict.keys.contains("cpuArchitecture") {
            self.cpuArchitecture = dict["cpuArchitecture"] as! String
        }
        if dict.keys.contains("imageId") {
            self.imageId = dict["imageId"] as! String
        }
        if dict.keys.contains("runtimeEngineType") {
            self.runtimeEngineType = dict["runtimeEngineType"] as! String
        }
    }
}

public class RunLog : Tea.TeaModel {
    public var driverStartup: String?

    public var driverStdError: String?

    public var driverStdOut: String?

    public var driverSyslog: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.driverStartup != nil {
            map["driverStartup"] = self.driverStartup!
        }
        if self.driverStdError != nil {
            map["driverStdError"] = self.driverStdError!
        }
        if self.driverStdOut != nil {
            map["driverStdOut"] = self.driverStdOut!
        }
        if self.driverSyslog != nil {
            map["driverSyslog"] = self.driverSyslog!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("driverStartup") {
            self.driverStartup = dict["driverStartup"] as! String
        }
        if dict.keys.contains("driverStdError") {
            self.driverStdError = dict["driverStdError"] as! String
        }
        if dict.keys.contains("driverStdOut") {
            self.driverStdOut = dict["driverStdOut"] as! String
        }
        if dict.keys.contains("driverSyslog") {
            self.driverSyslog = dict["driverSyslog"] as! String
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
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("value") {
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
            if dict.keys.contains("values") {
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
            if dict.keys.contains("fields") {
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
        if dict.keys.contains("rows") {
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
        if dict.keys.contains("schema") {
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
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class Task : Tea.TeaModel {
    public class Credential : Tea.TeaModel {
        public var accessId: String?

        public var accessUrl: String?

        public var expire: Int64?

        public var host: String?

        public var path: String?

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
            if self.accessUrl != nil {
                map["accessUrl"] = self.accessUrl!
            }
            if self.expire != nil {
                map["expire"] = self.expire!
            }
            if self.host != nil {
                map["host"] = self.host!
            }
            if self.path != nil {
                map["path"] = self.path!
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
            if dict.keys.contains("accessId") {
                self.accessId = dict["accessId"] as! String
            }
            if dict.keys.contains("accessUrl") {
                self.accessUrl = dict["accessUrl"] as! String
            }
            if dict.keys.contains("expire") {
                self.expire = dict["expire"] as! Int64
            }
            if dict.keys.contains("host") {
                self.host = dict["host"] as! String
            }
            if dict.keys.contains("path") {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("policy") {
                self.policy = dict["policy"] as! String
            }
            if dict.keys.contains("securityToken") {
                self.securityToken = dict["securityToken"] as! String
            }
            if dict.keys.contains("signature") {
                self.signature = dict["signature"] as! String
            }
        }
    }
    public var archives: [String]?

    public var artifactUrl: String?

    public var bizId: String?

    public var categoryBizId: String?

    public var content: String?

    public var creator: Int64?

    public var credential: Task.Credential?

    public var defaultCatalogId: String?

    public var defaultDatabase: String?

    public var defaultResourceQueueId: String?

    public var defaultSqlComputeId: String?

    public var deploymentId: String?

    public var environmentId: String?

    public var extraArtifactIds: [String]?

    public var extraSparkSubmitParams: String?

    public var files: [String]?

    public var fusion: Bool?

    public var gmtCreated: String?

    public var gmtModified: String?

    public var hasChanged: Bool?

    public var hasCommited: Bool?

    public var isStreaming: Bool?

    public var jars: [String]?

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

    public var sparkSubmitClause: String?

    public var sparkVersion: String?

    public var tags: [String: String]?

    public var timeout: Int32?

    public var type: String?

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
        if self.archives != nil {
            map["archives"] = self.archives!
        }
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
        if self.credential != nil {
            map["credential"] = self.credential?.toMap()
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
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.extraArtifactIds != nil {
            map["extraArtifactIds"] = self.extraArtifactIds!
        }
        if self.extraSparkSubmitParams != nil {
            map["extraSparkSubmitParams"] = self.extraSparkSubmitParams!
        }
        if self.files != nil {
            map["files"] = self.files!
        }
        if self.fusion != nil {
            map["fusion"] = self.fusion!
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
        if self.isStreaming != nil {
            map["isStreaming"] = self.isStreaming!
        }
        if self.jars != nil {
            map["jars"] = self.jars!
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
        if self.sparkSubmitClause != nil {
            map["sparkSubmitClause"] = self.sparkSubmitClause!
        }
        if self.sparkVersion != nil {
            map["sparkVersion"] = self.sparkVersion!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("archives") {
            self.archives = dict["archives"] as! [String]
        }
        if dict.keys.contains("artifactUrl") {
            self.artifactUrl = dict["artifactUrl"] as! String
        }
        if dict.keys.contains("bizId") {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("categoryBizId") {
            self.categoryBizId = dict["categoryBizId"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("credential") {
            var model = Task.Credential()
            model.fromMap(dict["credential"] as! [String: Any])
            self.credential = model
        }
        if dict.keys.contains("defaultCatalogId") {
            self.defaultCatalogId = dict["defaultCatalogId"] as! String
        }
        if dict.keys.contains("defaultDatabase") {
            self.defaultDatabase = dict["defaultDatabase"] as! String
        }
        if dict.keys.contains("defaultResourceQueueId") {
            self.defaultResourceQueueId = dict["defaultResourceQueueId"] as! String
        }
        if dict.keys.contains("defaultSqlComputeId") {
            self.defaultSqlComputeId = dict["defaultSqlComputeId"] as! String
        }
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("environmentId") {
            self.environmentId = dict["environmentId"] as! String
        }
        if dict.keys.contains("extraArtifactIds") {
            self.extraArtifactIds = dict["extraArtifactIds"] as! [String]
        }
        if dict.keys.contains("extraSparkSubmitParams") {
            self.extraSparkSubmitParams = dict["extraSparkSubmitParams"] as! String
        }
        if dict.keys.contains("files") {
            self.files = dict["files"] as! [String]
        }
        if dict.keys.contains("fusion") {
            self.fusion = dict["fusion"] as! Bool
        }
        if dict.keys.contains("gmtCreated") {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("hasChanged") {
            self.hasChanged = dict["hasChanged"] as! Bool
        }
        if dict.keys.contains("hasCommited") {
            self.hasCommited = dict["hasCommited"] as! Bool
        }
        if dict.keys.contains("isStreaming") {
            self.isStreaming = dict["isStreaming"] as! Bool
        }
        if dict.keys.contains("jars") {
            self.jars = dict["jars"] as! [String]
        }
        if dict.keys.contains("lastRunResourceQueueId") {
            self.lastRunResourceQueueId = dict["lastRunResourceQueueId"] as! String
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pyFiles") {
            self.pyFiles = dict["pyFiles"] as! [String]
        }
        if dict.keys.contains("sparkArgs") {
            self.sparkArgs = dict["sparkArgs"] as! String
        }
        if dict.keys.contains("sparkConf") {
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
        if dict.keys.contains("sparkDriverCores") {
            self.sparkDriverCores = dict["sparkDriverCores"] as! Int32
        }
        if dict.keys.contains("sparkDriverMemory") {
            self.sparkDriverMemory = dict["sparkDriverMemory"] as! Int64
        }
        if dict.keys.contains("sparkEntrypoint") {
            self.sparkEntrypoint = dict["sparkEntrypoint"] as! String
        }
        if dict.keys.contains("sparkExecutorCores") {
            self.sparkExecutorCores = dict["sparkExecutorCores"] as! Int32
        }
        if dict.keys.contains("sparkExecutorMemory") {
            self.sparkExecutorMemory = dict["sparkExecutorMemory"] as! Int64
        }
        if dict.keys.contains("sparkLogLevel") {
            self.sparkLogLevel = dict["sparkLogLevel"] as! String
        }
        if dict.keys.contains("sparkLogPath") {
            self.sparkLogPath = dict["sparkLogPath"] as! String
        }
        if dict.keys.contains("sparkSubmitClause") {
            self.sparkSubmitClause = dict["sparkSubmitClause"] as! String
        }
        if dict.keys.contains("sparkVersion") {
            self.sparkVersion = dict["sparkVersion"] as! String
        }
        if dict.keys.contains("tags") {
            self.tags = dict["tags"] as! [String: String]
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("type") {
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
        if dict.keys.contains("bizId") {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("fenixRunId") {
            self.fenixRunId = dict["fenixRunId"] as! String
        }
        if dict.keys.contains("gmtCreated") {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("taskBizId") {
            self.taskBizId = dict["taskBizId"] as! String
        }
        if dict.keys.contains("taskInfo") {
            var model = Task()
            model.fromMap(dict["taskInfo"] as! [String: Any])
            self.taskInfo = model
        }
        if dict.keys.contains("taskStatus") {
            self.taskStatus = dict["taskStatus"] as! String
        }
        if dict.keys.contains("workspaceBizId") {
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
        if dict.keys.contains("bizId") {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("commiter") {
            self.commiter = dict["commiter"] as! Int64
        }
        if dict.keys.contains("gmtCreated") {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("item") {
            var model = Task()
            model.fromMap(dict["item"] as! [String: Any])
            self.item = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("taskBizId") {
            self.taskBizId = dict["taskBizId"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
        }
    }
}

public class Template : Tea.TeaModel {
    public var creator: Int64?

    public var displaySparkVersion: String?

    public var fusion: Bool?

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
        if self.displaySparkVersion != nil {
            map["displaySparkVersion"] = self.displaySparkVersion!
        }
        if self.fusion != nil {
            map["fusion"] = self.fusion!
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
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! Int64
        }
        if dict.keys.contains("displaySparkVersion") {
            self.displaySparkVersion = dict["displaySparkVersion"] as! String
        }
        if dict.keys.contains("fusion") {
            self.fusion = dict["fusion"] as! Bool
        }
        if dict.keys.contains("gmtCreated") {
            self.gmtCreated = dict["gmtCreated"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! Int64
        }
        if dict.keys.contains("sparkConf") {
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
        if dict.keys.contains("sparkDriverCores") {
            self.sparkDriverCores = dict["sparkDriverCores"] as! Int32
        }
        if dict.keys.contains("sparkDriverMemory") {
            self.sparkDriverMemory = dict["sparkDriverMemory"] as! Int64
        }
        if dict.keys.contains("sparkExecutorCores") {
            self.sparkExecutorCores = dict["sparkExecutorCores"] as! Int32
        }
        if dict.keys.contains("sparkExecutorMemory") {
            self.sparkExecutorMemory = dict["sparkExecutorMemory"] as! Int64
        }
        if dict.keys.contains("sparkLogLevel") {
            self.sparkLogLevel = dict["sparkLogLevel"] as! String
        }
        if dict.keys.contains("sparkLogPath") {
            self.sparkLogPath = dict["sparkLogPath"] as! String
        }
        if dict.keys.contains("sparkVersion") {
            self.sparkVersion = dict["sparkVersion"] as! String
        }
        if dict.keys.contains("templateType") {
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
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
    }
}

public class AddMembersRequest : Tea.TeaModel {
    public var memberArns: [String]?

    public var workspaceId: String?

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
        if self.memberArns != nil {
            map["memberArns"] = self.memberArns!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("memberArns") {
            self.memberArns = dict["memberArns"] as! [String]
        }
        if dict.keys.contains("workspaceId") {
            self.workspaceId = dict["workspaceId"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class AddMembersResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AddMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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
        if dict.keys.contains("regionId") {
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
        if dict.keys.contains("jobRunId") {
            self.jobRunId = dict["jobRunId"] as! String
        }
        if dict.keys.contains("requestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProcessDefinitionWithScheduleRequest : Tea.TeaModel {
    public class Schedule : Tea.TeaModel {
        public var crontab: String?

        public var endTime: String?

        public var startTime: String?

        public var timezoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.crontab != nil {
                map["crontab"] = self.crontab!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.timezoneId != nil {
                map["timezoneId"] = self.timezoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("crontab") {
                self.crontab = dict["crontab"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("timezoneId") {
                self.timezoneId = dict["timezoneId"] as! String
            }
        }
    }
    public class TaskDefinitionJson : Tea.TeaModel {
        public class TaskParams : Tea.TeaModel {
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
                    if dict.keys.contains("key") {
                        self.key = dict["key"] as! String
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! String
                    }
                }
            }
            public var displaySparkVersion: String?

            public var environmentId: String?

            public var fusion: Bool?

            public var resourceQueueId: String?

            public var sparkConf: [CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf]?

            public var sparkDriverCores: Int32?

            public var sparkDriverMemory: Int64?

            public var sparkExecutorCores: Int32?

            public var sparkExecutorMemory: Int64?

            public var sparkLogLevel: String?

            public var sparkLogPath: String?

            public var sparkVersion: String?

            public var taskBizId: String?

            public var type: String?

            public var workspaceBizId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displaySparkVersion != nil {
                    map["displaySparkVersion"] = self.displaySparkVersion!
                }
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                if self.fusion != nil {
                    map["fusion"] = self.fusion!
                }
                if self.resourceQueueId != nil {
                    map["resourceQueueId"] = self.resourceQueueId!
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
                if self.taskBizId != nil {
                    map["taskBizId"] = self.taskBizId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.workspaceBizId != nil {
                    map["workspaceBizId"] = self.workspaceBizId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("displaySparkVersion") {
                    self.displaySparkVersion = dict["displaySparkVersion"] as! String
                }
                if dict.keys.contains("environmentId") {
                    self.environmentId = dict["environmentId"] as! String
                }
                if dict.keys.contains("fusion") {
                    self.fusion = dict["fusion"] as! Bool
                }
                if dict.keys.contains("resourceQueueId") {
                    self.resourceQueueId = dict["resourceQueueId"] as! String
                }
                if dict.keys.contains("sparkConf") {
                    var tmp : [CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf] = []
                    for v in dict["sparkConf"] as! [Any] {
                        var model = CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sparkConf = tmp
                }
                if dict.keys.contains("sparkDriverCores") {
                    self.sparkDriverCores = dict["sparkDriverCores"] as! Int32
                }
                if dict.keys.contains("sparkDriverMemory") {
                    self.sparkDriverMemory = dict["sparkDriverMemory"] as! Int64
                }
                if dict.keys.contains("sparkExecutorCores") {
                    self.sparkExecutorCores = dict["sparkExecutorCores"] as! Int32
                }
                if dict.keys.contains("sparkExecutorMemory") {
                    self.sparkExecutorMemory = dict["sparkExecutorMemory"] as! Int64
                }
                if dict.keys.contains("sparkLogLevel") {
                    self.sparkLogLevel = dict["sparkLogLevel"] as! String
                }
                if dict.keys.contains("sparkLogPath") {
                    self.sparkLogPath = dict["sparkLogPath"] as! String
                }
                if dict.keys.contains("sparkVersion") {
                    self.sparkVersion = dict["sparkVersion"] as! String
                }
                if dict.keys.contains("taskBizId") {
                    self.taskBizId = dict["taskBizId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("workspaceBizId") {
                    self.workspaceBizId = dict["workspaceBizId"] as! String
                }
            }
        }
        public var alertEmailAddress: String?

        public var code: Int64?

        public var description_: String?

        public var failAlertEnable: Bool?

        public var failRetryTimes: Int32?

        public var name: String?

        public var startAlertEnable: Bool?

        public var tags: [String: String]?

        public var taskParams: CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams?

        public var taskType: String?

        public var timeout: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.taskParams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertEmailAddress != nil {
                map["alertEmailAddress"] = self.alertEmailAddress!
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.failAlertEnable != nil {
                map["failAlertEnable"] = self.failAlertEnable!
            }
            if self.failRetryTimes != nil {
                map["failRetryTimes"] = self.failRetryTimes!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.startAlertEnable != nil {
                map["startAlertEnable"] = self.startAlertEnable!
            }
            if self.tags != nil {
                map["tags"] = self.tags!
            }
            if self.taskParams != nil {
                map["taskParams"] = self.taskParams?.toMap()
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alertEmailAddress") {
                self.alertEmailAddress = dict["alertEmailAddress"] as! String
            }
            if dict.keys.contains("code") {
                self.code = dict["code"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("failAlertEnable") {
                self.failAlertEnable = dict["failAlertEnable"] as! Bool
            }
            if dict.keys.contains("failRetryTimes") {
                self.failRetryTimes = dict["failRetryTimes"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("startAlertEnable") {
                self.startAlertEnable = dict["startAlertEnable"] as! Bool
            }
            if dict.keys.contains("tags") {
                self.tags = dict["tags"] as! [String: String]
            }
            if dict.keys.contains("taskParams") {
                var model = CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams()
                model.fromMap(dict["taskParams"] as! [String: Any])
                self.taskParams = model
            }
            if dict.keys.contains("taskType") {
                self.taskType = dict["taskType"] as! String
            }
            if dict.keys.contains("timeout") {
                self.timeout = dict["timeout"] as! Int32
            }
        }
    }
    public class TaskRelationJson : Tea.TeaModel {
        public var name: String?

        public var postTaskCode: Int64?

        public var postTaskVersion: Int32?

        public var preTaskCode: Int64?

        public var preTaskVersion: Int32?

        public override init() {
            super.init()
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
            if self.postTaskCode != nil {
                map["postTaskCode"] = self.postTaskCode!
            }
            if self.postTaskVersion != nil {
                map["postTaskVersion"] = self.postTaskVersion!
            }
            if self.preTaskCode != nil {
                map["preTaskCode"] = self.preTaskCode!
            }
            if self.preTaskVersion != nil {
                map["preTaskVersion"] = self.preTaskVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("postTaskCode") {
                self.postTaskCode = dict["postTaskCode"] as! Int64
            }
            if dict.keys.contains("postTaskVersion") {
                self.postTaskVersion = dict["postTaskVersion"] as! Int32
            }
            if dict.keys.contains("preTaskCode") {
                self.preTaskCode = dict["preTaskCode"] as! Int64
            }
            if dict.keys.contains("preTaskVersion") {
                self.preTaskVersion = dict["preTaskVersion"] as! Int32
            }
        }
    }
    public var alertEmailAddress: String?

    public var description_: String?

    public var executionType: String?

    public var name: String?

    public var productNamespace: String?

    public var publish: Bool?

    public var regionId: String?

    public var resourceQueue: String?

    public var retryTimes: Int32?

    public var runAs: String?

    public var schedule: CreateProcessDefinitionWithScheduleRequest.Schedule?

    public var tags: [String: String]?

    public var taskDefinitionJson: [CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson]?

    public var taskParallelism: Int32?

    public var taskRelationJson: [CreateProcessDefinitionWithScheduleRequest.TaskRelationJson]?

    public var timeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertEmailAddress != nil {
            map["alertEmailAddress"] = self.alertEmailAddress!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionType != nil {
            map["executionType"] = self.executionType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.productNamespace != nil {
            map["productNamespace"] = self.productNamespace!
        }
        if self.publish != nil {
            map["publish"] = self.publish!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceQueue != nil {
            map["resourceQueue"] = self.resourceQueue!
        }
        if self.retryTimes != nil {
            map["retryTimes"] = self.retryTimes!
        }
        if self.runAs != nil {
            map["runAs"] = self.runAs!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.taskDefinitionJson != nil {
            var tmp : [Any] = []
            for k in self.taskDefinitionJson! {
                tmp.append(k.toMap())
            }
            map["taskDefinitionJson"] = tmp
        }
        if self.taskParallelism != nil {
            map["taskParallelism"] = self.taskParallelism!
        }
        if self.taskRelationJson != nil {
            var tmp : [Any] = []
            for k in self.taskRelationJson! {
                tmp.append(k.toMap())
            }
            map["taskRelationJson"] = tmp
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alertEmailAddress") {
            self.alertEmailAddress = dict["alertEmailAddress"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("executionType") {
            self.executionType = dict["executionType"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("productNamespace") {
            self.productNamespace = dict["productNamespace"] as! String
        }
        if dict.keys.contains("publish") {
            self.publish = dict["publish"] as! Bool
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceQueue") {
            self.resourceQueue = dict["resourceQueue"] as! String
        }
        if dict.keys.contains("retryTimes") {
            self.retryTimes = dict["retryTimes"] as! Int32
        }
        if dict.keys.contains("runAs") {
            self.runAs = dict["runAs"] as! String
        }
        if dict.keys.contains("schedule") {
            var model = CreateProcessDefinitionWithScheduleRequest.Schedule()
            model.fromMap(dict["schedule"] as! [String: Any])
            self.schedule = model
        }
        if dict.keys.contains("tags") {
            self.tags = dict["tags"] as! [String: String]
        }
        if dict.keys.contains("taskDefinitionJson") {
            var tmp : [CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson] = []
            for v in dict["taskDefinitionJson"] as! [Any] {
                var model = CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskDefinitionJson = tmp
        }
        if dict.keys.contains("taskParallelism") {
            self.taskParallelism = dict["taskParallelism"] as! Int32
        }
        if dict.keys.contains("taskRelationJson") {
            var tmp : [CreateProcessDefinitionWithScheduleRequest.TaskRelationJson] = []
            for v in dict["taskRelationJson"] as! [Any] {
                var model = CreateProcessDefinitionWithScheduleRequest.TaskRelationJson()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskRelationJson = tmp
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class CreateProcessDefinitionWithScheduleShrinkRequest : Tea.TeaModel {
    public var alertEmailAddress: String?

    public var description_: String?

    public var executionType: String?

    public var name: String?

    public var productNamespace: String?

    public var publish: Bool?

    public var regionId: String?

    public var resourceQueue: String?

    public var retryTimes: Int32?

    public var runAs: String?

    public var scheduleShrink: String?

    public var tagsShrink: String?

    public var taskDefinitionJsonShrink: String?

    public var taskParallelism: Int32?

    public var taskRelationJsonShrink: String?

    public var timeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertEmailAddress != nil {
            map["alertEmailAddress"] = self.alertEmailAddress!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionType != nil {
            map["executionType"] = self.executionType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.productNamespace != nil {
            map["productNamespace"] = self.productNamespace!
        }
        if self.publish != nil {
            map["publish"] = self.publish!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceQueue != nil {
            map["resourceQueue"] = self.resourceQueue!
        }
        if self.retryTimes != nil {
            map["retryTimes"] = self.retryTimes!
        }
        if self.runAs != nil {
            map["runAs"] = self.runAs!
        }
        if self.scheduleShrink != nil {
            map["schedule"] = self.scheduleShrink!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDefinitionJsonShrink != nil {
            map["taskDefinitionJson"] = self.taskDefinitionJsonShrink!
        }
        if self.taskParallelism != nil {
            map["taskParallelism"] = self.taskParallelism!
        }
        if self.taskRelationJsonShrink != nil {
            map["taskRelationJson"] = self.taskRelationJsonShrink!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alertEmailAddress") {
            self.alertEmailAddress = dict["alertEmailAddress"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("executionType") {
            self.executionType = dict["executionType"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("productNamespace") {
            self.productNamespace = dict["productNamespace"] as! String
        }
        if dict.keys.contains("publish") {
            self.publish = dict["publish"] as! Bool
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceQueue") {
            self.resourceQueue = dict["resourceQueue"] as! String
        }
        if dict.keys.contains("retryTimes") {
            self.retryTimes = dict["retryTimes"] as! Int32
        }
        if dict.keys.contains("runAs") {
            self.runAs = dict["runAs"] as! String
        }
        if dict.keys.contains("schedule") {
            self.scheduleShrink = dict["schedule"] as! String
        }
        if dict.keys.contains("tags") {
            self.tagsShrink = dict["tags"] as! String
        }
        if dict.keys.contains("taskDefinitionJson") {
            self.taskDefinitionJsonShrink = dict["taskDefinitionJson"] as! String
        }
        if dict.keys.contains("taskParallelism") {
            self.taskParallelism = dict["taskParallelism"] as! Int32
        }
        if dict.keys.contains("taskRelationJson") {
            self.taskRelationJsonShrink = dict["taskRelationJson"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class CreateProcessDefinitionWithScheduleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int64?

        public var id: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") {
                self.code = dict["code"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: CreateProcessDefinitionWithScheduleResponseBody.Data?

    public var failed: String?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.failed != nil {
            map["failed"] = self.failed!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = CreateProcessDefinitionWithScheduleResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("failed") {
            self.failed = dict["failed"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class CreateProcessDefinitionWithScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProcessDefinitionWithScheduleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateProcessDefinitionWithScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSqlStatementRequest : Tea.TeaModel {
    public var codeContent: String?

    public var defaultCatalog: String?

    public var defaultDatabase: String?

    public var limit: Int32?

    public var sqlComputeId: String?

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
        if self.codeContent != nil {
            map["codeContent"] = self.codeContent!
        }
        if self.defaultCatalog != nil {
            map["defaultCatalog"] = self.defaultCatalog!
        }
        if self.defaultDatabase != nil {
            map["defaultDatabase"] = self.defaultDatabase!
        }
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.sqlComputeId != nil {
            map["sqlComputeId"] = self.sqlComputeId!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("codeContent") {
            self.codeContent = dict["codeContent"] as! String
        }
        if dict.keys.contains("defaultCatalog") {
            self.defaultCatalog = dict["defaultCatalog"] as! String
        }
        if dict.keys.contains("defaultDatabase") {
            self.defaultDatabase = dict["defaultDatabase"] as! String
        }
        if dict.keys.contains("limit") {
            self.limit = dict["limit"] as! Int32
        }
        if dict.keys.contains("sqlComputeId") {
            self.sqlComputeId = dict["sqlComputeId"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class CreateSqlStatementResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.statementId != nil {
                map["statementId"] = self.statementId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("statementId") {
                self.statementId = dict["statementId"] as! String
            }
        }
    }
    public var data: CreateSqlStatementResponseBody.Data?

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
            var model = CreateSqlStatementResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateSqlStatementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSqlStatementResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSqlStatementResponseBody()
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
        if dict.keys.contains("regionId") {
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
                if dict.keys.contains("configurations") {
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
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
            }
        }
        public var codeType: String?

        public var configurationOverrides: GetJobRunResponseBody.JobRun.ConfigurationOverrides?

        public var displayReleaseVersion: String?

        public var endTime: Int64?

        public var environmentId: String?

        public var executionTimeoutSeconds: Int32?

        public var fusion: Bool?

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
            if self.displayReleaseVersion != nil {
                map["displayReleaseVersion"] = self.displayReleaseVersion!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.executionTimeoutSeconds != nil {
                map["executionTimeoutSeconds"] = self.executionTimeoutSeconds!
            }
            if self.fusion != nil {
                map["fusion"] = self.fusion!
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
            if dict.keys.contains("codeType") {
                self.codeType = dict["codeType"] as! String
            }
            if dict.keys.contains("configurationOverrides") {
                var model = GetJobRunResponseBody.JobRun.ConfigurationOverrides()
                model.fromMap(dict["configurationOverrides"] as! [String: Any])
                self.configurationOverrides = model
            }
            if dict.keys.contains("displayReleaseVersion") {
                self.displayReleaseVersion = dict["displayReleaseVersion"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("environmentId") {
                self.environmentId = dict["environmentId"] as! String
            }
            if dict.keys.contains("executionTimeoutSeconds") {
                self.executionTimeoutSeconds = dict["executionTimeoutSeconds"] as! Int32
            }
            if dict.keys.contains("fusion") {
                self.fusion = dict["fusion"] as! Bool
            }
            if dict.keys.contains("jobDriver") {
                var model = JobDriver()
                model.fromMap(dict["jobDriver"] as! [String: Any])
                self.jobDriver = model
            }
            if dict.keys.contains("jobRunId") {
                self.jobRunId = dict["jobRunId"] as! String
            }
            if dict.keys.contains("log") {
                var model = RunLog()
                model.fromMap(dict["log"] as! [String: Any])
                self.log = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("releaseVersion") {
                self.releaseVersion = dict["releaseVersion"] as! String
            }
            if dict.keys.contains("resourceOwnerId") {
                self.resourceOwnerId = dict["resourceOwnerId"] as! String
            }
            if dict.keys.contains("resourceQueueId") {
                self.resourceQueueId = dict["resourceQueueId"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("stateChangeReason") {
                var model = GetJobRunResponseBody.JobRun.StateChangeReason()
                model.fromMap(dict["stateChangeReason"] as! [String: Any])
                self.stateChangeReason = model
            }
            if dict.keys.contains("submitTime") {
                self.submitTime = dict["submitTime"] as! Int64
            }
            if dict.keys.contains("tags") {
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
            if dict.keys.contains("webUI") {
                self.webUI = dict["webUI"] as! String
            }
            if dict.keys.contains("workspaceId") {
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
        if dict.keys.contains("jobRun") {
            var model = GetJobRunResponseBody.JobRun()
            model.fromMap(dict["jobRun"] as! [String: Any])
            self.jobRun = model
        }
        if dict.keys.contains("requestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSessionClusterRequest : Tea.TeaModel {
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
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class GetSessionClusterResponseBody : Tea.TeaModel {
    public class SessionCluster : Tea.TeaModel {
        public class ApplicationConfigs : Tea.TeaModel {
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
                if dict.keys.contains("configFileName") {
                    self.configFileName = dict["configFileName"] as! String
                }
                if dict.keys.contains("configItemKey") {
                    self.configItemKey = dict["configItemKey"] as! String
                }
                if dict.keys.contains("configItemValue") {
                    self.configItemValue = dict["configItemValue"] as! String
                }
            }
        }
        public class AutoStartConfiguration : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
            }
        }
        public class AutoStopConfiguration : Tea.TeaModel {
            public var enable: Bool?

            public var idleTimeoutMinutes: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.idleTimeoutMinutes != nil {
                    map["idleTimeoutMinutes"] = self.idleTimeoutMinutes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("idleTimeoutMinutes") {
                    self.idleTimeoutMinutes = dict["idleTimeoutMinutes"] as! Int32
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
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
            }
        }
        public var applicationConfigs: [GetSessionClusterResponseBody.SessionCluster.ApplicationConfigs]?

        public var autoStartConfiguration: GetSessionClusterResponseBody.SessionCluster.AutoStartConfiguration?

        public var autoStopConfiguration: GetSessionClusterResponseBody.SessionCluster.AutoStopConfiguration?

        public var displayReleaseVersion: String?

        public var domain: String?

        public var domainInner: String?

        public var draftId: String?

        public var envId: String?

        public var fusion: Bool?

        public var gmtCreate: Int64?

        public var kind: String?

        public var name: String?

        public var queueName: String?

        public var releaseVersion: String?

        public var sessionClusterId: String?

        public var startTime: Int64?

        public var state: String?

        public var stateChangeReason: GetSessionClusterResponseBody.SessionCluster.StateChangeReason?

        public var userId: String?

        public var userName: String?

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
            try self.autoStartConfiguration?.validate()
            try self.autoStopConfiguration?.validate()
            try self.stateChangeReason?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationConfigs != nil {
                var tmp : [Any] = []
                for k in self.applicationConfigs! {
                    tmp.append(k.toMap())
                }
                map["applicationConfigs"] = tmp
            }
            if self.autoStartConfiguration != nil {
                map["autoStartConfiguration"] = self.autoStartConfiguration?.toMap()
            }
            if self.autoStopConfiguration != nil {
                map["autoStopConfiguration"] = self.autoStopConfiguration?.toMap()
            }
            if self.displayReleaseVersion != nil {
                map["displayReleaseVersion"] = self.displayReleaseVersion!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.domainInner != nil {
                map["domainInner"] = self.domainInner!
            }
            if self.draftId != nil {
                map["draftId"] = self.draftId!
            }
            if self.envId != nil {
                map["envId"] = self.envId!
            }
            if self.fusion != nil {
                map["fusion"] = self.fusion!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.kind != nil {
                map["kind"] = self.kind!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.queueName != nil {
                map["queueName"] = self.queueName!
            }
            if self.releaseVersion != nil {
                map["releaseVersion"] = self.releaseVersion!
            }
            if self.sessionClusterId != nil {
                map["sessionClusterId"] = self.sessionClusterId!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.stateChangeReason != nil {
                map["stateChangeReason"] = self.stateChangeReason?.toMap()
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
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
            if dict.keys.contains("applicationConfigs") {
                var tmp : [GetSessionClusterResponseBody.SessionCluster.ApplicationConfigs] = []
                for v in dict["applicationConfigs"] as! [Any] {
                    var model = GetSessionClusterResponseBody.SessionCluster.ApplicationConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applicationConfigs = tmp
            }
            if dict.keys.contains("autoStartConfiguration") {
                var model = GetSessionClusterResponseBody.SessionCluster.AutoStartConfiguration()
                model.fromMap(dict["autoStartConfiguration"] as! [String: Any])
                self.autoStartConfiguration = model
            }
            if dict.keys.contains("autoStopConfiguration") {
                var model = GetSessionClusterResponseBody.SessionCluster.AutoStopConfiguration()
                model.fromMap(dict["autoStopConfiguration"] as! [String: Any])
                self.autoStopConfiguration = model
            }
            if dict.keys.contains("displayReleaseVersion") {
                self.displayReleaseVersion = dict["displayReleaseVersion"] as! String
            }
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("domainInner") {
                self.domainInner = dict["domainInner"] as! String
            }
            if dict.keys.contains("draftId") {
                self.draftId = dict["draftId"] as! String
            }
            if dict.keys.contains("envId") {
                self.envId = dict["envId"] as! String
            }
            if dict.keys.contains("fusion") {
                self.fusion = dict["fusion"] as! Bool
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("kind") {
                self.kind = dict["kind"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("queueName") {
                self.queueName = dict["queueName"] as! String
            }
            if dict.keys.contains("releaseVersion") {
                self.releaseVersion = dict["releaseVersion"] as! String
            }
            if dict.keys.contains("sessionClusterId") {
                self.sessionClusterId = dict["sessionClusterId"] as! String
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! Int64
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("stateChangeReason") {
                var model = GetSessionClusterResponseBody.SessionCluster.StateChangeReason()
                model.fromMap(dict["stateChangeReason"] as! [String: Any])
                self.stateChangeReason = model
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
            if dict.keys.contains("webUI") {
                self.webUI = dict["webUI"] as! String
            }
            if dict.keys.contains("workspaceId") {
                self.workspaceId = dict["workspaceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var sessionCluster: GetSessionClusterResponseBody.SessionCluster?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sessionCluster?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionCluster != nil {
            map["sessionCluster"] = self.sessionCluster?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sessionCluster") {
            var model = GetSessionClusterResponseBody.SessionCluster()
            model.fromMap(dict["sessionCluster"] as! [String: Any])
            self.sessionCluster = model
        }
    }
}

public class GetSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSessionClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSessionClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSqlStatementRequest : Tea.TeaModel {
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
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class GetSqlStatementResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SqlOutputs : Tea.TeaModel {
            public var rows: String?

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
                if self.rows != nil {
                    map["rows"] = self.rows!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("rows") {
                    self.rows = dict["rows"] as! String
                }
                if dict.keys.contains("schema") {
                    self.schema = dict["schema"] as! String
                }
            }
        }
        public var executionTime: [Int64]?

        public var sqlErrorCode: String?

        public var sqlErrorMessage: String?

        public var sqlOutputs: [GetSqlStatementResponseBody.Data.SqlOutputs]?

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
            if self.executionTime != nil {
                map["executionTime"] = self.executionTime!
            }
            if self.sqlErrorCode != nil {
                map["sqlErrorCode"] = self.sqlErrorCode!
            }
            if self.sqlErrorMessage != nil {
                map["sqlErrorMessage"] = self.sqlErrorMessage!
            }
            if self.sqlOutputs != nil {
                var tmp : [Any] = []
                for k in self.sqlOutputs! {
                    tmp.append(k.toMap())
                }
                map["sqlOutputs"] = tmp
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.statementId != nil {
                map["statementId"] = self.statementId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("executionTime") {
                self.executionTime = dict["executionTime"] as! [Int64]
            }
            if dict.keys.contains("sqlErrorCode") {
                self.sqlErrorCode = dict["sqlErrorCode"] as! String
            }
            if dict.keys.contains("sqlErrorMessage") {
                self.sqlErrorMessage = dict["sqlErrorMessage"] as! String
            }
            if dict.keys.contains("sqlOutputs") {
                var tmp : [GetSqlStatementResponseBody.Data.SqlOutputs] = []
                for v in dict["sqlOutputs"] as! [Any] {
                    var model = GetSqlStatementResponseBody.Data.SqlOutputs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sqlOutputs = tmp
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("statementId") {
                self.statementId = dict["statementId"] as! String
            }
        }
    }
    public var data: GetSqlStatementResponseBody.Data?

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
            var model = GetSqlStatementResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetSqlStatementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSqlStatementResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSqlStatementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.templateType != nil {
            map["templateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("templateType") {
            self.templateType = dict["templateType"] as! String
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public var data: Template?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = Template()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantRoleToUsersRequest : Tea.TeaModel {
    public var roleArn: String?

    public var userArns: [String]?

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
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.userArns != nil {
            map["userArns"] = self.userArns!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("roleArn") {
            self.roleArn = dict["roleArn"] as! String
        }
        if dict.keys.contains("userArns") {
            self.userArns = dict["userArns"] as! [String]
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class GrantRoleToUsersResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GrantRoleToUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantRoleToUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GrantRoleToUsersResponseBody()
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
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("startTime") {
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
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("startTime") {
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
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var creator: String?

    public var endTime: ListJobRunsRequest.EndTime?

    public var jobRunDeploymentId: String?

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
        if self.jobRunDeploymentId != nil {
            map["jobRunDeploymentId"] = self.jobRunDeploymentId!
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
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("endTime") {
            var model = ListJobRunsRequest.EndTime()
            model.fromMap(dict["endTime"] as! [String: Any])
            self.endTime = model
        }
        if dict.keys.contains("jobRunDeploymentId") {
            self.jobRunDeploymentId = dict["jobRunDeploymentId"] as! String
        }
        if dict.keys.contains("jobRunId") {
            self.jobRunId = dict["jobRunId"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceQueueId") {
            self.resourceQueueId = dict["resourceQueueId"] as! String
        }
        if dict.keys.contains("startTime") {
            var model = ListJobRunsRequest.StartTime()
            model.fromMap(dict["startTime"] as! [String: Any])
            self.startTime = model
        }
        if dict.keys.contains("states") {
            self.states = dict["states"] as! [String]
        }
        if dict.keys.contains("tags") {
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

    public var jobRunDeploymentId: String?

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
        if self.jobRunDeploymentId != nil {
            map["jobRunDeploymentId"] = self.jobRunDeploymentId!
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
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTimeShrink = dict["endTime"] as! String
        }
        if dict.keys.contains("jobRunDeploymentId") {
            self.jobRunDeploymentId = dict["jobRunDeploymentId"] as! String
        }
        if dict.keys.contains("jobRunId") {
            self.jobRunId = dict["jobRunId"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceQueueId") {
            self.resourceQueueId = dict["resourceQueueId"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTimeShrink = dict["startTime"] as! String
        }
        if dict.keys.contains("states") {
            self.statesShrink = dict["states"] as! String
        }
        if dict.keys.contains("tags") {
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
                if dict.keys.contains("configurations") {
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
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
            }
        }
        public var codeType: String?

        public var configurationOverrides: ListJobRunsResponseBody.JobRuns.ConfigurationOverrides?

        public var creator: String?

        public var cuHours: Int64?

        public var displayReleaseVersion: String?

        public var endTime: Int64?

        public var executionTimeoutSeconds: Int32?

        public var fusion: Bool?

        public var jobDriver: JobDriver?

        public var jobRunId: String?

        public var log: RunLog?

        public var mbSeconds: Int64?

        public var name: String?

        public var releaseVersion: String?

        public var state: String?

        public var stateChangeReason: ListJobRunsResponseBody.JobRuns.StateChangeReason?

        public var submitTime: Int64?

        public var tags: [Tag]?

        public var vcoreSeconds: Int64?

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
            if self.cuHours != nil {
                map["cuHours"] = self.cuHours!
            }
            if self.displayReleaseVersion != nil {
                map["displayReleaseVersion"] = self.displayReleaseVersion!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.executionTimeoutSeconds != nil {
                map["executionTimeoutSeconds"] = self.executionTimeoutSeconds!
            }
            if self.fusion != nil {
                map["fusion"] = self.fusion!
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
            if self.mbSeconds != nil {
                map["mbSeconds"] = self.mbSeconds!
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
            if self.vcoreSeconds != nil {
                map["vcoreSeconds"] = self.vcoreSeconds!
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
            if dict.keys.contains("codeType") {
                self.codeType = dict["codeType"] as! String
            }
            if dict.keys.contains("configurationOverrides") {
                var model = ListJobRunsResponseBody.JobRuns.ConfigurationOverrides()
                model.fromMap(dict["configurationOverrides"] as! [String: Any])
                self.configurationOverrides = model
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("cuHours") {
                self.cuHours = dict["cuHours"] as! Int64
            }
            if dict.keys.contains("displayReleaseVersion") {
                self.displayReleaseVersion = dict["displayReleaseVersion"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("executionTimeoutSeconds") {
                self.executionTimeoutSeconds = dict["executionTimeoutSeconds"] as! Int32
            }
            if dict.keys.contains("fusion") {
                self.fusion = dict["fusion"] as! Bool
            }
            if dict.keys.contains("jobDriver") {
                var model = JobDriver()
                model.fromMap(dict["jobDriver"] as! [String: Any])
                self.jobDriver = model
            }
            if dict.keys.contains("jobRunId") {
                self.jobRunId = dict["jobRunId"] as! String
            }
            if dict.keys.contains("log") {
                var model = RunLog()
                model.fromMap(dict["log"] as! [String: Any])
                self.log = model
            }
            if dict.keys.contains("mbSeconds") {
                self.mbSeconds = dict["mbSeconds"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("releaseVersion") {
                self.releaseVersion = dict["releaseVersion"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("stateChangeReason") {
                var model = ListJobRunsResponseBody.JobRuns.StateChangeReason()
                model.fromMap(dict["stateChangeReason"] as! [String: Any])
                self.stateChangeReason = model
            }
            if dict.keys.contains("submitTime") {
                self.submitTime = dict["submitTime"] as! Int64
            }
            if dict.keys.contains("tags") {
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
            if dict.keys.contains("vcoreSeconds") {
                self.vcoreSeconds = dict["vcoreSeconds"] as! Int64
            }
            if dict.keys.contains("webUI") {
                self.webUI = dict["webUI"] as! String
            }
            if dict.keys.contains("workspaceId") {
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
        if dict.keys.contains("jobRuns") {
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
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobRunsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLogContentsRequest : Tea.TeaModel {
    public var fileName: String?

    public var length: Int32?

    public var offset: Int32?

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
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.length != nil {
            map["length"] = self.length!
        }
        if self.offset != nil {
            map["offset"] = self.offset!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("length") {
            self.length = dict["length"] as! Int32
        }
        if dict.keys.contains("offset") {
            self.offset = dict["offset"] as! Int32
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class ListLogContentsResponseBody : Tea.TeaModel {
    public class ListLogContent : Tea.TeaModel {
        public class Contents : Tea.TeaModel {
            public var lineContent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lineContent != nil {
                    map["LineContent"] = self.lineContent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LineContent") {
                    self.lineContent = dict["LineContent"] as! String
                }
            }
        }
        public var contents: [ListLogContentsResponseBody.ListLogContent.Contents]?

        public var totalLength: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contents != nil {
                var tmp : [Any] = []
                for k in self.contents! {
                    tmp.append(k.toMap())
                }
                map["contents"] = tmp
            }
            if self.totalLength != nil {
                map["totalLength"] = self.totalLength!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("contents") {
                var tmp : [ListLogContentsResponseBody.ListLogContent.Contents] = []
                for v in dict["contents"] as! [Any] {
                    var model = ListLogContentsResponseBody.ListLogContent.Contents()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.contents = tmp
            }
            if dict.keys.contains("totalLength") {
                self.totalLength = dict["totalLength"] as! Int64
            }
        }
    }
    public var listLogContent: ListLogContentsResponseBody.ListLogContent?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listLogContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listLogContent != nil {
            map["listLogContent"] = self.listLogContent?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("listLogContent") {
            var model = ListLogContentsResponseBody.ListLogContent()
            model.fromMap(dict["listLogContent"] as! [String: Any])
            self.listLogContent = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListLogContentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogContentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListLogContentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListReleaseVersionsRequest : Tea.TeaModel {
    public var regionId: String?

    public var releaseType: String?

    public var releaseVersion: String?

    public var releaseVersionStatus: String?

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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.releaseType != nil {
            map["releaseType"] = self.releaseType!
        }
        if self.releaseVersion != nil {
            map["releaseVersion"] = self.releaseVersion!
        }
        if self.releaseVersionStatus != nil {
            map["releaseVersionStatus"] = self.releaseVersionStatus!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("releaseType") {
            self.releaseType = dict["releaseType"] as! String
        }
        if dict.keys.contains("releaseVersion") {
            self.releaseVersion = dict["releaseVersion"] as! String
        }
        if dict.keys.contains("releaseVersionStatus") {
            self.releaseVersionStatus = dict["releaseVersionStatus"] as! String
        }
        if dict.keys.contains("workspaceId") {
            self.workspaceId = dict["workspaceId"] as! String
        }
    }
}

public class ListReleaseVersionsResponseBody : Tea.TeaModel {
    public class ReleaseVersions : Tea.TeaModel {
        public var communityVersion: String?

        public var cpuArchitectures: [String]?

        public var displayReleaseVersion: String?

        public var fusion: Bool?

        public var gmtCreate: Int64?

        public var iaasType: String?

        public var releaseVersion: String?

        public var scalaVersion: String?

        public var state: String?

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
            if self.communityVersion != nil {
                map["communityVersion"] = self.communityVersion!
            }
            if self.cpuArchitectures != nil {
                map["cpuArchitectures"] = self.cpuArchitectures!
            }
            if self.displayReleaseVersion != nil {
                map["displayReleaseVersion"] = self.displayReleaseVersion!
            }
            if self.fusion != nil {
                map["fusion"] = self.fusion!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.iaasType != nil {
                map["iaasType"] = self.iaasType!
            }
            if self.releaseVersion != nil {
                map["releaseVersion"] = self.releaseVersion!
            }
            if self.scalaVersion != nil {
                map["scalaVersion"] = self.scalaVersion!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("communityVersion") {
                self.communityVersion = dict["communityVersion"] as! String
            }
            if dict.keys.contains("cpuArchitectures") {
                self.cpuArchitectures = dict["cpuArchitectures"] as! [String]
            }
            if dict.keys.contains("displayReleaseVersion") {
                self.displayReleaseVersion = dict["displayReleaseVersion"] as! String
            }
            if dict.keys.contains("fusion") {
                self.fusion = dict["fusion"] as! Bool
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("iaasType") {
                self.iaasType = dict["iaasType"] as! String
            }
            if dict.keys.contains("releaseVersion") {
                self.releaseVersion = dict["releaseVersion"] as! String
            }
            if dict.keys.contains("scalaVersion") {
                self.scalaVersion = dict["scalaVersion"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var releaseVersions: [ListReleaseVersionsResponseBody.ReleaseVersions]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.releaseVersions != nil {
            var tmp : [Any] = []
            for k in self.releaseVersions! {
                tmp.append(k.toMap())
            }
            map["releaseVersions"] = tmp
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
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("releaseVersions") {
            var tmp : [ListReleaseVersionsResponseBody.ReleaseVersions] = []
            for v in dict["releaseVersions"] as! [Any] {
                var model = ListReleaseVersionsResponseBody.ReleaseVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.releaseVersions = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListReleaseVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListReleaseVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListReleaseVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSessionClustersRequest : Tea.TeaModel {
    public var kind: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var queueName: String?

    public var regionId: String?

    public var sessionClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.queueName != nil {
            map["queueName"] = self.queueName!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.sessionClusterId != nil {
            map["sessionClusterId"] = self.sessionClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("queueName") {
            self.queueName = dict["queueName"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("sessionClusterId") {
            self.sessionClusterId = dict["sessionClusterId"] as! String
        }
    }
}

public class ListSessionClustersResponseBody : Tea.TeaModel {
    public class SessionClusters : Tea.TeaModel {
        public class ApplicationConfigs : Tea.TeaModel {
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
                if dict.keys.contains("configFileName") {
                    self.configFileName = dict["configFileName"] as! String
                }
                if dict.keys.contains("configItemKey") {
                    self.configItemKey = dict["configItemKey"] as! String
                }
                if dict.keys.contains("configItemValue") {
                    self.configItemValue = dict["configItemValue"] as! String
                }
            }
        }
        public class AutoStartConfiguration : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
            }
        }
        public class AutoStopConfiguration : Tea.TeaModel {
            public var enable: Bool?

            public var idleTimeoutMinutes: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.idleTimeoutMinutes != nil {
                    map["idleTimeoutMinutes"] = self.idleTimeoutMinutes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("idleTimeoutMinutes") {
                    self.idleTimeoutMinutes = dict["idleTimeoutMinutes"] as! Int32
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
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
            }
        }
        public var applicationConfigs: [ListSessionClustersResponseBody.SessionClusters.ApplicationConfigs]?

        public var autoStartConfiguration: ListSessionClustersResponseBody.SessionClusters.AutoStartConfiguration?

        public var autoStopConfiguration: ListSessionClustersResponseBody.SessionClusters.AutoStopConfiguration?

        public var displayReleaseVersion: String?

        public var domain: String?

        public var domainInner: String?

        public var draftId: String?

        public var fusion: Bool?

        public var gmtCreate: Int64?

        public var kind: String?

        public var name: String?

        public var queueName: String?

        public var releaseVersion: String?

        public var sessionClusterId: String?

        public var startTime: Int64?

        public var state: String?

        public var stateChangeReason: ListSessionClustersResponseBody.SessionClusters.StateChangeReason?

        public var userId: String?

        public var userName: String?

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
            try self.autoStartConfiguration?.validate()
            try self.autoStopConfiguration?.validate()
            try self.stateChangeReason?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationConfigs != nil {
                var tmp : [Any] = []
                for k in self.applicationConfigs! {
                    tmp.append(k.toMap())
                }
                map["applicationConfigs"] = tmp
            }
            if self.autoStartConfiguration != nil {
                map["autoStartConfiguration"] = self.autoStartConfiguration?.toMap()
            }
            if self.autoStopConfiguration != nil {
                map["autoStopConfiguration"] = self.autoStopConfiguration?.toMap()
            }
            if self.displayReleaseVersion != nil {
                map["displayReleaseVersion"] = self.displayReleaseVersion!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.domainInner != nil {
                map["domainInner"] = self.domainInner!
            }
            if self.draftId != nil {
                map["draftId"] = self.draftId!
            }
            if self.fusion != nil {
                map["fusion"] = self.fusion!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.kind != nil {
                map["kind"] = self.kind!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.queueName != nil {
                map["queueName"] = self.queueName!
            }
            if self.releaseVersion != nil {
                map["releaseVersion"] = self.releaseVersion!
            }
            if self.sessionClusterId != nil {
                map["sessionClusterId"] = self.sessionClusterId!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.stateChangeReason != nil {
                map["stateChangeReason"] = self.stateChangeReason?.toMap()
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
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
            if dict.keys.contains("applicationConfigs") {
                var tmp : [ListSessionClustersResponseBody.SessionClusters.ApplicationConfigs] = []
                for v in dict["applicationConfigs"] as! [Any] {
                    var model = ListSessionClustersResponseBody.SessionClusters.ApplicationConfigs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applicationConfigs = tmp
            }
            if dict.keys.contains("autoStartConfiguration") {
                var model = ListSessionClustersResponseBody.SessionClusters.AutoStartConfiguration()
                model.fromMap(dict["autoStartConfiguration"] as! [String: Any])
                self.autoStartConfiguration = model
            }
            if dict.keys.contains("autoStopConfiguration") {
                var model = ListSessionClustersResponseBody.SessionClusters.AutoStopConfiguration()
                model.fromMap(dict["autoStopConfiguration"] as! [String: Any])
                self.autoStopConfiguration = model
            }
            if dict.keys.contains("displayReleaseVersion") {
                self.displayReleaseVersion = dict["displayReleaseVersion"] as! String
            }
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("domainInner") {
                self.domainInner = dict["domainInner"] as! String
            }
            if dict.keys.contains("draftId") {
                self.draftId = dict["draftId"] as! String
            }
            if dict.keys.contains("fusion") {
                self.fusion = dict["fusion"] as! Bool
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("kind") {
                self.kind = dict["kind"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("queueName") {
                self.queueName = dict["queueName"] as! String
            }
            if dict.keys.contains("releaseVersion") {
                self.releaseVersion = dict["releaseVersion"] as! String
            }
            if dict.keys.contains("sessionClusterId") {
                self.sessionClusterId = dict["sessionClusterId"] as! String
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! Int64
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("stateChangeReason") {
                var model = ListSessionClustersResponseBody.SessionClusters.StateChangeReason()
                model.fromMap(dict["stateChangeReason"] as! [String: Any])
                self.stateChangeReason = model
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
            if dict.keys.contains("webUI") {
                self.webUI = dict["webUI"] as! String
            }
            if dict.keys.contains("workspaceId") {
                self.workspaceId = dict["workspaceId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var sessionClusters: [ListSessionClustersResponseBody.SessionClusters]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionClusters != nil {
            var tmp : [Any] = []
            for k in self.sessionClusters! {
                tmp.append(k.toMap())
            }
            map["sessionClusters"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sessionClusters") {
            var tmp : [ListSessionClustersResponseBody.SessionClusters] = []
            for v in dict["sessionClusters"] as! [Any] {
                var model = ListSessionClustersResponseBody.SessionClusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sessionClusters = tmp
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListSessionClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSessionClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListSessionClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkspaceQueuesRequest : Tea.TeaModel {
    public var environment: String?

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
        if self.environment != nil {
            map["environment"] = self.environment!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environment") {
            self.environment = dict["environment"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class ListWorkspaceQueuesResponseBody : Tea.TeaModel {
    public class Queues : Tea.TeaModel {
        public class AllowActions : Tea.TeaModel {
            public var actionArn: String?

            public var actionName: String?

            public var dependencies: [String]?

            public var description_: String?

            public var displayName: String?

            public override init() {
                super.init()
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
                if self.actionName != nil {
                    map["actionName"] = self.actionName!
                }
                if self.dependencies != nil {
                    map["dependencies"] = self.dependencies!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("actionArn") {
                    self.actionArn = dict["actionArn"] as! String
                }
                if dict.keys.contains("actionName") {
                    self.actionName = dict["actionName"] as! String
                }
                if dict.keys.contains("dependencies") {
                    self.dependencies = dict["dependencies"] as! [String]
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
            }
        }
        public var allowActions: [ListWorkspaceQueuesResponseBody.Queues.AllowActions]?

        public var creator: String?

        public var environments: [String]?

        public var maxResource: String?

        public var minResource: String?

        public var properties: String?

        public var queueName: String?

        public var queueScope: String?

        public var queueStatus: String?

        public var queueType: String?

        public var regionId: String?

        public var usedResource: String?

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
            if self.allowActions != nil {
                var tmp : [Any] = []
                for k in self.allowActions! {
                    tmp.append(k.toMap())
                }
                map["allowActions"] = tmp
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.environments != nil {
                map["environments"] = self.environments!
            }
            if self.maxResource != nil {
                map["maxResource"] = self.maxResource!
            }
            if self.minResource != nil {
                map["minResource"] = self.minResource!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.queueName != nil {
                map["queueName"] = self.queueName!
            }
            if self.queueScope != nil {
                map["queueScope"] = self.queueScope!
            }
            if self.queueStatus != nil {
                map["queueStatus"] = self.queueStatus!
            }
            if self.queueType != nil {
                map["queueType"] = self.queueType!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.usedResource != nil {
                map["usedResource"] = self.usedResource!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("allowActions") {
                var tmp : [ListWorkspaceQueuesResponseBody.Queues.AllowActions] = []
                for v in dict["allowActions"] as! [Any] {
                    var model = ListWorkspaceQueuesResponseBody.Queues.AllowActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.allowActions = tmp
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("environments") {
                self.environments = dict["environments"] as! [String]
            }
            if dict.keys.contains("maxResource") {
                self.maxResource = dict["maxResource"] as! String
            }
            if dict.keys.contains("minResource") {
                self.minResource = dict["minResource"] as! String
            }
            if dict.keys.contains("properties") {
                self.properties = dict["properties"] as! String
            }
            if dict.keys.contains("queueName") {
                self.queueName = dict["queueName"] as! String
            }
            if dict.keys.contains("queueScope") {
                self.queueScope = dict["queueScope"] as! String
            }
            if dict.keys.contains("queueStatus") {
                self.queueStatus = dict["queueStatus"] as! String
            }
            if dict.keys.contains("queueType") {
                self.queueType = dict["queueType"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("usedResource") {
                self.usedResource = dict["usedResource"] as! String
            }
            if dict.keys.contains("workspaceId") {
                self.workspaceId = dict["workspaceId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var queues: [ListWorkspaceQueuesResponseBody.Queues]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.queues != nil {
            var tmp : [Any] = []
            for k in self.queues! {
                tmp.append(k.toMap())
            }
            map["queues"] = tmp
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
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("queues") {
            var tmp : [ListWorkspaceQueuesResponseBody.Queues] = []
            for v in dict["queues"] as! [Any] {
                var model = ListWorkspaceQueuesResponseBody.Queues()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queues = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListWorkspaceQueuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspaceQueuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWorkspaceQueuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

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
        if self.state != nil {
            map["state"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("state") {
            self.state = dict["state"] as! String
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Workspaces : Tea.TeaModel {
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
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
            }
        }
        public var autoRenew: Bool?

        public var autoRenewPeriod: Int32?

        public var autoRenewPeriodUnit: String?

        public var createTime: Int64?

        public var dlfCatalogId: String?

        public var dlfType: String?

        public var duration: Int32?

        public var endTime: Int64?

        public var failReason: String?

        public var paymentDurationUnit: String?

        public var paymentStatus: String?

        public var paymentType: String?

        public var regionId: String?

        public var releaseType: String?

        public var resourceSpec: String?

        public var stateChangeReason: ListWorkspacesResponseBody.Workspaces.StateChangeReason?

        public var storage: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public var workspaceStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.stateChangeReason?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["autoRenew"] = self.autoRenew!
            }
            if self.autoRenewPeriod != nil {
                map["autoRenewPeriod"] = self.autoRenewPeriod!
            }
            if self.autoRenewPeriodUnit != nil {
                map["autoRenewPeriodUnit"] = self.autoRenewPeriodUnit!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dlfCatalogId != nil {
                map["dlfCatalogId"] = self.dlfCatalogId!
            }
            if self.dlfType != nil {
                map["dlfType"] = self.dlfType!
            }
            if self.duration != nil {
                map["duration"] = self.duration!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.failReason != nil {
                map["failReason"] = self.failReason!
            }
            if self.paymentDurationUnit != nil {
                map["paymentDurationUnit"] = self.paymentDurationUnit!
            }
            if self.paymentStatus != nil {
                map["paymentStatus"] = self.paymentStatus!
            }
            if self.paymentType != nil {
                map["paymentType"] = self.paymentType!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.releaseType != nil {
                map["releaseType"] = self.releaseType!
            }
            if self.resourceSpec != nil {
                map["resourceSpec"] = self.resourceSpec!
            }
            if self.stateChangeReason != nil {
                map["stateChangeReason"] = self.stateChangeReason?.toMap()
            }
            if self.storage != nil {
                map["storage"] = self.storage!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["workspaceName"] = self.workspaceName!
            }
            if self.workspaceStatus != nil {
                map["workspaceStatus"] = self.workspaceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoRenew") {
                self.autoRenew = dict["autoRenew"] as! Bool
            }
            if dict.keys.contains("autoRenewPeriod") {
                self.autoRenewPeriod = dict["autoRenewPeriod"] as! Int32
            }
            if dict.keys.contains("autoRenewPeriodUnit") {
                self.autoRenewPeriodUnit = dict["autoRenewPeriodUnit"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("dlfCatalogId") {
                self.dlfCatalogId = dict["dlfCatalogId"] as! String
            }
            if dict.keys.contains("dlfType") {
                self.dlfType = dict["dlfType"] as! String
            }
            if dict.keys.contains("duration") {
                self.duration = dict["duration"] as! Int32
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("failReason") {
                self.failReason = dict["failReason"] as! String
            }
            if dict.keys.contains("paymentDurationUnit") {
                self.paymentDurationUnit = dict["paymentDurationUnit"] as! String
            }
            if dict.keys.contains("paymentStatus") {
                self.paymentStatus = dict["paymentStatus"] as! String
            }
            if dict.keys.contains("paymentType") {
                self.paymentType = dict["paymentType"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("releaseType") {
                self.releaseType = dict["releaseType"] as! String
            }
            if dict.keys.contains("resourceSpec") {
                self.resourceSpec = dict["resourceSpec"] as! String
            }
            if dict.keys.contains("stateChangeReason") {
                var model = ListWorkspacesResponseBody.Workspaces.StateChangeReason()
                model.fromMap(dict["stateChangeReason"] as! [String: Any])
                self.stateChangeReason = model
            }
            if dict.keys.contains("storage") {
                self.storage = dict["storage"] as! String
            }
            if dict.keys.contains("workspaceId") {
                self.workspaceId = dict["workspaceId"] as! String
            }
            if dict.keys.contains("workspaceName") {
                self.workspaceName = dict["workspaceName"] as! String
            }
            if dict.keys.contains("workspaceStatus") {
                self.workspaceStatus = dict["workspaceStatus"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var workspaces: [ListWorkspacesResponseBody.Workspaces]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
        if dict.keys.contains("workspaces") {
            var tmp : [ListWorkspacesResponseBody.Workspaces] = []
            for v in dict["workspaces"] as! [Any] {
                var model = ListWorkspacesResponseBody.Workspaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.workspaces = tmp
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWorkspacesResponseBody()
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
                if dict.keys.contains("configFileName") {
                    self.configFileName = dict["configFileName"] as! String
                }
                if dict.keys.contains("configItemKey") {
                    self.configItemKey = dict["configItemKey"] as! String
                }
                if dict.keys.contains("configItemValue") {
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
            if dict.keys.contains("configurations") {
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

    public var displayReleaseVersion: String?

    public var executionTimeoutSeconds: Int32?

    public var fusion: Bool?

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
        if self.displayReleaseVersion != nil {
            map["displayReleaseVersion"] = self.displayReleaseVersion!
        }
        if self.executionTimeoutSeconds != nil {
            map["executionTimeoutSeconds"] = self.executionTimeoutSeconds!
        }
        if self.fusion != nil {
            map["fusion"] = self.fusion!
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
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("codeType") {
            self.codeType = dict["codeType"] as! String
        }
        if dict.keys.contains("configurationOverrides") {
            var model = StartJobRunRequest.ConfigurationOverrides()
            model.fromMap(dict["configurationOverrides"] as! [String: Any])
            self.configurationOverrides = model
        }
        if dict.keys.contains("displayReleaseVersion") {
            self.displayReleaseVersion = dict["displayReleaseVersion"] as! String
        }
        if dict.keys.contains("executionTimeoutSeconds") {
            self.executionTimeoutSeconds = dict["executionTimeoutSeconds"] as! Int32
        }
        if dict.keys.contains("fusion") {
            self.fusion = dict["fusion"] as! Bool
        }
        if dict.keys.contains("jobDriver") {
            var model = JobDriver()
            model.fromMap(dict["jobDriver"] as! [String: Any])
            self.jobDriver = model
        }
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("releaseVersion") {
            self.releaseVersion = dict["releaseVersion"] as! String
        }
        if dict.keys.contains("resourceQueueId") {
            self.resourceQueueId = dict["resourceQueueId"] as! String
        }
        if dict.keys.contains("tags") {
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
        if dict.keys.contains("regionId") {
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
        if dict.keys.contains("jobRunId") {
            self.jobRunId = dict["jobRunId"] as! String
        }
        if dict.keys.contains("requestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartProcessInstanceRequest : Tea.TeaModel {
    public var isProd: Bool?

    public var processDefinitionCode: Int64?

    public var productNamespace: String?

    public var regionId: String?

    public var runtimeQueue: String?

    public var versionHashCode: String?

    public var versionNumber: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isProd != nil {
            map["isProd"] = self.isProd!
        }
        if self.processDefinitionCode != nil {
            map["processDefinitionCode"] = self.processDefinitionCode!
        }
        if self.productNamespace != nil {
            map["productNamespace"] = self.productNamespace!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.runtimeQueue != nil {
            map["runtimeQueue"] = self.runtimeQueue!
        }
        if self.versionHashCode != nil {
            map["versionHashCode"] = self.versionHashCode!
        }
        if self.versionNumber != nil {
            map["versionNumber"] = self.versionNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("isProd") {
            self.isProd = dict["isProd"] as! Bool
        }
        if dict.keys.contains("processDefinitionCode") {
            self.processDefinitionCode = dict["processDefinitionCode"] as! Int64
        }
        if dict.keys.contains("productNamespace") {
            self.productNamespace = dict["productNamespace"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("runtimeQueue") {
            self.runtimeQueue = dict["runtimeQueue"] as! String
        }
        if dict.keys.contains("versionHashCode") {
            self.versionHashCode = dict["versionHashCode"] as! String
        }
        if dict.keys.contains("versionNumber") {
            self.versionNumber = dict["versionNumber"] as! Int32
        }
    }
}

public class StartProcessInstanceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

    public var failed: Bool?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.failed != nil {
            map["failed"] = self.failed!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Any
        }
        if dict.keys.contains("failed") {
            self.failed = dict["failed"] as! Bool
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class StartProcessInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartProcessInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartProcessInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartSessionClusterRequest : Tea.TeaModel {
    public var queueName: String?

    public var sessionClusterId: String?

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
        if self.queueName != nil {
            map["queueName"] = self.queueName!
        }
        if self.sessionClusterId != nil {
            map["sessionClusterId"] = self.sessionClusterId!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("queueName") {
            self.queueName = dict["queueName"] as! String
        }
        if dict.keys.contains("sessionClusterId") {
            self.sessionClusterId = dict["sessionClusterId"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class StartSessionClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sessionClusterId: String?

    public override init() {
        super.init()
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
        if self.sessionClusterId != nil {
            map["sessionClusterId"] = self.sessionClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sessionClusterId") {
            self.sessionClusterId = dict["sessionClusterId"] as! String
        }
    }
}

public class StartSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartSessionClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartSessionClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopSessionClusterRequest : Tea.TeaModel {
    public var queueName: String?

    public var sessionClusterId: String?

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
        if self.queueName != nil {
            map["queueName"] = self.queueName!
        }
        if self.sessionClusterId != nil {
            map["sessionClusterId"] = self.sessionClusterId!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("queueName") {
            self.queueName = dict["queueName"] as! String
        }
        if dict.keys.contains("sessionClusterId") {
            self.sessionClusterId = dict["sessionClusterId"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class StopSessionClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sessionClusterId: String?

    public override init() {
        super.init()
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
        if self.sessionClusterId != nil {
            map["sessionClusterId"] = self.sessionClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sessionClusterId") {
            self.sessionClusterId = dict["sessionClusterId"] as! String
        }
    }
}

public class StopSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopSessionClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopSessionClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TerminateSqlStatementRequest : Tea.TeaModel {
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
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class TerminateSqlStatementResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class TerminateSqlStatementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TerminateSqlStatementResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TerminateSqlStatementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProcessDefinitionWithScheduleRequest : Tea.TeaModel {
    public class Schedule : Tea.TeaModel {
        public var crontab: String?

        public var endTime: String?

        public var startTime: String?

        public var timezoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.crontab != nil {
                map["crontab"] = self.crontab!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.timezoneId != nil {
                map["timezoneId"] = self.timezoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("crontab") {
                self.crontab = dict["crontab"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("timezoneId") {
                self.timezoneId = dict["timezoneId"] as! String
            }
        }
    }
    public class TaskDefinitionJson : Tea.TeaModel {
        public class TaskParams : Tea.TeaModel {
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
                    if dict.keys.contains("key") {
                        self.key = dict["key"] as! String
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! String
                    }
                }
            }
            public var displaySparkVersion: String?

            public var environmentId: String?

            public var fusion: Bool?

            public var resourceQueueId: String?

            public var sparkConf: [UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf]?

            public var sparkDriverCores: Int32?

            public var sparkDriverMemory: Int64?

            public var sparkExecutorCores: Int32?

            public var sparkExecutorMemory: Int64?

            public var sparkLogLevel: String?

            public var sparkLogPath: String?

            public var sparkVersion: String?

            public var taskBizId: String?

            public var type: String?

            public var workspaceBizId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displaySparkVersion != nil {
                    map["displaySparkVersion"] = self.displaySparkVersion!
                }
                if self.environmentId != nil {
                    map["environmentId"] = self.environmentId!
                }
                if self.fusion != nil {
                    map["fusion"] = self.fusion!
                }
                if self.resourceQueueId != nil {
                    map["resourceQueueId"] = self.resourceQueueId!
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
                if self.taskBizId != nil {
                    map["taskBizId"] = self.taskBizId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.workspaceBizId != nil {
                    map["workspaceBizId"] = self.workspaceBizId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("displaySparkVersion") {
                    self.displaySparkVersion = dict["displaySparkVersion"] as! String
                }
                if dict.keys.contains("environmentId") {
                    self.environmentId = dict["environmentId"] as! String
                }
                if dict.keys.contains("fusion") {
                    self.fusion = dict["fusion"] as! Bool
                }
                if dict.keys.contains("resourceQueueId") {
                    self.resourceQueueId = dict["resourceQueueId"] as! String
                }
                if dict.keys.contains("sparkConf") {
                    var tmp : [UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf] = []
                    for v in dict["sparkConf"] as! [Any] {
                        var model = UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sparkConf = tmp
                }
                if dict.keys.contains("sparkDriverCores") {
                    self.sparkDriverCores = dict["sparkDriverCores"] as! Int32
                }
                if dict.keys.contains("sparkDriverMemory") {
                    self.sparkDriverMemory = dict["sparkDriverMemory"] as! Int64
                }
                if dict.keys.contains("sparkExecutorCores") {
                    self.sparkExecutorCores = dict["sparkExecutorCores"] as! Int32
                }
                if dict.keys.contains("sparkExecutorMemory") {
                    self.sparkExecutorMemory = dict["sparkExecutorMemory"] as! Int64
                }
                if dict.keys.contains("sparkLogLevel") {
                    self.sparkLogLevel = dict["sparkLogLevel"] as! String
                }
                if dict.keys.contains("sparkLogPath") {
                    self.sparkLogPath = dict["sparkLogPath"] as! String
                }
                if dict.keys.contains("sparkVersion") {
                    self.sparkVersion = dict["sparkVersion"] as! String
                }
                if dict.keys.contains("taskBizId") {
                    self.taskBizId = dict["taskBizId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("workspaceBizId") {
                    self.workspaceBizId = dict["workspaceBizId"] as! String
                }
            }
        }
        public var alertEmailAddress: String?

        public var code: Int64?

        public var description_: String?

        public var failAlertEnable: Bool?

        public var failRetryTimes: Int32?

        public var name: String?

        public var startAlertEnable: Bool?

        public var tags: [String: String]?

        public var taskParams: UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams?

        public var taskType: String?

        public var timeout: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.taskParams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertEmailAddress != nil {
                map["alertEmailAddress"] = self.alertEmailAddress!
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.failAlertEnable != nil {
                map["failAlertEnable"] = self.failAlertEnable!
            }
            if self.failRetryTimes != nil {
                map["failRetryTimes"] = self.failRetryTimes!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.startAlertEnable != nil {
                map["startAlertEnable"] = self.startAlertEnable!
            }
            if self.tags != nil {
                map["tags"] = self.tags!
            }
            if self.taskParams != nil {
                map["taskParams"] = self.taskParams?.toMap()
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alertEmailAddress") {
                self.alertEmailAddress = dict["alertEmailAddress"] as! String
            }
            if dict.keys.contains("code") {
                self.code = dict["code"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("failAlertEnable") {
                self.failAlertEnable = dict["failAlertEnable"] as! Bool
            }
            if dict.keys.contains("failRetryTimes") {
                self.failRetryTimes = dict["failRetryTimes"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("startAlertEnable") {
                self.startAlertEnable = dict["startAlertEnable"] as! Bool
            }
            if dict.keys.contains("tags") {
                self.tags = dict["tags"] as! [String: String]
            }
            if dict.keys.contains("taskParams") {
                var model = UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams()
                model.fromMap(dict["taskParams"] as! [String: Any])
                self.taskParams = model
            }
            if dict.keys.contains("taskType") {
                self.taskType = dict["taskType"] as! String
            }
            if dict.keys.contains("timeout") {
                self.timeout = dict["timeout"] as! Int32
            }
        }
    }
    public class TaskRelationJson : Tea.TeaModel {
        public var name: String?

        public var postTaskCode: Int64?

        public var postTaskVersion: Int32?

        public var preTaskCode: Int64?

        public var preTaskVersion: Int32?

        public override init() {
            super.init()
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
            if self.postTaskCode != nil {
                map["postTaskCode"] = self.postTaskCode!
            }
            if self.postTaskVersion != nil {
                map["postTaskVersion"] = self.postTaskVersion!
            }
            if self.preTaskCode != nil {
                map["preTaskCode"] = self.preTaskCode!
            }
            if self.preTaskVersion != nil {
                map["preTaskVersion"] = self.preTaskVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("postTaskCode") {
                self.postTaskCode = dict["postTaskCode"] as! Int64
            }
            if dict.keys.contains("postTaskVersion") {
                self.postTaskVersion = dict["postTaskVersion"] as! Int32
            }
            if dict.keys.contains("preTaskCode") {
                self.preTaskCode = dict["preTaskCode"] as! Int64
            }
            if dict.keys.contains("preTaskVersion") {
                self.preTaskVersion = dict["preTaskVersion"] as! Int32
            }
        }
    }
    public var alertEmailAddress: String?

    public var description_: String?

    public var executionType: String?

    public var name: String?

    public var productNamespace: String?

    public var publish: Bool?

    public var regionId: String?

    public var releaseState: String?

    public var resourceQueue: String?

    public var retryTimes: Int32?

    public var runAs: String?

    public var schedule: UpdateProcessDefinitionWithScheduleRequest.Schedule?

    public var tags: [String: String]?

    public var taskDefinitionJson: [UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson]?

    public var taskParallelism: Int32?

    public var taskRelationJson: [UpdateProcessDefinitionWithScheduleRequest.TaskRelationJson]?

    public var timeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertEmailAddress != nil {
            map["alertEmailAddress"] = self.alertEmailAddress!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionType != nil {
            map["executionType"] = self.executionType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.productNamespace != nil {
            map["productNamespace"] = self.productNamespace!
        }
        if self.publish != nil {
            map["publish"] = self.publish!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.releaseState != nil {
            map["releaseState"] = self.releaseState!
        }
        if self.resourceQueue != nil {
            map["resourceQueue"] = self.resourceQueue!
        }
        if self.retryTimes != nil {
            map["retryTimes"] = self.retryTimes!
        }
        if self.runAs != nil {
            map["runAs"] = self.runAs!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.taskDefinitionJson != nil {
            var tmp : [Any] = []
            for k in self.taskDefinitionJson! {
                tmp.append(k.toMap())
            }
            map["taskDefinitionJson"] = tmp
        }
        if self.taskParallelism != nil {
            map["taskParallelism"] = self.taskParallelism!
        }
        if self.taskRelationJson != nil {
            var tmp : [Any] = []
            for k in self.taskRelationJson! {
                tmp.append(k.toMap())
            }
            map["taskRelationJson"] = tmp
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alertEmailAddress") {
            self.alertEmailAddress = dict["alertEmailAddress"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("executionType") {
            self.executionType = dict["executionType"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("productNamespace") {
            self.productNamespace = dict["productNamespace"] as! String
        }
        if dict.keys.contains("publish") {
            self.publish = dict["publish"] as! Bool
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("releaseState") {
            self.releaseState = dict["releaseState"] as! String
        }
        if dict.keys.contains("resourceQueue") {
            self.resourceQueue = dict["resourceQueue"] as! String
        }
        if dict.keys.contains("retryTimes") {
            self.retryTimes = dict["retryTimes"] as! Int32
        }
        if dict.keys.contains("runAs") {
            self.runAs = dict["runAs"] as! String
        }
        if dict.keys.contains("schedule") {
            var model = UpdateProcessDefinitionWithScheduleRequest.Schedule()
            model.fromMap(dict["schedule"] as! [String: Any])
            self.schedule = model
        }
        if dict.keys.contains("tags") {
            self.tags = dict["tags"] as! [String: String]
        }
        if dict.keys.contains("taskDefinitionJson") {
            var tmp : [UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson] = []
            for v in dict["taskDefinitionJson"] as! [Any] {
                var model = UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskDefinitionJson = tmp
        }
        if dict.keys.contains("taskParallelism") {
            self.taskParallelism = dict["taskParallelism"] as! Int32
        }
        if dict.keys.contains("taskRelationJson") {
            var tmp : [UpdateProcessDefinitionWithScheduleRequest.TaskRelationJson] = []
            for v in dict["taskRelationJson"] as! [Any] {
                var model = UpdateProcessDefinitionWithScheduleRequest.TaskRelationJson()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskRelationJson = tmp
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class UpdateProcessDefinitionWithScheduleShrinkRequest : Tea.TeaModel {
    public var alertEmailAddress: String?

    public var description_: String?

    public var executionType: String?

    public var name: String?

    public var productNamespace: String?

    public var publish: Bool?

    public var regionId: String?

    public var releaseState: String?

    public var resourceQueue: String?

    public var retryTimes: Int32?

    public var runAs: String?

    public var scheduleShrink: String?

    public var tagsShrink: String?

    public var taskDefinitionJsonShrink: String?

    public var taskParallelism: Int32?

    public var taskRelationJsonShrink: String?

    public var timeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertEmailAddress != nil {
            map["alertEmailAddress"] = self.alertEmailAddress!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionType != nil {
            map["executionType"] = self.executionType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.productNamespace != nil {
            map["productNamespace"] = self.productNamespace!
        }
        if self.publish != nil {
            map["publish"] = self.publish!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.releaseState != nil {
            map["releaseState"] = self.releaseState!
        }
        if self.resourceQueue != nil {
            map["resourceQueue"] = self.resourceQueue!
        }
        if self.retryTimes != nil {
            map["retryTimes"] = self.retryTimes!
        }
        if self.runAs != nil {
            map["runAs"] = self.runAs!
        }
        if self.scheduleShrink != nil {
            map["schedule"] = self.scheduleShrink!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDefinitionJsonShrink != nil {
            map["taskDefinitionJson"] = self.taskDefinitionJsonShrink!
        }
        if self.taskParallelism != nil {
            map["taskParallelism"] = self.taskParallelism!
        }
        if self.taskRelationJsonShrink != nil {
            map["taskRelationJson"] = self.taskRelationJsonShrink!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alertEmailAddress") {
            self.alertEmailAddress = dict["alertEmailAddress"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("executionType") {
            self.executionType = dict["executionType"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("productNamespace") {
            self.productNamespace = dict["productNamespace"] as! String
        }
        if dict.keys.contains("publish") {
            self.publish = dict["publish"] as! Bool
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("releaseState") {
            self.releaseState = dict["releaseState"] as! String
        }
        if dict.keys.contains("resourceQueue") {
            self.resourceQueue = dict["resourceQueue"] as! String
        }
        if dict.keys.contains("retryTimes") {
            self.retryTimes = dict["retryTimes"] as! Int32
        }
        if dict.keys.contains("runAs") {
            self.runAs = dict["runAs"] as! String
        }
        if dict.keys.contains("schedule") {
            self.scheduleShrink = dict["schedule"] as! String
        }
        if dict.keys.contains("tags") {
            self.tagsShrink = dict["tags"] as! String
        }
        if dict.keys.contains("taskDefinitionJson") {
            self.taskDefinitionJsonShrink = dict["taskDefinitionJson"] as! String
        }
        if dict.keys.contains("taskParallelism") {
            self.taskParallelism = dict["taskParallelism"] as! Int32
        }
        if dict.keys.contains("taskRelationJson") {
            self.taskRelationJsonShrink = dict["taskRelationJson"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
    }
}

public class UpdateProcessDefinitionWithScheduleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertEmailAddress: String?

        public var bizId: String?

        public var code: String?

        public var createTime: String?

        public var crontab: String?

        public var description_: String?

        public var endTime: String?

        public var executionType: String?

        public var id: String?

        public var name: String?

        public var projectName: String?

        public var releaseState: String?

        public var startTime: String?

        public var timezoneId: String?

        public var updateTime: String?

        public var userId: String?

        public var userName: String?

        public var version: Int32?

        public var versionHashCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertEmailAddress != nil {
                map["alertEmailAddress"] = self.alertEmailAddress!
            }
            if self.bizId != nil {
                map["bizId"] = self.bizId!
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.crontab != nil {
                map["crontab"] = self.crontab!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.executionType != nil {
                map["executionType"] = self.executionType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectName != nil {
                map["projectName"] = self.projectName!
            }
            if self.releaseState != nil {
                map["releaseState"] = self.releaseState!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.timezoneId != nil {
                map["timezoneId"] = self.timezoneId!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.versionHashCode != nil {
                map["versionHashCode"] = self.versionHashCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alertEmailAddress") {
                self.alertEmailAddress = dict["alertEmailAddress"] as! String
            }
            if dict.keys.contains("bizId") {
                self.bizId = dict["bizId"] as! String
            }
            if dict.keys.contains("code") {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("crontab") {
                self.crontab = dict["crontab"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("executionType") {
                self.executionType = dict["executionType"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("projectName") {
                self.projectName = dict["projectName"] as! String
            }
            if dict.keys.contains("releaseState") {
                self.releaseState = dict["releaseState"] as! String
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
            }
            if dict.keys.contains("timezoneId") {
                self.timezoneId = dict["timezoneId"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! Int32
            }
            if dict.keys.contains("versionHashCode") {
                self.versionHashCode = dict["versionHashCode"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: UpdateProcessDefinitionWithScheduleResponseBody.Data?

    public var failed: String?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.failed != nil {
            map["failed"] = self.failed!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = UpdateProcessDefinitionWithScheduleResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("failed") {
            self.failed = dict["failed"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class UpdateProcessDefinitionWithScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProcessDefinitionWithScheduleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateProcessDefinitionWithScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
