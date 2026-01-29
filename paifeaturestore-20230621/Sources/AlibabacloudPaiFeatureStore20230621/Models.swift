import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class FeatureViewConfigValue : Tea.TeaModel {
    public class Snapshot : Tea.TeaModel {
        public var partitions: [String: FeatureViewConfigValueSnapshotPartitionsValue]?

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
            if self.partitions != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.partitions! {
                    tmp[k] = v.toMap()
                }
                map["Partitions"] = tmp
            }
            if self.table != nil {
                map["Table"] = self.table!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Partitions"] as? [String: Any?] {
                var tmp : [String: FeatureViewConfigValueSnapshotPartitionsValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = FeatureViewConfigValueSnapshotPartitionsValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.partitions = tmp
            }
            if let value = dict["Table"] as? String {
                self.table = value
            }
        }
    }
    public var partitions: [String: FeatureViewConfigValuePartitionsValue]?

    public var eventTime: String?

    public var equal: Bool?

    public var useMock: Bool?

    public var snapshot: FeatureViewConfigValue.Snapshot?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.snapshot?.validate()
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
        if self.useMock != nil {
            map["UseMock"] = self.useMock!
        }
        if self.snapshot != nil {
            map["Snapshot"] = self.snapshot?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Partitions"] as? [String: Any?] {
            var tmp : [String: FeatureViewConfigValuePartitionsValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = FeatureViewConfigValuePartitionsValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.partitions = tmp
        }
        if let value = dict["EventTime"] as? String {
            self.eventTime = value
        }
        if let value = dict["Equal"] as? Bool {
            self.equal = value
        }
        if let value = dict["UseMock"] as? Bool {
            self.useMock = value
        }
        if let value = dict["Snapshot"] as? [String: Any?] {
            var model = FeatureViewConfigValue.Snapshot()
            model.fromMap(value)
            self.snapshot = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
        if let value = dict["StartValue"] as? String {
            self.startValue = value
        }
        if let value = dict["EndValue"] as? String {
            self.endValue = value
        }
    }
}

public class FeatureViewConfigValueSnapshotPartitionsValue : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
        if let value = dict["StartValue"] as? String {
            self.startValue = value
        }
        if let value = dict["EndValue"] as? String {
            self.endValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckInstanceDatasourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckModelFeatureFGFeatureResponseBody : Tea.TeaModel {
    public class FGCheckResults : Tea.TeaModel {
        public var message: String?

        public var ruleCode: String?

        public var status: Bool?

        public override init() {
            super.init()
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
            if self.ruleCode != nil {
                map["RuleCode"] = self.ruleCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["RuleCode"] as? String {
                self.ruleCode = value
            }
            if let value = dict["Status"] as? Bool {
                self.status = value
            }
        }
    }
    public var FGCheckResults: [CheckModelFeatureFGFeatureResponseBody.FGCheckResults]?

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
        if self.FGCheckResults != nil {
            var tmp : [Any] = []
            for k in self.FGCheckResults! {
                tmp.append(k.toMap())
            }
            map["FGCheckResults"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FGCheckResults"] as? [Any?] {
            var tmp : [CheckModelFeatureFGFeatureResponseBody.FGCheckResults] = []
            for v in value {
                if v != nil {
                    var model = CheckModelFeatureFGFeatureResponseBody.FGCheckResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.FGCheckResults = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckModelFeatureFGFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckModelFeatureFGFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckModelFeatureFGFeatureResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasourceId"] as? String {
            self.datasourceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDatasourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFeatureEntityRequest : Tea.TeaModel {
    public var joinId: String?

    public var name: String?

    public var parentFeatureEntityId: String?

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
        if self.parentFeatureEntityId != nil {
            map["ParentFeatureEntityId"] = self.parentFeatureEntityId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JoinId"] as? String {
            self.joinId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParentFeatureEntityId"] as? String {
            self.parentFeatureEntityId = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureEntityId"] as? String {
            self.featureEntityId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFeatureEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFeatureViewRequest : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public class Transform : Tea.TeaModel {
            public class Input : Tea.TeaModel {
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
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var input: [CreateFeatureViewRequest.Fields.Transform.Input]?

            public var LLMConfigId: Int32?

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
                if self.input != nil {
                    var tmp : [Any] = []
                    for k in self.input! {
                        tmp.append(k.toMap())
                    }
                    map["Input"] = tmp
                }
                if self.LLMConfigId != nil {
                    map["LLMConfigId"] = self.LLMConfigId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Input"] as? [Any?] {
                    var tmp : [CreateFeatureViewRequest.Fields.Transform.Input] = []
                    for v in value {
                        if v != nil {
                            var model = CreateFeatureViewRequest.Fields.Transform.Input()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.input = tmp
                }
                if let value = dict["LLMConfigId"] as? Int32 {
                    self.LLMConfigId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var attributes: [String]?

        public var name: String?

        public var transform: [CreateFeatureViewRequest.Fields.Transform]?

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
            if self.transform != nil {
                var tmp : [Any] = []
                for k in self.transform! {
                    tmp.append(k.toMap())
                }
                map["Transform"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String] {
                self.attributes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Transform"] as? [Any?] {
                var tmp : [CreateFeatureViewRequest.Fields.Transform] = []
                for v in value {
                    if v != nil {
                        var model = CreateFeatureViewRequest.Fields.Transform()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.transform = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["FeatureEntityId"] as? String {
            self.featureEntityId = value
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [CreateFeatureViewRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = CreateFeatureViewRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["RegisterDatasourceId"] as? String {
            self.registerDatasourceId = value
        }
        if let value = dict["RegisterTable"] as? String {
            self.registerTable = value
        }
        if let value = dict["SyncOnlineTable"] as? Bool {
            self.syncOnlineTable = value
        }
        if let value = dict["TTL"] as? Int32 {
            self.TTL = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["WriteMethod"] as? String {
            self.writeMethod = value
        }
        if let value = dict["WriteToFeatureDB"] as? Bool {
            self.writeToFeatureDB = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureViewId"] as? String {
            self.featureViewId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFeatureViewResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLLMConfigRequest : Tea.TeaModel {
    public var apiKey: String?

    public var baseUrl: String?

    public var batchSize: Int32?

    public var embeddingDimension: Int32?

    public var maxTokens: Int32?

    public var model: String?

    public var name: String?

    public var rps: Int32?

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
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.baseUrl != nil {
            map["BaseUrl"] = self.baseUrl!
        }
        if self.batchSize != nil {
            map["BatchSize"] = self.batchSize!
        }
        if self.embeddingDimension != nil {
            map["EmbeddingDimension"] = self.embeddingDimension!
        }
        if self.maxTokens != nil {
            map["MaxTokens"] = self.maxTokens!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.rps != nil {
            map["Rps"] = self.rps!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["BaseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["BatchSize"] as? Int32 {
            self.batchSize = value
        }
        if let value = dict["EmbeddingDimension"] as? Int32 {
            self.embeddingDimension = value
        }
        if let value = dict["MaxTokens"] as? Int32 {
            self.maxTokens = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Rps"] as? Int32 {
            self.rps = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateLLMConfigResponseBody : Tea.TeaModel {
    public var LLMConfigId: String?

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
        if self.LLMConfigId != nil {
            map["LLMConfigId"] = self.LLMConfigId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LLMConfigId"] as? String {
            self.LLMConfigId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLLMConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLLMConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLLMConfigResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String] {
                self.attributes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasourceId"] as? String {
            self.datasourceId = value
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [CreateLabelTableRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = CreateLabelTableRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelTableId"] as? String {
            self.labelTableId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLabelTableResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["FeatureViewId"] as? String {
                self.featureViewId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var features: [CreateModelFeatureRequest.Features]?

    public var labelPriorityLevel: Int64?

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
        if self.labelPriorityLevel != nil {
            map["LabelPriorityLevel"] = self.labelPriorityLevel!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Features"] as? [Any?] {
            var tmp : [CreateModelFeatureRequest.Features] = []
            for v in value {
                if v != nil {
                    var model = CreateModelFeatureRequest.Features()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.features = tmp
        }
        if let value = dict["LabelPriorityLevel"] as? Int64 {
            self.labelPriorityLevel = value
        }
        if let value = dict["LabelTableId"] as? String {
            self.labelTableId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SequenceFeatureViewIds"] as? [String] {
            self.sequenceFeatureViewIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelFeatureId"] as? String {
            self.modelFeatureId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateModelFeatureResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OfflineDatasourceId"] as? String {
            self.offlineDatasourceId = value
        }
        if let value = dict["OfflineLifeCycle"] as? Int32 {
            self.offlineLifeCycle = value
        }
        if let value = dict["OnlineDatasourceId"] as? String {
            self.onlineDatasourceId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateProjectResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceIdentityRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDatasourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFeatureEntityResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFeatureViewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLLMConfigResponseBody : Tea.TeaModel {
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

public class DeleteLLMConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLLMConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteLLMConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteLabelTableResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteModelFeatureResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteProjectResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EventTime"] as? String {
                self.eventTime = value
            }
            if let value = dict["Partitions"] as? [String: [String: Any]] {
                self.partitions = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Partitions"] as? [String: [String: Any]] {
                self.partitions = value
            }
        }
    }
    public var featureViewConfig: [String: FeatureViewConfigValue]?

    public var labelInputConfig: ExportModelFeatureTrainingSetTableRequest.LabelInputConfig?

    public var realTimeIterateInterval: Int64?

    public var realTimePartitionCountValue: Int64?

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
        if self.realTimeIterateInterval != nil {
            map["RealTimeIterateInterval"] = self.realTimeIterateInterval!
        }
        if self.realTimePartitionCountValue != nil {
            map["RealTimePartitionCountValue"] = self.realTimePartitionCountValue!
        }
        if self.trainingSetConfig != nil {
            map["TrainingSetConfig"] = self.trainingSetConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureViewConfig"] as? [String: Any?] {
            var tmp : [String: FeatureViewConfigValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = FeatureViewConfigValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.featureViewConfig = tmp
        }
        if let value = dict["LabelInputConfig"] as? [String: Any?] {
            var model = ExportModelFeatureTrainingSetTableRequest.LabelInputConfig()
            model.fromMap(value)
            self.labelInputConfig = model
        }
        if let value = dict["RealTimeIterateInterval"] as? Int64 {
            self.realTimeIterateInterval = value
        }
        if let value = dict["RealTimePartitionCountValue"] as? Int64 {
            self.realTimePartitionCountValue = value
        }
        if let value = dict["TrainingSetConfig"] as? [String: Any?] {
            var model = ExportModelFeatureTrainingSetTableRequest.TrainingSetConfig()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExportModelFeatureTrainingSetTableResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DatasourceId"] as? String {
            self.datasourceId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDatasourceResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String] {
                self.attributes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [GetDatasourceTableResponseBody.Fields] = []
            for v in value {
                if v != nil {
                    var model = GetDatasourceTableResponseBody.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDatasourceTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFeatureEntityResponseBody : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var joinId: String?

    public var name: String?

    public var owner: String?

    public var parentFeatureEntityId: String?

    public var parentFeatureEntityName: String?

    public var parentJoinId: String?

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
        if self.parentFeatureEntityId != nil {
            map["ParentFeatureEntityId"] = self.parentFeatureEntityId!
        }
        if self.parentFeatureEntityName != nil {
            map["ParentFeatureEntityName"] = self.parentFeatureEntityName!
        }
        if self.parentJoinId != nil {
            map["ParentJoinId"] = self.parentJoinId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["JoinId"] as? String {
            self.joinId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ParentFeatureEntityId"] as? String {
            self.parentFeatureEntityId = value
        }
        if let value = dict["ParentFeatureEntityName"] as? String {
            self.parentFeatureEntityName = value
        }
        if let value = dict["ParentJoinId"] as? String {
            self.parentJoinId = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFeatureEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFeatureViewResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public class Transform : Tea.TeaModel {
            public class Input : Tea.TeaModel {
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
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var input: [GetFeatureViewResponseBody.Fields.Transform.Input]?

            public var LLMConfigId: Int32?

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
                if self.input != nil {
                    var tmp : [Any] = []
                    for k in self.input! {
                        tmp.append(k.toMap())
                    }
                    map["Input"] = tmp
                }
                if self.LLMConfigId != nil {
                    map["LLMConfigId"] = self.LLMConfigId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Input"] as? [Any?] {
                    var tmp : [GetFeatureViewResponseBody.Fields.Transform.Input] = []
                    for v in value {
                        if v != nil {
                            var model = GetFeatureViewResponseBody.Fields.Transform.Input()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.input = tmp
                }
                if let value = dict["LLMConfigId"] as? Int32 {
                    self.LLMConfigId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var attributes: [String]?

        public var name: String?

        public var transform: [GetFeatureViewResponseBody.Fields.Transform]?

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
            if self.transform != nil {
                var tmp : [Any] = []
                for k in self.transform! {
                    tmp.append(k.toMap())
                }
                map["Transform"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String] {
                self.attributes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Transform"] as? [Any?] {
                var tmp : [GetFeatureViewResponseBody.Fields.Transform] = []
                for v in value {
                    if v != nil {
                        var model = GetFeatureViewResponseBody.Fields.Transform()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.transform = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public var mockTableName: String?

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
        if self.mockTableName != nil {
            map["MockTableName"] = self.mockTableName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["FeatureEntityId"] as? String {
            self.featureEntityId = value
        }
        if let value = dict["FeatureEntityName"] as? String {
            self.featureEntityName = value
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [GetFeatureViewResponseBody.Fields] = []
            for v in value {
                if v != nil {
                    var model = GetFeatureViewResponseBody.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["GmtSyncTime"] as? String {
            self.gmtSyncTime = value
        }
        if let value = dict["JoinId"] as? String {
            self.joinId = value
        }
        if let value = dict["LastSyncConfig"] as? String {
            self.lastSyncConfig = value
        }
        if let value = dict["MockTableName"] as? String {
            self.mockTableName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["PublishTableScript"] as? String {
            self.publishTableScript = value
        }
        if let value = dict["RegisterDatasourceId"] as? String {
            self.registerDatasourceId = value
        }
        if let value = dict["RegisterDatasourceName"] as? String {
            self.registerDatasourceName = value
        }
        if let value = dict["RegisterTable"] as? String {
            self.registerTable = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SyncOnlineTable"] as? Bool {
            self.syncOnlineTable = value
        }
        if let value = dict["TTL"] as? Int32 {
            self.TTL = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["WriteMethod"] as? String {
            self.writeMethod = value
        }
        if let value = dict["WriteToFeatureDB"] as? Bool {
            self.writeToFeatureDB = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFeatureViewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class FeatureDBInfo : Tea.TeaModel {
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
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class FeatureDBInstanceInfo : Tea.TeaModel {
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
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var featureDBInfo: GetInstanceResponseBody.FeatureDBInfo?

    public var featureDBInstanceInfo: GetInstanceResponseBody.FeatureDBInstanceInfo?

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
        try self.featureDBInfo?.validate()
        try self.featureDBInstanceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureDBInfo != nil {
            map["FeatureDBInfo"] = self.featureDBInfo?.toMap()
        }
        if self.featureDBInstanceInfo != nil {
            map["FeatureDBInstanceInfo"] = self.featureDBInstanceInfo?.toMap()
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureDBInfo"] as? [String: Any?] {
            var model = GetInstanceResponseBody.FeatureDBInfo()
            model.fromMap(value)
            self.featureDBInfo = model
        }
        if let value = dict["FeatureDBInstanceInfo"] as? [String: Any?] {
            var model = GetInstanceResponseBody.FeatureDBInstanceInfo()
            model.fromMap(value)
            self.featureDBInstanceInfo = model
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Progress"] as? Double {
            self.progress = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLLMConfigResponseBody : Tea.TeaModel {
    public var apiKey: String?

    public var baseUrl: String?

    public var batchSize: Int32?

    public var embeddingDimension: Int32?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var LLMConfigId: String?

    public var maxTokens: Int32?

    public var model: String?

    public var name: String?

    public var requestId: String?

    public var rps: Int32?

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
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.baseUrl != nil {
            map["BaseUrl"] = self.baseUrl!
        }
        if self.batchSize != nil {
            map["BatchSize"] = self.batchSize!
        }
        if self.embeddingDimension != nil {
            map["EmbeddingDimension"] = self.embeddingDimension!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.LLMConfigId != nil {
            map["LLMConfigId"] = self.LLMConfigId!
        }
        if self.maxTokens != nil {
            map["MaxTokens"] = self.maxTokens!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rps != nil {
            map["Rps"] = self.rps!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["BaseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["BatchSize"] as? Int32 {
            self.batchSize = value
        }
        if let value = dict["EmbeddingDimension"] as? Int32 {
            self.embeddingDimension = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["LLMConfigId"] as? String {
            self.LLMConfigId = value
        }
        if let value = dict["MaxTokens"] as? Int32 {
            self.maxTokens = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rps"] as? Int32 {
            self.rps = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetLLMConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLLMConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLLMConfigResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String] {
                self.attributes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasourceId"] as? String {
            self.datasourceId = value
        }
        if let value = dict["DatasourceName"] as? String {
            self.datasourceName = value
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [GetLabelTableResponseBody.Fields] = []
            for v in value {
                if v != nil {
                    var model = GetLabelTableResponseBody.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RelatedModelFeatures"] as? [String] {
            self.relatedModelFeatures = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLabelTableResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["FeatureViewId"] as? String {
                self.featureViewId = value
            }
            if let value = dict["FeatureViewName"] as? String {
                self.featureViewName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainType"] as? String {
                    self.domainType = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["From"] as? String {
                    self.from = value
                }
                if let value = dict["Link"] as? String {
                    self.link = value
                }
                if let value = dict["To"] as? String {
                    self.to = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domains"] as? [Any?] {
                var tmp : [GetModelFeatureResponseBody.Relations.Domains] = []
                for v in value {
                    if v != nil {
                        var model = GetModelFeatureResponseBody.Relations.Domains()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domains = tmp
            }
            if let value = dict["Links"] as? [Any?] {
                var tmp : [GetModelFeatureResponseBody.Relations.Links] = []
                for v in value {
                    if v != nil {
                        var model = GetModelFeatureResponseBody.Relations.Links()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.links = tmp
            }
        }
    }
    public var exportTrainingSetTableScript: String?

    public var features: [GetModelFeatureResponseBody.Features]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labelPriorityLevel: Int64?

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
        if self.labelPriorityLevel != nil {
            map["LabelPriorityLevel"] = self.labelPriorityLevel!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportTrainingSetTableScript"] as? String {
            self.exportTrainingSetTableScript = value
        }
        if let value = dict["Features"] as? [Any?] {
            var tmp : [GetModelFeatureResponseBody.Features] = []
            for v in value {
                if v != nil {
                    var model = GetModelFeatureResponseBody.Features()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.features = tmp
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["LabelPriorityLevel"] as? Int64 {
            self.labelPriorityLevel = value
        }
        if let value = dict["LabelTableId"] as? String {
            self.labelTableId = value
        }
        if let value = dict["LabelTableName"] as? String {
            self.labelTableName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Relations"] as? [String: Any?] {
            var model = GetModelFeatureResponseBody.Relations()
            model.fromMap(value)
            self.relations = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrainingSetFGTable"] as? String {
            self.trainingSetFGTable = value
        }
        if let value = dict["TrainingSetTable"] as? String {
            self.trainingSetTable = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetModelFeatureResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["KeyFeatureDomain"] as? String {
                self.keyFeatureDomain = value
            }
            if let value = dict["KeyFeatureName"] as? String {
                self.keyFeatureName = value
            }
            if let value = dict["MapFeatureDomain"] as? String {
                self.mapFeatureDomain = value
            }
            if let value = dict["MapFeatureName"] as? String {
                self.mapFeatureName = value
            }
            if let value = dict["ValueType"] as? String {
                self.valueType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["FeatureDomain"] as? String {
                self.featureDomain = value
            }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["FeatureType"] as? String {
                self.featureType = value
            }
            if let value = dict["InputFeatureName"] as? String {
                self.inputFeatureName = value
            }
            if let value = dict["ValueType"] as? String {
                self.valueType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["FeatureDomain"] as? String {
                    self.featureDomain = value
                }
                if let value = dict["FeatureName"] as? String {
                    self.featureName = value
                }
                if let value = dict["FeatureType"] as? String {
                    self.featureType = value
                }
                if let value = dict["InputFeatureName"] as? String {
                    self.inputFeatureName = value
                }
                if let value = dict["ValueType"] as? String {
                    self.valueType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttributeDelim"] as? String {
                self.attributeDelim = value
            }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["SequenceDelim"] as? String {
                self.sequenceDelim = value
            }
            if let value = dict["SequenceLength"] as? Int64 {
                self.sequenceLength = value
            }
            if let value = dict["SubFeatures"] as? [Any?] {
                var tmp : [GetModelFeatureFGFeatureResponseBody.SequenceFeatures.SubFeatures] = []
                for v in value {
                    if v != nil {
                        var model = GetModelFeatureFGFeatureResponseBody.SequenceFeatures.SubFeatures()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LookupFeatures"] as? [Any?] {
            var tmp : [GetModelFeatureFGFeatureResponseBody.LookupFeatures] = []
            for v in value {
                if v != nil {
                    var model = GetModelFeatureFGFeatureResponseBody.LookupFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.lookupFeatures = tmp
        }
        if let value = dict["RawFeatures"] as? [Any?] {
            var tmp : [GetModelFeatureFGFeatureResponseBody.RawFeatures] = []
            for v in value {
                if v != nil {
                    var model = GetModelFeatureFGFeatureResponseBody.RawFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rawFeatures = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Reserves"] as? [String] {
            self.reserves = value
        }
        if let value = dict["SequenceFeatures"] as? [Any?] {
            var tmp : [GetModelFeatureFGFeatureResponseBody.SequenceFeatures] = []
            for v in value {
                if v != nil {
                    var model = GetModelFeatureFGFeatureResponseBody.SequenceFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetModelFeatureFGFeatureResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetModelFeatureFGInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FeatureEntityCount"] as? Int32 {
            self.featureEntityCount = value
        }
        if let value = dict["FeatureViewCount"] as? Int32 {
            self.featureViewCount = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ModelCount"] as? Int32 {
            self.modelCount = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OfflineDatasourceId"] as? String {
            self.offlineDatasourceId = value
        }
        if let value = dict["OfflineDatasourceName"] as? String {
            self.offlineDatasourceName = value
        }
        if let value = dict["OfflineDatasourceType"] as? String {
            self.offlineDatasourceType = value
        }
        if let value = dict["OfflineLifecycle"] as? Int32 {
            self.offlineLifecycle = value
        }
        if let value = dict["OnlineDatasourceId"] as? String {
            self.onlineDatasourceId = value
        }
        if let value = dict["OnlineDatasourceName"] as? String {
            self.onlineDatasourceName = value
        }
        if let value = dict["OnlineDatasourceType"] as? String {
            self.onlineDatasourceType = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetProjectResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureEntityId"] as? String {
            self.featureEntityId = value
        }
        if let value = dict["JoinId"] as? String {
            self.joinId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetProjectFeatureEntityResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceIdentityRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtExecutedTime"] as? String {
            self.gmtExecutedTime = value
        }
        if let value = dict["GmtFinishedTime"] as? String {
            self.gmtFinishedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RunningConfig"] as? String {
            self.runningConfig = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatasourceFeatureViewsRequest : Tea.TeaModel {
    public var all: Bool?

    public var endDate: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var projectName: String?

    public var showStorageUsage: Bool?

    public var sortBy: String?

    public var startDate: String?

    public var type: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.showStorageUsage != nil {
            map["ShowStorageUsage"] = self.showStorageUsage!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ShowStorageUsage"] as? Bool {
            self.showStorageUsage = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
    }
}

public class ListDatasourceFeatureViewsResponseBody : Tea.TeaModel {
    public class FeatureViews : Tea.TeaModel {
        public class UsageStatistics : Tea.TeaModel {
            public class ReadWriteCount : Tea.TeaModel {
                public var date: String?

                public var readCount: Int64?

                public var writeCount: Int64?

                public override init() {
                    super.init()
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
                        map["Date"] = self.date!
                    }
                    if self.readCount != nil {
                        map["ReadCount"] = self.readCount!
                    }
                    if self.writeCount != nil {
                        map["WriteCount"] = self.writeCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Date"] as? String {
                        self.date = value
                    }
                    if let value = dict["ReadCount"] as? Int64 {
                        self.readCount = value
                    }
                    if let value = dict["WriteCount"] as? Int64 {
                        self.writeCount = value
                    }
                }
            }
            public var diskUsage: Double?

            public var memoryUsage: Double?

            public var readWriteCount: [ListDatasourceFeatureViewsResponseBody.FeatureViews.UsageStatistics.ReadWriteCount]?

            public var rowCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskUsage != nil {
                    map["DiskUsage"] = self.diskUsage!
                }
                if self.memoryUsage != nil {
                    map["MemoryUsage"] = self.memoryUsage!
                }
                if self.readWriteCount != nil {
                    var tmp : [Any] = []
                    for k in self.readWriteCount! {
                        tmp.append(k.toMap())
                    }
                    map["ReadWriteCount"] = tmp
                }
                if self.rowCount != nil {
                    map["RowCount"] = self.rowCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DiskUsage"] as? Double {
                    self.diskUsage = value
                }
                if let value = dict["MemoryUsage"] as? Double {
                    self.memoryUsage = value
                }
                if let value = dict["ReadWriteCount"] as? [Any?] {
                    var tmp : [ListDatasourceFeatureViewsResponseBody.FeatureViews.UsageStatistics.ReadWriteCount] = []
                    for v in value {
                        if v != nil {
                            var model = ListDatasourceFeatureViewsResponseBody.FeatureViews.UsageStatistics.ReadWriteCount()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.readWriteCount = tmp
                }
                if let value = dict["RowCount"] as? Int64 {
                    self.rowCount = value
                }
            }
        }
        public var config: String?

        public var featureEntityName: String?

        public var featureViewId: String?

        public var name: String?

        public var projectName: String?

        public var TTL: Int32?

        public var type: String?

        public var usageStatistics: ListDatasourceFeatureViewsResponseBody.FeatureViews.UsageStatistics?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usageStatistics?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.featureEntityName != nil {
                map["FeatureEntityName"] = self.featureEntityName!
            }
            if self.featureViewId != nil {
                map["FeatureViewId"] = self.featureViewId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.TTL != nil {
                map["TTL"] = self.TTL!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.usageStatistics != nil {
                map["UsageStatistics"] = self.usageStatistics?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["FeatureEntityName"] as? String {
                self.featureEntityName = value
            }
            if let value = dict["FeatureViewId"] as? String {
                self.featureViewId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["TTL"] as? Int32 {
                self.TTL = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UsageStatistics"] as? [String: Any?] {
                var model = ListDatasourceFeatureViewsResponseBody.FeatureViews.UsageStatistics()
                model.fromMap(value)
                self.usageStatistics = model
            }
        }
    }
    public class TotalUsageStatistics : Tea.TeaModel {
        public class TotalReadWriteCount : Tea.TeaModel {
            public var date: String?

            public var totalReadCount: Int64?

            public var totalWriteCount: Int64?

            public override init() {
                super.init()
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
                    map["Date"] = self.date!
                }
                if self.totalReadCount != nil {
                    map["TotalReadCount"] = self.totalReadCount!
                }
                if self.totalWriteCount != nil {
                    map["TotalWriteCount"] = self.totalWriteCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? String {
                    self.date = value
                }
                if let value = dict["TotalReadCount"] as? Int64 {
                    self.totalReadCount = value
                }
                if let value = dict["TotalWriteCount"] as? Int64 {
                    self.totalWriteCount = value
                }
            }
        }
        public var totalDiskUsage: Double?

        public var totalMemoryUsage: Double?

        public var totalReadWriteCount: [ListDatasourceFeatureViewsResponseBody.TotalUsageStatistics.TotalReadWriteCount]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalDiskUsage != nil {
                map["TotalDiskUsage"] = self.totalDiskUsage!
            }
            if self.totalMemoryUsage != nil {
                map["TotalMemoryUsage"] = self.totalMemoryUsage!
            }
            if self.totalReadWriteCount != nil {
                var tmp : [Any] = []
                for k in self.totalReadWriteCount! {
                    tmp.append(k.toMap())
                }
                map["TotalReadWriteCount"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TotalDiskUsage"] as? Double {
                self.totalDiskUsage = value
            }
            if let value = dict["TotalMemoryUsage"] as? Double {
                self.totalMemoryUsage = value
            }
            if let value = dict["TotalReadWriteCount"] as? [Any?] {
                var tmp : [ListDatasourceFeatureViewsResponseBody.TotalUsageStatistics.TotalReadWriteCount] = []
                for v in value {
                    if v != nil {
                        var model = ListDatasourceFeatureViewsResponseBody.TotalUsageStatistics.TotalReadWriteCount()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.totalReadWriteCount = tmp
            }
        }
    }
    public var featureViews: [ListDatasourceFeatureViewsResponseBody.FeatureViews]?

    public var totalCount: Int64?

    public var totalUsageStatistics: ListDatasourceFeatureViewsResponseBody.TotalUsageStatistics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.totalUsageStatistics?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalUsageStatistics != nil {
            map["TotalUsageStatistics"] = self.totalUsageStatistics?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureViews"] as? [Any?] {
            var tmp : [ListDatasourceFeatureViewsResponseBody.FeatureViews] = []
            for v in value {
                if v != nil {
                    var model = ListDatasourceFeatureViewsResponseBody.FeatureViews()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.featureViews = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["TotalUsageStatistics"] as? [String: Any?] {
            var model = ListDatasourceFeatureViewsResponseBody.TotalUsageStatistics()
            model.fromMap(value)
            self.totalUsageStatistics = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDatasourceFeatureViewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasourceFeatureViewsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatasourceFeatureViewsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatasourceTablesRequest : Tea.TeaModel {
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
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SchemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tables"] as? [String] {
            self.tables = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatasourceTablesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["DatasourceId"] as? String {
                self.datasourceId = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Datasources"] as? [Any?] {
            var tmp : [ListDatasourcesResponseBody.Datasources] = []
            for v in value {
                if v != nil {
                    var model = ListDatasourcesResponseBody.Datasources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasources = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatasourcesResponseBody()
            model.fromMap(value)
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

    public var parentFeatureEntityId: String?

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
        if self.parentFeatureEntityId != nil {
            map["ParentFeatureEntityId"] = self.parentFeatureEntityId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureEntityIds"] as? [String] {
            self.featureEntityIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentFeatureEntityId"] as? String {
            self.parentFeatureEntityId = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
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

    public var parentFeatureEntityId: String?

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
        if self.parentFeatureEntityId != nil {
            map["ParentFeatureEntityId"] = self.parentFeatureEntityId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureEntityIds"] as? String {
            self.featureEntityIdsShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentFeatureEntityId"] as? String {
            self.parentFeatureEntityId = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
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

        public var parentFeatureEntityId: String?

        public var parentFeatureEntityName: String?

        public var parentJoinId: String?

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
            if self.parentFeatureEntityId != nil {
                map["ParentFeatureEntityId"] = self.parentFeatureEntityId!
            }
            if self.parentFeatureEntityName != nil {
                map["ParentFeatureEntityName"] = self.parentFeatureEntityName!
            }
            if self.parentJoinId != nil {
                map["ParentJoinId"] = self.parentJoinId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureEntityId"] as? String {
                self.featureEntityId = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["JoinId"] as? String {
                self.joinId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ParentFeatureEntityId"] as? String {
                self.parentFeatureEntityId = value
            }
            if let value = dict["ParentFeatureEntityName"] as? String {
                self.parentFeatureEntityName = value
            }
            if let value = dict["ParentJoinId"] as? String {
                self.parentJoinId = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureEntities"] as? [Any?] {
            var tmp : [ListFeatureEntitiesResponseBody.FeatureEntities] = []
            for v in value {
                if v != nil {
                    var model = ListFeatureEntitiesResponseBody.FeatureEntities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.featureEntities = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFeatureEntitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFeatureViewFieldRelationshipsResponseBody : Tea.TeaModel {
    public class Relationships : Tea.TeaModel {
        public class Models : Tea.TeaModel {
            public var featureAliasName: String?

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
                if self.featureAliasName != nil {
                    map["FeatureAliasName"] = self.featureAliasName!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FeatureAliasName"] as? String {
                    self.featureAliasName = value
                }
                if let value = dict["ModelId"] as? String {
                    self.modelId = value
                }
                if let value = dict["ModelName"] as? String {
                    self.modelName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["Models"] as? [Any?] {
                var tmp : [ListFeatureViewFieldRelationshipsResponseBody.Relationships.Models] = []
                for v in value {
                    if v != nil {
                        var model = ListFeatureViewFieldRelationshipsResponseBody.Relationships.Models()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.models = tmp
            }
            if let value = dict["OfflineTableName"] as? String {
                self.offlineTableName = value
            }
            if let value = dict["OnlineTableName"] as? String {
                self.onlineTableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Relationships"] as? [Any?] {
            var tmp : [ListFeatureViewFieldRelationshipsResponseBody.Relationships] = []
            for v in value {
                if v != nil {
                    var model = ListFeatureViewFieldRelationshipsResponseBody.Relationships()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relationships = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFeatureViewFieldRelationshipsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JoinIds"] as? [String] {
            self.joinIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JoinIds"] as? String {
            self.joinIdsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OnlineFeatures"] as? [String] {
            self.onlineFeatures = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFeatureViewOnlineFeaturesResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModelId"] as? String {
                    self.modelId = value
                }
                if let value = dict["ModelName"] as? String {
                    self.modelName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureViewName"] as? String {
                self.featureViewName = value
            }
            if let value = dict["Models"] as? [Any?] {
                var tmp : [ListFeatureViewRelationshipsResponseBody.Relationships.Models] = []
                for v in value {
                    if v != nil {
                        var model = ListFeatureViewRelationshipsResponseBody.Relationships.Models()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.models = tmp
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Relationships"] as? [Any?] {
            var tmp : [ListFeatureViewRelationshipsResponseBody.Relationships] = []
            for v in value {
                if v != nil {
                    var model = ListFeatureViewRelationshipsResponseBody.Relationships()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relationships = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFeatureViewRelationshipsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureName"] as? String {
            self.featureName = value
        }
        if let value = dict["FeatureViewIds"] as? [String] {
            self.featureViewIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureName"] as? String {
            self.featureName = value
        }
        if let value = dict["FeatureViewIds"] as? String {
            self.featureViewIdsShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureEntityName"] as? String {
                self.featureEntityName = value
            }
            if let value = dict["FeatureViewId"] as? String {
                self.featureViewId = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["RegisterDatasourceId"] as? String {
                self.registerDatasourceId = value
            }
            if let value = dict["RegisterDatasourceName"] as? String {
                self.registerDatasourceName = value
            }
            if let value = dict["RegisterTable"] as? String {
                self.registerTable = value
            }
            if let value = dict["TTL"] as? Int32 {
                self.TTL = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["WriteToFeatureDB"] as? Bool {
                self.writeToFeatureDB = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureViews"] as? [Any?] {
            var tmp : [ListFeatureViewsResponseBody.FeatureViews] = []
            for v in value {
                if v != nil {
                    var model = ListFeatureViewsResponseBody.FeatureViews()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.featureViews = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFeatureViewsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class FeatureDBInfo : Tea.TeaModel {
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
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class FeatureDBInstanceInfo : Tea.TeaModel {
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
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var featureDBInfo: ListInstancesResponseBody.Instances.FeatureDBInfo?

        public var featureDBInstanceInfo: ListInstancesResponseBody.Instances.FeatureDBInstanceInfo?

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
            try self.featureDBInfo?.validate()
            try self.featureDBInstanceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.featureDBInfo != nil {
                map["FeatureDBInfo"] = self.featureDBInfo?.toMap()
            }
            if self.featureDBInstanceInfo != nil {
                map["FeatureDBInstanceInfo"] = self.featureDBInstanceInfo?.toMap()
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureDBInfo"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.FeatureDBInfo()
                model.fromMap(value)
                self.featureDBInfo = model
            }
            if let value = dict["FeatureDBInstanceInfo"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.FeatureDBInstanceInfo()
                model.fromMap(value)
                self.featureDBInstanceInfo = model
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLLMConfigsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListLLMConfigsResponseBody : Tea.TeaModel {
    public class LLMConfigs : Tea.TeaModel {
        public var apiKey: String?

        public var baseUrl: String?

        public var batchSize: Int32?

        public var embeddingDimension: Int32?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var LLMConfigId: String?

        public var maxTokens: Int32?

        public var model: String?

        public var name: String?

        public var resourceGroupId: String?

        public var rps: Int32?

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
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.baseUrl != nil {
                map["BaseUrl"] = self.baseUrl!
            }
            if self.batchSize != nil {
                map["BatchSize"] = self.batchSize!
            }
            if self.embeddingDimension != nil {
                map["EmbeddingDimension"] = self.embeddingDimension!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.LLMConfigId != nil {
                map["LLMConfigId"] = self.LLMConfigId!
            }
            if self.maxTokens != nil {
                map["MaxTokens"] = self.maxTokens!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.rps != nil {
                map["Rps"] = self.rps!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["BaseUrl"] as? String {
                self.baseUrl = value
            }
            if let value = dict["BatchSize"] as? Int32 {
                self.batchSize = value
            }
            if let value = dict["EmbeddingDimension"] as? Int32 {
                self.embeddingDimension = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["LLMConfigId"] as? String {
                self.LLMConfigId = value
            }
            if let value = dict["MaxTokens"] as? Int32 {
                self.maxTokens = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Rps"] as? Int32 {
                self.rps = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var LLMConfigs: [ListLLMConfigsResponseBody.LLMConfigs]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.LLMConfigs != nil {
            var tmp : [Any] = []
            for k in self.LLMConfigs! {
                tmp.append(k.toMap())
            }
            map["LLMConfigs"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LLMConfigs"] as? [Any?] {
            var tmp : [ListLLMConfigsResponseBody.LLMConfigs] = []
            for v in value {
                if v != nil {
                    var model = ListLLMConfigsResponseBody.LLMConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.LLMConfigs = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListLLMConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLLMConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLLMConfigsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelTableIds"] as? [String] {
            self.labelTableIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelTableIds"] as? String {
            self.labelTableIdsShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatasourceId"] as? String {
                self.datasourceId = value
            }
            if let value = dict["DatasourceName"] as? String {
                self.datasourceName = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["LabelTableId"] as? String {
                self.labelTableId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelTables"] as? [Any?] {
            var tmp : [ListLabelTablesResponseBody.LabelTables] = []
            for v in value {
                if v != nil {
                    var model = ListLabelTablesResponseBody.LabelTables()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labelTables = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListLabelTablesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureName"] as? String {
            self.featureName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SourceName"] as? String {
                self.sourceName = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvaliableFeatures"] as? [Any?] {
            var tmp : [ListModelFeatureAvailableFeaturesResponseBody.AvaliableFeatures] = []
            for v in value {
                if v != nil {
                    var model = ListModelFeatureAvailableFeaturesResponseBody.AvaliableFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.avaliableFeatures = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListModelFeatureAvailableFeaturesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelFeatureIds"] as? [String] {
            self.modelFeatureIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelFeatureIds"] as? String {
            self.modelFeatureIdsShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["LabelTableName"] as? String {
                self.labelTableName = value
            }
            if let value = dict["ModelFeatureId"] as? String {
                self.modelFeatureId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelFeatures"] as? [Any?] {
            var tmp : [ListModelFeaturesResponseBody.ModelFeatures] = []
            for v in value {
                if v != nil {
                    var model = ListModelFeaturesResponseBody.ModelFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modelFeatures = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListModelFeaturesResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Attributes"] as? [String] {
                    self.attributes = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var featureViewId: String?

        public var features: [ListProjectFeatureViewsResponseBody.FeatureViews.Features]?

        public var joinId: String?

        public var name: String?

        public var parentJoinId: String?

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
            if self.joinId != nil {
                map["JoinId"] = self.joinId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentJoinId != nil {
                map["ParentJoinId"] = self.parentJoinId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureViewId"] as? String {
                self.featureViewId = value
            }
            if let value = dict["Features"] as? [Any?] {
                var tmp : [ListProjectFeatureViewsResponseBody.FeatureViews.Features] = []
                for v in value {
                    if v != nil {
                        var model = ListProjectFeatureViewsResponseBody.FeatureViews.Features()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.features = tmp
            }
            if let value = dict["JoinId"] as? String {
                self.joinId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentJoinId"] as? String {
                self.parentJoinId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureViews"] as? [Any?] {
            var tmp : [ListProjectFeatureViewsResponseBody.FeatureViews] = []
            for v in value {
                if v != nil {
                    var model = ListProjectFeatureViewsResponseBody.FeatureViews()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.featureViews = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProjectFeatureViewsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectFeaturesRequest : Tea.TeaModel {
    public var aliasName: String?

    public var filter: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
    }
}

public class ListProjectFeaturesResponseBody : Tea.TeaModel {
    public class Features : Tea.TeaModel {
        public var aliasNames: String?

        public var featureViewId: String?

        public var featureViewName: String?

        public var gmtCreateTime: String?

        public var modelFeatureCount: Int32?

        public var name: String?

        public var owner: String?

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
            if self.aliasNames != nil {
                map["AliasNames"] = self.aliasNames!
            }
            if self.featureViewId != nil {
                map["FeatureViewId"] = self.featureViewId!
            }
            if self.featureViewName != nil {
                map["FeatureViewName"] = self.featureViewName!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.modelFeatureCount != nil {
                map["ModelFeatureCount"] = self.modelFeatureCount!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasNames"] as? String {
                self.aliasNames = value
            }
            if let value = dict["FeatureViewId"] as? String {
                self.featureViewId = value
            }
            if let value = dict["FeatureViewName"] as? String {
                self.featureViewName = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["ModelFeatureCount"] as? Int32 {
                self.modelFeatureCount = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var features: [ListProjectFeaturesResponseBody.Features]?

    public var totalCount: Int32?

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
        if self.features != nil {
            var tmp : [Any] = []
            for k in self.features! {
                tmp.append(k.toMap())
            }
            map["Features"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Features"] as? [Any?] {
            var tmp : [ListProjectFeaturesResponseBody.Features] = []
            for v in value {
                if v != nil {
                    var model = ListProjectFeaturesResponseBody.Features()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.features = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListProjectFeaturesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectFeaturesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProjectFeaturesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectIds"] as? [String] {
            self.projectIds = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectIds"] as? String {
            self.projectIdsShrink = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FeatureEntityCount"] as? Int32 {
                self.featureEntityCount = value
            }
            if let value = dict["FeatureViewCount"] as? Int32 {
                self.featureViewCount = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ModelCount"] as? Int32 {
                self.modelCount = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OfflineDatasourceId"] as? String {
                self.offlineDatasourceId = value
            }
            if let value = dict["OfflineDatasourceName"] as? String {
                self.offlineDatasourceName = value
            }
            if let value = dict["OfflineDatasourceType"] as? String {
                self.offlineDatasourceType = value
            }
            if let value = dict["OfflineLifecycle"] as? Int32 {
                self.offlineLifecycle = value
            }
            if let value = dict["OnlineDatasourceId"] as? String {
                self.onlineDatasourceId = value
            }
            if let value = dict["OnlineDatasourceName"] as? String {
                self.onlineDatasourceName = value
            }
            if let value = dict["OnlineDatasourceType"] as? String {
                self.onlineDatasourceType = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Projects"] as? [Any?] {
            var tmp : [ListProjectsResponseBody.Projects] = []
            for v in value {
                if v != nil {
                    var model = ListProjectsResponseBody.Projects()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.projects = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProjectsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Logs"] as? [String] {
            self.logs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTaskLogsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskIds"] as? [String] {
            self.taskIds = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskIds"] as? String {
            self.taskIdsShrink = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtExecutedTime"] as? String {
                self.gmtExecutedTime = value
            }
            if let value = dict["GmtFinishedTime"] as? String {
                self.gmtFinishedTime = value
            }
            if let value = dict["ObjectId"] as? String {
                self.objectId = value
            }
            if let value = dict["ObjectType"] as? String {
                self.objectType = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ListTasksResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ListTasksResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTasksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["EventTime"] as? String {
            self.eventTime = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["OfflineToOnline"] as? Bool {
            self.offlineToOnline = value
        }
        if let value = dict["Partitions"] as? [String: [String: Any]] {
            self.partitions = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PublishFeatureViewTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopTaskResponseBody : Tea.TeaModel {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDatasourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLLMConfigRequest : Tea.TeaModel {
    public var apiKey: String?

    public var baseUrl: String?

    public var batchSize: Int32?

    public var embeddingDimension: Int32?

    public var maxTokens: Int32?

    public var model: String?

    public var name: String?

    public var rps: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.baseUrl != nil {
            map["BaseUrl"] = self.baseUrl!
        }
        if self.batchSize != nil {
            map["BatchSize"] = self.batchSize!
        }
        if self.embeddingDimension != nil {
            map["EmbeddingDimension"] = self.embeddingDimension!
        }
        if self.maxTokens != nil {
            map["MaxTokens"] = self.maxTokens!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.rps != nil {
            map["Rps"] = self.rps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["BaseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["BatchSize"] as? Int32 {
            self.batchSize = value
        }
        if let value = dict["EmbeddingDimension"] as? Int32 {
            self.embeddingDimension = value
        }
        if let value = dict["MaxTokens"] as? Int32 {
            self.maxTokens = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Rps"] as? Int32 {
            self.rps = value
        }
    }
}

public class UpdateLLMConfigResponseBody : Tea.TeaModel {
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

public class UpdateLLMConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLLMConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLLMConfigResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String] {
                self.attributes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasourceId"] as? String {
            self.datasourceId = value
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [UpdateLabelTableRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = UpdateLabelTableRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateLabelTableResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["FeatureViewId"] as? String {
                self.featureViewId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var features: [UpdateModelFeatureRequest.Features]?

    public var labelPriorityLevel: Int64?

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
        if self.labelPriorityLevel != nil {
            map["LabelPriorityLevel"] = self.labelPriorityLevel!
        }
        if self.labelTableId != nil {
            map["LabelTableId"] = self.labelTableId!
        }
        if self.sequenceFeatureViewIds != nil {
            map["SequenceFeatureViewIds"] = self.sequenceFeatureViewIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Features"] as? [Any?] {
            var tmp : [UpdateModelFeatureRequest.Features] = []
            for v in value {
                if v != nil {
                    var model = UpdateModelFeatureRequest.Features()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.features = tmp
        }
        if let value = dict["LabelPriorityLevel"] as? Int64 {
            self.labelPriorityLevel = value
        }
        if let value = dict["LabelTableId"] as? String {
            self.labelTableId = value
        }
        if let value = dict["SequenceFeatureViewIds"] as? [String] {
            self.sequenceFeatureViewIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateModelFeatureResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["KeyFeatureDomain"] as? String {
                self.keyFeatureDomain = value
            }
            if let value = dict["KeyFeatureName"] as? String {
                self.keyFeatureName = value
            }
            if let value = dict["MapFeatureDomain"] as? String {
                self.mapFeatureDomain = value
            }
            if let value = dict["MapFeatureName"] as? String {
                self.mapFeatureName = value
            }
            if let value = dict["ValueType"] as? String {
                self.valueType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["FeatureDomain"] as? String {
                self.featureDomain = value
            }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["FeatureType"] as? String {
                self.featureType = value
            }
            if let value = dict["InputFeatureName"] as? String {
                self.inputFeatureName = value
            }
            if let value = dict["ValueType"] as? String {
                self.valueType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["FeatureDomain"] as? String {
                    self.featureDomain = value
                }
                if let value = dict["FeatureName"] as? String {
                    self.featureName = value
                }
                if let value = dict["FeatureType"] as? String {
                    self.featureType = value
                }
                if let value = dict["InputFeatureName"] as? String {
                    self.inputFeatureName = value
                }
                if let value = dict["ValueType"] as? String {
                    self.valueType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttributeDelim"] as? String {
                self.attributeDelim = value
            }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["SequenceDelim"] as? String {
                self.sequenceDelim = value
            }
            if let value = dict["SequenceLength"] as? Int64 {
                self.sequenceLength = value
            }
            if let value = dict["SubFeatures"] as? [Any?] {
                var tmp : [UpdateModelFeatureFGFeatureRequest.SequenceFeatures.SubFeatures] = []
                for v in value {
                    if v != nil {
                        var model = UpdateModelFeatureFGFeatureRequest.SequenceFeatures.SubFeatures()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LookupFeatures"] as? [Any?] {
            var tmp : [UpdateModelFeatureFGFeatureRequest.LookupFeatures] = []
            for v in value {
                if v != nil {
                    var model = UpdateModelFeatureFGFeatureRequest.LookupFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.lookupFeatures = tmp
        }
        if let value = dict["RawFeatures"] as? [Any?] {
            var tmp : [UpdateModelFeatureFGFeatureRequest.RawFeatures] = []
            for v in value {
                if v != nil {
                    var model = UpdateModelFeatureFGFeatureRequest.RawFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rawFeatures = tmp
        }
        if let value = dict["Reserves"] as? [String] {
            self.reserves = value
        }
        if let value = dict["SequenceFeatures"] as? [Any?] {
            var tmp : [UpdateModelFeatureFGFeatureRequest.SequenceFeatures] = []
            for v in value {
                if v != nil {
                    var model = UpdateModelFeatureFGFeatureRequest.SequenceFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateModelFeatureFGFeatureResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateProjectResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Delimiter"] as? String {
                self.delimiter = value
            }
            if let value = dict["OmitHeader"] as? Bool {
                self.omitHeader = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Partitions"] as? [String: [String: Any]] {
            self.partitions = value
        }
        if let value = dict["UrlDatasource"] as? [String: Any?] {
            var model = WriteFeatureViewTableRequest.UrlDatasource()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = WriteFeatureViewTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
