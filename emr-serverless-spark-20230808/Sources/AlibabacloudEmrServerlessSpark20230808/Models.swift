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

    public var modifierName: String?

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
        if self.modifierName != nil {
            map["modifierName"] = self.modifierName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizId"] as? String {
            self.bizId = value
        }
        if let value = dict["catagoryBizId"] as? String {
            self.catagoryBizId = value
        }
        if let value = dict["creator"] as? Int64 {
            self.creator = value
        }
        if let value = dict["credential"] as? [String: Any?] {
            var model = Credential()
            model.fromMap(value)
            self.credential = model
        }
        if let value = dict["fullPath"] as? [String] {
            self.fullPath = value
        }
        if let value = dict["gmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["location"] as? String {
            self.location = value
        }
        if let value = dict["modifier"] as? Int64 {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizId"] as? String {
            self.bizId = value
        }
        if let value = dict["creator"] as? Int64 {
            self.creator = value
        }
        if let value = dict["gmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["modifier"] as? Int64 {
            self.modifier = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentBizId"] as? String {
            self.parentBizId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configFileName"] as? String {
            self.configFileName = value
        }
        if let value = dict["configItemKey"] as? String {
            self.configItemKey = value
        }
        if let value = dict["configItemValue"] as? String {
            self.configItemValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configFileName"] as? String {
                self.configFileName = value
            }
            if let value = dict["configItemKey"] as? String {
                self.configItemKey = value
            }
            if let value = dict["configItemValue"] as? String {
                self.configItemValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configurations"] as? [Any?] {
            var tmp : [ConfigurationOverrides.Configurations] = []
            for v in value {
                if v != nil {
                    var model = ConfigurationOverrides.Configurations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessId"] as? String {
            self.accessId = value
        }
        if let value = dict["dir"] as? String {
            self.dir = value
        }
        if let value = dict["expire"] as? String {
            self.expire = value
        }
        if let value = dict["host"] as? String {
            self.host = value
        }
        if let value = dict["policy"] as? String {
            self.policy = value
        }
        if let value = dict["securityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["signature"] as? String {
            self.signature = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["entryPoint"] as? String {
                self.entryPoint = value
            }
            if let value = dict["entryPointArguments"] as? [String] {
                self.entryPointArguments = value
            }
            if let value = dict["sparkSubmitParameters"] as? String {
                self.sparkSubmitParameters = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sparkSubmit"] as? [String: Any?] {
            var model = JobDriver.SparkSubmit()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["gmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["kerberosConfId"] as? String {
            self.kerberosConfId = value
        }
        if let value = dict["keytabs"] as? [String] {
            self.keytabs = value
        }
        if let value = dict["krb5Conf"] as? String {
            self.krb5Conf = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["networkServiceId"] as? String {
            self.networkServiceId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["actionArn"] as? String {
            self.actionArn = value
        }
        if let value = dict["principalArn"] as? String {
            self.principalArn = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpuArchitecture"] as? String {
            self.cpuArchitecture = value
        }
        if let value = dict["imageId"] as? String {
            self.imageId = value
        }
        if let value = dict["runtimeEngineType"] as? String {
            self.runtimeEngineType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["driverStartup"] as? String {
            self.driverStartup = value
        }
        if let value = dict["driverStdError"] as? String {
            self.driverStdError = value
        }
        if let value = dict["driverStdOut"] as? String {
            self.driverStdOut = value
        }
        if let value = dict["driverSyslog"] as? String {
            self.driverSyslog = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["value"] as? String {
            self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["values"] as? [String] {
                self.values = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nullable"] as? Bool {
                    self.nullable = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fields"] as? [Any?] {
                var tmp : [SqlOutput.Schema.Fields] = []
                for v in value {
                    if v != nil {
                        var model = SqlOutput.Schema.Fields()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["rows"] as? [Any?] {
            var tmp : [SqlOutput.Rows] = []
            for v in value {
                if v != nil {
                    var model = SqlOutput.Rows()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rows = tmp
        }
        if let value = dict["schema"] as? [String: Any?] {
            var model = SqlOutput.Schema()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["value"] as? String {
            self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessId"] as? String {
                self.accessId = value
            }
            if let value = dict["accessUrl"] as? String {
                self.accessUrl = value
            }
            if let value = dict["expire"] as? Int64 {
                self.expire = value
            }
            if let value = dict["host"] as? String {
                self.host = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
            if let value = dict["policy"] as? String {
                self.policy = value
            }
            if let value = dict["securityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["signature"] as? String {
                self.signature = value
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

    public var kernelId: String?

    public var lastRunResourceQueueId: String?

    public var modifier: Int64?

    public var name: String?

    public var params: [String: String]?

    public var pyFiles: [String]?

    public var sessionClusterId: String?

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
        if self.kernelId != nil {
            map["kernelId"] = self.kernelId!
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
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.pyFiles != nil {
            map["pyFiles"] = self.pyFiles!
        }
        if self.sessionClusterId != nil {
            map["sessionClusterId"] = self.sessionClusterId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["archives"] as? [String] {
            self.archives = value
        }
        if let value = dict["artifactUrl"] as? String {
            self.artifactUrl = value
        }
        if let value = dict["bizId"] as? String {
            self.bizId = value
        }
        if let value = dict["categoryBizId"] as? String {
            self.categoryBizId = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["creator"] as? Int64 {
            self.creator = value
        }
        if let value = dict["credential"] as? [String: Any?] {
            var model = Task.Credential()
            model.fromMap(value)
            self.credential = model
        }
        if let value = dict["defaultCatalogId"] as? String {
            self.defaultCatalogId = value
        }
        if let value = dict["defaultDatabase"] as? String {
            self.defaultDatabase = value
        }
        if let value = dict["defaultResourceQueueId"] as? String {
            self.defaultResourceQueueId = value
        }
        if let value = dict["defaultSqlComputeId"] as? String {
            self.defaultSqlComputeId = value
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["extraArtifactIds"] as? [String] {
            self.extraArtifactIds = value
        }
        if let value = dict["extraSparkSubmitParams"] as? String {
            self.extraSparkSubmitParams = value
        }
        if let value = dict["files"] as? [String] {
            self.files = value
        }
        if let value = dict["fusion"] as? Bool {
            self.fusion = value
        }
        if let value = dict["gmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["hasChanged"] as? Bool {
            self.hasChanged = value
        }
        if let value = dict["hasCommited"] as? Bool {
            self.hasCommited = value
        }
        if let value = dict["isStreaming"] as? Bool {
            self.isStreaming = value
        }
        if let value = dict["jars"] as? [String] {
            self.jars = value
        }
        if let value = dict["kernelId"] as? String {
            self.kernelId = value
        }
        if let value = dict["lastRunResourceQueueId"] as? String {
            self.lastRunResourceQueueId = value
        }
        if let value = dict["modifier"] as? Int64 {
            self.modifier = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["params"] as? [String: String] {
            self.params = value
        }
        if let value = dict["pyFiles"] as? [String] {
            self.pyFiles = value
        }
        if let value = dict["sessionClusterId"] as? String {
            self.sessionClusterId = value
        }
        if let value = dict["sparkArgs"] as? String {
            self.sparkArgs = value
        }
        if let value = dict["sparkConf"] as? [Any?] {
            var tmp : [SparkConf] = []
            for v in value {
                if v != nil {
                    var model = SparkConf()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sparkConf = tmp
        }
        if let value = dict["sparkDriverCores"] as? Int32 {
            self.sparkDriverCores = value
        }
        if let value = dict["sparkDriverMemory"] as? Int64 {
            self.sparkDriverMemory = value
        }
        if let value = dict["sparkEntrypoint"] as? String {
            self.sparkEntrypoint = value
        }
        if let value = dict["sparkExecutorCores"] as? Int32 {
            self.sparkExecutorCores = value
        }
        if let value = dict["sparkExecutorMemory"] as? Int64 {
            self.sparkExecutorMemory = value
        }
        if let value = dict["sparkLogLevel"] as? String {
            self.sparkLogLevel = value
        }
        if let value = dict["sparkLogPath"] as? String {
            self.sparkLogPath = value
        }
        if let value = dict["sparkSubmitClause"] as? String {
            self.sparkSubmitClause = value
        }
        if let value = dict["sparkVersion"] as? String {
            self.sparkVersion = value
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizId"] as? String {
            self.bizId = value
        }
        if let value = dict["creator"] as? Int64 {
            self.creator = value
        }
        if let value = dict["fenixRunId"] as? String {
            self.fenixRunId = value
        }
        if let value = dict["gmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["taskBizId"] as? String {
            self.taskBizId = value
        }
        if let value = dict["taskInfo"] as? [String: Any?] {
            var model = Task()
            model.fromMap(value)
            self.taskInfo = model
        }
        if let value = dict["taskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["workspaceBizId"] as? String {
            self.workspaceBizId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizId"] as? String {
            self.bizId = value
        }
        if let value = dict["commiter"] as? Int64 {
            self.commiter = value
        }
        if let value = dict["gmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["item"] as? [String: Any?] {
            var model = Task()
            model.fromMap(value)
            self.item = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["taskBizId"] as? String {
            self.taskBizId = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class Template : Tea.TeaModel {
    public var bizId: String?

    public var creator: Int64?

    public var displaySparkVersion: String?

    public var fusion: Bool?

    public var gmtCreated: String?

    public var gmtModified: String?

    public var isDefault: Bool?

    public var modifier: Int64?

    public var name: String?

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
        if self.bizId != nil {
            map["bizId"] = self.bizId!
        }
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
        if self.isDefault != nil {
            map["isDefault"] = self.isDefault!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.name != nil {
            map["name"] = self.name!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizId"] as? String {
            self.bizId = value
        }
        if let value = dict["creator"] as? Int64 {
            self.creator = value
        }
        if let value = dict["displaySparkVersion"] as? String {
            self.displaySparkVersion = value
        }
        if let value = dict["fusion"] as? Bool {
            self.fusion = value
        }
        if let value = dict["gmtCreated"] as? String {
            self.gmtCreated = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["isDefault"] as? Bool {
            self.isDefault = value
        }
        if let value = dict["modifier"] as? Int64 {
            self.modifier = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sparkConf"] as? [Any?] {
            var tmp : [SparkConf] = []
            for v in value {
                if v != nil {
                    var model = SparkConf()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sparkConf = tmp
        }
        if let value = dict["sparkDriverCores"] as? Int32 {
            self.sparkDriverCores = value
        }
        if let value = dict["sparkDriverMemory"] as? Int64 {
            self.sparkDriverMemory = value
        }
        if let value = dict["sparkExecutorCores"] as? Int32 {
            self.sparkExecutorCores = value
        }
        if let value = dict["sparkExecutorMemory"] as? Int64 {
            self.sparkExecutorMemory = value
        }
        if let value = dict["sparkLogLevel"] as? String {
            self.sparkLogLevel = value
        }
        if let value = dict["sparkLogPath"] as? String {
            self.sparkLogPath = value
        }
        if let value = dict["sparkVersion"] as? String {
            self.sparkVersion = value
        }
        if let value = dict["templateType"] as? String {
            self.templateType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["memberArns"] as? [String] {
            self.memberArns = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddMembersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobRunId"] as? String {
            self.jobRunId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelJobRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLivyComputeRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
        }
    }
    public class AutoStopConfiguration : Tea.TeaModel {
        public var enable: Bool?

        public var idleTimeoutMinutes: Int64?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["idleTimeoutMinutes"] as? Int64 {
                self.idleTimeoutMinutes = value
            }
        }
    }
    public var authType: String?

    public var autoStartConfiguration: CreateLivyComputeRequest.AutoStartConfiguration?

    public var autoStopConfiguration: CreateLivyComputeRequest.AutoStopConfiguration?

    public var cpuLimit: String?

    public var displayReleaseVersion: String?

    public var enablePublic: Bool?

    public var environmentId: String?

    public var fusion: Bool?

    public var livyServerConf: String?

    public var livyVersion: String?

    public var memoryLimit: String?

    public var name: String?

    public var networkName: String?

    public var queueName: String?

    public var releaseVersion: String?

    public var regionId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["authType"] = self.authType!
        }
        if self.autoStartConfiguration != nil {
            map["autoStartConfiguration"] = self.autoStartConfiguration?.toMap()
        }
        if self.autoStopConfiguration != nil {
            map["autoStopConfiguration"] = self.autoStopConfiguration?.toMap()
        }
        if self.cpuLimit != nil {
            map["cpuLimit"] = self.cpuLimit!
        }
        if self.displayReleaseVersion != nil {
            map["displayReleaseVersion"] = self.displayReleaseVersion!
        }
        if self.enablePublic != nil {
            map["enablePublic"] = self.enablePublic!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.fusion != nil {
            map["fusion"] = self.fusion!
        }
        if self.livyServerConf != nil {
            map["livyServerConf"] = self.livyServerConf!
        }
        if self.livyVersion != nil {
            map["livyVersion"] = self.livyVersion!
        }
        if self.memoryLimit != nil {
            map["memoryLimit"] = self.memoryLimit!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networkName != nil {
            map["networkName"] = self.networkName!
        }
        if self.queueName != nil {
            map["queueName"] = self.queueName!
        }
        if self.releaseVersion != nil {
            map["releaseVersion"] = self.releaseVersion!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authType"] as? String {
            self.authType = value
        }
        if let value = dict["autoStartConfiguration"] as? [String: Any?] {
            var model = CreateLivyComputeRequest.AutoStartConfiguration()
            model.fromMap(value)
            self.autoStartConfiguration = model
        }
        if let value = dict["autoStopConfiguration"] as? [String: Any?] {
            var model = CreateLivyComputeRequest.AutoStopConfiguration()
            model.fromMap(value)
            self.autoStopConfiguration = model
        }
        if let value = dict["cpuLimit"] as? String {
            self.cpuLimit = value
        }
        if let value = dict["displayReleaseVersion"] as? String {
            self.displayReleaseVersion = value
        }
        if let value = dict["enablePublic"] as? Bool {
            self.enablePublic = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["fusion"] as? Bool {
            self.fusion = value
        }
        if let value = dict["livyServerConf"] as? String {
            self.livyServerConf = value
        }
        if let value = dict["livyVersion"] as? String {
            self.livyVersion = value
        }
        if let value = dict["memoryLimit"] as? String {
            self.memoryLimit = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["networkName"] as? String {
            self.networkName = value
        }
        if let value = dict["queueName"] as? String {
            self.queueName = value
        }
        if let value = dict["releaseVersion"] as? String {
            self.releaseVersion = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateLivyComputeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var livyComputeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.livyComputeId != nil {
                map["livyComputeId"] = self.livyComputeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["livyComputeId"] as? String {
                self.livyComputeId = value
            }
        }
    }
    public var code: String?

    public var data: CreateLivyComputeResponseBody.Data?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateLivyComputeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLivyComputeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLivyComputeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLivyComputeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLivyComputeTokenRequest : Tea.TeaModel {
    public class AutoExpireConfiguration : Tea.TeaModel {
        public var enable: Bool?

        public var expireDays: Int32?

        public override init() {
            super.init()
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
            if self.expireDays != nil {
                map["expireDays"] = self.expireDays!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["expireDays"] as? Int32 {
                self.expireDays = value
            }
        }
    }
    public var autoExpireConfiguration: CreateLivyComputeTokenRequest.AutoExpireConfiguration?

    public var name: String?

    public var token: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoExpireConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoExpireConfiguration != nil {
            map["autoExpireConfiguration"] = self.autoExpireConfiguration?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoExpireConfiguration"] as? [String: Any?] {
            var model = CreateLivyComputeTokenRequest.AutoExpireConfiguration()
            model.fromMap(value)
            self.autoExpireConfiguration = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateLivyComputeTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var tokenId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tokenId != nil {
                map["tokenId"] = self.tokenId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tokenId"] as? String {
                self.tokenId = value
            }
        }
    }
    public var code: String?

    public var data: CreateLivyComputeTokenResponseBody.Data?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateLivyComputeTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLivyComputeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLivyComputeTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLivyComputeTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProcessDefinitionWithScheduleRequest : Tea.TeaModel {
    public class GlobalParams : Tea.TeaModel {
        public var direct: String?

        public var prop: String?

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
            if self.direct != nil {
                map["direct"] = self.direct!
            }
            if self.prop != nil {
                map["prop"] = self.prop!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["direct"] as? String {
                self.direct = value
            }
            if let value = dict["prop"] as? String {
                self.prop = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["crontab"] as? String {
                self.crontab = value
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["timezoneId"] as? String {
                self.timezoneId = value
            }
        }
    }
    public class TaskDefinitionJson : Tea.TeaModel {
        public class TaskParams : Tea.TeaModel {
            public class LocalParams : Tea.TeaModel {
                public var direct: String?

                public var prop: String?

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
                    if self.direct != nil {
                        map["direct"] = self.direct!
                    }
                    if self.prop != nil {
                        map["prop"] = self.prop!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["direct"] as? String {
                        self.direct = value
                    }
                    if let value = dict["prop"] as? String {
                        self.prop = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["key"] as? String {
                        self.key = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var displaySparkVersion: String?

            public var environmentId: String?

            public var fusion: Bool?

            public var localParams: [CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.LocalParams]?

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
                if self.localParams != nil {
                    var tmp : [Any] = []
                    for k in self.localParams! {
                        tmp.append(k.toMap())
                    }
                    map["localParams"] = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["displaySparkVersion"] as? String {
                    self.displaySparkVersion = value
                }
                if let value = dict["environmentId"] as? String {
                    self.environmentId = value
                }
                if let value = dict["fusion"] as? Bool {
                    self.fusion = value
                }
                if let value = dict["localParams"] as? [Any?] {
                    var tmp : [CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.LocalParams] = []
                    for v in value {
                        if v != nil {
                            var model = CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.LocalParams()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.localParams = tmp
                }
                if let value = dict["resourceQueueId"] as? String {
                    self.resourceQueueId = value
                }
                if let value = dict["sparkConf"] as? [Any?] {
                    var tmp : [CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf] = []
                    for v in value {
                        if v != nil {
                            var model = CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sparkConf = tmp
                }
                if let value = dict["sparkDriverCores"] as? Int32 {
                    self.sparkDriverCores = value
                }
                if let value = dict["sparkDriverMemory"] as? Int64 {
                    self.sparkDriverMemory = value
                }
                if let value = dict["sparkExecutorCores"] as? Int32 {
                    self.sparkExecutorCores = value
                }
                if let value = dict["sparkExecutorMemory"] as? Int64 {
                    self.sparkExecutorMemory = value
                }
                if let value = dict["sparkLogLevel"] as? String {
                    self.sparkLogLevel = value
                }
                if let value = dict["sparkLogPath"] as? String {
                    self.sparkLogPath = value
                }
                if let value = dict["sparkVersion"] as? String {
                    self.sparkVersion = value
                }
                if let value = dict["taskBizId"] as? String {
                    self.taskBizId = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["workspaceBizId"] as? String {
                    self.workspaceBizId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alertEmailAddress"] as? String {
                self.alertEmailAddress = value
            }
            if let value = dict["code"] as? Int64 {
                self.code = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["failAlertEnable"] as? Bool {
                self.failAlertEnable = value
            }
            if let value = dict["failRetryTimes"] as? Int32 {
                self.failRetryTimes = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["startAlertEnable"] as? Bool {
                self.startAlertEnable = value
            }
            if let value = dict["tags"] as? [String: String] {
                self.tags = value
            }
            if let value = dict["taskParams"] as? [String: Any?] {
                var model = CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams()
                model.fromMap(value)
                self.taskParams = model
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
            if let value = dict["timeout"] as? Int32 {
                self.timeout = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["postTaskCode"] as? Int64 {
                self.postTaskCode = value
            }
            if let value = dict["postTaskVersion"] as? Int32 {
                self.postTaskVersion = value
            }
            if let value = dict["preTaskCode"] as? Int64 {
                self.preTaskCode = value
            }
            if let value = dict["preTaskVersion"] as? Int32 {
                self.preTaskVersion = value
            }
        }
    }
    public var alertEmailAddress: String?

    public var description_: String?

    public var executionType: String?

    public var globalParams: [CreateProcessDefinitionWithScheduleRequest.GlobalParams]?

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
        if self.globalParams != nil {
            var tmp : [Any] = []
            for k in self.globalParams! {
                tmp.append(k.toMap())
            }
            map["globalParams"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertEmailAddress"] as? String {
            self.alertEmailAddress = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionType"] as? String {
            self.executionType = value
        }
        if let value = dict["globalParams"] as? [Any?] {
            var tmp : [CreateProcessDefinitionWithScheduleRequest.GlobalParams] = []
            for v in value {
                if v != nil {
                    var model = CreateProcessDefinitionWithScheduleRequest.GlobalParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.globalParams = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["productNamespace"] as? String {
            self.productNamespace = value
        }
        if let value = dict["publish"] as? Bool {
            self.publish = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceQueue"] as? String {
            self.resourceQueue = value
        }
        if let value = dict["retryTimes"] as? Int32 {
            self.retryTimes = value
        }
        if let value = dict["runAs"] as? String {
            self.runAs = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = CreateProcessDefinitionWithScheduleRequest.Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["taskDefinitionJson"] as? [Any?] {
            var tmp : [CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson] = []
            for v in value {
                if v != nil {
                    var model = CreateProcessDefinitionWithScheduleRequest.TaskDefinitionJson()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskDefinitionJson = tmp
        }
        if let value = dict["taskParallelism"] as? Int32 {
            self.taskParallelism = value
        }
        if let value = dict["taskRelationJson"] as? [Any?] {
            var tmp : [CreateProcessDefinitionWithScheduleRequest.TaskRelationJson] = []
            for v in value {
                if v != nil {
                    var model = CreateProcessDefinitionWithScheduleRequest.TaskRelationJson()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskRelationJson = tmp
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
    }
}

public class CreateProcessDefinitionWithScheduleShrinkRequest : Tea.TeaModel {
    public var alertEmailAddress: String?

    public var description_: String?

    public var executionType: String?

    public var globalParamsShrink: String?

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
        if self.globalParamsShrink != nil {
            map["globalParams"] = self.globalParamsShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertEmailAddress"] as? String {
            self.alertEmailAddress = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionType"] as? String {
            self.executionType = value
        }
        if let value = dict["globalParams"] as? String {
            self.globalParamsShrink = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["productNamespace"] as? String {
            self.productNamespace = value
        }
        if let value = dict["publish"] as? Bool {
            self.publish = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceQueue"] as? String {
            self.resourceQueue = value
        }
        if let value = dict["retryTimes"] as? Int32 {
            self.retryTimes = value
        }
        if let value = dict["runAs"] as? String {
            self.runAs = value
        }
        if let value = dict["schedule"] as? String {
            self.scheduleShrink = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["taskDefinitionJson"] as? String {
            self.taskDefinitionJsonShrink = value
        }
        if let value = dict["taskParallelism"] as? Int32 {
            self.taskParallelism = value
        }
        if let value = dict["taskRelationJson"] as? String {
            self.taskRelationJsonShrink = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? Int64 {
                self.code = value
            }
            if let value = dict["id"] as? Int32 {
                self.id = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateProcessDefinitionWithScheduleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["failed"] as? String {
            self.failed = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["msg"] as? String {
            self.msg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateProcessDefinitionWithScheduleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSessionClusterRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configFileName"] as? String {
                self.configFileName = value
            }
            if let value = dict["configItemKey"] as? String {
                self.configItemKey = value
            }
            if let value = dict["configItemValue"] as? String {
                self.configItemValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
        }
    }
    public class AutoStopConfiguration : Tea.TeaModel {
        public var enable: Bool?

        public var idleTimeoutMinutes: Int?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["idleTimeoutMinutes"] as? Int {
                self.idleTimeoutMinutes = value
            }
        }
    }
    public var applicationConfigs: [CreateSessionClusterRequest.ApplicationConfigs]?

    public var autoStartConfiguration: CreateSessionClusterRequest.AutoStartConfiguration?

    public var autoStopConfiguration: CreateSessionClusterRequest.AutoStopConfiguration?

    public var clientToken: String?

    public var displayReleaseVersion: String?

    public var envId: String?

    public var fusion: Bool?

    public var kind: String?

    public var name: String?

    public var publicEndpointEnabled: Bool?

    public var queueName: String?

    public var releaseVersion: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.displayReleaseVersion != nil {
            map["displayReleaseVersion"] = self.displayReleaseVersion!
        }
        if self.envId != nil {
            map["envId"] = self.envId!
        }
        if self.fusion != nil {
            map["fusion"] = self.fusion!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.publicEndpointEnabled != nil {
            map["publicEndpointEnabled"] = self.publicEndpointEnabled!
        }
        if self.queueName != nil {
            map["queueName"] = self.queueName!
        }
        if self.releaseVersion != nil {
            map["releaseVersion"] = self.releaseVersion!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfigs"] as? [Any?] {
            var tmp : [CreateSessionClusterRequest.ApplicationConfigs] = []
            for v in value {
                if v != nil {
                    var model = CreateSessionClusterRequest.ApplicationConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.applicationConfigs = tmp
        }
        if let value = dict["autoStartConfiguration"] as? [String: Any?] {
            var model = CreateSessionClusterRequest.AutoStartConfiguration()
            model.fromMap(value)
            self.autoStartConfiguration = model
        }
        if let value = dict["autoStopConfiguration"] as? [String: Any?] {
            var model = CreateSessionClusterRequest.AutoStopConfiguration()
            model.fromMap(value)
            self.autoStopConfiguration = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["displayReleaseVersion"] as? String {
            self.displayReleaseVersion = value
        }
        if let value = dict["envId"] as? String {
            self.envId = value
        }
        if let value = dict["fusion"] as? Bool {
            self.fusion = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["publicEndpointEnabled"] as? Bool {
            self.publicEndpointEnabled = value
        }
        if let value = dict["queueName"] as? String {
            self.queueName = value
        }
        if let value = dict["releaseVersion"] as? String {
            self.releaseVersion = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateSessionClusterResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionClusterId"] as? String {
            self.sessionClusterId = value
        }
    }
}

public class CreateSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSessionClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSessionClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["codeContent"] as? String {
            self.codeContent = value
        }
        if let value = dict["defaultCatalog"] as? String {
            self.defaultCatalog = value
        }
        if let value = dict["defaultDatabase"] as? String {
            self.defaultDatabase = value
        }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["sqlComputeId"] as? String {
            self.sqlComputeId = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["statementId"] as? String {
                self.statementId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateSqlStatementResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSqlStatementResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public class ResourceSpec : Tea.TeaModel {
        public var cu: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? String {
                self.cu = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var autoRenew: String?

    public var autoRenewPeriod: String?

    public var autoRenewPeriodUnit: String?

    public var autoStartSessionCluster: Bool?

    public var clientToken: String?

    public var dlfCatalogId: String?

    public var dlfType: String?

    public var duration: String?

    public var ossBucket: String?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public var ramRoleName: String?

    public var releaseType: String?

    public var resourceSpec: CreateWorkspaceRequest.ResourceSpec?

    public var tag: [CreateWorkspaceRequest.Tag]?

    public var workspaceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSpec?.validate()
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
        if self.autoStartSessionCluster != nil {
            map["autoStartSessionCluster"] = self.autoStartSessionCluster!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
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
        if self.ossBucket != nil {
            map["ossBucket"] = self.ossBucket!
        }
        if self.paymentDurationUnit != nil {
            map["paymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["paymentType"] = self.paymentType!
        }
        if self.ramRoleName != nil {
            map["ramRoleName"] = self.ramRoleName!
        }
        if self.releaseType != nil {
            map["releaseType"] = self.releaseType!
        }
        if self.resourceSpec != nil {
            map["resourceSpec"] = self.resourceSpec?.toMap()
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoRenew"] as? String {
            self.autoRenew = value
        }
        if let value = dict["autoRenewPeriod"] as? String {
            self.autoRenewPeriod = value
        }
        if let value = dict["autoRenewPeriodUnit"] as? String {
            self.autoRenewPeriodUnit = value
        }
        if let value = dict["autoStartSessionCluster"] as? Bool {
            self.autoStartSessionCluster = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["dlfCatalogId"] as? String {
            self.dlfCatalogId = value
        }
        if let value = dict["dlfType"] as? String {
            self.dlfType = value
        }
        if let value = dict["duration"] as? String {
            self.duration = value
        }
        if let value = dict["ossBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["paymentDurationUnit"] as? String {
            self.paymentDurationUnit = value
        }
        if let value = dict["paymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["ramRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["releaseType"] as? String {
            self.releaseType = value
        }
        if let value = dict["resourceSpec"] as? [String: Any?] {
            var model = CreateWorkspaceRequest.ResourceSpec()
            model.fromMap(value)
            self.resourceSpec = model
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [CreateWorkspaceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkspaceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public var operationId: String?

    public var requestId: String?

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
        if self.operationId != nil {
            map["operationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operationId"] as? String {
            self.operationId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLivyComputeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteLivyComputeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteLivyComputeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLivyComputeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteLivyComputeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLivyComputeTokenRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteLivyComputeTokenResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteLivyComputeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLivyComputeTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteLivyComputeTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditWorkspaceQueueRequest : Tea.TeaModel {
    public class ResourceSpec : Tea.TeaModel {
        public var cu: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? Int64 {
                self.cu = value
            }
        }
    }
    public var environments: [String]?

    public var resourceSpec: EditWorkspaceQueueRequest.ResourceSpec?

    public var workspaceId: String?

    public var workspaceQueueName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environments != nil {
            map["environments"] = self.environments!
        }
        if self.resourceSpec != nil {
            map["resourceSpec"] = self.resourceSpec?.toMap()
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        if self.workspaceQueueName != nil {
            map["workspaceQueueName"] = self.workspaceQueueName!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["environments"] as? [String] {
            self.environments = value
        }
        if let value = dict["resourceSpec"] as? [String: Any?] {
            var model = EditWorkspaceQueueRequest.ResourceSpec()
            model.fromMap(value)
            self.resourceSpec = model
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["workspaceQueueName"] as? String {
            self.workspaceQueueName = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class EditWorkspaceQueueResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EditWorkspaceQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditWorkspaceQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EditWorkspaceQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCuHoursRequest : Tea.TeaModel {
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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetCuHoursResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cuHours: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cuHours != nil {
                map["cuHours"] = self.cuHours!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cuHours"] as? String {
                self.cuHours = value
            }
        }
    }
    public var data: GetCuHoursResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetCuHoursResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCuHoursResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCuHoursResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCuHoursResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDoctorApplicationRequest : Tea.TeaModel {
    public var locale: String?

    public var queryTime: String?

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
        if self.locale != nil {
            map["locale"] = self.locale!
        }
        if self.queryTime != nil {
            map["queryTime"] = self.queryTime!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["locale"] as? String {
            self.locale = value
        }
        if let value = dict["queryTime"] as? String {
            self.queryTime = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetDoctorApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var suggestions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.suggestions != nil {
                map["suggestions"] = self.suggestions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["suggestions"] as? [String] {
                self.suggestions = value
            }
        }
    }
    public var data: GetDoctorApplicationResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDoctorApplicationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
    }
}

public class GetDoctorApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDoctorApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDoctorApplicationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["configurations"] as? [Any?] {
                    var tmp : [Configuration] = []
                    for v in value {
                        if v != nil {
                            var model = Configuration()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["codeType"] as? String {
                self.codeType = value
            }
            if let value = dict["configurationOverrides"] as? [String: Any?] {
                var model = GetJobRunResponseBody.JobRun.ConfigurationOverrides()
                model.fromMap(value)
                self.configurationOverrides = model
            }
            if let value = dict["displayReleaseVersion"] as? String {
                self.displayReleaseVersion = value
            }
            if let value = dict["endTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["executionTimeoutSeconds"] as? Int32 {
                self.executionTimeoutSeconds = value
            }
            if let value = dict["fusion"] as? Bool {
                self.fusion = value
            }
            if let value = dict["jobDriver"] as? [String: Any?] {
                var model = JobDriver()
                model.fromMap(value)
                self.jobDriver = model
            }
            if let value = dict["jobRunId"] as? String {
                self.jobRunId = value
            }
            if let value = dict["log"] as? [String: Any?] {
                var model = RunLog()
                model.fromMap(value)
                self.log = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["releaseVersion"] as? String {
                self.releaseVersion = value
            }
            if let value = dict["resourceOwnerId"] as? String {
                self.resourceOwnerId = value
            }
            if let value = dict["resourceQueueId"] as? String {
                self.resourceQueueId = value
            }
            if let value = dict["state"] as? String {
                self.state = value
            }
            if let value = dict["stateChangeReason"] as? [String: Any?] {
                var model = GetJobRunResponseBody.JobRun.StateChangeReason()
                model.fromMap(value)
                self.stateChangeReason = model
            }
            if let value = dict["submitTime"] as? Int64 {
                self.submitTime = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [Tag] = []
                for v in value {
                    if v != nil {
                        var model = Tag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["webUI"] as? String {
                self.webUI = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobRun"] as? [String: Any?] {
            var model = GetJobRunResponseBody.JobRun()
            model.fromMap(value)
            self.jobRun = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetJobRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLivyComputeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetLivyComputeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AutoStopConfiguration : Tea.TeaModel {
            public var enable: Bool?

            public var idleTimeoutMinutes: Int64?

            public override init() {
                super.init()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["idleTimeoutMinutes"] as? Int64 {
                    self.idleTimeoutMinutes = value
                }
            }
        }
        public var authType: String?

        public var autoStopConfiguration: GetLivyComputeResponseBody.Data.AutoStopConfiguration?

        public var computeId: String?

        public var cpuLimit: String?

        public var createdBy: String?

        public var displayReleaseVersion: String?

        public var enablePublic: Bool?

        public var endpoint: String?

        public var endpointInner: String?

        public var environmentId: String?

        public var fusion: Bool?

        public var gmtCreate: Int64?

        public var livyServerConf: String?

        public var livyVersion: String?

        public var memoryLimit: String?

        public var name: String?

        public var networkName: String?

        public var queueName: String?

        public var ramUserId: String?

        public var releaseVersion: String?

        public var startTime: Int64?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoStopConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authType != nil {
                map["authType"] = self.authType!
            }
            if self.autoStopConfiguration != nil {
                map["autoStopConfiguration"] = self.autoStopConfiguration?.toMap()
            }
            if self.computeId != nil {
                map["computeId"] = self.computeId!
            }
            if self.cpuLimit != nil {
                map["cpuLimit"] = self.cpuLimit!
            }
            if self.createdBy != nil {
                map["createdBy"] = self.createdBy!
            }
            if self.displayReleaseVersion != nil {
                map["displayReleaseVersion"] = self.displayReleaseVersion!
            }
            if self.enablePublic != nil {
                map["enablePublic"] = self.enablePublic!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.endpointInner != nil {
                map["endpointInner"] = self.endpointInner!
            }
            if self.environmentId != nil {
                map["environmentId"] = self.environmentId!
            }
            if self.fusion != nil {
                map["fusion"] = self.fusion!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.livyServerConf != nil {
                map["livyServerConf"] = self.livyServerConf!
            }
            if self.livyVersion != nil {
                map["livyVersion"] = self.livyVersion!
            }
            if self.memoryLimit != nil {
                map["memoryLimit"] = self.memoryLimit!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkName != nil {
                map["networkName"] = self.networkName!
            }
            if self.queueName != nil {
                map["queueName"] = self.queueName!
            }
            if self.ramUserId != nil {
                map["ramUserId"] = self.ramUserId!
            }
            if self.releaseVersion != nil {
                map["releaseVersion"] = self.releaseVersion!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["authType"] as? String {
                self.authType = value
            }
            if let value = dict["autoStopConfiguration"] as? [String: Any?] {
                var model = GetLivyComputeResponseBody.Data.AutoStopConfiguration()
                model.fromMap(value)
                self.autoStopConfiguration = model
            }
            if let value = dict["computeId"] as? String {
                self.computeId = value
            }
            if let value = dict["cpuLimit"] as? String {
                self.cpuLimit = value
            }
            if let value = dict["createdBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["displayReleaseVersion"] as? String {
                self.displayReleaseVersion = value
            }
            if let value = dict["enablePublic"] as? Bool {
                self.enablePublic = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["endpointInner"] as? String {
                self.endpointInner = value
            }
            if let value = dict["environmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["fusion"] as? Bool {
                self.fusion = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["livyServerConf"] as? String {
                self.livyServerConf = value
            }
            if let value = dict["livyVersion"] as? String {
                self.livyVersion = value
            }
            if let value = dict["memoryLimit"] as? String {
                self.memoryLimit = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["networkName"] as? String {
                self.networkName = value
            }
            if let value = dict["queueName"] as? String {
                self.queueName = value
            }
            if let value = dict["ramUserId"] as? String {
                self.ramUserId = value
            }
            if let value = dict["releaseVersion"] as? String {
                self.releaseVersion = value
            }
            if let value = dict["startTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetLivyComputeResponseBody.Data?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetLivyComputeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLivyComputeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLivyComputeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLivyComputeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLivyComputeTokenRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetLivyComputeTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AutoExpireConfiguration : Tea.TeaModel {
            public var enable: Bool?

            public var expireDays: Int32?

            public override init() {
                super.init()
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
                if self.expireDays != nil {
                    map["expireDays"] = self.expireDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["expireDays"] as? Int32 {
                    self.expireDays = value
                }
            }
        }
        public var autoExpireConfiguration: GetLivyComputeTokenResponseBody.Data.AutoExpireConfiguration?

        public var createTime: Int64?

        public var createdBy: String?

        public var expireTime: Int64?

        public var lastUsedTime: Int64?

        public var name: String?

        public var token: String?

        public var tokenId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoExpireConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoExpireConfiguration != nil {
                map["autoExpireConfiguration"] = self.autoExpireConfiguration?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.createdBy != nil {
                map["createdBy"] = self.createdBy!
            }
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.lastUsedTime != nil {
                map["lastUsedTime"] = self.lastUsedTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            if self.tokenId != nil {
                map["tokenId"] = self.tokenId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoExpireConfiguration"] as? [String: Any?] {
                var model = GetLivyComputeTokenResponseBody.Data.AutoExpireConfiguration()
                model.fromMap(value)
                self.autoExpireConfiguration = model
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["createdBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["expireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["lastUsedTime"] as? Int64 {
                self.lastUsedTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
            if let value = dict["tokenId"] as? String {
                self.tokenId = value
            }
        }
    }
    public var code: String?

    public var data: GetLivyComputeTokenResponseBody.Data?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetLivyComputeTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLivyComputeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLivyComputeTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLivyComputeTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["configFileName"] as? String {
                    self.configFileName = value
                }
                if let value = dict["configItemKey"] as? String {
                    self.configItemKey = value
                }
                if let value = dict["configItemValue"] as? String {
                    self.configItemValue = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["idleTimeoutMinutes"] as? Int32 {
                    self.idleTimeoutMinutes = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["message"] as? String {
                    self.message = value
                }
            }
        }
        public var applicationConfigs: [GetSessionClusterResponseBody.SessionCluster.ApplicationConfigs]?

        public var autoStartConfiguration: GetSessionClusterResponseBody.SessionCluster.AutoStartConfiguration?

        public var autoStopConfiguration: GetSessionClusterResponseBody.SessionCluster.AutoStopConfiguration?

        public var connectionToken: String?

        public var displayReleaseVersion: String?

        public var domain: String?

        public var domainInner: String?

        public var draftId: String?

        public var envId: String?

        public var extra: String?

        public var fusion: Bool?

        public var gmtCreate: Int64?

        public var kind: String?

        public var name: String?

        public var publicEndpointEnabled: Bool?

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
            if self.connectionToken != nil {
                map["connectionToken"] = self.connectionToken!
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
            if self.extra != nil {
                map["extra"] = self.extra!
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
            if self.publicEndpointEnabled != nil {
                map["publicEndpointEnabled"] = self.publicEndpointEnabled!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["applicationConfigs"] as? [Any?] {
                var tmp : [GetSessionClusterResponseBody.SessionCluster.ApplicationConfigs] = []
                for v in value {
                    if v != nil {
                        var model = GetSessionClusterResponseBody.SessionCluster.ApplicationConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applicationConfigs = tmp
            }
            if let value = dict["autoStartConfiguration"] as? [String: Any?] {
                var model = GetSessionClusterResponseBody.SessionCluster.AutoStartConfiguration()
                model.fromMap(value)
                self.autoStartConfiguration = model
            }
            if let value = dict["autoStopConfiguration"] as? [String: Any?] {
                var model = GetSessionClusterResponseBody.SessionCluster.AutoStopConfiguration()
                model.fromMap(value)
                self.autoStopConfiguration = model
            }
            if let value = dict["connectionToken"] as? String {
                self.connectionToken = value
            }
            if let value = dict["displayReleaseVersion"] as? String {
                self.displayReleaseVersion = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["domainInner"] as? String {
                self.domainInner = value
            }
            if let value = dict["draftId"] as? String {
                self.draftId = value
            }
            if let value = dict["envId"] as? String {
                self.envId = value
            }
            if let value = dict["extra"] as? String {
                self.extra = value
            }
            if let value = dict["fusion"] as? Bool {
                self.fusion = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["kind"] as? String {
                self.kind = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["publicEndpointEnabled"] as? Bool {
                self.publicEndpointEnabled = value
            }
            if let value = dict["queueName"] as? String {
                self.queueName = value
            }
            if let value = dict["releaseVersion"] as? String {
                self.releaseVersion = value
            }
            if let value = dict["sessionClusterId"] as? String {
                self.sessionClusterId = value
            }
            if let value = dict["startTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["state"] as? String {
                self.state = value
            }
            if let value = dict["stateChangeReason"] as? [String: Any?] {
                var model = GetSessionClusterResponseBody.SessionCluster.StateChangeReason()
                model.fromMap(value)
                self.stateChangeReason = model
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
            if let value = dict["userName"] as? String {
                self.userName = value
            }
            if let value = dict["webUI"] as? String {
                self.webUI = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionCluster"] as? [String: Any?] {
            var model = GetSessionClusterResponseBody.SessionCluster()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSessionClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetSqlStatementResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SqlOutputs : Tea.TeaModel {
            public var rows: String?

            public var rowsFilePath: String?

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
                if self.rowsFilePath != nil {
                    map["rowsFilePath"] = self.rowsFilePath!
                }
                if self.schema != nil {
                    map["schema"] = self.schema!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["rows"] as? String {
                    self.rows = value
                }
                if let value = dict["rowsFilePath"] as? String {
                    self.rowsFilePath = value
                }
                if let value = dict["schema"] as? String {
                    self.schema = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["executionTime"] as? [Int64] {
                self.executionTime = value
            }
            if let value = dict["sqlErrorCode"] as? String {
                self.sqlErrorCode = value
            }
            if let value = dict["sqlErrorMessage"] as? String {
                self.sqlErrorMessage = value
            }
            if let value = dict["sqlOutputs"] as? [Any?] {
                var tmp : [GetSqlStatementResponseBody.Data.SqlOutputs] = []
                for v in value {
                    if v != nil {
                        var model = GetSqlStatementResponseBody.Data.SqlOutputs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sqlOutputs = tmp
            }
            if let value = dict["state"] as? String {
                self.state = value
            }
            if let value = dict["statementId"] as? String {
                self.statementId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetSqlStatementResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSqlStatementResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var regionId: String?

    public var templateBizId: String?

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
        if self.templateBizId != nil {
            map["templateBizId"] = self.templateBizId!
        }
        if self.templateType != nil {
            map["templateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["templateBizId"] as? String {
            self.templateBizId = value
        }
        if let value = dict["templateType"] as? String {
            self.templateType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Template()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["userArns"] as? [String] {
            self.userArns = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GrantRoleToUsersResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["endTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["startTime"] as? Int64 {
                self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["endTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["startTime"] as? Int64 {
                self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var applicationConfigs: String?

    public var creator: String?

    public var endTime: ListJobRunsRequest.EndTime?

    public var isWorkflow: String?

    public var jobRunDeploymentId: String?

    public var jobRunId: String?

    public var maxResults: Int32?

    public var minDuration: Int64?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceQueueId: String?

    public var runtimeConfigs: String?

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
        if self.applicationConfigs != nil {
            map["applicationConfigs"] = self.applicationConfigs!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime?.toMap()
        }
        if self.isWorkflow != nil {
            map["isWorkflow"] = self.isWorkflow!
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
        if self.minDuration != nil {
            map["minDuration"] = self.minDuration!
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
        if self.runtimeConfigs != nil {
            map["runtimeConfigs"] = self.runtimeConfigs!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfigs"] as? String {
            self.applicationConfigs = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["endTime"] as? [String: Any?] {
            var model = ListJobRunsRequest.EndTime()
            model.fromMap(value)
            self.endTime = model
        }
        if let value = dict["isWorkflow"] as? String {
            self.isWorkflow = value
        }
        if let value = dict["jobRunDeploymentId"] as? String {
            self.jobRunDeploymentId = value
        }
        if let value = dict["jobRunId"] as? String {
            self.jobRunId = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["minDuration"] as? Int64 {
            self.minDuration = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceQueueId"] as? String {
            self.resourceQueueId = value
        }
        if let value = dict["runtimeConfigs"] as? String {
            self.runtimeConfigs = value
        }
        if let value = dict["startTime"] as? [String: Any?] {
            var model = ListJobRunsRequest.StartTime()
            model.fromMap(value)
            self.startTime = model
        }
        if let value = dict["states"] as? [String] {
            self.states = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [ListJobRunsRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListJobRunsRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class ListJobRunsShrinkRequest : Tea.TeaModel {
    public var applicationConfigs: String?

    public var creator: String?

    public var endTimeShrink: String?

    public var isWorkflow: String?

    public var jobRunDeploymentId: String?

    public var jobRunId: String?

    public var maxResults: Int32?

    public var minDuration: Int64?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceQueueId: String?

    public var runtimeConfigs: String?

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
        if self.applicationConfigs != nil {
            map["applicationConfigs"] = self.applicationConfigs!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.endTimeShrink != nil {
            map["endTime"] = self.endTimeShrink!
        }
        if self.isWorkflow != nil {
            map["isWorkflow"] = self.isWorkflow!
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
        if self.minDuration != nil {
            map["minDuration"] = self.minDuration!
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
        if self.runtimeConfigs != nil {
            map["runtimeConfigs"] = self.runtimeConfigs!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfigs"] as? String {
            self.applicationConfigs = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["endTime"] as? String {
            self.endTimeShrink = value
        }
        if let value = dict["isWorkflow"] as? String {
            self.isWorkflow = value
        }
        if let value = dict["jobRunDeploymentId"] as? String {
            self.jobRunDeploymentId = value
        }
        if let value = dict["jobRunId"] as? String {
            self.jobRunId = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["minDuration"] as? Int64 {
            self.minDuration = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceQueueId"] as? String {
            self.resourceQueueId = value
        }
        if let value = dict["runtimeConfigs"] as? String {
            self.runtimeConfigs = value
        }
        if let value = dict["startTime"] as? String {
            self.startTimeShrink = value
        }
        if let value = dict["states"] as? String {
            self.statesShrink = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["configurations"] as? [Any?] {
                    var tmp : [Configuration] = []
                    for v in value {
                        if v != nil {
                            var model = Configuration()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["message"] as? String {
                    self.message = value
                }
            }
        }
        public var codeType: String?

        public var configurationOverrides: ListJobRunsResponseBody.JobRuns.ConfigurationOverrides?

        public var creator: String?

        public var cuHours: Double?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["codeType"] as? String {
                self.codeType = value
            }
            if let value = dict["configurationOverrides"] as? [String: Any?] {
                var model = ListJobRunsResponseBody.JobRuns.ConfigurationOverrides()
                model.fromMap(value)
                self.configurationOverrides = model
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["cuHours"] as? Double {
                self.cuHours = value
            }
            if let value = dict["displayReleaseVersion"] as? String {
                self.displayReleaseVersion = value
            }
            if let value = dict["endTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["executionTimeoutSeconds"] as? Int32 {
                self.executionTimeoutSeconds = value
            }
            if let value = dict["fusion"] as? Bool {
                self.fusion = value
            }
            if let value = dict["jobDriver"] as? [String: Any?] {
                var model = JobDriver()
                model.fromMap(value)
                self.jobDriver = model
            }
            if let value = dict["jobRunId"] as? String {
                self.jobRunId = value
            }
            if let value = dict["log"] as? [String: Any?] {
                var model = RunLog()
                model.fromMap(value)
                self.log = model
            }
            if let value = dict["mbSeconds"] as? Int64 {
                self.mbSeconds = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["releaseVersion"] as? String {
                self.releaseVersion = value
            }
            if let value = dict["state"] as? String {
                self.state = value
            }
            if let value = dict["stateChangeReason"] as? [String: Any?] {
                var model = ListJobRunsResponseBody.JobRuns.StateChangeReason()
                model.fromMap(value)
                self.stateChangeReason = model
            }
            if let value = dict["submitTime"] as? Int64 {
                self.submitTime = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [Tag] = []
                for v in value {
                    if v != nil {
                        var model = Tag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["vcoreSeconds"] as? Int64 {
                self.vcoreSeconds = value
            }
            if let value = dict["webUI"] as? String {
                self.webUI = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobRuns"] as? [Any?] {
            var tmp : [ListJobRunsResponseBody.JobRuns] = []
            for v in value {
                if v != nil {
                    var model = ListJobRunsResponseBody.JobRuns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobRuns = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListJobRunsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKyuubiServicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KyuubiServices : Tea.TeaModel {
            public var computeInstance: String?

            public var createTime: String?

            public var creator: String?

            public var innerEndpoint: String?

            public var kyuubiConfigs: String?

            public var kyuubiReleaseVersion: String?

            public var kyuubiServiceId: String?

            public var name: String?

            public var publicEndpoint: String?

            public var queue: String?

            public var releaseVersion: String?

            public var replica: Int32?

            public var sparkConfigs: String?

            public var startTime: String?

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
                if self.computeInstance != nil {
                    map["computeInstance"] = self.computeInstance!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["creator"] = self.creator!
                }
                if self.innerEndpoint != nil {
                    map["innerEndpoint"] = self.innerEndpoint!
                }
                if self.kyuubiConfigs != nil {
                    map["kyuubiConfigs"] = self.kyuubiConfigs!
                }
                if self.kyuubiReleaseVersion != nil {
                    map["kyuubiReleaseVersion"] = self.kyuubiReleaseVersion!
                }
                if self.kyuubiServiceId != nil {
                    map["kyuubiServiceId"] = self.kyuubiServiceId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.publicEndpoint != nil {
                    map["publicEndpoint"] = self.publicEndpoint!
                }
                if self.queue != nil {
                    map["queue"] = self.queue!
                }
                if self.releaseVersion != nil {
                    map["releaseVersion"] = self.releaseVersion!
                }
                if self.replica != nil {
                    map["replica"] = self.replica!
                }
                if self.sparkConfigs != nil {
                    map["sparkConfigs"] = self.sparkConfigs!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.state != nil {
                    map["state"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeInstance"] as? String {
                    self.computeInstance = value
                }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["creator"] as? String {
                    self.creator = value
                }
                if let value = dict["innerEndpoint"] as? String {
                    self.innerEndpoint = value
                }
                if let value = dict["kyuubiConfigs"] as? String {
                    self.kyuubiConfigs = value
                }
                if let value = dict["kyuubiReleaseVersion"] as? String {
                    self.kyuubiReleaseVersion = value
                }
                if let value = dict["kyuubiServiceId"] as? String {
                    self.kyuubiServiceId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["publicEndpoint"] as? String {
                    self.publicEndpoint = value
                }
                if let value = dict["queue"] as? String {
                    self.queue = value
                }
                if let value = dict["releaseVersion"] as? String {
                    self.releaseVersion = value
                }
                if let value = dict["replica"] as? Int32 {
                    self.replica = value
                }
                if let value = dict["sparkConfigs"] as? String {
                    self.sparkConfigs = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["state"] as? String {
                    self.state = value
                }
            }
        }
        public var kyuubiServices: [ListKyuubiServicesResponseBody.Data.KyuubiServices]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kyuubiServices != nil {
                var tmp : [Any] = []
                for k in self.kyuubiServices! {
                    tmp.append(k.toMap())
                }
                map["kyuubiServices"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["kyuubiServices"] as? [Any?] {
                var tmp : [ListKyuubiServicesResponseBody.Data.KyuubiServices] = []
                for v in value {
                    if v != nil {
                        var model = ListKyuubiServicesResponseBody.Data.KyuubiServices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.kyuubiServices = tmp
            }
        }
    }
    public var data: ListKyuubiServicesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListKyuubiServicesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListKyuubiServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKyuubiServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListKyuubiServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKyuubiSparkApplicationsRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["endTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["startTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var applicationId: String?

    public var applicationName: String?

    public var maxResults: Int32?

    public var minDuration: Int64?

    public var nextToken: String?

    public var orderBy: [String]?

    public var resourceQueueId: String?

    public var sort: String?

    public var startTime: ListKyuubiSparkApplicationsRequest.StartTime?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.startTime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["applicationId"] = self.applicationId!
        }
        if self.applicationName != nil {
            map["applicationName"] = self.applicationName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.minDuration != nil {
            map["minDuration"] = self.minDuration!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.resourceQueueId != nil {
            map["resourceQueueId"] = self.resourceQueueId!
        }
        if self.sort != nil {
            map["sort"] = self.sort!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["applicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["minDuration"] as? Int64 {
            self.minDuration = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? [String] {
            self.orderBy = value
        }
        if let value = dict["resourceQueueId"] as? String {
            self.resourceQueueId = value
        }
        if let value = dict["sort"] as? String {
            self.sort = value
        }
        if let value = dict["startTime"] as? [String: Any?] {
            var model = ListKyuubiSparkApplicationsRequest.StartTime()
            model.fromMap(value)
            self.startTime = model
        }
    }
}

public class ListKyuubiSparkApplicationsShrinkRequest : Tea.TeaModel {
    public var applicationId: String?

    public var applicationName: String?

    public var maxResults: Int32?

    public var minDuration: Int64?

    public var nextToken: String?

    public var orderByShrink: String?

    public var resourceQueueId: String?

    public var sort: String?

    public var startTimeShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["applicationId"] = self.applicationId!
        }
        if self.applicationName != nil {
            map["applicationName"] = self.applicationName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.minDuration != nil {
            map["minDuration"] = self.minDuration!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderByShrink != nil {
            map["orderBy"] = self.orderByShrink!
        }
        if self.resourceQueueId != nil {
            map["resourceQueueId"] = self.resourceQueueId!
        }
        if self.sort != nil {
            map["sort"] = self.sort!
        }
        if self.startTimeShrink != nil {
            map["startTime"] = self.startTimeShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["applicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["minDuration"] as? Int64 {
            self.minDuration = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderByShrink = value
        }
        if let value = dict["resourceQueueId"] as? String {
            self.resourceQueueId = value
        }
        if let value = dict["sort"] as? String {
            self.sort = value
        }
        if let value = dict["startTime"] as? String {
            self.startTimeShrink = value
        }
    }
}

public class ListKyuubiSparkApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var applicationName: String?

        public var cuHours: Double?

        public var endTime: String?

        public var exitReason: String?

        public var latestSqlStatementStatus: String?

        public var mbSeconds: Int64?

        public var resourceQueueId: String?

        public var startTime: String?

        public var state: String?

        public var vcoreSeconds: Int64?

        public var webUI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["applicationId"] = self.applicationId!
            }
            if self.applicationName != nil {
                map["applicationName"] = self.applicationName!
            }
            if self.cuHours != nil {
                map["cuHours"] = self.cuHours!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.exitReason != nil {
                map["exitReason"] = self.exitReason!
            }
            if self.latestSqlStatementStatus != nil {
                map["latestSqlStatementStatus"] = self.latestSqlStatementStatus!
            }
            if self.mbSeconds != nil {
                map["mbSeconds"] = self.mbSeconds!
            }
            if self.resourceQueueId != nil {
                map["resourceQueueId"] = self.resourceQueueId!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.vcoreSeconds != nil {
                map["vcoreSeconds"] = self.vcoreSeconds!
            }
            if self.webUI != nil {
                map["webUI"] = self.webUI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["applicationId"] as? String {
                self.applicationId = value
            }
            if let value = dict["applicationName"] as? String {
                self.applicationName = value
            }
            if let value = dict["cuHours"] as? Double {
                self.cuHours = value
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["exitReason"] as? String {
                self.exitReason = value
            }
            if let value = dict["latestSqlStatementStatus"] as? String {
                self.latestSqlStatementStatus = value
            }
            if let value = dict["mbSeconds"] as? Int64 {
                self.mbSeconds = value
            }
            if let value = dict["resourceQueueId"] as? String {
                self.resourceQueueId = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["state"] as? String {
                self.state = value
            }
            if let value = dict["vcoreSeconds"] as? Int64 {
                self.vcoreSeconds = value
            }
            if let value = dict["webUI"] as? String {
                self.webUI = value
            }
        }
    }
    public var applications: [ListKyuubiSparkApplicationsResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["applications"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applications"] as? [Any?] {
            var tmp : [ListKyuubiSparkApplicationsResponseBody.Applications] = []
            for v in value {
                if v != nil {
                    var model = ListKyuubiSparkApplicationsResponseBody.Applications()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.applications = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListKyuubiSparkApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKyuubiSparkApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListKyuubiSparkApplicationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKyuubiTokenRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListKyuubiTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tokens : Tea.TeaModel {
            public var accountNames: [String]?

            public var createTime: Int64?

            public var createdBy: String?

            public var expireTime: Int64?

            public var lastUsedTime: Int64?

            public var memberArns: [String]?

            public var name: String?

            public var token: String?

            public var tokenId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountNames != nil {
                    map["accountNames"] = self.accountNames!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.createdBy != nil {
                    map["createdBy"] = self.createdBy!
                }
                if self.expireTime != nil {
                    map["expireTime"] = self.expireTime!
                }
                if self.lastUsedTime != nil {
                    map["lastUsedTime"] = self.lastUsedTime!
                }
                if self.memberArns != nil {
                    map["memberArns"] = self.memberArns!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.token != nil {
                    map["token"] = self.token!
                }
                if self.tokenId != nil {
                    map["tokenId"] = self.tokenId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accountNames"] as? [String] {
                    self.accountNames = value
                }
                if let value = dict["createTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["createdBy"] as? String {
                    self.createdBy = value
                }
                if let value = dict["expireTime"] as? Int64 {
                    self.expireTime = value
                }
                if let value = dict["lastUsedTime"] as? Int64 {
                    self.lastUsedTime = value
                }
                if let value = dict["memberArns"] as? [String] {
                    self.memberArns = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["token"] as? String {
                    self.token = value
                }
                if let value = dict["tokenId"] as? String {
                    self.tokenId = value
                }
            }
        }
        public var tokens: [ListKyuubiTokenResponseBody.Data.Tokens]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tokens != nil {
                var tmp : [Any] = []
                for k in self.tokens! {
                    tmp.append(k.toMap())
                }
                map["tokens"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tokens"] as? [Any?] {
                var tmp : [ListKyuubiTokenResponseBody.Data.Tokens] = []
                for v in value {
                    if v != nil {
                        var model = ListKyuubiTokenResponseBody.Data.Tokens()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tokens = tmp
            }
        }
    }
    public var data: ListKyuubiTokenResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListKyuubiTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListKyuubiTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKyuubiTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListKyuubiTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLivyComputeRequest : Tea.TeaModel {
    public var environmentId: String?

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
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListLivyComputeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LivyComputes : Tea.TeaModel {
            public var computeId: String?

            public var createdBy: String?

            public var endpoint: String?

            public var endpointInner: String?

            public var gmtCreate: Int64?

            public var name: String?

            public var queueName: String?

            public var startTime: Int64?

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
                if self.computeId != nil {
                    map["computeId"] = self.computeId!
                }
                if self.createdBy != nil {
                    map["createdBy"] = self.createdBy!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.endpointInner != nil {
                    map["endpointInner"] = self.endpointInner!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.queueName != nil {
                    map["queueName"] = self.queueName!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["computeId"] as? String {
                    self.computeId = value
                }
                if let value = dict["createdBy"] as? String {
                    self.createdBy = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["endpointInner"] as? String {
                    self.endpointInner = value
                }
                if let value = dict["gmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["queueName"] as? String {
                    self.queueName = value
                }
                if let value = dict["startTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var livyComputes: [ListLivyComputeResponseBody.Data.LivyComputes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.livyComputes != nil {
                var tmp : [Any] = []
                for k in self.livyComputes! {
                    tmp.append(k.toMap())
                }
                map["livyComputes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["livyComputes"] as? [Any?] {
                var tmp : [ListLivyComputeResponseBody.Data.LivyComputes] = []
                for v in value {
                    if v != nil {
                        var model = ListLivyComputeResponseBody.Data.LivyComputes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.livyComputes = tmp
            }
        }
    }
    public var code: String?

    public var data: ListLivyComputeResponseBody.Data?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListLivyComputeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListLivyComputeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLivyComputeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLivyComputeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLivyComputeTokenRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListLivyComputeTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tokens : Tea.TeaModel {
            public var createTime: Int64?

            public var createdby: String?

            public var expireTime: Int64?

            public var lastUsedTime: Int64?

            public var name: String?

            public var token: String?

            public var tokenId: String?

            public override init() {
                super.init()
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
                if self.createdby != nil {
                    map["createdby"] = self.createdby!
                }
                if self.expireTime != nil {
                    map["expireTime"] = self.expireTime!
                }
                if self.lastUsedTime != nil {
                    map["lastUsedTime"] = self.lastUsedTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.token != nil {
                    map["token"] = self.token!
                }
                if self.tokenId != nil {
                    map["tokenId"] = self.tokenId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["createdby"] as? String {
                    self.createdby = value
                }
                if let value = dict["expireTime"] as? Int64 {
                    self.expireTime = value
                }
                if let value = dict["lastUsedTime"] as? Int64 {
                    self.lastUsedTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["token"] as? String {
                    self.token = value
                }
                if let value = dict["tokenId"] as? String {
                    self.tokenId = value
                }
            }
        }
        public var tokens: [ListLivyComputeTokenResponseBody.Data.Tokens]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tokens != nil {
                var tmp : [Any] = []
                for k in self.tokens! {
                    tmp.append(k.toMap())
                }
                map["tokens"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tokens"] as? [Any?] {
                var tmp : [ListLivyComputeTokenResponseBody.Data.Tokens] = []
                for v in value {
                    if v != nil {
                        var model = ListLivyComputeTokenResponseBody.Data.Tokens()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tokens = tmp
            }
        }
    }
    public var code: String?

    public var data: ListLivyComputeTokenResponseBody.Data?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListLivyComputeTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListLivyComputeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLivyComputeTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLivyComputeTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["length"] as? Int32 {
            self.length = value
        }
        if let value = dict["offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LineContent"] as? String {
                    self.lineContent = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contents"] as? [Any?] {
                var tmp : [ListLogContentsResponseBody.ListLogContent.Contents] = []
                for v in value {
                    if v != nil {
                        var model = ListLogContentsResponseBody.ListLogContent.Contents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contents = tmp
            }
            if let value = dict["totalLength"] as? Int64 {
                self.totalLength = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["listLogContent"] as? [String: Any?] {
            var model = ListLogContentsResponseBody.ListLogContent()
            model.fromMap(value)
            self.listLogContent = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListLogContentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListReleaseVersionsRequest : Tea.TeaModel {
    public var regionId: String?

    public var releaseType: String?

    public var releaseVersion: String?

    public var releaseVersionStatus: String?

    public var serviceFilter: String?

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
        if self.serviceFilter != nil {
            map["serviceFilter"] = self.serviceFilter!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["releaseType"] as? String {
            self.releaseType = value
        }
        if let value = dict["releaseVersion"] as? String {
            self.releaseVersion = value
        }
        if let value = dict["releaseVersionStatus"] as? String {
            self.releaseVersionStatus = value
        }
        if let value = dict["serviceFilter"] as? String {
            self.serviceFilter = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["communityVersion"] as? String {
                self.communityVersion = value
            }
            if let value = dict["cpuArchitectures"] as? [String] {
                self.cpuArchitectures = value
            }
            if let value = dict["displayReleaseVersion"] as? String {
                self.displayReleaseVersion = value
            }
            if let value = dict["fusion"] as? Bool {
                self.fusion = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["iaasType"] as? String {
                self.iaasType = value
            }
            if let value = dict["releaseVersion"] as? String {
                self.releaseVersion = value
            }
            if let value = dict["scalaVersion"] as? String {
                self.scalaVersion = value
            }
            if let value = dict["state"] as? String {
                self.state = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["releaseVersions"] as? [Any?] {
            var tmp : [ListReleaseVersionsResponseBody.ReleaseVersions] = []
            for v in value {
                if v != nil {
                    var model = ListReleaseVersionsResponseBody.ReleaseVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.releaseVersions = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListReleaseVersionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["queueName"] as? String {
            self.queueName = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["sessionClusterId"] as? String {
            self.sessionClusterId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["configFileName"] as? String {
                    self.configFileName = value
                }
                if let value = dict["configItemKey"] as? String {
                    self.configItemKey = value
                }
                if let value = dict["configItemValue"] as? String {
                    self.configItemValue = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["idleTimeoutMinutes"] as? Int32 {
                    self.idleTimeoutMinutes = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["message"] as? String {
                    self.message = value
                }
            }
        }
        public var applicationConfigs: [ListSessionClustersResponseBody.SessionClusters.ApplicationConfigs]?

        public var autoStartConfiguration: ListSessionClustersResponseBody.SessionClusters.AutoStartConfiguration?

        public var autoStopConfiguration: ListSessionClustersResponseBody.SessionClusters.AutoStopConfiguration?

        public var connectionToken: String?

        public var displayReleaseVersion: String?

        public var domain: String?

        public var domainInner: String?

        public var draftId: String?

        public var extra: String?

        public var fusion: Bool?

        public var gmtCreate: Int64?

        public var kind: String?

        public var name: String?

        public var publicEndpointEnabled: Bool?

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
            if self.connectionToken != nil {
                map["connectionToken"] = self.connectionToken!
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
            if self.extra != nil {
                map["extra"] = self.extra!
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
            if self.publicEndpointEnabled != nil {
                map["publicEndpointEnabled"] = self.publicEndpointEnabled!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["applicationConfigs"] as? [Any?] {
                var tmp : [ListSessionClustersResponseBody.SessionClusters.ApplicationConfigs] = []
                for v in value {
                    if v != nil {
                        var model = ListSessionClustersResponseBody.SessionClusters.ApplicationConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applicationConfigs = tmp
            }
            if let value = dict["autoStartConfiguration"] as? [String: Any?] {
                var model = ListSessionClustersResponseBody.SessionClusters.AutoStartConfiguration()
                model.fromMap(value)
                self.autoStartConfiguration = model
            }
            if let value = dict["autoStopConfiguration"] as? [String: Any?] {
                var model = ListSessionClustersResponseBody.SessionClusters.AutoStopConfiguration()
                model.fromMap(value)
                self.autoStopConfiguration = model
            }
            if let value = dict["connectionToken"] as? String {
                self.connectionToken = value
            }
            if let value = dict["displayReleaseVersion"] as? String {
                self.displayReleaseVersion = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["domainInner"] as? String {
                self.domainInner = value
            }
            if let value = dict["draftId"] as? String {
                self.draftId = value
            }
            if let value = dict["extra"] as? String {
                self.extra = value
            }
            if let value = dict["fusion"] as? Bool {
                self.fusion = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["kind"] as? String {
                self.kind = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["publicEndpointEnabled"] as? Bool {
                self.publicEndpointEnabled = value
            }
            if let value = dict["queueName"] as? String {
                self.queueName = value
            }
            if let value = dict["releaseVersion"] as? String {
                self.releaseVersion = value
            }
            if let value = dict["sessionClusterId"] as? String {
                self.sessionClusterId = value
            }
            if let value = dict["startTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["state"] as? String {
                self.state = value
            }
            if let value = dict["stateChangeReason"] as? [String: Any?] {
                var model = ListSessionClustersResponseBody.SessionClusters.StateChangeReason()
                model.fromMap(value)
                self.stateChangeReason = model
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
            if let value = dict["userName"] as? String {
                self.userName = value
            }
            if let value = dict["webUI"] as? String {
                self.webUI = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionClusters"] as? [Any?] {
            var tmp : [ListSessionClustersResponseBody.SessionClusters] = []
            for v in value {
                if v != nil {
                    var model = ListSessionClustersResponseBody.SessionClusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sessionClusters = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSessionClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSqlStatementContentsRequest : Tea.TeaModel {
    public var fileName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListSqlStatementContentsResponseBody : Tea.TeaModel {
    public class SqlStatementContents : Tea.TeaModel {
        public var contents: String?

        public var maxResults: Int32?

        public var nextToken: String?

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
            if self.contents != nil {
                map["contents"] = self.contents!
            }
            if self.maxResults != nil {
                map["maxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["nextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contents"] as? String {
                self.contents = value
            }
            if let value = dict["maxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["nextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["totalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var requestId: String?

    public var sqlStatementContents: ListSqlStatementContentsResponseBody.SqlStatementContents?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sqlStatementContents?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sqlStatementContents != nil {
            map["sqlStatementContents"] = self.sqlStatementContents?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sqlStatementContents"] as? [String: Any?] {
            var model = ListSqlStatementContentsResponseBody.SqlStatementContents()
            model.fromMap(value)
            self.sqlStatementContents = model
        }
    }
}

public class ListSqlStatementContentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSqlStatementContentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSqlStatementContentsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["environment"] as? String {
            self.environment = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["actionArn"] as? String {
                    self.actionArn = value
                }
                if let value = dict["actionName"] as? String {
                    self.actionName = value
                }
                if let value = dict["dependencies"] as? [String] {
                    self.dependencies = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["displayName"] as? String {
                    self.displayName = value
                }
            }
        }
        public var allowActions: [ListWorkspaceQueuesResponseBody.Queues.AllowActions]?

        public var createTime: Int64?

        public var creator: String?

        public var environments: [String]?

        public var maxResource: String?

        public var minResource: String?

        public var paymentType: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
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
            if self.paymentType != nil {
                map["paymentType"] = self.paymentType!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["allowActions"] as? [Any?] {
                var tmp : [ListWorkspaceQueuesResponseBody.Queues.AllowActions] = []
                for v in value {
                    if v != nil {
                        var model = ListWorkspaceQueuesResponseBody.Queues.AllowActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.allowActions = tmp
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["environments"] as? [String] {
                self.environments = value
            }
            if let value = dict["maxResource"] as? String {
                self.maxResource = value
            }
            if let value = dict["minResource"] as? String {
                self.minResource = value
            }
            if let value = dict["paymentType"] as? String {
                self.paymentType = value
            }
            if let value = dict["properties"] as? String {
                self.properties = value
            }
            if let value = dict["queueName"] as? String {
                self.queueName = value
            }
            if let value = dict["queueScope"] as? String {
                self.queueScope = value
            }
            if let value = dict["queueStatus"] as? String {
                self.queueStatus = value
            }
            if let value = dict["queueType"] as? String {
                self.queueType = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["usedResource"] as? String {
                self.usedResource = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["queues"] as? [Any?] {
            var tmp : [ListWorkspaceQueuesResponseBody.Queues] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspaceQueuesResponseBody.Queues()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queues = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListWorkspaceQueuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var state: String?

    public var tag: [ListWorkspacesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["state"] as? String {
            self.state = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListWorkspacesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspacesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListWorkspacesShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var state: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["state"] as? String {
            self.state = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Workspaces : Tea.TeaModel {
        public class PrePaidQuota : Tea.TeaModel {
            public var allocatedResource: String?

            public var autoRenewal: Bool?

            public var createTime: Int64?

            public var expireTime: Int64?

            public var instanceId: String?

            public var maxResource: String?

            public var orderId: String?

            public var paymentStatus: String?

            public var usedResource: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allocatedResource != nil {
                    map["allocatedResource"] = self.allocatedResource!
                }
                if self.autoRenewal != nil {
                    map["autoRenewal"] = self.autoRenewal!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.expireTime != nil {
                    map["expireTime"] = self.expireTime!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.maxResource != nil {
                    map["maxResource"] = self.maxResource!
                }
                if self.orderId != nil {
                    map["orderId"] = self.orderId!
                }
                if self.paymentStatus != nil {
                    map["paymentStatus"] = self.paymentStatus!
                }
                if self.usedResource != nil {
                    map["usedResource"] = self.usedResource!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["allocatedResource"] as? String {
                    self.allocatedResource = value
                }
                if let value = dict["autoRenewal"] as? Bool {
                    self.autoRenewal = value
                }
                if let value = dict["createTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["expireTime"] as? Int64 {
                    self.expireTime = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["maxResource"] as? String {
                    self.maxResource = value
                }
                if let value = dict["orderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["paymentStatus"] as? String {
                    self.paymentStatus = value
                }
                if let value = dict["usedResource"] as? String {
                    self.usedResource = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["message"] as? String {
                    self.message = value
                }
            }
        }
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
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
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

        public var prePaidQuota: ListWorkspacesResponseBody.Workspaces.PrePaidQuota?

        public var regionId: String?

        public var releaseType: String?

        public var resourceSpec: String?

        public var stateChangeReason: ListWorkspacesResponseBody.Workspaces.StateChangeReason?

        public var storage: String?

        public var tags: [ListWorkspacesResponseBody.Workspaces.Tags]?

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
            try self.prePaidQuota?.validate()
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
            if self.prePaidQuota != nil {
                map["prePaidQuota"] = self.prePaidQuota?.toMap()
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["autoRenewPeriod"] as? Int32 {
                self.autoRenewPeriod = value
            }
            if let value = dict["autoRenewPeriodUnit"] as? String {
                self.autoRenewPeriodUnit = value
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["dlfCatalogId"] as? String {
                self.dlfCatalogId = value
            }
            if let value = dict["dlfType"] as? String {
                self.dlfType = value
            }
            if let value = dict["duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["endTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["failReason"] as? String {
                self.failReason = value
            }
            if let value = dict["paymentDurationUnit"] as? String {
                self.paymentDurationUnit = value
            }
            if let value = dict["paymentStatus"] as? String {
                self.paymentStatus = value
            }
            if let value = dict["paymentType"] as? String {
                self.paymentType = value
            }
            if let value = dict["prePaidQuota"] as? [String: Any?] {
                var model = ListWorkspacesResponseBody.Workspaces.PrePaidQuota()
                model.fromMap(value)
                self.prePaidQuota = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["releaseType"] as? String {
                self.releaseType = value
            }
            if let value = dict["resourceSpec"] as? String {
                self.resourceSpec = value
            }
            if let value = dict["stateChangeReason"] as? [String: Any?] {
                var model = ListWorkspacesResponseBody.Workspaces.StateChangeReason()
                model.fromMap(value)
                self.stateChangeReason = model
            }
            if let value = dict["storage"] as? String {
                self.storage = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListWorkspacesResponseBody.Workspaces.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListWorkspacesResponseBody.Workspaces.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["workspaceName"] as? String {
                self.workspaceName = value
            }
            if let value = dict["workspaceStatus"] as? String {
                self.workspaceStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["workspaces"] as? [Any?] {
            var tmp : [ListWorkspacesResponseBody.Workspaces] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspacesResponseBody.Workspaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListWorkspacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RefreshLivyComputeTokenRequest : Tea.TeaModel {
    public class AutoExpireConfiguration : Tea.TeaModel {
        public var enable: Bool?

        public var expireDays: Int32?

        public override init() {
            super.init()
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
            if self.expireDays != nil {
                map["expireDays"] = self.expireDays!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["expireDays"] as? Int32 {
                self.expireDays = value
            }
        }
    }
    public var autoExpireConfiguration: RefreshLivyComputeTokenRequest.AutoExpireConfiguration?

    public var name: String?

    public var token: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoExpireConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoExpireConfiguration != nil {
            map["autoExpireConfiguration"] = self.autoExpireConfiguration?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoExpireConfiguration"] as? [String: Any?] {
            var model = RefreshLivyComputeTokenRequest.AutoExpireConfiguration()
            model.fromMap(value)
            self.autoExpireConfiguration = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class RefreshLivyComputeTokenResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RefreshLivyComputeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshLivyComputeTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RefreshLivyComputeTokenResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["configFileName"] as? String {
                    self.configFileName = value
                }
                if let value = dict["configItemKey"] as? String {
                    self.configItemKey = value
                }
                if let value = dict["configItemValue"] as? String {
                    self.configItemValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configurations"] as? [Any?] {
                var tmp : [StartJobRunRequest.ConfigurationOverrides.Configurations] = []
                for v in value {
                    if v != nil {
                        var model = StartJobRunRequest.ConfigurationOverrides.Configurations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["codeType"] as? String {
            self.codeType = value
        }
        if let value = dict["configurationOverrides"] as? [String: Any?] {
            var model = StartJobRunRequest.ConfigurationOverrides()
            model.fromMap(value)
            self.configurationOverrides = model
        }
        if let value = dict["displayReleaseVersion"] as? String {
            self.displayReleaseVersion = value
        }
        if let value = dict["executionTimeoutSeconds"] as? Int32 {
            self.executionTimeoutSeconds = value
        }
        if let value = dict["fusion"] as? Bool {
            self.fusion = value
        }
        if let value = dict["jobDriver"] as? [String: Any?] {
            var model = JobDriver()
            model.fromMap(value)
            self.jobDriver = model
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["releaseVersion"] as? String {
            self.releaseVersion = value
        }
        if let value = dict["resourceQueueId"] as? String {
            self.resourceQueueId = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [Tag] = []
            for v in value {
                if v != nil {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobRunId"] as? String {
            self.jobRunId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartJobRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartLivyComputeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartLivyComputeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartLivyComputeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartLivyComputeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartLivyComputeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartProcessInstanceRequest : Tea.TeaModel {
    public var action: String?

    public var comments: String?

    public var email: String?

    public var interval: String?

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
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.comments != nil {
            map["comments"] = self.comments!
        }
        if self.email != nil {
            map["email"] = self.email!
        }
        if self.interval != nil {
            map["interval"] = self.interval!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["comments"] as? String {
            self.comments = value
        }
        if let value = dict["email"] as? String {
            self.email = value
        }
        if let value = dict["interval"] as? String {
            self.interval = value
        }
        if let value = dict["isProd"] as? Bool {
            self.isProd = value
        }
        if let value = dict["processDefinitionCode"] as? Int64 {
            self.processDefinitionCode = value
        }
        if let value = dict["productNamespace"] as? String {
            self.productNamespace = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["runtimeQueue"] as? String {
            self.runtimeQueue = value
        }
        if let value = dict["versionHashCode"] as? String {
            self.versionHashCode = value
        }
        if let value = dict["versionNumber"] as? Int32 {
            self.versionNumber = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["failed"] as? Bool {
            self.failed = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["msg"] as? String {
            self.msg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartProcessInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queueName"] as? String {
            self.queueName = value
        }
        if let value = dict["sessionClusterId"] as? String {
            self.sessionClusterId = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionClusterId"] as? String {
            self.sessionClusterId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartSessionClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopLivyComputeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopLivyComputeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopLivyComputeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopLivyComputeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopLivyComputeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queueName"] as? String {
            self.queueName = value
        }
        if let value = dict["sessionClusterId"] as? String {
            self.sessionClusterId = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionClusterId"] as? String {
            self.sessionClusterId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopSessionClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TerminateSqlStatementResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLivyComputeRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
        }
    }
    public class AutoStopConfiguration : Tea.TeaModel {
        public var enable: Bool?

        public var idleTimeoutMinutes: Int64?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["idleTimeoutMinutes"] as? Int64 {
                self.idleTimeoutMinutes = value
            }
        }
    }
    public var authType: String?

    public var autoStartConfiguration: UpdateLivyComputeRequest.AutoStartConfiguration?

    public var autoStopConfiguration: UpdateLivyComputeRequest.AutoStopConfiguration?

    public var cpuLimit: String?

    public var displayReleaseVersion: String?

    public var enablePublic: Bool?

    public var environmentId: String?

    public var fusion: Bool?

    public var livyServerConf: String?

    public var livyVersion: String?

    public var memoryLimit: String?

    public var name: String?

    public var networkName: String?

    public var queueName: String?

    public var releaseVersion: String?

    public var regionId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["authType"] = self.authType!
        }
        if self.autoStartConfiguration != nil {
            map["autoStartConfiguration"] = self.autoStartConfiguration?.toMap()
        }
        if self.autoStopConfiguration != nil {
            map["autoStopConfiguration"] = self.autoStopConfiguration?.toMap()
        }
        if self.cpuLimit != nil {
            map["cpuLimit"] = self.cpuLimit!
        }
        if self.displayReleaseVersion != nil {
            map["displayReleaseVersion"] = self.displayReleaseVersion!
        }
        if self.enablePublic != nil {
            map["enablePublic"] = self.enablePublic!
        }
        if self.environmentId != nil {
            map["environmentId"] = self.environmentId!
        }
        if self.fusion != nil {
            map["fusion"] = self.fusion!
        }
        if self.livyServerConf != nil {
            map["livyServerConf"] = self.livyServerConf!
        }
        if self.livyVersion != nil {
            map["livyVersion"] = self.livyVersion!
        }
        if self.memoryLimit != nil {
            map["memoryLimit"] = self.memoryLimit!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networkName != nil {
            map["networkName"] = self.networkName!
        }
        if self.queueName != nil {
            map["queueName"] = self.queueName!
        }
        if self.releaseVersion != nil {
            map["releaseVersion"] = self.releaseVersion!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authType"] as? String {
            self.authType = value
        }
        if let value = dict["autoStartConfiguration"] as? [String: Any?] {
            var model = UpdateLivyComputeRequest.AutoStartConfiguration()
            model.fromMap(value)
            self.autoStartConfiguration = model
        }
        if let value = dict["autoStopConfiguration"] as? [String: Any?] {
            var model = UpdateLivyComputeRequest.AutoStopConfiguration()
            model.fromMap(value)
            self.autoStopConfiguration = model
        }
        if let value = dict["cpuLimit"] as? String {
            self.cpuLimit = value
        }
        if let value = dict["displayReleaseVersion"] as? String {
            self.displayReleaseVersion = value
        }
        if let value = dict["enablePublic"] as? Bool {
            self.enablePublic = value
        }
        if let value = dict["environmentId"] as? String {
            self.environmentId = value
        }
        if let value = dict["fusion"] as? Bool {
            self.fusion = value
        }
        if let value = dict["livyServerConf"] as? String {
            self.livyServerConf = value
        }
        if let value = dict["livyVersion"] as? String {
            self.livyVersion = value
        }
        if let value = dict["memoryLimit"] as? String {
            self.memoryLimit = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["networkName"] as? String {
            self.networkName = value
        }
        if let value = dict["queueName"] as? String {
            self.queueName = value
        }
        if let value = dict["releaseVersion"] as? String {
            self.releaseVersion = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateLivyComputeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLivyComputeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLivyComputeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLivyComputeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProcessDefinitionWithScheduleRequest : Tea.TeaModel {
    public class GlobalParams : Tea.TeaModel {
        public var direct: String?

        public var prop: String?

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
            if self.direct != nil {
                map["direct"] = self.direct!
            }
            if self.prop != nil {
                map["prop"] = self.prop!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["direct"] as? String {
                self.direct = value
            }
            if let value = dict["prop"] as? String {
                self.prop = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["crontab"] as? String {
                self.crontab = value
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["timezoneId"] as? String {
                self.timezoneId = value
            }
        }
    }
    public class TaskDefinitionJson : Tea.TeaModel {
        public class TaskParams : Tea.TeaModel {
            public class LocalParams : Tea.TeaModel {
                public var direct: String?

                public var prop: String?

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
                    if self.direct != nil {
                        map["direct"] = self.direct!
                    }
                    if self.prop != nil {
                        map["prop"] = self.prop!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["direct"] as? String {
                        self.direct = value
                    }
                    if let value = dict["prop"] as? String {
                        self.prop = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["key"] as? String {
                        self.key = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var displaySparkVersion: String?

            public var environmentId: String?

            public var fusion: Bool?

            public var localParams: [UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.LocalParams]?

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
                if self.localParams != nil {
                    var tmp : [Any] = []
                    for k in self.localParams! {
                        tmp.append(k.toMap())
                    }
                    map["localParams"] = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["displaySparkVersion"] as? String {
                    self.displaySparkVersion = value
                }
                if let value = dict["environmentId"] as? String {
                    self.environmentId = value
                }
                if let value = dict["fusion"] as? Bool {
                    self.fusion = value
                }
                if let value = dict["localParams"] as? [Any?] {
                    var tmp : [UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.LocalParams] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.LocalParams()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.localParams = tmp
                }
                if let value = dict["resourceQueueId"] as? String {
                    self.resourceQueueId = value
                }
                if let value = dict["sparkConf"] as? [Any?] {
                    var tmp : [UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams.SparkConf()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sparkConf = tmp
                }
                if let value = dict["sparkDriverCores"] as? Int32 {
                    self.sparkDriverCores = value
                }
                if let value = dict["sparkDriverMemory"] as? Int64 {
                    self.sparkDriverMemory = value
                }
                if let value = dict["sparkExecutorCores"] as? Int32 {
                    self.sparkExecutorCores = value
                }
                if let value = dict["sparkExecutorMemory"] as? Int64 {
                    self.sparkExecutorMemory = value
                }
                if let value = dict["sparkLogLevel"] as? String {
                    self.sparkLogLevel = value
                }
                if let value = dict["sparkLogPath"] as? String {
                    self.sparkLogPath = value
                }
                if let value = dict["sparkVersion"] as? String {
                    self.sparkVersion = value
                }
                if let value = dict["taskBizId"] as? String {
                    self.taskBizId = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["workspaceBizId"] as? String {
                    self.workspaceBizId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alertEmailAddress"] as? String {
                self.alertEmailAddress = value
            }
            if let value = dict["code"] as? Int64 {
                self.code = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["failAlertEnable"] as? Bool {
                self.failAlertEnable = value
            }
            if let value = dict["failRetryTimes"] as? Int32 {
                self.failRetryTimes = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["startAlertEnable"] as? Bool {
                self.startAlertEnable = value
            }
            if let value = dict["tags"] as? [String: String] {
                self.tags = value
            }
            if let value = dict["taskParams"] as? [String: Any?] {
                var model = UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson.TaskParams()
                model.fromMap(value)
                self.taskParams = model
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
            if let value = dict["timeout"] as? Int32 {
                self.timeout = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["postTaskCode"] as? Int64 {
                self.postTaskCode = value
            }
            if let value = dict["postTaskVersion"] as? Int32 {
                self.postTaskVersion = value
            }
            if let value = dict["preTaskCode"] as? Int64 {
                self.preTaskCode = value
            }
            if let value = dict["preTaskVersion"] as? Int32 {
                self.preTaskVersion = value
            }
        }
    }
    public var alertEmailAddress: String?

    public var description_: String?

    public var executionType: String?

    public var globalParams: [UpdateProcessDefinitionWithScheduleRequest.GlobalParams]?

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
        if self.globalParams != nil {
            var tmp : [Any] = []
            for k in self.globalParams! {
                tmp.append(k.toMap())
            }
            map["globalParams"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertEmailAddress"] as? String {
            self.alertEmailAddress = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionType"] as? String {
            self.executionType = value
        }
        if let value = dict["globalParams"] as? [Any?] {
            var tmp : [UpdateProcessDefinitionWithScheduleRequest.GlobalParams] = []
            for v in value {
                if v != nil {
                    var model = UpdateProcessDefinitionWithScheduleRequest.GlobalParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.globalParams = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["productNamespace"] as? String {
            self.productNamespace = value
        }
        if let value = dict["publish"] as? Bool {
            self.publish = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["releaseState"] as? String {
            self.releaseState = value
        }
        if let value = dict["resourceQueue"] as? String {
            self.resourceQueue = value
        }
        if let value = dict["retryTimes"] as? Int32 {
            self.retryTimes = value
        }
        if let value = dict["runAs"] as? String {
            self.runAs = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = UpdateProcessDefinitionWithScheduleRequest.Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["tags"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["taskDefinitionJson"] as? [Any?] {
            var tmp : [UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson] = []
            for v in value {
                if v != nil {
                    var model = UpdateProcessDefinitionWithScheduleRequest.TaskDefinitionJson()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskDefinitionJson = tmp
        }
        if let value = dict["taskParallelism"] as? Int32 {
            self.taskParallelism = value
        }
        if let value = dict["taskRelationJson"] as? [Any?] {
            var tmp : [UpdateProcessDefinitionWithScheduleRequest.TaskRelationJson] = []
            for v in value {
                if v != nil {
                    var model = UpdateProcessDefinitionWithScheduleRequest.TaskRelationJson()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskRelationJson = tmp
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
    }
}

public class UpdateProcessDefinitionWithScheduleShrinkRequest : Tea.TeaModel {
    public var alertEmailAddress: String?

    public var description_: String?

    public var executionType: String?

    public var globalParamsShrink: String?

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
        if self.globalParamsShrink != nil {
            map["globalParams"] = self.globalParamsShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertEmailAddress"] as? String {
            self.alertEmailAddress = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionType"] as? String {
            self.executionType = value
        }
        if let value = dict["globalParams"] as? String {
            self.globalParamsShrink = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["productNamespace"] as? String {
            self.productNamespace = value
        }
        if let value = dict["publish"] as? Bool {
            self.publish = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["releaseState"] as? String {
            self.releaseState = value
        }
        if let value = dict["resourceQueue"] as? String {
            self.resourceQueue = value
        }
        if let value = dict["retryTimes"] as? Int32 {
            self.retryTimes = value
        }
        if let value = dict["runAs"] as? String {
            self.runAs = value
        }
        if let value = dict["schedule"] as? String {
            self.scheduleShrink = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["taskDefinitionJson"] as? String {
            self.taskDefinitionJsonShrink = value
        }
        if let value = dict["taskParallelism"] as? Int32 {
            self.taskParallelism = value
        }
        if let value = dict["taskRelationJson"] as? String {
            self.taskRelationJsonShrink = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alertEmailAddress"] as? String {
                self.alertEmailAddress = value
            }
            if let value = dict["bizId"] as? String {
                self.bizId = value
            }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["crontab"] as? String {
                self.crontab = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["executionType"] as? String {
                self.executionType = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["projectName"] as? String {
                self.projectName = value
            }
            if let value = dict["releaseState"] as? String {
                self.releaseState = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["timezoneId"] as? String {
                self.timezoneId = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
            if let value = dict["userName"] as? String {
                self.userName = value
            }
            if let value = dict["version"] as? Int32 {
                self.version = value
            }
            if let value = dict["versionHashCode"] as? String {
                self.versionHashCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateProcessDefinitionWithScheduleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["failed"] as? String {
            self.failed = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["msg"] as? String {
            self.msg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateProcessDefinitionWithScheduleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
