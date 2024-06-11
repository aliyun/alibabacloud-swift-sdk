import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class FeatureViewConfigValue : Tea.TeaModel {
    public var partitions: [String: FeatureViewConfigValuePartitionsValue]?

    public var eventTime: String?

    public var equal: Bool?

    public override init() {
        super.init()
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
            var tmp : [String: Any] = [:]
            for (k, v) in self.partitions! {
                tmp[k] = v.toMap()
            }
            map["Partitions"] = tmp
        }
        if self.eventTime != nil {
            map["EventTime"] = self.eventTime!
        }
        if self.equal != nil {
            map["Equal"] = self.equal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Partitions") {
            var tmp : [String: FeatureViewConfigValuePartitionsValue] = [:]
            for (k, v) in dict["Partitions"] as! [String: Any] {
                if v != nil {
                    var model = FeatureViewConfigValuePartitionsValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.partitions = tmp
        }
        if dict.keys.contains("EventTime") {
            self.eventTime = dict["EventTime"] as! String
        }
        if dict.keys.contains("Equal") {
            self.equal = dict["Equal"] as! Bool
        }
    }
}

public class FeatureViewConfigValuePartitionsValue : Tea.TeaModel {
    public var value: String?

    public var values: [String]?

    public var startValue: String?

    public var endValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        if self.startValue != nil {
            map["StartValue"] = self.startValue!
        }
        if self.endValue != nil {
            map["EndValue"] = self.endValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! [String]
        }
        if dict.keys.contains("StartValue") {
            self.startValue = dict["StartValue"] as! String
        }
        if dict.keys.contains("EndValue") {
            self.endValue = dict["EndValue"] as! String
        }
    }
}

public class ChangeProjectFeatureEntityHotIdVersionRequest : Tea.TeaModel {
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
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class ChangeProjectFeatureEntityHotIdVersionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChangeProjectFeatureEntityHotIdVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeProjectFeatureEntityHotIdVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ChangeProjectFeatureEntityHotIdVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckInstanceDatasourceRequest : Tea.TeaModel {
    public var config: String?

    public var type: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
        }
    }
}

public class CheckInstanceDatasourceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class CheckInstanceDatasourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckInstanceDatasourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckInstanceDatasourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDatasourceRequest : Tea.TeaModel {
    public var config: String?

    public var name: String?

    public var type: String?

    public var uri: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateDatasourceResponseBody : Tea.TeaModel {
    public var datasourceId: String?

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
        if self.datasourceId != nil {
            map["DatasourceId"] = self.datasourceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasourceId") {
            self.datasourceId = dict["DatasourceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDatasourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDatasourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFeatureEntityRequest : Tea.TeaModel {
    public var joinId: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.joinId != nil {
            map["JoinId"] = self.joinId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinId") {
            self.joinId = dict["JoinId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateFeatureEntityResponseBody : Tea.TeaModel {
    public var featureEntityId: String?

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
        if self.featureEntityId != nil {
            map["FeatureEntityId"] = self.featureEntityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureEntityId") {
            self.featureEntityId = dict["FeatureEntityId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFeatureEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFeatureEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateFeatureEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFeatureViewRequest : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var attributes: [String]?

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
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
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
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var config: String?

    public var featureEntityId: String?

    public var fields: [CreateFeatureViewRequest.Fields]?

    public var name: String?

    public var projectId: String?

    public var registerDatasourceId: String?

    public var registerTable: String?

    public var syncOnlineTable: Bool?

    public var TTL: Int32?

    public var tags: [String]?

    public var type: String?

    public var writeMethod: String?

    public var writeToFeatureDB: Bool?

    public override init() {
        super.init()
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
        if self.featureEntityId != nil {
            map["FeatureEntityId"] = self.featureEntityId!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.registerDatasourceId != nil {
            map["RegisterDatasourceId"] = self.registerDatasourceId!
        }
        if self.registerTable != nil {
            map["RegisterTable"] = self.registerTable!
        }
        if self.syncOnlineTable != nil {
            map["SyncOnlineTable"] = self.syncOnlineTable!
        }
        if self.TTL != nil {
            map["TTL"] = self.TTL!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.writeMethod != nil {
            map["WriteMethod"] = self.writeMethod!
        }
        if self.writeToFeatureDB != nil {
            map["WriteToFeatureDB"] = self.writeToFeatureDB!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("FeatureEntityId") {
            self.featureEntityId = dict["FeatureEntityId"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [CreateFeatureViewRequest.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = CreateFeatureViewRequest.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegisterDatasourceId") {
            self.registerDatasourceId = dict["RegisterDatasourceId"] as! String
        }
        if dict.keys.contains("RegisterTable") {
            self.registerTable = dict["RegisterTable"] as! String
        }
        if dict.keys.contains("SyncOnlineTable") {
            self.syncOnlineTable = dict["SyncOnlineTable"] as! Bool
        }
        if dict.keys.contains("TTL") {
            self.TTL = dict["TTL"] as! Int32
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("WriteMethod") {
            self.writeMethod = dict["WriteMethod"] as! String
        }
        if dict.keys.contains("WriteToFeatureDB") {
            self.writeToFeatureDB = dict["WriteToFeatureDB"] as! Bool
        }
    }
}

public class CreateFeatureViewResponseBody : Tea.TeaModel {
    public var featureViewId: String?

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
        if self.featureViewId != nil {
            map["FeatureViewId"] = self.featureViewId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureViewId") {
            self.featureViewId = dict["FeatureViewId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFeatureViewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFeatureViewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateFeatureViewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
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
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var instanceId: String?

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
            map["Code"] = self.code!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLabelTableRequest : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var attributes: [String]?

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
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
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
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var datasourceId: String?

    public var fields: [CreateLabelTableRequest.Fields]?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasourceId != nil {
            map["DatasourceId"] = self.datasourceId!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasourceId") {
            self.datasourceId = dict["DatasourceId"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [CreateLabelTableRequest.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = CreateLabelTableRequest.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateLabelTableResponseBody : Tea.TeaModel {
    public var labelTableId: String?

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
        if self.labelTableId != nil {
            map["LabelTableId"] = self.labelTableId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelTableId") {
            self.labelTableId = dict["LabelTableId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateLabelTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLabelTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateLabelTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModelFeatureRequest : Tea.TeaModel {
    public class Features : Tea.TeaModel {
        public var aliasName: String?

        public var featureViewId: String?

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
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.featureViewId != nil {
                map["FeatureViewId"] = self.featureViewId!
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
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("FeatureViewId") {
                self.featureViewId = dict["FeatureViewId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var features: [CreateModelFeatureRequest.Features]?

    public var labelTableId: String?

    public var name: String?

    public var projectId: String?

    public var sequenceFeatureViewIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.features != nil {
            var tmp : [Any] = []
            for k in self.features! {
                tmp.append(k.toMap())
            }
            map["Features"] = tmp
        }
        if self.labelTableId != nil {
            map["LabelTableId"] = self.labelTableId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sequenceFeatureViewIds != nil {
            map["SequenceFeatureViewIds"] = self.sequenceFeatureViewIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Features") {
            var tmp : [CreateModelFeatureRequest.Features] = []
            for v in dict["Features"] as! [Any] {
                var model = CreateModelFeatureRequest.Features()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.features = tmp
        }
        if dict.keys.contains("LabelTableId") {
            self.labelTableId = dict["LabelTableId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SequenceFeatureViewIds") {
            self.sequenceFeatureViewIds = dict["SequenceFeatureViewIds"] as! [String]
        }
    }
}

public class CreateModelFeatureResponseBody : Tea.TeaModel {
    public var modelFeatureId: String?

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
        if self.modelFeatureId != nil {
            map["ModelFeatureId"] = self.modelFeatureId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelFeatureId") {
            self.modelFeatureId = dict["ModelFeatureId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateModelFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModelFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModelFeatureTrainingSetFGTableResponseBody : Tea.TeaModel {
    public var trainingSetFGTableName: String?

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
        if self.trainingSetFGTableName != nil {
            map["TrainingSetFGTableName"] = self.trainingSetFGTableName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TrainingSetFGTableName") {
            self.trainingSetFGTableName = dict["TrainingSetFGTableName"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateModelFeatureTrainingSetFGTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelFeatureTrainingSetFGTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModelFeatureTrainingSetFGTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var offlineDatasourceId: String?

    public var offlineLifeCycle: Int32?

    public var onlineDatasourceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.offlineDatasourceId != nil {
            map["OfflineDatasourceId"] = self.offlineDatasourceId!
        }
        if self.offlineLifeCycle != nil {
            map["OfflineLifeCycle"] = self.offlineLifeCycle!
        }
        if self.onlineDatasourceId != nil {
            map["OnlineDatasourceId"] = self.onlineDatasourceId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OfflineDatasourceId") {
            self.offlineDatasourceId = dict["OfflineDatasourceId"] as! String
        }
        if dict.keys.contains("OfflineLifeCycle") {
            self.offlineLifeCycle = dict["OfflineLifeCycle"] as! Int32
        }
        if dict.keys.contains("OnlineDatasourceId") {
            self.onlineDatasourceId = dict["OnlineDatasourceId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class CreateServiceIdentityRoleRequest : Tea.TeaModel {
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
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class CreateServiceIdentityRoleResponseBody : Tea.TeaModel {
    public var code: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class CreateServiceIdentityRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceIdentityRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateServiceIdentityRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatasourceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDatasourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDatasourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFeatureEntityResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFeatureEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFeatureEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteFeatureEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFeatureViewResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFeatureViewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFeatureViewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteFeatureViewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLabelTableResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteLabelTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLabelTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteLabelTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModelFeatureResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteModelFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteModelFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportModelFeatureTrainingSetFGTableRequest : Tea.TeaModel {
    public class TrainingSetFgConfig : Tea.TeaModel {
        public var fgJsonName: String?

        public var jarName: String?

        public var partitions: [String: [String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fgJsonName != nil {
                map["FgJsonName"] = self.fgJsonName!
            }
            if self.jarName != nil {
                map["JarName"] = self.jarName!
            }
            if self.partitions != nil {
                map["Partitions"] = self.partitions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FgJsonName") {
                self.fgJsonName = dict["FgJsonName"] as! String
            }
            if dict.keys.contains("JarName") {
                self.jarName = dict["JarName"] as! String
            }
            if dict.keys.contains("Partitions") {
                self.partitions = dict["Partitions"] as! [String: [String: Any]]
            }
        }
    }
    public var trainingSetFgConfig: ExportModelFeatureTrainingSetFGTableRequest.TrainingSetFgConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trainingSetFgConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trainingSetFgConfig != nil {
            map["TrainingSetFgConfig"] = self.trainingSetFgConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TrainingSetFgConfig") {
            var model = ExportModelFeatureTrainingSetFGTableRequest.TrainingSetFgConfig()
            model.fromMap(dict["TrainingSetFgConfig"] as! [String: Any])
            self.trainingSetFgConfig = model
        }
    }
}

public class ExportModelFeatureTrainingSetFGTableResponseBody : Tea.TeaModel {
    public var taskId: String?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ExportModelFeatureTrainingSetFGTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportModelFeatureTrainingSetFGTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ExportModelFeatureTrainingSetFGTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportModelFeatureTrainingSetTableRequest : Tea.TeaModel {
    public class LabelInputConfig : Tea.TeaModel {
        public var eventTime: String?

        public var partitions: [String: [String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventTime != nil {
                map["EventTime"] = self.eventTime!
            }
            if self.partitions != nil {
                map["Partitions"] = self.partitions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventTime") {
                self.eventTime = dict["EventTime"] as! String
            }
            if dict.keys.contains("Partitions") {
                self.partitions = dict["Partitions"] as! [String: [String: Any]]
            }
        }
    }
    public class TrainingSetConfig : Tea.TeaModel {
        public var partitions: [String: [String: Any]]?

        public override init() {
            super.init()
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
                map["Partitions"] = self.partitions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Partitions") {
                self.partitions = dict["Partitions"] as! [String: [String: Any]]
            }
        }
    }
    public var featureViewConfig: [String: FeatureViewConfigValue]?

    public var labelInputConfig: ExportModelFeatureTrainingSetTableRequest.LabelInputConfig?

    public var trainingSetConfig: ExportModelFeatureTrainingSetTableRequest.TrainingSetConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.labelInputConfig?.validate()
        try self.trainingSetConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureViewConfig != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.featureViewConfig! {
                tmp[k] = v.toMap()
            }
            map["FeatureViewConfig"] = tmp
        }
        if self.labelInputConfig != nil {
            map["LabelInputConfig"] = self.labelInputConfig?.toMap()
        }
        if self.trainingSetConfig != nil {
            map["TrainingSetConfig"] = self.trainingSetConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureViewConfig") {
            var tmp : [String: FeatureViewConfigValue] = [:]
            for (k, v) in dict["FeatureViewConfig"] as! [String: Any] {
                if v != nil {
                    var model = FeatureViewConfigValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.featureViewConfig = tmp
        }
        if dict.keys.contains("LabelInputConfig") {
            var model = ExportModelFeatureTrainingSetTableRequest.LabelInputConfig()
            model.fromMap(dict["LabelInputConfig"] as! [String: Any])
            self.labelInputConfig = model
        }
        if dict.keys.contains("TrainingSetConfig") {
            var model = ExportModelFeatureTrainingSetTableRequest.TrainingSetConfig()
            model.fromMap(dict["TrainingSetConfig"] as! [String: Any])
            self.trainingSetConfig = model
        }
    }
}

public class ExportModelFeatureTrainingSetTableResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ExportModelFeatureTrainingSetTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportModelFeatureTrainingSetTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ExportModelFeatureTrainingSetTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDatasourceResponseBody : Tea.TeaModel {
    public var config: String?

    public var datasourceId: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var type: String?

    public var uri: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.datasourceId != nil {
            map["DatasourceId"] = self.datasourceId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DatasourceId") {
            self.datasourceId = dict["DatasourceId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetDatasourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDatasourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDatasourceTableResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var attributes: [String]?

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
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
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
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var fields: [GetDatasourceTableResponseBody.Fields]?

    public var requestId: String?

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
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fields") {
            var tmp : [GetDatasourceTableResponseBody.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = GetDatasourceTableResponseBody.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class GetDatasourceTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasourceTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDatasourceTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFeatureEntityResponseBody : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var joinId: String?

    public var name: String?

    public var owner: String?

    public var projectId: String?

    public var projectName: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.joinId != nil {
            map["JoinId"] = self.joinId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("JoinId") {
            self.joinId = dict["JoinId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetFeatureEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFeatureEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetFeatureEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFeatureViewResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var attributes: [String]?

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
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
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
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var config: String?

    public var featureEntityId: String?

    public var featureEntityName: String?

    public var fields: [GetFeatureViewResponseBody.Fields]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var gmtSyncTime: String?

    public var joinId: String?

    public var lastSyncConfig: String?

    public var name: String?

    public var owner: String?

    public var projectId: String?

    public var projectName: String?

    public var publishTableScript: String?

    public var registerDatasourceId: String?

    public var registerDatasourceName: String?

    public var registerTable: String?

    public var requestId: String?

    public var syncOnlineTable: Bool?

    public var TTL: Int32?

    public var tags: [String]?

    public var type: String?

    public var writeMethod: String?

    public var writeToFeatureDB: Bool?

    public override init() {
        super.init()
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
        if self.featureEntityId != nil {
            map["FeatureEntityId"] = self.featureEntityId!
        }
        if self.featureEntityName != nil {
            map["FeatureEntityName"] = self.featureEntityName!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.gmtSyncTime != nil {
            map["GmtSyncTime"] = self.gmtSyncTime!
        }
        if self.joinId != nil {
            map["JoinId"] = self.joinId!
        }
        if self.lastSyncConfig != nil {
            map["LastSyncConfig"] = self.lastSyncConfig!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.publishTableScript != nil {
            map["PublishTableScript"] = self.publishTableScript!
        }
        if self.registerDatasourceId != nil {
            map["RegisterDatasourceId"] = self.registerDatasourceId!
        }
        if self.registerDatasourceName != nil {
            map["RegisterDatasourceName"] = self.registerDatasourceName!
        }
        if self.registerTable != nil {
            map["RegisterTable"] = self.registerTable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncOnlineTable != nil {
            map["SyncOnlineTable"] = self.syncOnlineTable!
        }
        if self.TTL != nil {
            map["TTL"] = self.TTL!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.writeMethod != nil {
            map["WriteMethod"] = self.writeMethod!
        }
        if self.writeToFeatureDB != nil {
            map["WriteToFeatureDB"] = self.writeToFeatureDB!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("FeatureEntityId") {
            self.featureEntityId = dict["FeatureEntityId"] as! String
        }
        if dict.keys.contains("FeatureEntityName") {
            self.featureEntityName = dict["FeatureEntityName"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [GetFeatureViewResponseBody.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = GetFeatureViewResponseBody.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("GmtSyncTime") {
            self.gmtSyncTime = dict["GmtSyncTime"] as! String
        }
        if dict.keys.contains("JoinId") {
            self.joinId = dict["JoinId"] as! String
        }
        if dict.keys.contains("LastSyncConfig") {
            self.lastSyncConfig = dict["LastSyncConfig"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("PublishTableScript") {
            self.publishTableScript = dict["PublishTableScript"] as! String
        }
        if dict.keys.contains("RegisterDatasourceId") {
            self.registerDatasourceId = dict["RegisterDatasourceId"] as! String
        }
        if dict.keys.contains("RegisterDatasourceName") {
            self.registerDatasourceName = dict["RegisterDatasourceName"] as! String
        }
        if dict.keys.contains("RegisterTable") {
            self.registerTable = dict["RegisterTable"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncOnlineTable") {
            self.syncOnlineTable = dict["SyncOnlineTable"] as! Bool
        }
        if dict.keys.contains("TTL") {
            self.TTL = dict["TTL"] as! Int32
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("WriteMethod") {
            self.writeMethod = dict["WriteMethod"] as! String
        }
        if dict.keys.contains("WriteToFeatureDB") {
            self.writeToFeatureDB = dict["WriteToFeatureDB"] as! Bool
        }
    }
}

public class GetFeatureViewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFeatureViewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetFeatureViewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var message: String?

    public var progress: Double?

    public var regionId: String?

    public var requestId: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Double
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLabelTableResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var attributes: [String]?

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
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
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
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var datasourceId: String?

    public var datasourceName: String?

    public var fields: [GetLabelTableResponseBody.Fields]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var name: String?

    public var owner: String?

    public var projectId: String?

    public var projectName: String?

    public var relatedModelFeatures: [String]?

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
        if self.datasourceId != nil {
            map["DatasourceId"] = self.datasourceId!
        }
        if self.datasourceName != nil {
            map["DatasourceName"] = self.datasourceName!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.relatedModelFeatures != nil {
            map["RelatedModelFeatures"] = self.relatedModelFeatures!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasourceId") {
            self.datasourceId = dict["DatasourceId"] as! String
        }
        if dict.keys.contains("DatasourceName") {
            self.datasourceName = dict["DatasourceName"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [GetLabelTableResponseBody.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = GetLabelTableResponseBody.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RelatedModelFeatures") {
            self.relatedModelFeatures = dict["RelatedModelFeatures"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetLabelTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLabelTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetLabelTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelFeatureResponseBody : Tea.TeaModel {
    public class Features : Tea.TeaModel {
        public var aliasName: String?

        public var featureViewId: String?

        public var featureViewName: String?

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
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.featureViewId != nil {
                map["FeatureViewId"] = self.featureViewId!
            }
            if self.featureViewName != nil {
                map["FeatureViewName"] = self.featureViewName!
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
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("FeatureViewId") {
                self.featureViewId = dict["FeatureViewId"] as! String
            }
            if dict.keys.contains("FeatureViewName") {
                self.featureViewName = dict["FeatureViewName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class Relations : Tea.TeaModel {
        public class Domains : Tea.TeaModel {
            public var domainType: String?

            public var id: String?

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
                if self.domainType != nil {
                    map["DomainType"] = self.domainType!
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
                if dict.keys.contains("DomainType") {
                    self.domainType = dict["DomainType"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Links : Tea.TeaModel {
            public var from: String?

            public var link: String?

            public var to: String?

            public override init() {
                super.init()
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
                    map["From"] = self.from!
                }
                if self.link != nil {
                    map["Link"] = self.link!
                }
                if self.to != nil {
                    map["To"] = self.to!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("From") {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("Link") {
                    self.link = dict["Link"] as! String
                }
                if dict.keys.contains("To") {
                    self.to = dict["To"] as! String
                }
            }
        }
        public var domains: [GetModelFeatureResponseBody.Relations.Domains]?

        public var links: [GetModelFeatureResponseBody.Relations.Links]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domains != nil {
                var tmp : [Any] = []
                for k in self.domains! {
                    tmp.append(k.toMap())
                }
                map["Domains"] = tmp
            }
            if self.links != nil {
                var tmp : [Any] = []
                for k in self.links! {
                    tmp.append(k.toMap())
                }
                map["Links"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domains") {
                var tmp : [GetModelFeatureResponseBody.Relations.Domains] = []
                for v in dict["Domains"] as! [Any] {
                    var model = GetModelFeatureResponseBody.Relations.Domains()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domains = tmp
            }
            if dict.keys.contains("Links") {
                var tmp : [GetModelFeatureResponseBody.Relations.Links] = []
                for v in dict["Links"] as! [Any] {
                    var model = GetModelFeatureResponseBody.Relations.Links()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.links = tmp
            }
        }
    }
    public var exportTrainingSetTableScript: String?

    public var features: [GetModelFeatureResponseBody.Features]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labelTableId: String?

    public var labelTableName: String?

    public var name: String?

    public var owner: String?

    public var projectId: String?

    public var projectName: String?

    public var relations: GetModelFeatureResponseBody.Relations?

    public var requestId: String?

    public var trainingSetFGTable: String?

    public var trainingSetTable: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.relations?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportTrainingSetTableScript != nil {
            map["ExportTrainingSetTableScript"] = self.exportTrainingSetTableScript!
        }
        if self.features != nil {
            var tmp : [Any] = []
            for k in self.features! {
                tmp.append(k.toMap())
            }
            map["Features"] = tmp
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labelTableId != nil {
            map["LabelTableId"] = self.labelTableId!
        }
        if self.labelTableName != nil {
            map["LabelTableName"] = self.labelTableName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.relations != nil {
            map["Relations"] = self.relations?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trainingSetFGTable != nil {
            map["TrainingSetFGTable"] = self.trainingSetFGTable!
        }
        if self.trainingSetTable != nil {
            map["TrainingSetTable"] = self.trainingSetTable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExportTrainingSetTableScript") {
            self.exportTrainingSetTableScript = dict["ExportTrainingSetTableScript"] as! String
        }
        if dict.keys.contains("Features") {
            var tmp : [GetModelFeatureResponseBody.Features] = []
            for v in dict["Features"] as! [Any] {
                var model = GetModelFeatureResponseBody.Features()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.features = tmp
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("LabelTableId") {
            self.labelTableId = dict["LabelTableId"] as! String
        }
        if dict.keys.contains("LabelTableName") {
            self.labelTableName = dict["LabelTableName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Relations") {
            var model = GetModelFeatureResponseBody.Relations()
            model.fromMap(dict["Relations"] as! [String: Any])
            self.relations = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrainingSetFGTable") {
            self.trainingSetFGTable = dict["TrainingSetFGTable"] as! String
        }
        if dict.keys.contains("TrainingSetTable") {
            self.trainingSetTable = dict["TrainingSetTable"] as! String
        }
    }
}

public class GetModelFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetModelFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelFeatureFGFeatureResponseBody : Tea.TeaModel {
    public class LookupFeatures : Tea.TeaModel {
        public var defaultValue: String?

        public var featureName: String?

        public var keyFeatureDomain: String?

        public var keyFeatureName: String?

        public var mapFeatureDomain: String?

        public var mapFeatureName: String?

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
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.keyFeatureDomain != nil {
                map["KeyFeatureDomain"] = self.keyFeatureDomain!
            }
            if self.keyFeatureName != nil {
                map["KeyFeatureName"] = self.keyFeatureName!
            }
            if self.mapFeatureDomain != nil {
                map["MapFeatureDomain"] = self.mapFeatureDomain!
            }
            if self.mapFeatureName != nil {
                map["MapFeatureName"] = self.mapFeatureName!
            }
            if self.valueType != nil {
                map["ValueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("FeatureName") {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("KeyFeatureDomain") {
                self.keyFeatureDomain = dict["KeyFeatureDomain"] as! String
            }
            if dict.keys.contains("KeyFeatureName") {
                self.keyFeatureName = dict["KeyFeatureName"] as! String
            }
            if dict.keys.contains("MapFeatureDomain") {
                self.mapFeatureDomain = dict["MapFeatureDomain"] as! String
            }
            if dict.keys.contains("MapFeatureName") {
                self.mapFeatureName = dict["MapFeatureName"] as! String
            }
            if dict.keys.contains("ValueType") {
                self.valueType = dict["ValueType"] as! String
            }
        }
    }
    public class RawFeatures : Tea.TeaModel {
        public var defaultValue: String?

        public var featureDomain: String?

        public var featureName: String?

        public var featureType: String?

        public var inputFeatureName: String?

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
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.featureDomain != nil {
                map["FeatureDomain"] = self.featureDomain!
            }
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.featureType != nil {
                map["FeatureType"] = self.featureType!
            }
            if self.inputFeatureName != nil {
                map["InputFeatureName"] = self.inputFeatureName!
            }
            if self.valueType != nil {
                map["ValueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("FeatureDomain") {
                self.featureDomain = dict["FeatureDomain"] as! String
            }
            if dict.keys.contains("FeatureName") {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("FeatureType") {
                self.featureType = dict["FeatureType"] as! String
            }
            if dict.keys.contains("InputFeatureName") {
                self.inputFeatureName = dict["InputFeatureName"] as! String
            }
            if dict.keys.contains("ValueType") {
                self.valueType = dict["ValueType"] as! String
            }
        }
    }
    public class SequenceFeatures : Tea.TeaModel {
        public class SubFeatures : Tea.TeaModel {
            public var defaultValue: String?

            public var featureDomain: String?

            public var featureName: String?

            public var featureType: String?

            public var inputFeatureName: String?

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
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.featureDomain != nil {
                    map["FeatureDomain"] = self.featureDomain!
                }
                if self.featureName != nil {
                    map["FeatureName"] = self.featureName!
                }
                if self.featureType != nil {
                    map["FeatureType"] = self.featureType!
                }
                if self.inputFeatureName != nil {
                    map["InputFeatureName"] = self.inputFeatureName!
                }
                if self.valueType != nil {
                    map["ValueType"] = self.valueType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultValue") {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("FeatureDomain") {
                    self.featureDomain = dict["FeatureDomain"] as! String
                }
                if dict.keys.contains("FeatureName") {
                    self.featureName = dict["FeatureName"] as! String
                }
                if dict.keys.contains("FeatureType") {
                    self.featureType = dict["FeatureType"] as! String
                }
                if dict.keys.contains("InputFeatureName") {
                    self.inputFeatureName = dict["InputFeatureName"] as! String
                }
                if dict.keys.contains("ValueType") {
                    self.valueType = dict["ValueType"] as! String
                }
            }
        }
        public var attributeDelim: String?

        public var featureName: String?

        public var sequenceDelim: String?

        public var sequenceLength: Int64?

        public var subFeatures: [GetModelFeatureFGFeatureResponseBody.SequenceFeatures.SubFeatures]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributeDelim != nil {
                map["AttributeDelim"] = self.attributeDelim!
            }
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.sequenceDelim != nil {
                map["SequenceDelim"] = self.sequenceDelim!
            }
            if self.sequenceLength != nil {
                map["SequenceLength"] = self.sequenceLength!
            }
            if self.subFeatures != nil {
                var tmp : [Any] = []
                for k in self.subFeatures! {
                    tmp.append(k.toMap())
                }
                map["SubFeatures"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttributeDelim") {
                self.attributeDelim = dict["AttributeDelim"] as! String
            }
            if dict.keys.contains("FeatureName") {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("SequenceDelim") {
                self.sequenceDelim = dict["SequenceDelim"] as! String
            }
            if dict.keys.contains("SequenceLength") {
                self.sequenceLength = dict["SequenceLength"] as! Int64
            }
            if dict.keys.contains("SubFeatures") {
                var tmp : [GetModelFeatureFGFeatureResponseBody.SequenceFeatures.SubFeatures] = []
                for v in dict["SubFeatures"] as! [Any] {
                    var model = GetModelFeatureFGFeatureResponseBody.SequenceFeatures.SubFeatures()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subFeatures = tmp
            }
        }
    }
    public var lookupFeatures: [GetModelFeatureFGFeatureResponseBody.LookupFeatures]?

    public var rawFeatures: [GetModelFeatureFGFeatureResponseBody.RawFeatures]?

    public var requestId: String?

    public var reserves: [String]?

    public var sequenceFeatures: [GetModelFeatureFGFeatureResponseBody.SequenceFeatures]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lookupFeatures != nil {
            var tmp : [Any] = []
            for k in self.lookupFeatures! {
                tmp.append(k.toMap())
            }
            map["LookupFeatures"] = tmp
        }
        if self.rawFeatures != nil {
            var tmp : [Any] = []
            for k in self.rawFeatures! {
                tmp.append(k.toMap())
            }
            map["RawFeatures"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.reserves != nil {
            map["Reserves"] = self.reserves!
        }
        if self.sequenceFeatures != nil {
            var tmp : [Any] = []
            for k in self.sequenceFeatures! {
                tmp.append(k.toMap())
            }
            map["SequenceFeatures"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LookupFeatures") {
            var tmp : [GetModelFeatureFGFeatureResponseBody.LookupFeatures] = []
            for v in dict["LookupFeatures"] as! [Any] {
                var model = GetModelFeatureFGFeatureResponseBody.LookupFeatures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.lookupFeatures = tmp
        }
        if dict.keys.contains("RawFeatures") {
            var tmp : [GetModelFeatureFGFeatureResponseBody.RawFeatures] = []
            for v in dict["RawFeatures"] as! [Any] {
                var model = GetModelFeatureFGFeatureResponseBody.RawFeatures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rawFeatures = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Reserves") {
            self.reserves = dict["Reserves"] as! [String]
        }
        if dict.keys.contains("SequenceFeatures") {
            var tmp : [GetModelFeatureFGFeatureResponseBody.SequenceFeatures] = []
            for v in dict["SequenceFeatures"] as! [Any] {
                var model = GetModelFeatureFGFeatureResponseBody.SequenceFeatures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sequenceFeatures = tmp
        }
    }
}

public class GetModelFeatureFGFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelFeatureFGFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetModelFeatureFGFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelFeatureFGInfoResponseBody : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetModelFeatureFGInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelFeatureFGInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetModelFeatureFGInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public var description_: String?

    public var featureEntityCount: Int32?

    public var featureViewCount: Int32?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var modelCount: Int32?

    public var name: String?

    public var offlineDatasourceId: String?

    public var offlineDatasourceName: String?

    public var offlineDatasourceType: String?

    public var offlineLifecycle: Int32?

    public var onlineDatasourceId: String?

    public var onlineDatasourceName: String?

    public var onlineDatasourceType: String?

    public var owner: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.featureEntityCount != nil {
            map["FeatureEntityCount"] = self.featureEntityCount!
        }
        if self.featureViewCount != nil {
            map["FeatureViewCount"] = self.featureViewCount!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.modelCount != nil {
            map["ModelCount"] = self.modelCount!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.offlineDatasourceId != nil {
            map["OfflineDatasourceId"] = self.offlineDatasourceId!
        }
        if self.offlineDatasourceName != nil {
            map["OfflineDatasourceName"] = self.offlineDatasourceName!
        }
        if self.offlineDatasourceType != nil {
            map["OfflineDatasourceType"] = self.offlineDatasourceType!
        }
        if self.offlineLifecycle != nil {
            map["OfflineLifecycle"] = self.offlineLifecycle!
        }
        if self.onlineDatasourceId != nil {
            map["OnlineDatasourceId"] = self.onlineDatasourceId!
        }
        if self.onlineDatasourceName != nil {
            map["OnlineDatasourceName"] = self.onlineDatasourceName!
        }
        if self.onlineDatasourceType != nil {
            map["OnlineDatasourceType"] = self.onlineDatasourceType!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FeatureEntityCount") {
            self.featureEntityCount = dict["FeatureEntityCount"] as! Int32
        }
        if dict.keys.contains("FeatureViewCount") {
            self.featureViewCount = dict["FeatureViewCount"] as! Int32
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("ModelCount") {
            self.modelCount = dict["ModelCount"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OfflineDatasourceId") {
            self.offlineDatasourceId = dict["OfflineDatasourceId"] as! String
        }
        if dict.keys.contains("OfflineDatasourceName") {
            self.offlineDatasourceName = dict["OfflineDatasourceName"] as! String
        }
        if dict.keys.contains("OfflineDatasourceType") {
            self.offlineDatasourceType = dict["OfflineDatasourceType"] as! String
        }
        if dict.keys.contains("OfflineLifecycle") {
            self.offlineLifecycle = dict["OfflineLifecycle"] as! Int32
        }
        if dict.keys.contains("OnlineDatasourceId") {
            self.onlineDatasourceId = dict["OnlineDatasourceId"] as! String
        }
        if dict.keys.contains("OnlineDatasourceName") {
            self.onlineDatasourceName = dict["OnlineDatasourceName"] as! String
        }
        if dict.keys.contains("OnlineDatasourceType") {
            self.onlineDatasourceType = dict["OnlineDatasourceType"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class GetProjectFeatureEntityResponseBody : Tea.TeaModel {
    public var featureEntityId: String?

    public var joinId: String?

    public var name: String?

    public var projectName: String?

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
        if self.featureEntityId != nil {
            map["FeatureEntityId"] = self.featureEntityId!
        }
        if self.joinId != nil {
            map["JoinId"] = self.joinId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureEntityId") {
            self.featureEntityId = dict["FeatureEntityId"] as! String
        }
        if dict.keys.contains("JoinId") {
            self.joinId = dict["JoinId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetProjectFeatureEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectFeatureEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetProjectFeatureEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectFeatureEntityHotIdsResponseBody : Tea.TeaModel {
    public var count: Int32?

    public var hotIds: String?

    public var nextSeqNumber: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.hotIds != nil {
            map["HotIds"] = self.hotIds!
        }
        if self.nextSeqNumber != nil {
            map["NextSeqNumber"] = self.nextSeqNumber!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("HotIds") {
            self.hotIds = dict["HotIds"] as! String
        }
        if dict.keys.contains("NextSeqNumber") {
            self.nextSeqNumber = dict["NextSeqNumber"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetProjectFeatureEntityHotIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectFeatureEntityHotIdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetProjectFeatureEntityHotIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectFeatureViewResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var attributes: [String]?

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
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
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
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var config: String?

    public var featureEntityId: String?

    public var featureEntityName: String?

    public var featureViewId: String?

    public var fields: [GetProjectFeatureViewResponseBody.Fields]?

    public var gmtSyncTime: String?

    public var joinId: String?

    public var lastSyncConfig: String?

    public var name: String?

    public var owner: String?

    public var projectId: String?

    public var projectName: String?

    public var registerDatasourceId: String?

    public var registerTable: String?

    public var requestId: String?

    public var syncOnlineTable: Bool?

    public var TTL: Int32?

    public var tags: [String]?

    public var type: String?

    public var writeMethod: String?

    public override init() {
        super.init()
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
        if self.featureEntityId != nil {
            map["FeatureEntityId"] = self.featureEntityId!
        }
        if self.featureEntityName != nil {
            map["FeatureEntityName"] = self.featureEntityName!
        }
        if self.featureViewId != nil {
            map["FeatureViewId"] = self.featureViewId!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.gmtSyncTime != nil {
            map["GmtSyncTime"] = self.gmtSyncTime!
        }
        if self.joinId != nil {
            map["JoinId"] = self.joinId!
        }
        if self.lastSyncConfig != nil {
            map["LastSyncConfig"] = self.lastSyncConfig!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.registerDatasourceId != nil {
            map["RegisterDatasourceId"] = self.registerDatasourceId!
        }
        if self.registerTable != nil {
            map["RegisterTable"] = self.registerTable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncOnlineTable != nil {
            map["SyncOnlineTable"] = self.syncOnlineTable!
        }
        if self.TTL != nil {
            map["TTL"] = self.TTL!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.writeMethod != nil {
            map["WriteMethod"] = self.writeMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("FeatureEntityId") {
            self.featureEntityId = dict["FeatureEntityId"] as! String
        }
        if dict.keys.contains("FeatureEntityName") {
            self.featureEntityName = dict["FeatureEntityName"] as! String
        }
        if dict.keys.contains("FeatureViewId") {
            self.featureViewId = dict["FeatureViewId"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [GetProjectFeatureViewResponseBody.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = GetProjectFeatureViewResponseBody.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("GmtSyncTime") {
            self.gmtSyncTime = dict["GmtSyncTime"] as! String
        }
        if dict.keys.contains("JoinId") {
            self.joinId = dict["JoinId"] as! String
        }
        if dict.keys.contains("LastSyncConfig") {
            self.lastSyncConfig = dict["LastSyncConfig"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RegisterDatasourceId") {
            self.registerDatasourceId = dict["RegisterDatasourceId"] as! String
        }
        if dict.keys.contains("RegisterTable") {
            self.registerTable = dict["RegisterTable"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncOnlineTable") {
            self.syncOnlineTable = dict["SyncOnlineTable"] as! Bool
        }
        if dict.keys.contains("TTL") {
            self.TTL = dict["TTL"] as! Int32
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("WriteMethod") {
            self.writeMethod = dict["WriteMethod"] as! String
        }
    }
}

public class GetProjectFeatureViewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectFeatureViewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetProjectFeatureViewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectModelFeatureResponseBody : Tea.TeaModel {
    public class Features : Tea.TeaModel {
        public var aliasName: String?

        public var featureViewId: String?

        public var featureViewName: String?

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
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.featureViewId != nil {
                map["FeatureViewId"] = self.featureViewId!
            }
            if self.featureViewName != nil {
                map["FeatureViewName"] = self.featureViewName!
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
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("FeatureViewId") {
                self.featureViewId = dict["FeatureViewId"] as! String
            }
            if dict.keys.contains("FeatureViewName") {
                self.featureViewName = dict["FeatureViewName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var features: [GetProjectModelFeatureResponseBody.Features]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labelDatasourceId: String?

    public var labelDatasourceTable: String?

    public var labelEventTime: String?

    public var labelTableId: String?

    public var modelFeatureId: String?

    public var name: String?

    public var owner: String?

    public var projectId: String?

    public var projectName: String?

    public var requestId: String?

    public var trainingSetFGTable: String?

    public var trainingSetTable: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.features != nil {
            var tmp : [Any] = []
            for k in self.features! {
                tmp.append(k.toMap())
            }
            map["Features"] = tmp
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labelDatasourceId != nil {
            map["LabelDatasourceId"] = self.labelDatasourceId!
        }
        if self.labelDatasourceTable != nil {
            map["LabelDatasourceTable"] = self.labelDatasourceTable!
        }
        if self.labelEventTime != nil {
            map["LabelEventTime"] = self.labelEventTime!
        }
        if self.labelTableId != nil {
            map["LabelTableId"] = self.labelTableId!
        }
        if self.modelFeatureId != nil {
            map["ModelFeatureId"] = self.modelFeatureId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trainingSetFGTable != nil {
            map["TrainingSetFGTable"] = self.trainingSetFGTable!
        }
        if self.trainingSetTable != nil {
            map["TrainingSetTable"] = self.trainingSetTable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Features") {
            var tmp : [GetProjectModelFeatureResponseBody.Features] = []
            for v in dict["Features"] as! [Any] {
                var model = GetProjectModelFeatureResponseBody.Features()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.features = tmp
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("LabelDatasourceId") {
            self.labelDatasourceId = dict["LabelDatasourceId"] as! String
        }
        if dict.keys.contains("LabelDatasourceTable") {
            self.labelDatasourceTable = dict["LabelDatasourceTable"] as! String
        }
        if dict.keys.contains("LabelEventTime") {
            self.labelEventTime = dict["LabelEventTime"] as! String
        }
        if dict.keys.contains("LabelTableId") {
            self.labelTableId = dict["LabelTableId"] as! String
        }
        if dict.keys.contains("ModelFeatureId") {
            self.modelFeatureId = dict["ModelFeatureId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrainingSetFGTable") {
            self.trainingSetFGTable = dict["TrainingSetFGTable"] as! String
        }
        if dict.keys.contains("TrainingSetTable") {
            self.trainingSetTable = dict["TrainingSetTable"] as! String
        }
    }
}

public class GetProjectModelFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectModelFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetProjectModelFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceIdentityRoleResponseBody : Tea.TeaModel {
    public var policy: String?

    public var requestId: String?

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
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class GetServiceIdentityRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceIdentityRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetServiceIdentityRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public var config: String?

    public var gmtCreateTime: String?

    public var gmtExecutedTime: String?

    public var gmtFinishedTime: String?

    public var gmtModifiedTime: String?

    public var objectId: String?

    public var objectType: String?

    public var projectId: String?

    public var projectName: String?

    public var requestId: String?

    public var runningConfig: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtExecutedTime != nil {
            map["GmtExecutedTime"] = self.gmtExecutedTime!
        }
        if self.gmtFinishedTime != nil {
            map["GmtFinishedTime"] = self.gmtFinishedTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.runningConfig != nil {
            map["RunningConfig"] = self.runningConfig!
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
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtExecutedTime") {
            self.gmtExecutedTime = dict["GmtExecutedTime"] as! String
        }
        if dict.keys.contains("GmtFinishedTime") {
            self.gmtFinishedTime = dict["GmtFinishedTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunningConfig") {
            self.runningConfig = dict["RunningConfig"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatasourceTablesRequest : Tea.TeaModel {
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
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class ListDatasourceTablesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tables: [String]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tables != nil {
            map["Tables"] = self.tables!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tables") {
            self.tables = dict["Tables"] as! [String]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatasourceTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasourceTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatasourceTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatasourcesRequest : Tea.TeaModel {
    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var type: String?

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
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListDatasourcesResponseBody : Tea.TeaModel {
    public class Datasources : Tea.TeaModel {
        public var config: String?

        public var datasourceId: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var name: String?

        public var type: String?

        public var uri: String?

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
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.datasourceId != nil {
                map["DatasourceId"] = self.datasourceId!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("DatasourceId") {
                self.datasourceId = dict["DatasourceId"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var datasources: [ListDatasourcesResponseBody.Datasources]?

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
        if self.datasources != nil {
            var tmp : [Any] = []
            for k in self.datasources! {
                tmp.append(k.toMap())
            }
            map["Datasources"] = tmp
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
        if dict.keys.contains("Datasources") {
            var tmp : [ListDatasourcesResponseBody.Datasources] = []
            for v in dict["Datasources"] as! [Any] {
                var model = ListDatasourcesResponseBody.Datasources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datasources = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatasourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatasourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFeatureEntitiesRequest : Tea.TeaModel {
    public var featureEntityIds: [String]?

    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureEntityIds != nil {
            map["FeatureEntityIds"] = self.featureEntityIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureEntityIds") {
            self.featureEntityIds = dict["FeatureEntityIds"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListFeatureEntitiesShrinkRequest : Tea.TeaModel {
    public var featureEntityIdsShrink: String?

    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureEntityIdsShrink != nil {
            map["FeatureEntityIds"] = self.featureEntityIdsShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureEntityIds") {
            self.featureEntityIdsShrink = dict["FeatureEntityIds"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListFeatureEntitiesResponseBody : Tea.TeaModel {
    public class FeatureEntities : Tea.TeaModel {
        public var featureEntityId: String?

        public var gmtCreateTime: String?

        public var joinId: String?

        public var name: String?

        public var owner: String?

        public var projectId: String?

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
            if self.featureEntityId != nil {
                map["FeatureEntityId"] = self.featureEntityId!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.joinId != nil {
                map["JoinId"] = self.joinId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FeatureEntityId") {
                self.featureEntityId = dict["FeatureEntityId"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("JoinId") {
                self.joinId = dict["JoinId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
        }
    }
    public var featureEntities: [ListFeatureEntitiesResponseBody.FeatureEntities]?

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
        if self.featureEntities != nil {
            var tmp : [Any] = []
            for k in self.featureEntities! {
                tmp.append(k.toMap())
            }
            map["FeatureEntities"] = tmp
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
        if dict.keys.contains("FeatureEntities") {
            var tmp : [ListFeatureEntitiesResponseBody.FeatureEntities] = []
            for v in dict["FeatureEntities"] as! [Any] {
                var model = ListFeatureEntitiesResponseBody.FeatureEntities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.featureEntities = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListFeatureEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureEntitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFeatureEntitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFeatureViewFieldRelationshipsResponseBody : Tea.TeaModel {
    public class Relationships : Tea.TeaModel {
        public class Models : Tea.TeaModel {
            public var modelId: String?

            public var modelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ModelId") {
                    self.modelId = dict["ModelId"] as! String
                }
                if dict.keys.contains("ModelName") {
                    self.modelName = dict["ModelName"] as! String
                }
            }
        }
        public var featureName: String?

        public var models: [ListFeatureViewFieldRelationshipsResponseBody.Relationships.Models]?

        public var offlineTableName: String?

        public var onlineTableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.models != nil {
                var tmp : [Any] = []
                for k in self.models! {
                    tmp.append(k.toMap())
                }
                map["Models"] = tmp
            }
            if self.offlineTableName != nil {
                map["OfflineTableName"] = self.offlineTableName!
            }
            if self.onlineTableName != nil {
                map["OnlineTableName"] = self.onlineTableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FeatureName") {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("Models") {
                var tmp : [ListFeatureViewFieldRelationshipsResponseBody.Relationships.Models] = []
                for v in dict["Models"] as! [Any] {
                    var model = ListFeatureViewFieldRelationshipsResponseBody.Relationships.Models()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.models = tmp
            }
            if dict.keys.contains("OfflineTableName") {
                self.offlineTableName = dict["OfflineTableName"] as! String
            }
            if dict.keys.contains("OnlineTableName") {
                self.onlineTableName = dict["OnlineTableName"] as! String
            }
        }
    }
    public var relationships: [ListFeatureViewFieldRelationshipsResponseBody.Relationships]?

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
        if self.relationships != nil {
            var tmp : [Any] = []
            for k in self.relationships! {
                tmp.append(k.toMap())
            }
            map["Relationships"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Relationships") {
            var tmp : [ListFeatureViewFieldRelationshipsResponseBody.Relationships] = []
            for v in dict["Relationships"] as! [Any] {
                var model = ListFeatureViewFieldRelationshipsResponseBody.Relationships()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.relationships = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFeatureViewFieldRelationshipsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureViewFieldRelationshipsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFeatureViewFieldRelationshipsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFeatureViewOnlineFeaturesRequest : Tea.TeaModel {
    public var joinIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.joinIds != nil {
            map["JoinIds"] = self.joinIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinIds") {
            self.joinIds = dict["JoinIds"] as! [String]
        }
    }
}

public class ListFeatureViewOnlineFeaturesShrinkRequest : Tea.TeaModel {
    public var joinIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.joinIdsShrink != nil {
            map["JoinIds"] = self.joinIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinIds") {
            self.joinIdsShrink = dict["JoinIds"] as! String
        }
    }
}

public class ListFeatureViewOnlineFeaturesResponseBody : Tea.TeaModel {
    public var onlineFeatures: [String]?

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
        if self.onlineFeatures != nil {
            map["OnlineFeatures"] = self.onlineFeatures!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OnlineFeatures") {
            self.onlineFeatures = dict["OnlineFeatures"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFeatureViewOnlineFeaturesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureViewOnlineFeaturesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFeatureViewOnlineFeaturesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFeatureViewRelationshipsResponseBody : Tea.TeaModel {
    public class Relationships : Tea.TeaModel {
        public class Models : Tea.TeaModel {
            public var modelId: String?

            public var modelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ModelId") {
                    self.modelId = dict["ModelId"] as! String
                }
                if dict.keys.contains("ModelName") {
                    self.modelName = dict["ModelName"] as! String
                }
            }
        }
        public var featureViewName: String?

        public var models: [ListFeatureViewRelationshipsResponseBody.Relationships.Models]?

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
            if self.featureViewName != nil {
                map["FeatureViewName"] = self.featureViewName!
            }
            if self.models != nil {
                var tmp : [Any] = []
                for k in self.models! {
                    tmp.append(k.toMap())
                }
                map["Models"] = tmp
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FeatureViewName") {
                self.featureViewName = dict["FeatureViewName"] as! String
            }
            if dict.keys.contains("Models") {
                var tmp : [ListFeatureViewRelationshipsResponseBody.Relationships.Models] = []
                for v in dict["Models"] as! [Any] {
                    var model = ListFeatureViewRelationshipsResponseBody.Relationships.Models()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.models = tmp
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
        }
    }
    public var relationships: [ListFeatureViewRelationshipsResponseBody.Relationships]?

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
        if self.relationships != nil {
            var tmp : [Any] = []
            for k in self.relationships! {
                tmp.append(k.toMap())
            }
            map["Relationships"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Relationships") {
            var tmp : [ListFeatureViewRelationshipsResponseBody.Relationships] = []
            for v in dict["Relationships"] as! [Any] {
                var model = ListFeatureViewRelationshipsResponseBody.Relationships()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.relationships = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFeatureViewRelationshipsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureViewRelationshipsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFeatureViewRelationshipsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFeatureViewsRequest : Tea.TeaModel {
    public var featureName: String?

    public var featureViewIds: [String]?

    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sortBy: String?

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
        if self.featureName != nil {
            map["FeatureName"] = self.featureName!
        }
        if self.featureViewIds != nil {
            map["FeatureViewIds"] = self.featureViewIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureName") {
            self.featureName = dict["FeatureName"] as! String
        }
        if dict.keys.contains("FeatureViewIds") {
            self.featureViewIds = dict["FeatureViewIds"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListFeatureViewsShrinkRequest : Tea.TeaModel {
    public var featureName: String?

    public var featureViewIdsShrink: String?

    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sortBy: String?

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
        if self.featureName != nil {
            map["FeatureName"] = self.featureName!
        }
        if self.featureViewIdsShrink != nil {
            map["FeatureViewIds"] = self.featureViewIdsShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureName") {
            self.featureName = dict["FeatureName"] as! String
        }
        if dict.keys.contains("FeatureViewIds") {
            self.featureViewIdsShrink = dict["FeatureViewIds"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListFeatureViewsResponseBody : Tea.TeaModel {
    public class FeatureViews : Tea.TeaModel {
        public var featureEntityName: String?

        public var featureViewId: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var name: String?

        public var owner: String?

        public var projectId: String?

        public var projectName: String?

        public var registerDatasourceId: String?

        public var registerDatasourceName: String?

        public var registerTable: String?

        public var TTL: Int32?

        public var type: String?

        public var writeToFeatureDB: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.featureEntityName != nil {
                map["FeatureEntityName"] = self.featureEntityName!
            }
            if self.featureViewId != nil {
                map["FeatureViewId"] = self.featureViewId!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.registerDatasourceId != nil {
                map["RegisterDatasourceId"] = self.registerDatasourceId!
            }
            if self.registerDatasourceName != nil {
                map["RegisterDatasourceName"] = self.registerDatasourceName!
            }
            if self.registerTable != nil {
                map["RegisterTable"] = self.registerTable!
            }
            if self.TTL != nil {
                map["TTL"] = self.TTL!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.writeToFeatureDB != nil {
                map["WriteToFeatureDB"] = self.writeToFeatureDB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FeatureEntityName") {
                self.featureEntityName = dict["FeatureEntityName"] as! String
            }
            if dict.keys.contains("FeatureViewId") {
                self.featureViewId = dict["FeatureViewId"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("RegisterDatasourceId") {
                self.registerDatasourceId = dict["RegisterDatasourceId"] as! String
            }
            if dict.keys.contains("RegisterDatasourceName") {
                self.registerDatasourceName = dict["RegisterDatasourceName"] as! String
            }
            if dict.keys.contains("RegisterTable") {
                self.registerTable = dict["RegisterTable"] as! String
            }
            if dict.keys.contains("TTL") {
                self.TTL = dict["TTL"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("WriteToFeatureDB") {
                self.writeToFeatureDB = dict["WriteToFeatureDB"] as! Bool
            }
        }
    }
    public var featureViews: [ListFeatureViewsResponseBody.FeatureViews]?

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
        if self.featureViews != nil {
            var tmp : [Any] = []
            for k in self.featureViews! {
                tmp.append(k.toMap())
            }
            map["FeatureViews"] = tmp
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
        if dict.keys.contains("FeatureViews") {
            var tmp : [ListFeatureViewsResponseBody.FeatureViews] = []
            for v in dict["FeatureViews"] as! [Any] {
                var model = ListFeatureViewsResponseBody.FeatureViews()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.featureViews = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListFeatureViewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureViewsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFeatureViewsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

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
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var instanceId: String?

        public var regionId: String?

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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var instances: [ListInstancesResponseBody.Instances]?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
        if dict.keys.contains("Instances") {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLabelTablesRequest : Tea.TeaModel {
    public var labelTableIds: [String]?

    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projectId: String?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelTableIds != nil {
            map["LabelTableIds"] = self.labelTableIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelTableIds") {
            self.labelTableIds = dict["LabelTableIds"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListLabelTablesShrinkRequest : Tea.TeaModel {
    public var labelTableIdsShrink: String?

    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projectId: String?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelTableIdsShrink != nil {
            map["LabelTableIds"] = self.labelTableIdsShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelTableIds") {
            self.labelTableIdsShrink = dict["LabelTableIds"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListLabelTablesResponseBody : Tea.TeaModel {
    public class LabelTables : Tea.TeaModel {
        public var datasourceId: String?

        public var datasourceName: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var labelTableId: String?

        public var name: String?

        public var owner: String?

        public var projectId: String?

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
            if self.datasourceId != nil {
                map["DatasourceId"] = self.datasourceId!
            }
            if self.datasourceName != nil {
                map["DatasourceName"] = self.datasourceName!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.labelTableId != nil {
                map["LabelTableId"] = self.labelTableId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatasourceId") {
                self.datasourceId = dict["DatasourceId"] as! String
            }
            if dict.keys.contains("DatasourceName") {
                self.datasourceName = dict["DatasourceName"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("LabelTableId") {
                self.labelTableId = dict["LabelTableId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
        }
    }
    public var labelTables: [ListLabelTablesResponseBody.LabelTables]?

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
        if self.labelTables != nil {
            var tmp : [Any] = []
            for k in self.labelTables! {
                tmp.append(k.toMap())
            }
            map["LabelTables"] = tmp
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
        if dict.keys.contains("LabelTables") {
            var tmp : [ListLabelTablesResponseBody.LabelTables] = []
            for v in dict["LabelTables"] as! [Any] {
                var model = ListLabelTablesResponseBody.LabelTables()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labelTables = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListLabelTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLabelTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListLabelTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModelFeatureAvailableFeaturesRequest : Tea.TeaModel {
    public var featureName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureName != nil {
            map["FeatureName"] = self.featureName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureName") {
            self.featureName = dict["FeatureName"] as! String
        }
    }
}

public class ListModelFeatureAvailableFeaturesResponseBody : Tea.TeaModel {
    public class AvaliableFeatures : Tea.TeaModel {
        public var name: String?

        public var sourceName: String?

        public var sourceType: String?

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
                map["Name"] = self.name!
            }
            if self.sourceName != nil {
                map["SourceName"] = self.sourceName!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SourceName") {
                self.sourceName = dict["SourceName"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var avaliableFeatures: [ListModelFeatureAvailableFeaturesResponseBody.AvaliableFeatures]?

    public var totalCount: Int64?

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
        if self.avaliableFeatures != nil {
            var tmp : [Any] = []
            for k in self.avaliableFeatures! {
                tmp.append(k.toMap())
            }
            map["AvaliableFeatures"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvaliableFeatures") {
            var tmp : [ListModelFeatureAvailableFeaturesResponseBody.AvaliableFeatures] = []
            for v in dict["AvaliableFeatures"] as! [Any] {
                var model = ListModelFeatureAvailableFeaturesResponseBody.AvaliableFeatures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.avaliableFeatures = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListModelFeatureAvailableFeaturesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelFeatureAvailableFeaturesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModelFeatureAvailableFeaturesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModelFeaturesRequest : Tea.TeaModel {
    public var modelFeatureIds: [String]?

    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelFeatureIds != nil {
            map["ModelFeatureIds"] = self.modelFeatureIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelFeatureIds") {
            self.modelFeatureIds = dict["ModelFeatureIds"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListModelFeaturesShrinkRequest : Tea.TeaModel {
    public var modelFeatureIdsShrink: String?

    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelFeatureIdsShrink != nil {
            map["ModelFeatureIds"] = self.modelFeatureIdsShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelFeatureIds") {
            self.modelFeatureIdsShrink = dict["ModelFeatureIds"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListModelFeaturesResponseBody : Tea.TeaModel {
    public class ModelFeatures : Tea.TeaModel {
        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var labelTableName: String?

        public var modelFeatureId: String?

        public var name: String?

        public var owner: String?

        public var projectId: String?

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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.labelTableName != nil {
                map["LabelTableName"] = self.labelTableName!
            }
            if self.modelFeatureId != nil {
                map["ModelFeatureId"] = self.modelFeatureId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("LabelTableName") {
                self.labelTableName = dict["LabelTableName"] as! String
            }
            if dict.keys.contains("ModelFeatureId") {
                self.modelFeatureId = dict["ModelFeatureId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
        }
    }
    public var modelFeatures: [ListModelFeaturesResponseBody.ModelFeatures]?

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
        if self.modelFeatures != nil {
            var tmp : [Any] = []
            for k in self.modelFeatures! {
                tmp.append(k.toMap())
            }
            map["ModelFeatures"] = tmp
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
        if dict.keys.contains("ModelFeatures") {
            var tmp : [ListModelFeaturesResponseBody.ModelFeatures] = []
            for v in dict["ModelFeatures"] as! [Any] {
                var model = ListModelFeaturesResponseBody.ModelFeatures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.modelFeatures = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListModelFeaturesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelFeaturesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModelFeaturesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectFeatureViewOwnersResponseBody : Tea.TeaModel {
    public var owners: [String]?

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
        if self.owners != nil {
            map["Owners"] = self.owners!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Owners") {
            self.owners = dict["Owners"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListProjectFeatureViewOwnersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectFeatureViewOwnersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListProjectFeatureViewOwnersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectFeatureViewTagsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tags: [String]?

    public override init() {
        super.init()
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
    }
}

public class ListProjectFeatureViewTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectFeatureViewTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListProjectFeatureViewTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectFeatureViewsResponseBody : Tea.TeaModel {
    public class FeatureViews : Tea.TeaModel {
        public class Features : Tea.TeaModel {
            public var attributes: [String]?

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
                if self.attributes != nil {
                    map["Attributes"] = self.attributes!
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
                if dict.keys.contains("Attributes") {
                    self.attributes = dict["Attributes"] as! [String]
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var featureViewId: String?

        public var features: [ListProjectFeatureViewsResponseBody.FeatureViews.Features]?

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
            if self.featureViewId != nil {
                map["FeatureViewId"] = self.featureViewId!
            }
            if self.features != nil {
                var tmp : [Any] = []
                for k in self.features! {
                    tmp.append(k.toMap())
                }
                map["Features"] = tmp
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
            if dict.keys.contains("FeatureViewId") {
                self.featureViewId = dict["FeatureViewId"] as! String
            }
            if dict.keys.contains("Features") {
                var tmp : [ListProjectFeatureViewsResponseBody.FeatureViews.Features] = []
                for v in dict["Features"] as! [Any] {
                    var model = ListProjectFeatureViewsResponseBody.FeatureViews.Features()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.features = tmp
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var featureViews: [ListProjectFeatureViewsResponseBody.FeatureViews]?

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
        if self.featureViews != nil {
            var tmp : [Any] = []
            for k in self.featureViews! {
                tmp.append(k.toMap())
            }
            map["FeatureViews"] = tmp
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
        if dict.keys.contains("FeatureViews") {
            var tmp : [ListProjectFeatureViewsResponseBody.FeatureViews] = []
            for v in dict["FeatureViews"] as! [Any] {
                var model = ListProjectFeatureViewsResponseBody.FeatureViews()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.featureViews = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListProjectFeatureViewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectFeatureViewsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListProjectFeatureViewsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectIds: [String]?

    public var sortBy: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectIds != nil {
            map["ProjectIds"] = self.projectIds!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectIds") {
            self.projectIds = dict["ProjectIds"] as! [String]
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListProjectsShrinkRequest : Tea.TeaModel {
    public var name: String?

    public var order: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectIdsShrink: String?

    public var sortBy: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectIdsShrink != nil {
            map["ProjectIds"] = self.projectIdsShrink!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectIds") {
            self.projectIdsShrink = dict["ProjectIds"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public var description_: String?

        public var featureEntityCount: Int32?

        public var featureViewCount: Int32?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var modelCount: Int32?

        public var name: String?

        public var offlineDatasourceId: String?

        public var offlineDatasourceName: String?

        public var offlineDatasourceType: String?

        public var offlineLifecycle: Int32?

        public var onlineDatasourceId: String?

        public var onlineDatasourceName: String?

        public var onlineDatasourceType: String?

        public var owner: String?

        public var projectId: String?

        public override init() {
            super.init()
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
            if self.featureEntityCount != nil {
                map["FeatureEntityCount"] = self.featureEntityCount!
            }
            if self.featureViewCount != nil {
                map["FeatureViewCount"] = self.featureViewCount!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.modelCount != nil {
                map["ModelCount"] = self.modelCount!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.offlineDatasourceId != nil {
                map["OfflineDatasourceId"] = self.offlineDatasourceId!
            }
            if self.offlineDatasourceName != nil {
                map["OfflineDatasourceName"] = self.offlineDatasourceName!
            }
            if self.offlineDatasourceType != nil {
                map["OfflineDatasourceType"] = self.offlineDatasourceType!
            }
            if self.offlineLifecycle != nil {
                map["OfflineLifecycle"] = self.offlineLifecycle!
            }
            if self.onlineDatasourceId != nil {
                map["OnlineDatasourceId"] = self.onlineDatasourceId!
            }
            if self.onlineDatasourceName != nil {
                map["OnlineDatasourceName"] = self.onlineDatasourceName!
            }
            if self.onlineDatasourceType != nil {
                map["OnlineDatasourceType"] = self.onlineDatasourceType!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FeatureEntityCount") {
                self.featureEntityCount = dict["FeatureEntityCount"] as! Int32
            }
            if dict.keys.contains("FeatureViewCount") {
                self.featureViewCount = dict["FeatureViewCount"] as! Int32
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ModelCount") {
                self.modelCount = dict["ModelCount"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OfflineDatasourceId") {
                self.offlineDatasourceId = dict["OfflineDatasourceId"] as! String
            }
            if dict.keys.contains("OfflineDatasourceName") {
                self.offlineDatasourceName = dict["OfflineDatasourceName"] as! String
            }
            if dict.keys.contains("OfflineDatasourceType") {
                self.offlineDatasourceType = dict["OfflineDatasourceType"] as! String
            }
            if dict.keys.contains("OfflineLifecycle") {
                self.offlineLifecycle = dict["OfflineLifecycle"] as! Int32
            }
            if dict.keys.contains("OnlineDatasourceId") {
                self.onlineDatasourceId = dict["OnlineDatasourceId"] as! String
            }
            if dict.keys.contains("OnlineDatasourceName") {
                self.onlineDatasourceName = dict["OnlineDatasourceName"] as! String
            }
            if dict.keys.contains("OnlineDatasourceType") {
                self.onlineDatasourceType = dict["OnlineDatasourceType"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
        }
    }
    public var projects: [ListProjectsResponseBody.Projects]?

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
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["Projects"] = tmp
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
        if dict.keys.contains("Projects") {
            var tmp : [ListProjectsResponseBody.Projects] = []
            for v in dict["Projects"] as! [Any] {
                var model = ListProjectsResponseBody.Projects()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.projects = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

public class ListTaskLogsRequest : Tea.TeaModel {
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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
    }
}

public class ListTaskLogsResponseBody : Tea.TeaModel {
    public var logs: [String]?

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
        if self.logs != nil {
            map["Logs"] = self.logs!
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
        if dict.keys.contains("Logs") {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTaskLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaskLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTaskLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var objectId: String?

    public var objectType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var status: String?

    public var taskIds: [String]?

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
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskIds != nil {
            map["TaskIds"] = self.taskIds!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskIds") {
            self.taskIds = dict["TaskIds"] as! [String]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListTasksShrinkRequest : Tea.TeaModel {
    public var objectId: String?

    public var objectType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var status: String?

    public var taskIdsShrink: String?

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
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskIdsShrink != nil {
            map["TaskIds"] = self.taskIdsShrink!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskIds") {
            self.taskIdsShrink = dict["TaskIds"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var gmtCreateTime: String?

        public var gmtExecutedTime: String?

        public var gmtFinishedTime: String?

        public var objectId: String?

        public var objectType: String?

        public var projectId: String?

        public var projectName: String?

        public var status: String?

        public var taskId: String?

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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtExecutedTime != nil {
                map["GmtExecutedTime"] = self.gmtExecutedTime!
            }
            if self.gmtFinishedTime != nil {
                map["GmtFinishedTime"] = self.gmtFinishedTime!
            }
            if self.objectId != nil {
                map["ObjectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["ObjectType"] = self.objectType!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtExecutedTime") {
                self.gmtExecutedTime = dict["GmtExecutedTime"] as! String
            }
            if dict.keys.contains("GmtFinishedTime") {
                self.gmtFinishedTime = dict["GmtFinishedTime"] as! String
            }
            if dict.keys.contains("ObjectId") {
                self.objectId = dict["ObjectId"] as! String
            }
            if dict.keys.contains("ObjectType") {
                self.objectType = dict["ObjectType"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var requestId: String?

    public var tasks: [ListTasksResponseBody.Tasks]?

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
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [ListTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ListTasksResponseBody.Tasks()
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

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishFeatureViewTableRequest : Tea.TeaModel {
    public var config: String?

    public var eventTime: String?

    public var mode: String?

    public var offlineToOnline: Bool?

    public var partitions: [String: [String: Any]]?

    public override init() {
        super.init()
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
        if self.eventTime != nil {
            map["EventTime"] = self.eventTime!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.offlineToOnline != nil {
            map["OfflineToOnline"] = self.offlineToOnline!
        }
        if self.partitions != nil {
            map["Partitions"] = self.partitions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("EventTime") {
            self.eventTime = dict["EventTime"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("OfflineToOnline") {
            self.offlineToOnline = dict["OfflineToOnline"] as! Bool
        }
        if dict.keys.contains("Partitions") {
            self.partitions = dict["Partitions"] as! [String: [String: Any]]
        }
    }
}

public class PublishFeatureViewTableResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class PublishFeatureViewTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishFeatureViewTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PublishFeatureViewTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDatasourceRequest : Tea.TeaModel {
    public var config: String?

    public var name: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
        }
    }
}

public class UpdateDatasourceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateDatasourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatasourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateDatasourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLabelTableRequest : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var attributes: [String]?

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
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
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
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var datasourceId: String?

    public var fields: [UpdateLabelTableRequest.Fields]?

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
        if self.datasourceId != nil {
            map["DatasourceId"] = self.datasourceId!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasourceId") {
            self.datasourceId = dict["DatasourceId"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [UpdateLabelTableRequest.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = UpdateLabelTableRequest.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateLabelTableResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateLabelTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLabelTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateLabelTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModelFeatureRequest : Tea.TeaModel {
    public class Features : Tea.TeaModel {
        public var aliasName: String?

        public var featureViewId: String?

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
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.featureViewId != nil {
                map["FeatureViewId"] = self.featureViewId!
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
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("FeatureViewId") {
                self.featureViewId = dict["FeatureViewId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var features: [UpdateModelFeatureRequest.Features]?

    public var labelTableId: String?

    public var sequenceFeatureViewIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.features != nil {
            var tmp : [Any] = []
            for k in self.features! {
                tmp.append(k.toMap())
            }
            map["Features"] = tmp
        }
        if self.labelTableId != nil {
            map["LabelTableId"] = self.labelTableId!
        }
        if self.sequenceFeatureViewIds != nil {
            map["SequenceFeatureViewIds"] = self.sequenceFeatureViewIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Features") {
            var tmp : [UpdateModelFeatureRequest.Features] = []
            for v in dict["Features"] as! [Any] {
                var model = UpdateModelFeatureRequest.Features()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.features = tmp
        }
        if dict.keys.contains("LabelTableId") {
            self.labelTableId = dict["LabelTableId"] as! String
        }
        if dict.keys.contains("SequenceFeatureViewIds") {
            self.sequenceFeatureViewIds = dict["SequenceFeatureViewIds"] as! [String]
        }
    }
}

public class UpdateModelFeatureResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateModelFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateModelFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModelFeatureFGFeatureRequest : Tea.TeaModel {
    public class LookupFeatures : Tea.TeaModel {
        public var defaultValue: String?

        public var featureName: String?

        public var keyFeatureDomain: String?

        public var keyFeatureName: String?

        public var mapFeatureDomain: String?

        public var mapFeatureName: String?

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
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.keyFeatureDomain != nil {
                map["KeyFeatureDomain"] = self.keyFeatureDomain!
            }
            if self.keyFeatureName != nil {
                map["KeyFeatureName"] = self.keyFeatureName!
            }
            if self.mapFeatureDomain != nil {
                map["MapFeatureDomain"] = self.mapFeatureDomain!
            }
            if self.mapFeatureName != nil {
                map["MapFeatureName"] = self.mapFeatureName!
            }
            if self.valueType != nil {
                map["ValueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("FeatureName") {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("KeyFeatureDomain") {
                self.keyFeatureDomain = dict["KeyFeatureDomain"] as! String
            }
            if dict.keys.contains("KeyFeatureName") {
                self.keyFeatureName = dict["KeyFeatureName"] as! String
            }
            if dict.keys.contains("MapFeatureDomain") {
                self.mapFeatureDomain = dict["MapFeatureDomain"] as! String
            }
            if dict.keys.contains("MapFeatureName") {
                self.mapFeatureName = dict["MapFeatureName"] as! String
            }
            if dict.keys.contains("ValueType") {
                self.valueType = dict["ValueType"] as! String
            }
        }
    }
    public class RawFeatures : Tea.TeaModel {
        public var defaultValue: String?

        public var featureDomain: String?

        public var featureName: String?

        public var featureType: String?

        public var inputFeatureName: String?

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
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.featureDomain != nil {
                map["FeatureDomain"] = self.featureDomain!
            }
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.featureType != nil {
                map["FeatureType"] = self.featureType!
            }
            if self.inputFeatureName != nil {
                map["InputFeatureName"] = self.inputFeatureName!
            }
            if self.valueType != nil {
                map["ValueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("FeatureDomain") {
                self.featureDomain = dict["FeatureDomain"] as! String
            }
            if dict.keys.contains("FeatureName") {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("FeatureType") {
                self.featureType = dict["FeatureType"] as! String
            }
            if dict.keys.contains("InputFeatureName") {
                self.inputFeatureName = dict["InputFeatureName"] as! String
            }
            if dict.keys.contains("ValueType") {
                self.valueType = dict["ValueType"] as! String
            }
        }
    }
    public class SequenceFeatures : Tea.TeaModel {
        public class SubFeatures : Tea.TeaModel {
            public var defaultValue: String?

            public var featureDomain: String?

            public var featureName: String?

            public var featureType: String?

            public var inputFeatureName: String?

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
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.featureDomain != nil {
                    map["FeatureDomain"] = self.featureDomain!
                }
                if self.featureName != nil {
                    map["FeatureName"] = self.featureName!
                }
                if self.featureType != nil {
                    map["FeatureType"] = self.featureType!
                }
                if self.inputFeatureName != nil {
                    map["InputFeatureName"] = self.inputFeatureName!
                }
                if self.valueType != nil {
                    map["ValueType"] = self.valueType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultValue") {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("FeatureDomain") {
                    self.featureDomain = dict["FeatureDomain"] as! String
                }
                if dict.keys.contains("FeatureName") {
                    self.featureName = dict["FeatureName"] as! String
                }
                if dict.keys.contains("FeatureType") {
                    self.featureType = dict["FeatureType"] as! String
                }
                if dict.keys.contains("InputFeatureName") {
                    self.inputFeatureName = dict["InputFeatureName"] as! String
                }
                if dict.keys.contains("ValueType") {
                    self.valueType = dict["ValueType"] as! String
                }
            }
        }
        public var attributeDelim: String?

        public var featureName: String?

        public var sequenceDelim: String?

        public var sequenceLength: Int64?

        public var subFeatures: [UpdateModelFeatureFGFeatureRequest.SequenceFeatures.SubFeatures]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributeDelim != nil {
                map["AttributeDelim"] = self.attributeDelim!
            }
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.sequenceDelim != nil {
                map["SequenceDelim"] = self.sequenceDelim!
            }
            if self.sequenceLength != nil {
                map["SequenceLength"] = self.sequenceLength!
            }
            if self.subFeatures != nil {
                var tmp : [Any] = []
                for k in self.subFeatures! {
                    tmp.append(k.toMap())
                }
                map["SubFeatures"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttributeDelim") {
                self.attributeDelim = dict["AttributeDelim"] as! String
            }
            if dict.keys.contains("FeatureName") {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("SequenceDelim") {
                self.sequenceDelim = dict["SequenceDelim"] as! String
            }
            if dict.keys.contains("SequenceLength") {
                self.sequenceLength = dict["SequenceLength"] as! Int64
            }
            if dict.keys.contains("SubFeatures") {
                var tmp : [UpdateModelFeatureFGFeatureRequest.SequenceFeatures.SubFeatures] = []
                for v in dict["SubFeatures"] as! [Any] {
                    var model = UpdateModelFeatureFGFeatureRequest.SequenceFeatures.SubFeatures()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subFeatures = tmp
            }
        }
    }
    public var lookupFeatures: [UpdateModelFeatureFGFeatureRequest.LookupFeatures]?

    public var rawFeatures: [UpdateModelFeatureFGFeatureRequest.RawFeatures]?

    public var reserves: [String]?

    public var sequenceFeatures: [UpdateModelFeatureFGFeatureRequest.SequenceFeatures]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lookupFeatures != nil {
            var tmp : [Any] = []
            for k in self.lookupFeatures! {
                tmp.append(k.toMap())
            }
            map["LookupFeatures"] = tmp
        }
        if self.rawFeatures != nil {
            var tmp : [Any] = []
            for k in self.rawFeatures! {
                tmp.append(k.toMap())
            }
            map["RawFeatures"] = tmp
        }
        if self.reserves != nil {
            map["Reserves"] = self.reserves!
        }
        if self.sequenceFeatures != nil {
            var tmp : [Any] = []
            for k in self.sequenceFeatures! {
                tmp.append(k.toMap())
            }
            map["SequenceFeatures"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LookupFeatures") {
            var tmp : [UpdateModelFeatureFGFeatureRequest.LookupFeatures] = []
            for v in dict["LookupFeatures"] as! [Any] {
                var model = UpdateModelFeatureFGFeatureRequest.LookupFeatures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.lookupFeatures = tmp
        }
        if dict.keys.contains("RawFeatures") {
            var tmp : [UpdateModelFeatureFGFeatureRequest.RawFeatures] = []
            for v in dict["RawFeatures"] as! [Any] {
                var model = UpdateModelFeatureFGFeatureRequest.RawFeatures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rawFeatures = tmp
        }
        if dict.keys.contains("Reserves") {
            self.reserves = dict["Reserves"] as! [String]
        }
        if dict.keys.contains("SequenceFeatures") {
            var tmp : [UpdateModelFeatureFGFeatureRequest.SequenceFeatures] = []
            for v in dict["SequenceFeatures"] as! [Any] {
                var model = UpdateModelFeatureFGFeatureRequest.SequenceFeatures()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sequenceFeatures = tmp
        }
    }
}

public class UpdateModelFeatureFGFeatureResponseBody : Tea.TeaModel {
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

public class UpdateModelFeatureFGFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelFeatureFGFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateModelFeatureFGFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModelFeatureFGInfoRequest : Tea.TeaModel {
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
            map["Content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
    }
}

public class UpdateModelFeatureFGInfoResponseBody : Tea.TeaModel {
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

public class UpdateModelFeatureFGInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelFeatureFGInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateModelFeatureFGInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var description_: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class WriteFeatureViewTableRequest : Tea.TeaModel {
    public class UrlDatasource : Tea.TeaModel {
        public var delimiter: String?

        public var omitHeader: Bool?

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
            if self.delimiter != nil {
                map["Delimiter"] = self.delimiter!
            }
            if self.omitHeader != nil {
                map["OmitHeader"] = self.omitHeader!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Delimiter") {
                self.delimiter = dict["Delimiter"] as! String
            }
            if dict.keys.contains("OmitHeader") {
                self.omitHeader = dict["OmitHeader"] as! Bool
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public var mode: String?

    public var partitions: [String: [String: Any]]?

    public var urlDatasource: WriteFeatureViewTableRequest.UrlDatasource?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.urlDatasource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.partitions != nil {
            map["Partitions"] = self.partitions!
        }
        if self.urlDatasource != nil {
            map["UrlDatasource"] = self.urlDatasource?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Partitions") {
            self.partitions = dict["Partitions"] as! [String: [String: Any]]
        }
        if dict.keys.contains("UrlDatasource") {
            var model = WriteFeatureViewTableRequest.UrlDatasource()
            model.fromMap(dict["UrlDatasource"] as! [String: Any])
            self.urlDatasource = model
        }
    }
}

public class WriteFeatureViewTableResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class WriteFeatureViewTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WriteFeatureViewTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = WriteFeatureViewTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class WriteProjectFeatureEntityHotIdsRequest : Tea.TeaModel {
    public var hotIds: String?

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
        if self.hotIds != nil {
            map["HotIds"] = self.hotIds!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HotIds") {
            self.hotIds = dict["HotIds"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class WriteProjectFeatureEntityHotIdsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class WriteProjectFeatureEntityHotIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WriteProjectFeatureEntityHotIdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = WriteProjectFeatureEntityHotIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
