import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDatabaseRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseName: String?

    public var description_: String?

    public var encoding: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encoding != nil {
            map["Encoding"] = self.encoding!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Encoding") {
            self.encoding = dict["Encoding"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class CreateDatabaseResponseBody : Tea.TeaModel {
    public var databaseName: String?

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
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatabaseResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewPeriod: Int64?

    public var chargeType: String?

    public var diskSize: Int64?

    public var instanceClass: String?

    public var instanceName: String?

    public var period: Int64?

    public var periodUnit: String?

    public var resourceGroupId: String?

    public var series: String?

    public var zones: String?

    public override init() {
        super.init()
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
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.series != nil {
            map["Series"] = self.series!
        }
        if self.zones != nil {
            map["Zones"] = self.zones!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int64
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DiskSize") {
            self.diskSize = dict["DiskSize"] as! Int64
        }
        if dict.keys.contains("InstanceClass") {
            self.instanceClass = dict["InstanceClass"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Series") {
            self.series = dict["Series"] as! String
        }
        if dict.keys.contains("Zones") {
            self.zones = dict["Zones"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
        }
    }
    public var data: [CreateInstanceResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [CreateInstanceResponseBody.Data]
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

public class CreateOmsMysqlDataSourceRequest : Tea.TeaModel {
    public var description_: String?

    public var dgDatabaseId: String?

    public var instanceId: String?

    public var ip: String?

    public var name: String?

    public var password: String?

    public var port: String?

    public var schema: String?

    public var type: String?

    public var username: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dgDatabaseId != nil {
            map["DgDatabaseId"] = self.dgDatabaseId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DgDatabaseId") {
            self.dgDatabaseId = dict["DgDatabaseId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("Schema") {
            self.schema = dict["Schema"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateOmsMysqlDataSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endpointId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
        }
    }
    public var data: CreateOmsMysqlDataSourceResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = CreateOmsMysqlDataSourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateOmsMysqlDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOmsMysqlDataSourceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateOmsMysqlDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOmsOpenAPIProjectRequest : Tea.TeaModel {
    public class DestConfig : Tea.TeaModel {
        public var enableMsgTrace: Bool?

        public var endpointId: String?

        public var endpointType: String?

        public var msgTags: String?

        public var partition: Int32?

        public var partitionMode: String?

        public var producerGroup: String?

        public var sendMsgTimeout: Int64?

        public var sequenceEnable: Bool?

        public var sequenceStartTimestamp: Int64?

        public var serializerType: String?

        public var topicType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableMsgTrace != nil {
                map["EnableMsgTrace"] = self.enableMsgTrace!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.msgTags != nil {
                map["MsgTags"] = self.msgTags!
            }
            if self.partition != nil {
                map["Partition"] = self.partition!
            }
            if self.partitionMode != nil {
                map["PartitionMode"] = self.partitionMode!
            }
            if self.producerGroup != nil {
                map["ProducerGroup"] = self.producerGroup!
            }
            if self.sendMsgTimeout != nil {
                map["SendMsgTimeout"] = self.sendMsgTimeout!
            }
            if self.sequenceEnable != nil {
                map["SequenceEnable"] = self.sequenceEnable!
            }
            if self.sequenceStartTimestamp != nil {
                map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
            }
            if self.serializerType != nil {
                map["SerializerType"] = self.serializerType!
            }
            if self.topicType != nil {
                map["TopicType"] = self.topicType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableMsgTrace") {
                self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
            }
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("EndpointType") {
                self.endpointType = dict["EndpointType"] as! String
            }
            if dict.keys.contains("MsgTags") {
                self.msgTags = dict["MsgTags"] as! String
            }
            if dict.keys.contains("Partition") {
                self.partition = dict["Partition"] as! Int32
            }
            if dict.keys.contains("PartitionMode") {
                self.partitionMode = dict["PartitionMode"] as! String
            }
            if dict.keys.contains("ProducerGroup") {
                self.producerGroup = dict["ProducerGroup"] as! String
            }
            if dict.keys.contains("SendMsgTimeout") {
                self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
            }
            if dict.keys.contains("SequenceEnable") {
                self.sequenceEnable = dict["SequenceEnable"] as! Bool
            }
            if dict.keys.contains("SequenceStartTimestamp") {
                self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
            }
            if dict.keys.contains("SerializerType") {
                self.serializerType = dict["SerializerType"] as! String
            }
            if dict.keys.contains("TopicType") {
                self.topicType = dict["TopicType"] as! String
            }
        }
    }
    public class SourceConfig : Tea.TeaModel {
        public var enableMsgTrace: Bool?

        public var endpointId: String?

        public var endpointType: String?

        public var msgTags: String?

        public var partition: Int32?

        public var partitionMode: String?

        public var producerGroup: String?

        public var sendMsgTimeout: Int64?

        public var sequenceEnable: Bool?

        public var sequenceStartTimestamp: Int64?

        public var serializerType: String?

        public var topicType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableMsgTrace != nil {
                map["EnableMsgTrace"] = self.enableMsgTrace!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.msgTags != nil {
                map["MsgTags"] = self.msgTags!
            }
            if self.partition != nil {
                map["Partition"] = self.partition!
            }
            if self.partitionMode != nil {
                map["PartitionMode"] = self.partitionMode!
            }
            if self.producerGroup != nil {
                map["ProducerGroup"] = self.producerGroup!
            }
            if self.sendMsgTimeout != nil {
                map["SendMsgTimeout"] = self.sendMsgTimeout!
            }
            if self.sequenceEnable != nil {
                map["SequenceEnable"] = self.sequenceEnable!
            }
            if self.sequenceStartTimestamp != nil {
                map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
            }
            if self.serializerType != nil {
                map["SerializerType"] = self.serializerType!
            }
            if self.topicType != nil {
                map["TopicType"] = self.topicType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableMsgTrace") {
                self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
            }
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("EndpointType") {
                self.endpointType = dict["EndpointType"] as! String
            }
            if dict.keys.contains("MsgTags") {
                self.msgTags = dict["MsgTags"] as! String
            }
            if dict.keys.contains("Partition") {
                self.partition = dict["Partition"] as! Int32
            }
            if dict.keys.contains("PartitionMode") {
                self.partitionMode = dict["PartitionMode"] as! String
            }
            if dict.keys.contains("ProducerGroup") {
                self.producerGroup = dict["ProducerGroup"] as! String
            }
            if dict.keys.contains("SendMsgTimeout") {
                self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
            }
            if dict.keys.contains("SequenceEnable") {
                self.sequenceEnable = dict["SequenceEnable"] as! Bool
            }
            if dict.keys.contains("SequenceStartTimestamp") {
                self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
            }
            if dict.keys.contains("SerializerType") {
                self.serializerType = dict["SerializerType"] as! String
            }
            if dict.keys.contains("TopicType") {
                self.topicType = dict["TopicType"] as! String
            }
        }
    }
    public class TransferMapping : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public class Tables : Tea.TeaModel {
                public class AdbTableSchema : Tea.TeaModel {
                    public var distributedKeys: [String]?

                    public var partitionLifeCycle: Int32?

                    public var partitionStatement: String?

                    public var primaryKeys: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.distributedKeys != nil {
                            map["DistributedKeys"] = self.distributedKeys!
                        }
                        if self.partitionLifeCycle != nil {
                            map["PartitionLifeCycle"] = self.partitionLifeCycle!
                        }
                        if self.partitionStatement != nil {
                            map["PartitionStatement"] = self.partitionStatement!
                        }
                        if self.primaryKeys != nil {
                            map["PrimaryKeys"] = self.primaryKeys!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DistributedKeys") {
                            self.distributedKeys = dict["DistributedKeys"] as! [String]
                        }
                        if dict.keys.contains("PartitionLifeCycle") {
                            self.partitionLifeCycle = dict["PartitionLifeCycle"] as! Int32
                        }
                        if dict.keys.contains("PartitionStatement") {
                            self.partitionStatement = dict["PartitionStatement"] as! String
                        }
                        if dict.keys.contains("PrimaryKeys") {
                            self.primaryKeys = dict["PrimaryKeys"] as! [String]
                        }
                    }
                }
                public var adbTableSchema: CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables.AdbTableSchema?

                public var filterColumns: [String]?

                public var mappedName: String?

                public var shardColumns: [String]?

                public var tableId: String?

                public var tableName: String?

                public var type: String?

                public var whereClause: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.adbTableSchema?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adbTableSchema != nil {
                        map["AdbTableSchema"] = self.adbTableSchema?.toMap()
                    }
                    if self.filterColumns != nil {
                        map["FilterColumns"] = self.filterColumns!
                    }
                    if self.mappedName != nil {
                        map["MappedName"] = self.mappedName!
                    }
                    if self.shardColumns != nil {
                        map["ShardColumns"] = self.shardColumns!
                    }
                    if self.tableId != nil {
                        map["TableId"] = self.tableId!
                    }
                    if self.tableName != nil {
                        map["TableName"] = self.tableName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.whereClause != nil {
                        map["WhereClause"] = self.whereClause!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdbTableSchema") {
                        var model = CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables.AdbTableSchema()
                        model.fromMap(dict["AdbTableSchema"] as! [String: Any])
                        self.adbTableSchema = model
                    }
                    if dict.keys.contains("FilterColumns") {
                        self.filterColumns = dict["FilterColumns"] as! [String]
                    }
                    if dict.keys.contains("MappedName") {
                        self.mappedName = dict["MappedName"] as! String
                    }
                    if dict.keys.contains("ShardColumns") {
                        self.shardColumns = dict["ShardColumns"] as! [String]
                    }
                    if dict.keys.contains("TableId") {
                        self.tableId = dict["TableId"] as! String
                    }
                    if dict.keys.contains("TableName") {
                        self.tableName = dict["TableName"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("WhereClause") {
                        self.whereClause = dict["WhereClause"] as! String
                    }
                }
            }
            public var databaseId: String?

            public var databaseName: String?

            public var mappedName: String?

            public var tables: [CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables]?

            public var tenantName: String?

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
                if self.databaseId != nil {
                    map["DatabaseId"] = self.databaseId!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.mappedName != nil {
                    map["MappedName"] = self.mappedName!
                }
                if self.tables != nil {
                    var tmp : [Any] = []
                    for k in self.tables! {
                        tmp.append(k.toMap())
                    }
                    map["Tables"] = tmp
                }
                if self.tenantName != nil {
                    map["TenantName"] = self.tenantName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DatabaseId") {
                    self.databaseId = dict["DatabaseId"] as! String
                }
                if dict.keys.contains("DatabaseName") {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("MappedName") {
                    self.mappedName = dict["MappedName"] as! String
                }
                if dict.keys.contains("Tables") {
                    self.tables = dict["Tables"] as! [CreateOmsOpenAPIProjectRequest.TransferMapping.Databases.Tables]
                }
                if dict.keys.contains("TenantName") {
                    self.tenantName = dict["TenantName"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var databases: [CreateOmsOpenAPIProjectRequest.TransferMapping.Databases]?

        public var mode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["Databases"] = tmp
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Databases") {
                self.databases = dict["Databases"] as! [CreateOmsOpenAPIProjectRequest.TransferMapping.Databases]
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
        }
    }
    public class TransferStepConfig : Tea.TeaModel {
        public class IncrSyncStepTransferConfig : Tea.TeaModel {
            public var recordTypeList: [String]?

            public var startTimestamp: Int64?

            public var storeLogKeptHour: Int64?

            public var storeTransactionEnabled: Bool?

            public var transferStepType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.recordTypeList != nil {
                    map["RecordTypeList"] = self.recordTypeList!
                }
                if self.startTimestamp != nil {
                    map["StartTimestamp"] = self.startTimestamp!
                }
                if self.storeLogKeptHour != nil {
                    map["StoreLogKeptHour"] = self.storeLogKeptHour!
                }
                if self.storeTransactionEnabled != nil {
                    map["StoreTransactionEnabled"] = self.storeTransactionEnabled!
                }
                if self.transferStepType != nil {
                    map["TransferStepType"] = self.transferStepType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RecordTypeList") {
                    self.recordTypeList = dict["RecordTypeList"] as! [String]
                }
                if dict.keys.contains("StartTimestamp") {
                    self.startTimestamp = dict["StartTimestamp"] as! Int64
                }
                if dict.keys.contains("StoreLogKeptHour") {
                    self.storeLogKeptHour = dict["StoreLogKeptHour"] as! Int64
                }
                if dict.keys.contains("StoreTransactionEnabled") {
                    self.storeTransactionEnabled = dict["StoreTransactionEnabled"] as! Bool
                }
                if dict.keys.contains("TransferStepType") {
                    self.transferStepType = dict["TransferStepType"] as! String
                }
            }
        }
        public var enableFullSync: Bool?

        public var enableIncrSync: Bool?

        public var enableStructSync: Bool?

        public var incrSyncStepTransferConfig: CreateOmsOpenAPIProjectRequest.TransferStepConfig.IncrSyncStepTransferConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.incrSyncStepTransferConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableFullSync != nil {
                map["EnableFullSync"] = self.enableFullSync!
            }
            if self.enableIncrSync != nil {
                map["EnableIncrSync"] = self.enableIncrSync!
            }
            if self.enableStructSync != nil {
                map["EnableStructSync"] = self.enableStructSync!
            }
            if self.incrSyncStepTransferConfig != nil {
                map["IncrSyncStepTransferConfig"] = self.incrSyncStepTransferConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableFullSync") {
                self.enableFullSync = dict["EnableFullSync"] as! Bool
            }
            if dict.keys.contains("EnableIncrSync") {
                self.enableIncrSync = dict["EnableIncrSync"] as! Bool
            }
            if dict.keys.contains("EnableStructSync") {
                self.enableStructSync = dict["EnableStructSync"] as! Bool
            }
            if dict.keys.contains("IncrSyncStepTransferConfig") {
                var model = CreateOmsOpenAPIProjectRequest.TransferStepConfig.IncrSyncStepTransferConfig()
                model.fromMap(dict["IncrSyncStepTransferConfig"] as! [String: Any])
                self.incrSyncStepTransferConfig = model
            }
        }
    }
    public var businessName: String?

    public var destConfig: CreateOmsOpenAPIProjectRequest.DestConfig?

    public var labelIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectName: String?

    public var sourceConfig: CreateOmsOpenAPIProjectRequest.SourceConfig?

    public var transferMapping: CreateOmsOpenAPIProjectRequest.TransferMapping?

    public var transferStepConfig: CreateOmsOpenAPIProjectRequest.TransferStepConfig?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destConfig?.validate()
        try self.sourceConfig?.validate()
        try self.transferMapping?.validate()
        try self.transferStepConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessName != nil {
            map["BusinessName"] = self.businessName!
        }
        if self.destConfig != nil {
            map["DestConfig"] = self.destConfig?.toMap()
        }
        if self.labelIds != nil {
            map["LabelIds"] = self.labelIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceConfig != nil {
            map["SourceConfig"] = self.sourceConfig?.toMap()
        }
        if self.transferMapping != nil {
            map["TransferMapping"] = self.transferMapping?.toMap()
        }
        if self.transferStepConfig != nil {
            map["TransferStepConfig"] = self.transferStepConfig?.toMap()
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessName") {
            self.businessName = dict["BusinessName"] as! String
        }
        if dict.keys.contains("DestConfig") {
            var model = CreateOmsOpenAPIProjectRequest.DestConfig()
            model.fromMap(dict["DestConfig"] as! [String: Any])
            self.destConfig = model
        }
        if dict.keys.contains("LabelIds") {
            self.labelIds = dict["LabelIds"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceConfig") {
            var model = CreateOmsOpenAPIProjectRequest.SourceConfig()
            model.fromMap(dict["SourceConfig"] as! [String: Any])
            self.sourceConfig = model
        }
        if dict.keys.contains("TransferMapping") {
            var model = CreateOmsOpenAPIProjectRequest.TransferMapping()
            model.fromMap(dict["TransferMapping"] as! [String: Any])
            self.transferMapping = model
        }
        if dict.keys.contains("TransferStepConfig") {
            var model = CreateOmsOpenAPIProjectRequest.TransferStepConfig()
            model.fromMap(dict["TransferStepConfig"] as! [String: Any])
            self.transferStepConfig = model
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class CreateOmsOpenAPIProjectShrinkRequest : Tea.TeaModel {
    public var businessName: String?

    public var destConfigShrink: String?

    public var labelIdsShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectName: String?

    public var sourceConfigShrink: String?

    public var transferMappingShrink: String?

    public var transferStepConfigShrink: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessName != nil {
            map["BusinessName"] = self.businessName!
        }
        if self.destConfigShrink != nil {
            map["DestConfig"] = self.destConfigShrink!
        }
        if self.labelIdsShrink != nil {
            map["LabelIds"] = self.labelIdsShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceConfigShrink != nil {
            map["SourceConfig"] = self.sourceConfigShrink!
        }
        if self.transferMappingShrink != nil {
            map["TransferMapping"] = self.transferMappingShrink!
        }
        if self.transferStepConfigShrink != nil {
            map["TransferStepConfig"] = self.transferStepConfigShrink!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessName") {
            self.businessName = dict["BusinessName"] as! String
        }
        if dict.keys.contains("DestConfig") {
            self.destConfigShrink = dict["DestConfig"] as! String
        }
        if dict.keys.contains("LabelIds") {
            self.labelIdsShrink = dict["LabelIds"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceConfig") {
            self.sourceConfigShrink = dict["SourceConfig"] as! String
        }
        if dict.keys.contains("TransferMapping") {
            self.transferMappingShrink = dict["TransferMapping"] as! String
        }
        if dict.keys.contains("TransferStepConfig") {
            self.transferStepConfigShrink = dict["TransferStepConfig"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class CreateOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: String?

    public var errorDetail: CreateOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorDetail") {
            var model = CreateOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class CreateOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOmsOpenAPIProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSecurityIpGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
        if dict.keys.contains("SecurityIps") {
            self.securityIps = dict["SecurityIps"] as! String
        }
    }
}

public class CreateSecurityIpGroupResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIps") {
                self.securityIps = dict["SecurityIps"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: CreateSecurityIpGroupResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") {
            var model = CreateSecurityIpGroupResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class CreateSecurityIpGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecurityIpGroupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSecurityIpGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTenantRequest : Tea.TeaModel {
    public var charset: String?

    public var cpu: Int32?

    public var description_: String?

    public var instanceId: String?

    public var memory: Int32?

    public var primaryZone: String?

    public var tenantMode: String?

    public var tenantName: String?

    public var timeZone: String?

    public var unitNum: Int32?

    public var userVSwitchId: String?

    public var userVpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.charset != nil {
            map["Charset"] = self.charset!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.primaryZone != nil {
            map["PrimaryZone"] = self.primaryZone!
        }
        if self.tenantMode != nil {
            map["TenantMode"] = self.tenantMode!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.unitNum != nil {
            map["UnitNum"] = self.unitNum!
        }
        if self.userVSwitchId != nil {
            map["UserVSwitchId"] = self.userVSwitchId!
        }
        if self.userVpcId != nil {
            map["UserVpcId"] = self.userVpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Charset") {
            self.charset = dict["Charset"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("PrimaryZone") {
            self.primaryZone = dict["PrimaryZone"] as! String
        }
        if dict.keys.contains("TenantMode") {
            self.tenantMode = dict["TenantMode"] as! String
        }
        if dict.keys.contains("TenantName") {
            self.tenantName = dict["TenantName"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
        }
        if dict.keys.contains("UnitNum") {
            self.unitNum = dict["UnitNum"] as! Int32
        }
        if dict.keys.contains("UserVSwitchId") {
            self.userVSwitchId = dict["UserVSwitchId"] as! String
        }
        if dict.keys.contains("UserVpcId") {
            self.userVpcId = dict["UserVpcId"] as! String
        }
    }
}

public class CreateTenantResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class CreateTenantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTenantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTenantReadOnlyConnectionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateTenantReadOnlyConnectionResponseBody : Tea.TeaModel {
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

public class CreateTenantReadOnlyConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantReadOnlyConnectionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTenantReadOnlyConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTenantUserRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var roles: String?

    public var tenantId: String?

    public var userName: String?

    public var userPassword: String?

    public var userType: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.roles != nil {
            map["Roles"] = self.roles!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userPassword != nil {
            map["UserPassword"] = self.userPassword!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Roles") {
            self.roles = dict["Roles"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserPassword") {
            self.userPassword = dict["UserPassword"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class CreateTenantUserResponseBody : Tea.TeaModel {
    public class TenantUser : Tea.TeaModel {
        public class Roles : Tea.TeaModel {
            public var database: String?

            public var role: String?

            public override init() {
                super.init()
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
                if self.role != nil {
                    map["Role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Database") {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
            }
        }
        public var roles: [CreateTenantUserResponseBody.TenantUser.Roles]?

        public var userName: String?

        public var userStatus: String?

        public var userType: String?

        public override init() {
            super.init()
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
                map["Roles"] = tmp
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Roles") {
                self.roles = dict["Roles"] as! [CreateTenantUserResponseBody.TenantUser.Roles]
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserStatus") {
                self.userStatus = dict["UserStatus"] as! String
            }
            if dict.keys.contains("UserType") {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenantUser: [CreateTenantUserResponseBody.TenantUser]?

    public override init() {
        super.init()
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
        if self.tenantUser != nil {
            var tmp : [Any] = []
            for k in self.tenantUser! {
                tmp.append(k.toMap())
            }
            map["TenantUser"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUser") {
            self.tenantUser = dict["TenantUser"] as! [CreateTenantUserResponseBody.TenantUser]
        }
    }
}

public class CreateTenantUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantUserResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTenantUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatabasesRequest : Tea.TeaModel {
    public var databaseNames: String?

    public var instanceId: String?

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
        if self.databaseNames != nil {
            map["DatabaseNames"] = self.databaseNames!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseNames") {
            self.databaseNames = dict["DatabaseNames"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DeleteDatabasesResponseBody : Tea.TeaModel {
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

public class DeleteDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatabasesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstancesRequest : Tea.TeaModel {
    public var backupRetainMode: String?

    public var instanceIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupRetainMode != nil {
            map["BackupRetainMode"] = self.backupRetainMode!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetainMode") {
            self.backupRetainMode = dict["BackupRetainMode"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
    }
}

public class DeleteInstancesResponseBody : Tea.TeaModel {
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

public class DeleteInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstancesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class DeleteOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: DeleteOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") {
            var model = DeleteOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DeleteOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOmsOpenAPIProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSecurityIpGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
    }
}

public class DeleteSecurityIpGroupResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

        public override init() {
            super.init()
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
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: DeleteSecurityIpGroupResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") {
            var model = DeleteSecurityIpGroupResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class DeleteSecurityIpGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecurityIpGroupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSecurityIpGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTenantUsersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public var users: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! String
        }
    }
}

public class DeleteTenantUsersResponseBody : Tea.TeaModel {
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

public class DeleteTenantUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTenantUsersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTenantUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTenantsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantIds: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantIds != nil {
            map["TenantIds"] = self.tenantIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantIds") {
            self.tenantIds = dict["TenantIds"] as! String
        }
    }
}

public class DeleteTenantsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tenantIds: [String]?

    public override init() {
        super.init()
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
        if self.tenantIds != nil {
            map["TenantIds"] = self.tenantIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantIds") {
            self.tenantIds = dict["TenantIds"] as! [String]
        }
    }
}

public class DeleteTenantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTenantsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTenantsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAnomalySQLListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var dbName: String?

    public var endTime: String?

    public var filterCondition: [String: Any]?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") {
            self.filterCondition = dict["FilterCondition"] as! [String: Any]
        }
        if dict.keys.contains("NodeIp") {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeAnomalySQLListShrinkRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var dbName: String?

    public var endTime: String?

    public var filterConditionShrink: String?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterConditionShrink != nil {
            map["FilterCondition"] = self.filterConditionShrink!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") {
            self.filterConditionShrink = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("NodeIp") {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeAnomalySQLListResponseBody : Tea.TeaModel {
    public class AnomalySQLList : Tea.TeaModel {
        public var cpuTime: Double?

        public var dbName: String?

        public var diagnosis: String?

        public var diagnosisRule: String?

        public var executions: Int64?

        public var key: Int64?

        public var requestTime: Double?

        public var requestTimeUTCString: String?

        public var SQLId: String?

        public var SQLText: String?

        public var suggestion: String?

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
            if self.cpuTime != nil {
                map["CpuTime"] = self.cpuTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.diagnosis != nil {
                map["Diagnosis"] = self.diagnosis!
            }
            if self.diagnosisRule != nil {
                map["DiagnosisRule"] = self.diagnosisRule!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.requestTime != nil {
                map["RequestTime"] = self.requestTime!
            }
            if self.requestTimeUTCString != nil {
                map["RequestTimeUTCString"] = self.requestTimeUTCString!
            }
            if self.SQLId != nil {
                map["SQLId"] = self.SQLId!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CpuTime") {
                self.cpuTime = dict["CpuTime"] as! Double
            }
            if dict.keys.contains("DbName") {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("Diagnosis") {
                self.diagnosis = dict["Diagnosis"] as! String
            }
            if dict.keys.contains("DiagnosisRule") {
                self.diagnosisRule = dict["DiagnosisRule"] as! String
            }
            if dict.keys.contains("Executions") {
                self.executions = dict["Executions"] as! Int64
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! Int64
            }
            if dict.keys.contains("RequestTime") {
                self.requestTime = dict["RequestTime"] as! Double
            }
            if dict.keys.contains("RequestTimeUTCString") {
                self.requestTimeUTCString = dict["RequestTimeUTCString"] as! String
            }
            if dict.keys.contains("SQLId") {
                self.SQLId = dict["SQLId"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("Suggestion") {
                self.suggestion = dict["Suggestion"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var anomalySQLList: [DescribeAnomalySQLListResponseBody.AnomalySQLList]?

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
        if self.anomalySQLList != nil {
            var tmp : [Any] = []
            for k in self.anomalySQLList! {
                tmp.append(k.toMap())
            }
            map["AnomalySQLList"] = tmp
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
        if dict.keys.contains("AnomalySQLList") {
            self.anomalySQLList = dict["AnomalySQLList"] as! [DescribeAnomalySQLListResponseBody.AnomalySQLList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeAnomalySQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAnomalySQLListResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAnomalySQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableCpuResourceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var modifyType: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeAvailableCpuResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var maxCpu: Int64?

        public var minCpu: Int64?

        public var unitNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxCpu != nil {
                map["MaxCpu"] = self.maxCpu!
            }
            if self.minCpu != nil {
                map["MinCpu"] = self.minCpu!
            }
            if self.unitNum != nil {
                map["UnitNum"] = self.unitNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxCpu") {
                self.maxCpu = dict["MaxCpu"] as! Int64
            }
            if dict.keys.contains("MinCpu") {
                self.minCpu = dict["MinCpu"] as! Int64
            }
            if dict.keys.contains("UnitNum") {
                self.unitNum = dict["UnitNum"] as! Int64
            }
        }
    }
    public var data: [DescribeAvailableCpuResourceResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeAvailableCpuResourceResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAvailableCpuResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableCpuResourceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAvailableCpuResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableMemResourceRequest : Tea.TeaModel {
    public var cpuNum: Int64?

    public var instanceId: String?

    public var tenantId: String?

    public var unitNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpuNum != nil {
            map["CpuNum"] = self.cpuNum!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.unitNum != nil {
            map["UnitNum"] = self.unitNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CpuNum") {
            self.cpuNum = dict["CpuNum"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UnitNum") {
            self.unitNum = dict["UnitNum"] as! Int64
        }
    }
}

public class DescribeAvailableMemResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var maxMem: Int64?

        public var minMem: Int64?

        public var usedMem: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxMem != nil {
                map["MaxMem"] = self.maxMem!
            }
            if self.minMem != nil {
                map["MinMem"] = self.minMem!
            }
            if self.usedMem != nil {
                map["UsedMem"] = self.usedMem!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxMem") {
                self.maxMem = dict["MaxMem"] as! Int64
            }
            if dict.keys.contains("MinMem") {
                self.minMem = dict["MinMem"] as! Int64
            }
            if dict.keys.contains("UsedMem") {
                self.usedMem = dict["UsedMem"] as! Int64
            }
        }
    }
    public var data: DescribeAvailableMemResourceResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeAvailableMemResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAvailableMemResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableMemResourceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAvailableMemResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCharsetRequest : Tea.TeaModel {
    public var tenantMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantMode != nil {
            map["TenantMode"] = self.tenantMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantMode") {
            self.tenantMode = dict["TenantMode"] as! String
        }
    }
}

public class DescribeCharsetResponseBody : Tea.TeaModel {
    public class Charset : Tea.TeaModel {
        public var charset: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.charset != nil {
                map["Charset"] = self.charset!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Charset") {
                self.charset = dict["Charset"] as! String
            }
        }
    }
    public var charset: [DescribeCharsetResponseBody.Charset]?

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
        if self.charset != nil {
            var tmp : [Any] = []
            for k in self.charset! {
                tmp.append(k.toMap())
            }
            map["Charset"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Charset") {
            self.charset = dict["Charset"] as! [DescribeCharsetResponseBody.Charset]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCharsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCharsetResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCharsetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDatabasesRequest : Tea.TeaModel {
    public var databaseName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var tenantId: String?

    public var withTables: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.withTables != nil {
            map["WithTables"] = self.withTables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("WithTables") {
            self.withTables = dict["WithTables"] as! Bool
        }
    }
}

public class DescribeDatabasesResponseBody : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
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
        public class Users : Tea.TeaModel {
            public var role: String?

            public var userName: String?

            public var userType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.userType != nil {
                    map["UserType"] = self.userType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("UserType") {
                    self.userType = dict["UserType"] as! String
                }
            }
        }
        public var createTime: String?

        public var dataSize: Double?

        public var databaseName: String?

        public var dbType: String?

        public var description_: String?

        public var encoding: String?

        public var requiredSize: Double?

        public var status: String?

        public var tables: [DescribeDatabasesResponseBody.Databases.Tables]?

        public var tenantId: String?

        public var users: [DescribeDatabasesResponseBody.Databases.Users]?

        public override init() {
            super.init()
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
            if self.dataSize != nil {
                map["DataSize"] = self.dataSize!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encoding != nil {
                map["Encoding"] = self.encoding!
            }
            if self.requiredSize != nil {
                map["RequiredSize"] = self.requiredSize!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["Tables"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["Users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataSize") {
                self.dataSize = dict["DataSize"] as! Double
            }
            if dict.keys.contains("DatabaseName") {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("DbType") {
                self.dbType = dict["DbType"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Encoding") {
                self.encoding = dict["Encoding"] as! String
            }
            if dict.keys.contains("RequiredSize") {
                self.requiredSize = dict["RequiredSize"] as! Double
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tables") {
                self.tables = dict["Tables"] as! [DescribeDatabasesResponseBody.Databases.Tables]
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("Users") {
                self.users = dict["Users"] as! [DescribeDatabasesResponseBody.Databases.Users]
            }
        }
    }
    public var databases: [DescribeDatabasesResponseBody.Databases]?

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
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
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
        if dict.keys.contains("Databases") {
            self.databases = dict["Databases"] as! [DescribeDatabasesResponseBody.Databases]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDatabasesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public class Resource : Tea.TeaModel {
            public class Cpu : Tea.TeaModel {
                public var totalCpu: Int64?

                public var unitCpu: Int64?

                public var usedCpu: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalCpu != nil {
                        map["TotalCpu"] = self.totalCpu!
                    }
                    if self.unitCpu != nil {
                        map["UnitCpu"] = self.unitCpu!
                    }
                    if self.usedCpu != nil {
                        map["UsedCpu"] = self.usedCpu!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalCpu") {
                        self.totalCpu = dict["TotalCpu"] as! Int64
                    }
                    if dict.keys.contains("UnitCpu") {
                        self.unitCpu = dict["UnitCpu"] as! Int64
                    }
                    if dict.keys.contains("UsedCpu") {
                        self.usedCpu = dict["UsedCpu"] as! Int64
                    }
                }
            }
            public class DiskSize : Tea.TeaModel {
                public var dataUsedSize: Double?

                public var maxDiskUsedObServer: [String]?

                public var maxDiskUsedPercent: Double?

                public var totalDiskSize: Int64?

                public var unitDiskSize: Int64?

                public var usedDiskSize: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataUsedSize != nil {
                        map["DataUsedSize"] = self.dataUsedSize!
                    }
                    if self.maxDiskUsedObServer != nil {
                        map["MaxDiskUsedObServer"] = self.maxDiskUsedObServer!
                    }
                    if self.maxDiskUsedPercent != nil {
                        map["MaxDiskUsedPercent"] = self.maxDiskUsedPercent!
                    }
                    if self.totalDiskSize != nil {
                        map["TotalDiskSize"] = self.totalDiskSize!
                    }
                    if self.unitDiskSize != nil {
                        map["UnitDiskSize"] = self.unitDiskSize!
                    }
                    if self.usedDiskSize != nil {
                        map["UsedDiskSize"] = self.usedDiskSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataUsedSize") {
                        self.dataUsedSize = dict["DataUsedSize"] as! Double
                    }
                    if dict.keys.contains("MaxDiskUsedObServer") {
                        self.maxDiskUsedObServer = dict["MaxDiskUsedObServer"] as! [String]
                    }
                    if dict.keys.contains("MaxDiskUsedPercent") {
                        self.maxDiskUsedPercent = dict["MaxDiskUsedPercent"] as! Double
                    }
                    if dict.keys.contains("TotalDiskSize") {
                        self.totalDiskSize = dict["TotalDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UnitDiskSize") {
                        self.unitDiskSize = dict["UnitDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UsedDiskSize") {
                        self.usedDiskSize = dict["UsedDiskSize"] as! Int64
                    }
                }
            }
            public class LogDiskSize : Tea.TeaModel {
                public var totalDiskSize: Int64?

                public var unitDiskSize: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalDiskSize != nil {
                        map["TotalDiskSize"] = self.totalDiskSize!
                    }
                    if self.unitDiskSize != nil {
                        map["UnitDiskSize"] = self.unitDiskSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalDiskSize") {
                        self.totalDiskSize = dict["TotalDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UnitDiskSize") {
                        self.unitDiskSize = dict["UnitDiskSize"] as! Int64
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var totalMemory: Int64?

                public var unitMemory: Int64?

                public var usedMemory: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalMemory != nil {
                        map["TotalMemory"] = self.totalMemory!
                    }
                    if self.unitMemory != nil {
                        map["UnitMemory"] = self.unitMemory!
                    }
                    if self.usedMemory != nil {
                        map["UsedMemory"] = self.usedMemory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalMemory") {
                        self.totalMemory = dict["TotalMemory"] as! Int64
                    }
                    if dict.keys.contains("UnitMemory") {
                        self.unitMemory = dict["UnitMemory"] as! Int64
                    }
                    if dict.keys.contains("UsedMemory") {
                        self.usedMemory = dict["UsedMemory"] as! Int64
                    }
                }
            }
            public var cpu: DescribeInstanceResponseBody.Instance.Resource.Cpu?

            public var diskSize: DescribeInstanceResponseBody.Instance.Resource.DiskSize?

            public var logDiskSize: DescribeInstanceResponseBody.Instance.Resource.LogDiskSize?

            public var memory: DescribeInstanceResponseBody.Instance.Resource.Memory?

            public var unitCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cpu?.validate()
                try self.diskSize?.validate()
                try self.logDiskSize?.validate()
                try self.memory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu?.toMap()
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize?.toMap()
                }
                if self.logDiskSize != nil {
                    map["LogDiskSize"] = self.logDiskSize?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.unitCount != nil {
                    map["UnitCount"] = self.unitCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") {
                    var model = DescribeInstanceResponseBody.Instance.Resource.Cpu()
                    model.fromMap(dict["Cpu"] as! [String: Any])
                    self.cpu = model
                }
                if dict.keys.contains("DiskSize") {
                    var model = DescribeInstanceResponseBody.Instance.Resource.DiskSize()
                    model.fromMap(dict["DiskSize"] as! [String: Any])
                    self.diskSize = model
                }
                if dict.keys.contains("LogDiskSize") {
                    var model = DescribeInstanceResponseBody.Instance.Resource.LogDiskSize()
                    model.fromMap(dict["LogDiskSize"] as! [String: Any])
                    self.logDiskSize = model
                }
                if dict.keys.contains("Memory") {
                    var model = DescribeInstanceResponseBody.Instance.Resource.Memory()
                    model.fromMap(dict["Memory"] as! [String: Any])
                    self.memory = model
                }
                if dict.keys.contains("UnitCount") {
                    self.unitCount = dict["UnitCount"] as! Int64
                }
            }
        }
        public var autoRenewal: Bool?

        public var autoUpgradeObVersion: Bool?

        public var availableZones: [String]?

        public var createTime: String?

        public var dataMergeTime: String?

        public var deployMode: String?

        public var deployType: String?

        public var diskType: String?

        public var enableUpgradeLogDisk: Bool?

        public var expireTime: String?

        public var instanceClass: String?

        public var instanceId: String?

        public var instanceName: String?

        public var isLatestObVersion: Bool?

        public var isTrustEcs: Bool?

        public var maintainTime: String?

        public var obRpmVersion: String?

        public var payType: String?

        public var resource: DescribeInstanceResponseBody.Instance.Resource?

        public var series: String?

        public var status: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenewal != nil {
                map["AutoRenewal"] = self.autoRenewal!
            }
            if self.autoUpgradeObVersion != nil {
                map["AutoUpgradeObVersion"] = self.autoUpgradeObVersion!
            }
            if self.availableZones != nil {
                map["AvailableZones"] = self.availableZones!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataMergeTime != nil {
                map["DataMergeTime"] = self.dataMergeTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.enableUpgradeLogDisk != nil {
                map["EnableUpgradeLogDisk"] = self.enableUpgradeLogDisk!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceClass != nil {
                map["InstanceClass"] = self.instanceClass!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.isLatestObVersion != nil {
                map["IsLatestObVersion"] = self.isLatestObVersion!
            }
            if self.isTrustEcs != nil {
                map["IsTrustEcs"] = self.isTrustEcs!
            }
            if self.maintainTime != nil {
                map["MaintainTime"] = self.maintainTime!
            }
            if self.obRpmVersion != nil {
                map["ObRpmVersion"] = self.obRpmVersion!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.resource != nil {
                map["Resource"] = self.resource?.toMap()
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenewal") {
                self.autoRenewal = dict["AutoRenewal"] as! Bool
            }
            if dict.keys.contains("AutoUpgradeObVersion") {
                self.autoUpgradeObVersion = dict["AutoUpgradeObVersion"] as! Bool
            }
            if dict.keys.contains("AvailableZones") {
                self.availableZones = dict["AvailableZones"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataMergeTime") {
                self.dataMergeTime = dict["DataMergeTime"] as! String
            }
            if dict.keys.contains("DeployMode") {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("DiskType") {
                self.diskType = dict["DiskType"] as! String
            }
            if dict.keys.contains("EnableUpgradeLogDisk") {
                self.enableUpgradeLogDisk = dict["EnableUpgradeLogDisk"] as! Bool
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InstanceClass") {
                self.instanceClass = dict["InstanceClass"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("IsLatestObVersion") {
                self.isLatestObVersion = dict["IsLatestObVersion"] as! Bool
            }
            if dict.keys.contains("IsTrustEcs") {
                self.isTrustEcs = dict["IsTrustEcs"] as! Bool
            }
            if dict.keys.contains("MaintainTime") {
                self.maintainTime = dict["MaintainTime"] as! String
            }
            if dict.keys.contains("ObRpmVersion") {
                self.obRpmVersion = dict["ObRpmVersion"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Resource") {
                var model = DescribeInstanceResponseBody.Instance.Resource()
                model.fromMap(dict["Resource"] as! [String: Any])
                self.resource = model
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var instance: DescribeInstanceResponseBody.Instance?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instance") {
            var model = DescribeInstanceResponseBody.Instance()
            model.fromMap(dict["Instance"] as! [String: Any])
            self.instance = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceCreatableZoneRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceCreatableZoneResponseBody : Tea.TeaModel {
    public class ZoneList : Tea.TeaModel {
        public var isInCluster: Bool?

        public var zone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isInCluster != nil {
                map["IsInCluster"] = self.isInCluster!
            }
            if self.zone != nil {
                map["Zone"] = self.zone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsInCluster") {
                self.isInCluster = dict["IsInCluster"] as! Bool
            }
            if dict.keys.contains("Zone") {
                self.zone = dict["Zone"] as! String
            }
        }
    }
    public var requestId: String?

    public var zoneList: [DescribeInstanceCreatableZoneResponseBody.ZoneList]?

    public override init() {
        super.init()
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
        if self.zoneList != nil {
            var tmp : [Any] = []
            for k in self.zoneList! {
                tmp.append(k.toMap())
            }
            map["ZoneList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ZoneList") {
            self.zoneList = dict["ZoneList"] as! [DescribeInstanceCreatableZoneResponseBody.ZoneList]
        }
    }
}

public class DescribeInstanceCreatableZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceCreatableZoneResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceCreatableZoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceTenantModesRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceTenantModesResponseBody : Tea.TeaModel {
    public var instanceModes: [String]?

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
        if self.instanceModes != nil {
            map["InstanceModes"] = self.instanceModes!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceModes") {
            self.instanceModes = dict["InstanceModes"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceTenantModesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceTenantModesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceTenantModesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceTopologyRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceTopologyResponseBody : Tea.TeaModel {
    public class InstanceTopology : Tea.TeaModel {
        public class Tenants : Tea.TeaModel {
            public class TenantZones : Tea.TeaModel {
                public class Units : Tea.TeaModel {
                    public var enableCancelMigrateUnit: Bool?

                    public var enableMigrateUnit: Bool?

                    public var manualMigrate: Bool?

                    public var nodeId: String?

                    public var unitCpu: Double?

                    public var unitDataSize: Int64?

                    public var unitId: String?

                    public var unitMemory: Double?

                    public var unitStatus: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enableCancelMigrateUnit != nil {
                            map["EnableCancelMigrateUnit"] = self.enableCancelMigrateUnit!
                        }
                        if self.enableMigrateUnit != nil {
                            map["EnableMigrateUnit"] = self.enableMigrateUnit!
                        }
                        if self.manualMigrate != nil {
                            map["ManualMigrate"] = self.manualMigrate!
                        }
                        if self.nodeId != nil {
                            map["NodeId"] = self.nodeId!
                        }
                        if self.unitCpu != nil {
                            map["UnitCpu"] = self.unitCpu!
                        }
                        if self.unitDataSize != nil {
                            map["UnitDataSize"] = self.unitDataSize!
                        }
                        if self.unitId != nil {
                            map["UnitId"] = self.unitId!
                        }
                        if self.unitMemory != nil {
                            map["UnitMemory"] = self.unitMemory!
                        }
                        if self.unitStatus != nil {
                            map["UnitStatus"] = self.unitStatus!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EnableCancelMigrateUnit") {
                            self.enableCancelMigrateUnit = dict["EnableCancelMigrateUnit"] as! Bool
                        }
                        if dict.keys.contains("EnableMigrateUnit") {
                            self.enableMigrateUnit = dict["EnableMigrateUnit"] as! Bool
                        }
                        if dict.keys.contains("ManualMigrate") {
                            self.manualMigrate = dict["ManualMigrate"] as! Bool
                        }
                        if dict.keys.contains("NodeId") {
                            self.nodeId = dict["NodeId"] as! String
                        }
                        if dict.keys.contains("UnitCpu") {
                            self.unitCpu = dict["UnitCpu"] as! Double
                        }
                        if dict.keys.contains("UnitDataSize") {
                            self.unitDataSize = dict["UnitDataSize"] as! Int64
                        }
                        if dict.keys.contains("UnitId") {
                            self.unitId = dict["UnitId"] as! String
                        }
                        if dict.keys.contains("UnitMemory") {
                            self.unitMemory = dict["UnitMemory"] as! Double
                        }
                        if dict.keys.contains("UnitStatus") {
                            self.unitStatus = dict["UnitStatus"] as! String
                        }
                    }
                }
                public var isPrimaryTenantZone: String?

                public var tenantZoneId: String?

                public var tenantZoneRole: String?

                public var units: [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones.Units]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.isPrimaryTenantZone != nil {
                        map["IsPrimaryTenantZone"] = self.isPrimaryTenantZone!
                    }
                    if self.tenantZoneId != nil {
                        map["TenantZoneId"] = self.tenantZoneId!
                    }
                    if self.tenantZoneRole != nil {
                        map["TenantZoneRole"] = self.tenantZoneRole!
                    }
                    if self.units != nil {
                        var tmp : [Any] = []
                        for k in self.units! {
                            tmp.append(k.toMap())
                        }
                        map["Units"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IsPrimaryTenantZone") {
                        self.isPrimaryTenantZone = dict["IsPrimaryTenantZone"] as! String
                    }
                    if dict.keys.contains("TenantZoneId") {
                        self.tenantZoneId = dict["TenantZoneId"] as! String
                    }
                    if dict.keys.contains("TenantZoneRole") {
                        self.tenantZoneRole = dict["TenantZoneRole"] as! String
                    }
                    if dict.keys.contains("Units") {
                        self.units = dict["Units"] as! [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones.Units]
                    }
                }
            }
            public var tenantCpu: Double?

            public var tenantDeployType: String?

            public var tenantId: String?

            public var tenantMemory: Double?

            public var tenantMode: String?

            public var tenantName: String?

            public var tenantStatus: String?

            public var tenantUnitNum: Int32?

            public var tenantZones: [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tenantCpu != nil {
                    map["TenantCpu"] = self.tenantCpu!
                }
                if self.tenantDeployType != nil {
                    map["TenantDeployType"] = self.tenantDeployType!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.tenantMemory != nil {
                    map["TenantMemory"] = self.tenantMemory!
                }
                if self.tenantMode != nil {
                    map["TenantMode"] = self.tenantMode!
                }
                if self.tenantName != nil {
                    map["TenantName"] = self.tenantName!
                }
                if self.tenantStatus != nil {
                    map["TenantStatus"] = self.tenantStatus!
                }
                if self.tenantUnitNum != nil {
                    map["TenantUnitNum"] = self.tenantUnitNum!
                }
                if self.tenantZones != nil {
                    var tmp : [Any] = []
                    for k in self.tenantZones! {
                        tmp.append(k.toMap())
                    }
                    map["TenantZones"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TenantCpu") {
                    self.tenantCpu = dict["TenantCpu"] as! Double
                }
                if dict.keys.contains("TenantDeployType") {
                    self.tenantDeployType = dict["TenantDeployType"] as! String
                }
                if dict.keys.contains("TenantId") {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("TenantMemory") {
                    self.tenantMemory = dict["TenantMemory"] as! Double
                }
                if dict.keys.contains("TenantMode") {
                    self.tenantMode = dict["TenantMode"] as! String
                }
                if dict.keys.contains("TenantName") {
                    self.tenantName = dict["TenantName"] as! String
                }
                if dict.keys.contains("TenantStatus") {
                    self.tenantStatus = dict["TenantStatus"] as! String
                }
                if dict.keys.contains("TenantUnitNum") {
                    self.tenantUnitNum = dict["TenantUnitNum"] as! Int32
                }
                if dict.keys.contains("TenantZones") {
                    self.tenantZones = dict["TenantZones"] as! [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants.TenantZones]
                }
            }
        }
        public class Zones : Tea.TeaModel {
            public class Nodes : Tea.TeaModel {
                public class NodeResource : Tea.TeaModel {
                    public class Cpu : Tea.TeaModel {
                        public var totalCpu: Int32?

                        public var usedCpu: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.totalCpu != nil {
                                map["TotalCpu"] = self.totalCpu!
                            }
                            if self.usedCpu != nil {
                                map["UsedCpu"] = self.usedCpu!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("TotalCpu") {
                                self.totalCpu = dict["TotalCpu"] as! Int32
                            }
                            if dict.keys.contains("UsedCpu") {
                                self.usedCpu = dict["UsedCpu"] as! Double
                            }
                        }
                    }
                    public class DiskSize : Tea.TeaModel {
                        public var totalDiskSize: Double?

                        public var usedDiskSize: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.totalDiskSize != nil {
                                map["TotalDiskSize"] = self.totalDiskSize!
                            }
                            if self.usedDiskSize != nil {
                                map["UsedDiskSize"] = self.usedDiskSize!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("TotalDiskSize") {
                                self.totalDiskSize = dict["TotalDiskSize"] as! Double
                            }
                            if dict.keys.contains("UsedDiskSize") {
                                self.usedDiskSize = dict["UsedDiskSize"] as! Double
                            }
                        }
                    }
                    public class Memory : Tea.TeaModel {
                        public var totalMemory: Int64?

                        public var usedMemory: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.totalMemory != nil {
                                map["TotalMemory"] = self.totalMemory!
                            }
                            if self.usedMemory != nil {
                                map["UsedMemory"] = self.usedMemory!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("TotalMemory") {
                                self.totalMemory = dict["TotalMemory"] as! Int64
                            }
                            if dict.keys.contains("UsedMemory") {
                                self.usedMemory = dict["UsedMemory"] as! Double
                            }
                        }
                    }
                    public var cpu: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.Cpu?

                    public var diskSize: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.DiskSize?

                    public var memory: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.Memory?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.cpu?.validate()
                        try self.diskSize?.validate()
                        try self.memory?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cpu != nil {
                            map["Cpu"] = self.cpu?.toMap()
                        }
                        if self.diskSize != nil {
                            map["DiskSize"] = self.diskSize?.toMap()
                        }
                        if self.memory != nil {
                            map["Memory"] = self.memory?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Cpu") {
                            var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.Cpu()
                            model.fromMap(dict["Cpu"] as! [String: Any])
                            self.cpu = model
                        }
                        if dict.keys.contains("DiskSize") {
                            var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.DiskSize()
                            model.fromMap(dict["DiskSize"] as! [String: Any])
                            self.diskSize = model
                        }
                        if dict.keys.contains("Memory") {
                            var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource.Memory()
                            model.fromMap(dict["Memory"] as! [String: Any])
                            self.memory = model
                        }
                    }
                }
                public var nodeCopyId: Int64?

                public var nodeId: String?

                public var nodeResource: [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource]?

                public var nodeStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeCopyId != nil {
                        map["NodeCopyId"] = self.nodeCopyId!
                    }
                    if self.nodeId != nil {
                        map["NodeId"] = self.nodeId!
                    }
                    if self.nodeResource != nil {
                        var tmp : [Any] = []
                        for k in self.nodeResource! {
                            tmp.append(k.toMap())
                        }
                        map["NodeResource"] = tmp
                    }
                    if self.nodeStatus != nil {
                        map["NodeStatus"] = self.nodeStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeCopyId") {
                        self.nodeCopyId = dict["NodeCopyId"] as! Int64
                    }
                    if dict.keys.contains("NodeId") {
                        self.nodeId = dict["NodeId"] as! String
                    }
                    if dict.keys.contains("NodeResource") {
                        self.nodeResource = dict["NodeResource"] as! [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes.NodeResource]
                    }
                    if dict.keys.contains("NodeStatus") {
                        self.nodeStatus = dict["NodeStatus"] as! String
                    }
                }
            }
            public class ZoneResource : Tea.TeaModel {
                public class DiskSize : Tea.TeaModel {
                    public var maxDiskUsedObServer: [String]?

                    public var maxDiskUsedPercent: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.maxDiskUsedObServer != nil {
                            map["MaxDiskUsedObServer"] = self.maxDiskUsedObServer!
                        }
                        if self.maxDiskUsedPercent != nil {
                            map["MaxDiskUsedPercent"] = self.maxDiskUsedPercent!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("MaxDiskUsedObServer") {
                            self.maxDiskUsedObServer = dict["MaxDiskUsedObServer"] as! [String]
                        }
                        if dict.keys.contains("MaxDiskUsedPercent") {
                            self.maxDiskUsedPercent = dict["MaxDiskUsedPercent"] as! Double
                        }
                    }
                }
                public var diskSize: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.ZoneResource.DiskSize?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.diskSize?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.diskSize != nil {
                        map["DiskSize"] = self.diskSize?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DiskSize") {
                        var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.ZoneResource.DiskSize()
                        model.fromMap(dict["DiskSize"] as! [String: Any])
                        self.diskSize = model
                    }
                }
            }
            public var nodes: [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes]?

            public var region: String?

            public var zoneDisk: String?

            public var zoneId: String?

            public var zoneResource: DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.ZoneResource?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.zoneResource?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nodes != nil {
                    var tmp : [Any] = []
                    for k in self.nodes! {
                        tmp.append(k.toMap())
                    }
                    map["Nodes"] = tmp
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.zoneDisk != nil {
                    map["ZoneDisk"] = self.zoneDisk!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                if self.zoneResource != nil {
                    map["ZoneResource"] = self.zoneResource?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Nodes") {
                    self.nodes = dict["Nodes"] as! [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.Nodes]
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ZoneDisk") {
                    self.zoneDisk = dict["ZoneDisk"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
                if dict.keys.contains("ZoneResource") {
                    var model = DescribeInstanceTopologyResponseBody.InstanceTopology.Zones.ZoneResource()
                    model.fromMap(dict["ZoneResource"] as! [String: Any])
                    self.zoneResource = model
                }
            }
        }
        public var tenants: [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants]?

        public var zones: [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenants != nil {
                var tmp : [Any] = []
                for k in self.tenants! {
                    tmp.append(k.toMap())
                }
                map["Tenants"] = tmp
            }
            if self.zones != nil {
                var tmp : [Any] = []
                for k in self.zones! {
                    tmp.append(k.toMap())
                }
                map["Zones"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tenants") {
                self.tenants = dict["Tenants"] as! [DescribeInstanceTopologyResponseBody.InstanceTopology.Tenants]
            }
            if dict.keys.contains("Zones") {
                self.zones = dict["Zones"] as! [DescribeInstanceTopologyResponseBody.InstanceTopology.Zones]
            }
        }
    }
    public var instanceTopology: DescribeInstanceTopologyResponseBody.InstanceTopology?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceTopology?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceTopology != nil {
            map["InstanceTopology"] = self.instanceTopology?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceTopology") {
            var model = DescribeInstanceTopologyResponseBody.InstanceTopology()
            model.fromMap(dict["InstanceTopology"] as! [String: Any])
            self.instanceTopology = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceTopologyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceTopologyResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceTopologyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var searchKey: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Resource : Tea.TeaModel {
            public class Cpu : Tea.TeaModel {
                public var totalCpu: Int64?

                public var unitCpu: Int64?

                public var usedCpu: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalCpu != nil {
                        map["TotalCpu"] = self.totalCpu!
                    }
                    if self.unitCpu != nil {
                        map["UnitCpu"] = self.unitCpu!
                    }
                    if self.usedCpu != nil {
                        map["UsedCpu"] = self.usedCpu!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalCpu") {
                        self.totalCpu = dict["TotalCpu"] as! Int64
                    }
                    if dict.keys.contains("UnitCpu") {
                        self.unitCpu = dict["UnitCpu"] as! Int64
                    }
                    if dict.keys.contains("UsedCpu") {
                        self.usedCpu = dict["UsedCpu"] as! Int64
                    }
                }
            }
            public class DiskSize : Tea.TeaModel {
                public var totalDiskSize: Int64?

                public var unitDiskSize: Int64?

                public var usedDiskSize: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalDiskSize != nil {
                        map["TotalDiskSize"] = self.totalDiskSize!
                    }
                    if self.unitDiskSize != nil {
                        map["UnitDiskSize"] = self.unitDiskSize!
                    }
                    if self.usedDiskSize != nil {
                        map["UsedDiskSize"] = self.usedDiskSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalDiskSize") {
                        self.totalDiskSize = dict["TotalDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UnitDiskSize") {
                        self.unitDiskSize = dict["UnitDiskSize"] as! Int64
                    }
                    if dict.keys.contains("UsedDiskSize") {
                        self.usedDiskSize = dict["UsedDiskSize"] as! Int64
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var totalMemory: Int64?

                public var unitMemory: Int64?

                public var usedMemory: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalMemory != nil {
                        map["TotalMemory"] = self.totalMemory!
                    }
                    if self.unitMemory != nil {
                        map["UnitMemory"] = self.unitMemory!
                    }
                    if self.usedMemory != nil {
                        map["UsedMemory"] = self.usedMemory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalMemory") {
                        self.totalMemory = dict["TotalMemory"] as! Int64
                    }
                    if dict.keys.contains("UnitMemory") {
                        self.unitMemory = dict["UnitMemory"] as! Int64
                    }
                    if dict.keys.contains("UsedMemory") {
                        self.usedMemory = dict["UsedMemory"] as! Int64
                    }
                }
            }
            public var cpu: DescribeInstancesResponseBody.Instances.Resource.Cpu?

            public var diskSize: DescribeInstancesResponseBody.Instances.Resource.DiskSize?

            public var memory: DescribeInstancesResponseBody.Instances.Resource.Memory?

            public var unitCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cpu?.validate()
                try self.diskSize?.validate()
                try self.memory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu?.toMap()
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.unitCount != nil {
                    map["UnitCount"] = self.unitCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") {
                    var model = DescribeInstancesResponseBody.Instances.Resource.Cpu()
                    model.fromMap(dict["Cpu"] as! [String: Any])
                    self.cpu = model
                }
                if dict.keys.contains("DiskSize") {
                    var model = DescribeInstancesResponseBody.Instances.Resource.DiskSize()
                    model.fromMap(dict["DiskSize"] as! [String: Any])
                    self.diskSize = model
                }
                if dict.keys.contains("Memory") {
                    var model = DescribeInstancesResponseBody.Instances.Resource.Memory()
                    model.fromMap(dict["Memory"] as! [String: Any])
                    self.memory = model
                }
                if dict.keys.contains("UnitCount") {
                    self.unitCount = dict["UnitCount"] as! Int64
                }
            }
        }
        public var availableZones: [String]?

        public var commodityCode: String?

        public var cpu: Int32?

        public var createTime: String?

        public var deployMode: String?

        public var deployType: String?

        public var diskSize: String?

        public var diskType: String?

        public var enableUpgradeNodes: Bool?

        public var expireSeconds: Int32?

        public var expireTime: String?

        public var instanceClass: String?

        public var instanceId: String?

        public var instanceName: String?

        public var maintainTime: String?

        public var mem: Int64?

        public var payType: String?

        public var resource: DescribeInstancesResponseBody.Instances.Resource?

        public var resourceGroupId: String?

        public var securityIps: [String]?

        public var series: String?

        public var state: String?

        public var usedDiskSize: Int64?

        public var version: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableZones != nil {
                map["AvailableZones"] = self.availableZones!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.diskSize != nil {
                map["DiskSize"] = self.diskSize!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.enableUpgradeNodes != nil {
                map["EnableUpgradeNodes"] = self.enableUpgradeNodes!
            }
            if self.expireSeconds != nil {
                map["ExpireSeconds"] = self.expireSeconds!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceClass != nil {
                map["InstanceClass"] = self.instanceClass!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.maintainTime != nil {
                map["MaintainTime"] = self.maintainTime!
            }
            if self.mem != nil {
                map["Mem"] = self.mem!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.resource != nil {
                map["Resource"] = self.resource?.toMap()
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.usedDiskSize != nil {
                map["UsedDiskSize"] = self.usedDiskSize!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableZones") {
                self.availableZones = dict["AvailableZones"] as! [String]
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployMode") {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("DiskSize") {
                self.diskSize = dict["DiskSize"] as! String
            }
            if dict.keys.contains("DiskType") {
                self.diskType = dict["DiskType"] as! String
            }
            if dict.keys.contains("EnableUpgradeNodes") {
                self.enableUpgradeNodes = dict["EnableUpgradeNodes"] as! Bool
            }
            if dict.keys.contains("ExpireSeconds") {
                self.expireSeconds = dict["ExpireSeconds"] as! Int32
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InstanceClass") {
                self.instanceClass = dict["InstanceClass"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("MaintainTime") {
                self.maintainTime = dict["MaintainTime"] as! String
            }
            if dict.keys.contains("Mem") {
                self.mem = dict["Mem"] as! Int64
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Resource") {
                var model = DescribeInstancesResponseBody.Instances.Resource()
                model.fromMap(dict["Resource"] as! [String: Any])
                self.resource = model
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecurityIps") {
                self.securityIps = dict["SecurityIps"] as! [String]
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("UsedDiskSize") {
                self.usedDiskSize = dict["UsedDiskSize"] as! Int64
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var instances: [DescribeInstancesResponseBody.Instances]?

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
            self.instances = dict["Instances"] as! [DescribeInstancesResponseBody.Instances]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstancesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNodeMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var metrics: String?

    public var nodeIdList: String?

    public var nodeName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.nodeIdList != nil {
            map["NodeIdList"] = self.nodeIdList!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Metrics") {
            self.metrics = dict["Metrics"] as! String
        }
        if dict.keys.contains("NodeIdList") {
            self.nodeIdList = dict["NodeIdList"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeNodeMetricsResponseBody : Tea.TeaModel {
    public var nodeMetrics: String?

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
        if self.nodeMetrics != nil {
            map["NodeMetrics"] = self.nodeMetrics!
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
        if dict.keys.contains("NodeMetrics") {
            self.nodeMetrics = dict["NodeMetrics"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeNodeMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeMetricsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeNodeMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class DescribeOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DestConfig : Tea.TeaModel {
            public var enableMsgTrace: Bool?

            public var endpointId: String?

            public var endpointType: String?

            public var msgTags: String?

            public var partition: Int32?

            public var partitionMode: String?

            public var producerGroup: String?

            public var sendMsgTimeout: Int64?

            public var sequenceEnable: Bool?

            public var sequenceStartTimestamp: Int64?

            public var serializerType: String?

            public var topicType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMsgTrace != nil {
                    map["EnableMsgTrace"] = self.enableMsgTrace!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.msgTags != nil {
                    map["MsgTags"] = self.msgTags!
                }
                if self.partition != nil {
                    map["Partition"] = self.partition!
                }
                if self.partitionMode != nil {
                    map["PartitionMode"] = self.partitionMode!
                }
                if self.producerGroup != nil {
                    map["ProducerGroup"] = self.producerGroup!
                }
                if self.sendMsgTimeout != nil {
                    map["SendMsgTimeout"] = self.sendMsgTimeout!
                }
                if self.sequenceEnable != nil {
                    map["SequenceEnable"] = self.sequenceEnable!
                }
                if self.sequenceStartTimestamp != nil {
                    map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
                }
                if self.serializerType != nil {
                    map["SerializerType"] = self.serializerType!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMsgTrace") {
                    self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
                }
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointType") {
                    self.endpointType = dict["EndpointType"] as! String
                }
                if dict.keys.contains("MsgTags") {
                    self.msgTags = dict["MsgTags"] as! String
                }
                if dict.keys.contains("Partition") {
                    self.partition = dict["Partition"] as! Int32
                }
                if dict.keys.contains("PartitionMode") {
                    self.partitionMode = dict["PartitionMode"] as! String
                }
                if dict.keys.contains("ProducerGroup") {
                    self.producerGroup = dict["ProducerGroup"] as! String
                }
                if dict.keys.contains("SendMsgTimeout") {
                    self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
                }
                if dict.keys.contains("SequenceEnable") {
                    self.sequenceEnable = dict["SequenceEnable"] as! Bool
                }
                if dict.keys.contains("SequenceStartTimestamp") {
                    self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
                }
                if dict.keys.contains("SerializerType") {
                    self.serializerType = dict["SerializerType"] as! String
                }
                if dict.keys.contains("TopicType") {
                    self.topicType = dict["TopicType"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var count: Int32?

            public var creator: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
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
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("Creator") {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class SourceConfig : Tea.TeaModel {
            public var enableMsgTrace: Bool?

            public var endpointId: String?

            public var endpointType: String?

            public var msgTags: String?

            public var partition: Int32?

            public var partitionMode: String?

            public var producerGroup: String?

            public var sendMsgTimeout: Int64?

            public var sequenceEnable: Bool?

            public var sequenceStartTimestamp: Int64?

            public var serializerType: String?

            public var topicType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMsgTrace != nil {
                    map["EnableMsgTrace"] = self.enableMsgTrace!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.msgTags != nil {
                    map["MsgTags"] = self.msgTags!
                }
                if self.partition != nil {
                    map["Partition"] = self.partition!
                }
                if self.partitionMode != nil {
                    map["PartitionMode"] = self.partitionMode!
                }
                if self.producerGroup != nil {
                    map["ProducerGroup"] = self.producerGroup!
                }
                if self.sendMsgTimeout != nil {
                    map["SendMsgTimeout"] = self.sendMsgTimeout!
                }
                if self.sequenceEnable != nil {
                    map["SequenceEnable"] = self.sequenceEnable!
                }
                if self.sequenceStartTimestamp != nil {
                    map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
                }
                if self.serializerType != nil {
                    map["SerializerType"] = self.serializerType!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMsgTrace") {
                    self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
                }
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointType") {
                    self.endpointType = dict["EndpointType"] as! String
                }
                if dict.keys.contains("MsgTags") {
                    self.msgTags = dict["MsgTags"] as! String
                }
                if dict.keys.contains("Partition") {
                    self.partition = dict["Partition"] as! Int32
                }
                if dict.keys.contains("PartitionMode") {
                    self.partitionMode = dict["PartitionMode"] as! String
                }
                if dict.keys.contains("ProducerGroup") {
                    self.producerGroup = dict["ProducerGroup"] as! String
                }
                if dict.keys.contains("SendMsgTimeout") {
                    self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
                }
                if dict.keys.contains("SequenceEnable") {
                    self.sequenceEnable = dict["SequenceEnable"] as! Bool
                }
                if dict.keys.contains("SequenceStartTimestamp") {
                    self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
                }
                if dict.keys.contains("SerializerType") {
                    self.serializerType = dict["SerializerType"] as! String
                }
                if dict.keys.contains("TopicType") {
                    self.topicType = dict["TopicType"] as! String
                }
            }
        }
        public class Steps : Tea.TeaModel {
            public class ExtraInfo : Tea.TeaModel {
                public class ErrorDetails : Tea.TeaModel {
                    public var code: String?

                    public var level: String?

                    public var message: String?

                    public var proposal: String?

                    public override init() {
                        super.init()
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
                        if self.level != nil {
                            map["Level"] = self.level!
                        }
                        if self.message != nil {
                            map["Message"] = self.message!
                        }
                        if self.proposal != nil {
                            map["Proposal"] = self.proposal!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Level") {
                            self.level = dict["Level"] as! String
                        }
                        if dict.keys.contains("Message") {
                            self.message = dict["Message"] as! String
                        }
                        if dict.keys.contains("Proposal") {
                            self.proposal = dict["Proposal"] as! String
                        }
                    }
                }
                public var errorCode: String?

                public var errorDetails: [DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo.ErrorDetails]?

                public var errorMsg: String?

                public var errorParam: [String: String]?

                public var failedTime: String?

                public override init() {
                    super.init()
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
                    if self.errorDetails != nil {
                        var tmp : [Any] = []
                        for k in self.errorDetails! {
                            tmp.append(k.toMap())
                        }
                        map["ErrorDetails"] = tmp
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.errorParam != nil {
                        map["ErrorParam"] = self.errorParam!
                    }
                    if self.failedTime != nil {
                        map["FailedTime"] = self.failedTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorDetails") {
                        self.errorDetails = dict["ErrorDetails"] as! [DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo.ErrorDetails]
                    }
                    if dict.keys.contains("ErrorMsg") {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ErrorParam") {
                        self.errorParam = dict["ErrorParam"] as! [String: String]
                    }
                    if dict.keys.contains("FailedTime") {
                        self.failedTime = dict["FailedTime"] as! String
                    }
                }
            }
            public class StepInfo : Tea.TeaModel {
                public class ConnectorFullProgressOverview : Tea.TeaModel {
                    public var estimatedRemainingTimeOfSec: Int64?

                    public var estimatedTotalCount: Int64?

                    public var finishedCount: Int64?

                    public var progress: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.estimatedRemainingTimeOfSec != nil {
                            map["EstimatedRemainingTimeOfSec"] = self.estimatedRemainingTimeOfSec!
                        }
                        if self.estimatedTotalCount != nil {
                            map["EstimatedTotalCount"] = self.estimatedTotalCount!
                        }
                        if self.finishedCount != nil {
                            map["FinishedCount"] = self.finishedCount!
                        }
                        if self.progress != nil {
                            map["Progress"] = self.progress!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EstimatedRemainingTimeOfSec") {
                            self.estimatedRemainingTimeOfSec = dict["EstimatedRemainingTimeOfSec"] as! Int64
                        }
                        if dict.keys.contains("EstimatedTotalCount") {
                            self.estimatedTotalCount = dict["EstimatedTotalCount"] as! Int64
                        }
                        if dict.keys.contains("FinishedCount") {
                            self.finishedCount = dict["FinishedCount"] as! Int64
                        }
                        if dict.keys.contains("Progress") {
                            self.progress = dict["Progress"] as! Int32
                        }
                    }
                }
                public var capacity: Int64?

                public var checkpoint: String?

                public var connectorFullProgressOverview: DescribeOmsOpenAPIProjectResponseBody.Data.Steps.StepInfo.ConnectorFullProgressOverview?

                public var deployId: String?

                public var dstIops: Int64?

                public var dstRps: Int64?

                public var dstRpsRef: Int64?

                public var dstRt: Int64?

                public var dstRtRef: Int64?

                public var gmt: Int64?

                public var inconsistencies: Int64?

                public var incrTimestampCheckpoint: Int64?

                public var jobId: String?

                public var processedRecords: Int64?

                public var skipped: Bool?

                public var srcIops: Int64?

                public var srcIopsRef: Int64?

                public var srcRps: Int64?

                public var srcRpsRef: Int64?

                public var srcRt: Int64?

                public var srcRtRef: Int64?

                public var validated: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.connectorFullProgressOverview?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capacity != nil {
                        map["Capacity"] = self.capacity!
                    }
                    if self.checkpoint != nil {
                        map["Checkpoint"] = self.checkpoint!
                    }
                    if self.connectorFullProgressOverview != nil {
                        map["ConnectorFullProgressOverview"] = self.connectorFullProgressOverview?.toMap()
                    }
                    if self.deployId != nil {
                        map["DeployId"] = self.deployId!
                    }
                    if self.dstIops != nil {
                        map["DstIops"] = self.dstIops!
                    }
                    if self.dstRps != nil {
                        map["DstRps"] = self.dstRps!
                    }
                    if self.dstRpsRef != nil {
                        map["DstRpsRef"] = self.dstRpsRef!
                    }
                    if self.dstRt != nil {
                        map["DstRt"] = self.dstRt!
                    }
                    if self.dstRtRef != nil {
                        map["DstRtRef"] = self.dstRtRef!
                    }
                    if self.gmt != nil {
                        map["Gmt"] = self.gmt!
                    }
                    if self.inconsistencies != nil {
                        map["Inconsistencies"] = self.inconsistencies!
                    }
                    if self.incrTimestampCheckpoint != nil {
                        map["IncrTimestampCheckpoint"] = self.incrTimestampCheckpoint!
                    }
                    if self.jobId != nil {
                        map["JobId"] = self.jobId!
                    }
                    if self.processedRecords != nil {
                        map["ProcessedRecords"] = self.processedRecords!
                    }
                    if self.skipped != nil {
                        map["Skipped"] = self.skipped!
                    }
                    if self.srcIops != nil {
                        map["SrcIops"] = self.srcIops!
                    }
                    if self.srcIopsRef != nil {
                        map["SrcIopsRef"] = self.srcIopsRef!
                    }
                    if self.srcRps != nil {
                        map["SrcRps"] = self.srcRps!
                    }
                    if self.srcRpsRef != nil {
                        map["SrcRpsRef"] = self.srcRpsRef!
                    }
                    if self.srcRt != nil {
                        map["SrcRt"] = self.srcRt!
                    }
                    if self.srcRtRef != nil {
                        map["SrcRtRef"] = self.srcRtRef!
                    }
                    if self.validated != nil {
                        map["Validated"] = self.validated!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Capacity") {
                        self.capacity = dict["Capacity"] as! Int64
                    }
                    if dict.keys.contains("Checkpoint") {
                        self.checkpoint = dict["Checkpoint"] as! String
                    }
                    if dict.keys.contains("ConnectorFullProgressOverview") {
                        var model = DescribeOmsOpenAPIProjectResponseBody.Data.Steps.StepInfo.ConnectorFullProgressOverview()
                        model.fromMap(dict["ConnectorFullProgressOverview"] as! [String: Any])
                        self.connectorFullProgressOverview = model
                    }
                    if dict.keys.contains("DeployId") {
                        self.deployId = dict["DeployId"] as! String
                    }
                    if dict.keys.contains("DstIops") {
                        self.dstIops = dict["DstIops"] as! Int64
                    }
                    if dict.keys.contains("DstRps") {
                        self.dstRps = dict["DstRps"] as! Int64
                    }
                    if dict.keys.contains("DstRpsRef") {
                        self.dstRpsRef = dict["DstRpsRef"] as! Int64
                    }
                    if dict.keys.contains("DstRt") {
                        self.dstRt = dict["DstRt"] as! Int64
                    }
                    if dict.keys.contains("DstRtRef") {
                        self.dstRtRef = dict["DstRtRef"] as! Int64
                    }
                    if dict.keys.contains("Gmt") {
                        self.gmt = dict["Gmt"] as! Int64
                    }
                    if dict.keys.contains("Inconsistencies") {
                        self.inconsistencies = dict["Inconsistencies"] as! Int64
                    }
                    if dict.keys.contains("IncrTimestampCheckpoint") {
                        self.incrTimestampCheckpoint = dict["IncrTimestampCheckpoint"] as! Int64
                    }
                    if dict.keys.contains("JobId") {
                        self.jobId = dict["JobId"] as! String
                    }
                    if dict.keys.contains("ProcessedRecords") {
                        self.processedRecords = dict["ProcessedRecords"] as! Int64
                    }
                    if dict.keys.contains("Skipped") {
                        self.skipped = dict["Skipped"] as! Bool
                    }
                    if dict.keys.contains("SrcIops") {
                        self.srcIops = dict["SrcIops"] as! Int64
                    }
                    if dict.keys.contains("SrcIopsRef") {
                        self.srcIopsRef = dict["SrcIopsRef"] as! Int64
                    }
                    if dict.keys.contains("SrcRps") {
                        self.srcRps = dict["SrcRps"] as! Int64
                    }
                    if dict.keys.contains("SrcRpsRef") {
                        self.srcRpsRef = dict["SrcRpsRef"] as! Int64
                    }
                    if dict.keys.contains("SrcRt") {
                        self.srcRt = dict["SrcRt"] as! Int64
                    }
                    if dict.keys.contains("SrcRtRef") {
                        self.srcRtRef = dict["SrcRtRef"] as! Int64
                    }
                    if dict.keys.contains("Validated") {
                        self.validated = dict["Validated"] as! Bool
                    }
                }
            }
            public var estimatedRemainingSeconds: Int64?

            public var extraInfo: DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo?

            public var finishTime: String?

            public var interactive: Bool?

            public var startTime: String?

            public var stepDescription: String?

            public var stepInfo: DescribeOmsOpenAPIProjectResponseBody.Data.Steps.StepInfo?

            public var stepName: String?

            public var stepOrder: Int32?

            public var stepProgress: Int32?

            public var stepStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.extraInfo?.validate()
                try self.stepInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.estimatedRemainingSeconds != nil {
                    map["EstimatedRemainingSeconds"] = self.estimatedRemainingSeconds!
                }
                if self.extraInfo != nil {
                    map["ExtraInfo"] = self.extraInfo?.toMap()
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.interactive != nil {
                    map["Interactive"] = self.interactive!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.stepDescription != nil {
                    map["StepDescription"] = self.stepDescription!
                }
                if self.stepInfo != nil {
                    map["StepInfo"] = self.stepInfo?.toMap()
                }
                if self.stepName != nil {
                    map["StepName"] = self.stepName!
                }
                if self.stepOrder != nil {
                    map["StepOrder"] = self.stepOrder!
                }
                if self.stepProgress != nil {
                    map["StepProgress"] = self.stepProgress!
                }
                if self.stepStatus != nil {
                    map["StepStatus"] = self.stepStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EstimatedRemainingSeconds") {
                    self.estimatedRemainingSeconds = dict["EstimatedRemainingSeconds"] as! Int64
                }
                if dict.keys.contains("ExtraInfo") {
                    var model = DescribeOmsOpenAPIProjectResponseBody.Data.Steps.ExtraInfo()
                    model.fromMap(dict["ExtraInfo"] as! [String: Any])
                    self.extraInfo = model
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("Interactive") {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StepDescription") {
                    self.stepDescription = dict["StepDescription"] as! String
                }
                if dict.keys.contains("StepInfo") {
                    var model = DescribeOmsOpenAPIProjectResponseBody.Data.Steps.StepInfo()
                    model.fromMap(dict["StepInfo"] as! [String: Any])
                    self.stepInfo = model
                }
                if dict.keys.contains("StepName") {
                    self.stepName = dict["StepName"] as! String
                }
                if dict.keys.contains("StepOrder") {
                    self.stepOrder = dict["StepOrder"] as! Int32
                }
                if dict.keys.contains("StepProgress") {
                    self.stepProgress = dict["StepProgress"] as! Int32
                }
                if dict.keys.contains("StepStatus") {
                    self.stepStatus = dict["StepStatus"] as! String
                }
            }
        }
        public class TransferMapping : Tea.TeaModel {
            public class Databases : Tea.TeaModel {
                public class Tables : Tea.TeaModel {
                    public class AdbTableSchema : Tea.TeaModel {
                        public var distributedKeys: [String]?

                        public var partitionLifeCycle: Int32?

                        public var partitionStatement: String?

                        public var primaryKeys: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.distributedKeys != nil {
                                map["DistributedKeys"] = self.distributedKeys!
                            }
                            if self.partitionLifeCycle != nil {
                                map["PartitionLifeCycle"] = self.partitionLifeCycle!
                            }
                            if self.partitionStatement != nil {
                                map["PartitionStatement"] = self.partitionStatement!
                            }
                            if self.primaryKeys != nil {
                                map["PrimaryKeys"] = self.primaryKeys!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("DistributedKeys") {
                                self.distributedKeys = dict["DistributedKeys"] as! [String]
                            }
                            if dict.keys.contains("PartitionLifeCycle") {
                                self.partitionLifeCycle = dict["PartitionLifeCycle"] as! Int32
                            }
                            if dict.keys.contains("PartitionStatement") {
                                self.partitionStatement = dict["PartitionStatement"] as! String
                            }
                            if dict.keys.contains("PrimaryKeys") {
                                self.primaryKeys = dict["PrimaryKeys"] as! [String]
                            }
                        }
                    }
                    public var adbTableSchema: DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables.AdbTableSchema?

                    public var filterColumns: [String]?

                    public var mappedName: String?

                    public var shardColumns: [String]?

                    public var tableId: String?

                    public var tableName: String?

                    public var type: String?

                    public var whereClause: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.adbTableSchema?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.adbTableSchema != nil {
                            map["AdbTableSchema"] = self.adbTableSchema?.toMap()
                        }
                        if self.filterColumns != nil {
                            map["FilterColumns"] = self.filterColumns!
                        }
                        if self.mappedName != nil {
                            map["MappedName"] = self.mappedName!
                        }
                        if self.shardColumns != nil {
                            map["ShardColumns"] = self.shardColumns!
                        }
                        if self.tableId != nil {
                            map["TableId"] = self.tableId!
                        }
                        if self.tableName != nil {
                            map["TableName"] = self.tableName!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.whereClause != nil {
                            map["WhereClause"] = self.whereClause!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AdbTableSchema") {
                            var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables.AdbTableSchema()
                            model.fromMap(dict["AdbTableSchema"] as! [String: Any])
                            self.adbTableSchema = model
                        }
                        if dict.keys.contains("FilterColumns") {
                            self.filterColumns = dict["FilterColumns"] as! [String]
                        }
                        if dict.keys.contains("MappedName") {
                            self.mappedName = dict["MappedName"] as! String
                        }
                        if dict.keys.contains("ShardColumns") {
                            self.shardColumns = dict["ShardColumns"] as! [String]
                        }
                        if dict.keys.contains("TableId") {
                            self.tableId = dict["TableId"] as! String
                        }
                        if dict.keys.contains("TableName") {
                            self.tableName = dict["TableName"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("WhereClause") {
                            self.whereClause = dict["WhereClause"] as! String
                        }
                    }
                }
                public var databaseId: String?

                public var databaseName: String?

                public var mappedName: String?

                public var tables: [DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables]?

                public var tenantName: String?

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
                    if self.databaseId != nil {
                        map["DatabaseId"] = self.databaseId!
                    }
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.mappedName != nil {
                        map["MappedName"] = self.mappedName!
                    }
                    if self.tables != nil {
                        var tmp : [Any] = []
                        for k in self.tables! {
                            tmp.append(k.toMap())
                        }
                        map["Tables"] = tmp
                    }
                    if self.tenantName != nil {
                        map["TenantName"] = self.tenantName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DatabaseId") {
                        self.databaseId = dict["DatabaseId"] as! String
                    }
                    if dict.keys.contains("DatabaseName") {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("MappedName") {
                        self.mappedName = dict["MappedName"] as! String
                    }
                    if dict.keys.contains("Tables") {
                        self.tables = dict["Tables"] as! [DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases.Tables]
                    }
                    if dict.keys.contains("TenantName") {
                        self.tenantName = dict["TenantName"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var databases: [DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases]?

            public var mode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.databases != nil {
                    var tmp : [Any] = []
                    for k in self.databases! {
                        tmp.append(k.toMap())
                    }
                    map["Databases"] = tmp
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Databases") {
                    self.databases = dict["Databases"] as! [DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping.Databases]
                }
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
            }
        }
        public class TransferStepConfig : Tea.TeaModel {
            public class IncrSyncStepTransferConfig : Tea.TeaModel {
                public var recordTypeList: [String]?

                public var startTimestamp: Int64?

                public var storeLogKeptHour: Int64?

                public var storeTransactionEnabled: Bool?

                public var transferStepType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.recordTypeList != nil {
                        map["RecordTypeList"] = self.recordTypeList!
                    }
                    if self.startTimestamp != nil {
                        map["StartTimestamp"] = self.startTimestamp!
                    }
                    if self.storeLogKeptHour != nil {
                        map["StoreLogKeptHour"] = self.storeLogKeptHour!
                    }
                    if self.storeTransactionEnabled != nil {
                        map["StoreTransactionEnabled"] = self.storeTransactionEnabled!
                    }
                    if self.transferStepType != nil {
                        map["TransferStepType"] = self.transferStepType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RecordTypeList") {
                        self.recordTypeList = dict["RecordTypeList"] as! [String]
                    }
                    if dict.keys.contains("StartTimestamp") {
                        self.startTimestamp = dict["StartTimestamp"] as! Int64
                    }
                    if dict.keys.contains("StoreLogKeptHour") {
                        self.storeLogKeptHour = dict["StoreLogKeptHour"] as! Int64
                    }
                    if dict.keys.contains("StoreTransactionEnabled") {
                        self.storeTransactionEnabled = dict["StoreTransactionEnabled"] as! Bool
                    }
                    if dict.keys.contains("TransferStepType") {
                        self.transferStepType = dict["TransferStepType"] as! String
                    }
                }
            }
            public var enableFullSync: Bool?

            public var enableIncrSync: Bool?

            public var enableStructSync: Bool?

            public var incrSyncStepTransferConfig: DescribeOmsOpenAPIProjectResponseBody.Data.TransferStepConfig.IncrSyncStepTransferConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.incrSyncStepTransferConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableFullSync != nil {
                    map["EnableFullSync"] = self.enableFullSync!
                }
                if self.enableIncrSync != nil {
                    map["EnableIncrSync"] = self.enableIncrSync!
                }
                if self.enableStructSync != nil {
                    map["EnableStructSync"] = self.enableStructSync!
                }
                if self.incrSyncStepTransferConfig != nil {
                    map["IncrSyncStepTransferConfig"] = self.incrSyncStepTransferConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableFullSync") {
                    self.enableFullSync = dict["EnableFullSync"] as! Bool
                }
                if dict.keys.contains("EnableIncrSync") {
                    self.enableIncrSync = dict["EnableIncrSync"] as! Bool
                }
                if dict.keys.contains("EnableStructSync") {
                    self.enableStructSync = dict["EnableStructSync"] as! Bool
                }
                if dict.keys.contains("IncrSyncStepTransferConfig") {
                    var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferStepConfig.IncrSyncStepTransferConfig()
                    model.fromMap(dict["IncrSyncStepTransferConfig"] as! [String: Any])
                    self.incrSyncStepTransferConfig = model
                }
            }
        }
        public var businessName: String?

        public var destConfig: DescribeOmsOpenAPIProjectResponseBody.Data.DestConfig?

        public var labels: [DescribeOmsOpenAPIProjectResponseBody.Data.Labels]?

        public var projectId: String?

        public var projectName: String?

        public var projectOwner: String?

        public var sourceConfig: DescribeOmsOpenAPIProjectResponseBody.Data.SourceConfig?

        public var steps: [DescribeOmsOpenAPIProjectResponseBody.Data.Steps]?

        public var transferMapping: DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping?

        public var transferStepConfig: DescribeOmsOpenAPIProjectResponseBody.Data.TransferStepConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.destConfig?.validate()
            try self.sourceConfig?.validate()
            try self.transferMapping?.validate()
            try self.transferStepConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.destConfig != nil {
                map["DestConfig"] = self.destConfig?.toMap()
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectOwner != nil {
                map["ProjectOwner"] = self.projectOwner!
            }
            if self.sourceConfig != nil {
                map["SourceConfig"] = self.sourceConfig?.toMap()
            }
            if self.steps != nil {
                var tmp : [Any] = []
                for k in self.steps! {
                    tmp.append(k.toMap())
                }
                map["Steps"] = tmp
            }
            if self.transferMapping != nil {
                map["TransferMapping"] = self.transferMapping?.toMap()
            }
            if self.transferStepConfig != nil {
                map["TransferStepConfig"] = self.transferStepConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessName") {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("DestConfig") {
                var model = DescribeOmsOpenAPIProjectResponseBody.Data.DestConfig()
                model.fromMap(dict["DestConfig"] as! [String: Any])
                self.destConfig = model
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [DescribeOmsOpenAPIProjectResponseBody.Data.Labels]
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectOwner") {
                self.projectOwner = dict["ProjectOwner"] as! String
            }
            if dict.keys.contains("SourceConfig") {
                var model = DescribeOmsOpenAPIProjectResponseBody.Data.SourceConfig()
                model.fromMap(dict["SourceConfig"] as! [String: Any])
                self.sourceConfig = model
            }
            if dict.keys.contains("Steps") {
                self.steps = dict["Steps"] as! [DescribeOmsOpenAPIProjectResponseBody.Data.Steps]
            }
            if dict.keys.contains("TransferMapping") {
                var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferMapping()
                model.fromMap(dict["TransferMapping"] as! [String: Any])
                self.transferMapping = model
            }
            if dict.keys.contains("TransferStepConfig") {
                var model = DescribeOmsOpenAPIProjectResponseBody.Data.TransferStepConfig()
                model.fromMap(dict["TransferStepConfig"] as! [String: Any])
                self.transferStepConfig = model
            }
        }
    }
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: DescribeOmsOpenAPIProjectResponseBody.Data?

    public var errorDetail: DescribeOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeOmsOpenAPIProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorDetail") {
            var model = DescribeOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOmsOpenAPIProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOmsOpenAPIProjectStepsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class DescribeOmsOpenAPIProjectStepsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ExtraInfo : Tea.TeaModel {
            public class ErrorDetails : Tea.TeaModel {
                public var code: String?

                public var level: String?

                public var message: String?

                public var proposal: String?

                public override init() {
                    super.init()
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
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.proposal != nil {
                        map["Proposal"] = self.proposal!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Level") {
                        self.level = dict["Level"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Proposal") {
                        self.proposal = dict["Proposal"] as! String
                    }
                }
            }
            public var errorCode: String?

            public var errorDetails: [DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo.ErrorDetails]?

            public var errorMsg: String?

            public var errorParam: [String: String]?

            public var failedTime: String?

            public override init() {
                super.init()
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
                if self.errorDetails != nil {
                    var tmp : [Any] = []
                    for k in self.errorDetails! {
                        tmp.append(k.toMap())
                    }
                    map["ErrorDetails"] = tmp
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.errorParam != nil {
                    map["ErrorParam"] = self.errorParam!
                }
                if self.failedTime != nil {
                    map["FailedTime"] = self.failedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorDetails") {
                    self.errorDetails = dict["ErrorDetails"] as! [DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo.ErrorDetails]
                }
                if dict.keys.contains("ErrorMsg") {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("ErrorParam") {
                    self.errorParam = dict["ErrorParam"] as! [String: String]
                }
                if dict.keys.contains("FailedTime") {
                    self.failedTime = dict["FailedTime"] as! String
                }
            }
        }
        public class StepInfo : Tea.TeaModel {
            public class ConnectorFullProgressOverview : Tea.TeaModel {
                public var estimatedRemainingTimeOfSec: Int64?

                public var estimatedTotalCount: Int64?

                public var finishedCount: Int64?

                public var progress: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.estimatedRemainingTimeOfSec != nil {
                        map["EstimatedRemainingTimeOfSec"] = self.estimatedRemainingTimeOfSec!
                    }
                    if self.estimatedTotalCount != nil {
                        map["EstimatedTotalCount"] = self.estimatedTotalCount!
                    }
                    if self.finishedCount != nil {
                        map["FinishedCount"] = self.finishedCount!
                    }
                    if self.progress != nil {
                        map["Progress"] = self.progress!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EstimatedRemainingTimeOfSec") {
                        self.estimatedRemainingTimeOfSec = dict["EstimatedRemainingTimeOfSec"] as! Int64
                    }
                    if dict.keys.contains("EstimatedTotalCount") {
                        self.estimatedTotalCount = dict["EstimatedTotalCount"] as! Int64
                    }
                    if dict.keys.contains("FinishedCount") {
                        self.finishedCount = dict["FinishedCount"] as! Int64
                    }
                    if dict.keys.contains("Progress") {
                        self.progress = dict["Progress"] as! Int32
                    }
                }
            }
            public var capacity: Int64?

            public var checkpoint: String?

            public var connectorFullProgressOverview: DescribeOmsOpenAPIProjectStepsResponseBody.Data.StepInfo.ConnectorFullProgressOverview?

            public var deployId: String?

            public var dstIops: Int64?

            public var dstRps: Int64?

            public var dstRpsRef: Int64?

            public var dstRt: Int64?

            public var dstRtRef: Int64?

            public var gmt: Int64?

            public var inconsistencies: Int64?

            public var incrTimestampCheckpoint: Int64?

            public var jobId: String?

            public var processedRecords: Int64?

            public var skipped: Bool?

            public var srcIops: Int64?

            public var srcIopsRef: Int64?

            public var srcRps: Int64?

            public var srcRpsRef: Int64?

            public var srcRt: Int64?

            public var srcRtRef: Int64?

            public var validated: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.connectorFullProgressOverview?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.checkpoint != nil {
                    map["Checkpoint"] = self.checkpoint!
                }
                if self.connectorFullProgressOverview != nil {
                    map["ConnectorFullProgressOverview"] = self.connectorFullProgressOverview?.toMap()
                }
                if self.deployId != nil {
                    map["DeployId"] = self.deployId!
                }
                if self.dstIops != nil {
                    map["DstIops"] = self.dstIops!
                }
                if self.dstRps != nil {
                    map["DstRps"] = self.dstRps!
                }
                if self.dstRpsRef != nil {
                    map["DstRpsRef"] = self.dstRpsRef!
                }
                if self.dstRt != nil {
                    map["DstRt"] = self.dstRt!
                }
                if self.dstRtRef != nil {
                    map["DstRtRef"] = self.dstRtRef!
                }
                if self.gmt != nil {
                    map["Gmt"] = self.gmt!
                }
                if self.inconsistencies != nil {
                    map["Inconsistencies"] = self.inconsistencies!
                }
                if self.incrTimestampCheckpoint != nil {
                    map["IncrTimestampCheckpoint"] = self.incrTimestampCheckpoint!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.processedRecords != nil {
                    map["ProcessedRecords"] = self.processedRecords!
                }
                if self.skipped != nil {
                    map["Skipped"] = self.skipped!
                }
                if self.srcIops != nil {
                    map["SrcIops"] = self.srcIops!
                }
                if self.srcIopsRef != nil {
                    map["SrcIopsRef"] = self.srcIopsRef!
                }
                if self.srcRps != nil {
                    map["SrcRps"] = self.srcRps!
                }
                if self.srcRpsRef != nil {
                    map["SrcRpsRef"] = self.srcRpsRef!
                }
                if self.srcRt != nil {
                    map["SrcRt"] = self.srcRt!
                }
                if self.srcRtRef != nil {
                    map["SrcRtRef"] = self.srcRtRef!
                }
                if self.validated != nil {
                    map["Validated"] = self.validated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Capacity") {
                    self.capacity = dict["Capacity"] as! Int64
                }
                if dict.keys.contains("Checkpoint") {
                    self.checkpoint = dict["Checkpoint"] as! String
                }
                if dict.keys.contains("ConnectorFullProgressOverview") {
                    var model = DescribeOmsOpenAPIProjectStepsResponseBody.Data.StepInfo.ConnectorFullProgressOverview()
                    model.fromMap(dict["ConnectorFullProgressOverview"] as! [String: Any])
                    self.connectorFullProgressOverview = model
                }
                if dict.keys.contains("DeployId") {
                    self.deployId = dict["DeployId"] as! String
                }
                if dict.keys.contains("DstIops") {
                    self.dstIops = dict["DstIops"] as! Int64
                }
                if dict.keys.contains("DstRps") {
                    self.dstRps = dict["DstRps"] as! Int64
                }
                if dict.keys.contains("DstRpsRef") {
                    self.dstRpsRef = dict["DstRpsRef"] as! Int64
                }
                if dict.keys.contains("DstRt") {
                    self.dstRt = dict["DstRt"] as! Int64
                }
                if dict.keys.contains("DstRtRef") {
                    self.dstRtRef = dict["DstRtRef"] as! Int64
                }
                if dict.keys.contains("Gmt") {
                    self.gmt = dict["Gmt"] as! Int64
                }
                if dict.keys.contains("Inconsistencies") {
                    self.inconsistencies = dict["Inconsistencies"] as! Int64
                }
                if dict.keys.contains("IncrTimestampCheckpoint") {
                    self.incrTimestampCheckpoint = dict["IncrTimestampCheckpoint"] as! Int64
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("ProcessedRecords") {
                    self.processedRecords = dict["ProcessedRecords"] as! Int64
                }
                if dict.keys.contains("Skipped") {
                    self.skipped = dict["Skipped"] as! Bool
                }
                if dict.keys.contains("SrcIops") {
                    self.srcIops = dict["SrcIops"] as! Int64
                }
                if dict.keys.contains("SrcIopsRef") {
                    self.srcIopsRef = dict["SrcIopsRef"] as! Int64
                }
                if dict.keys.contains("SrcRps") {
                    self.srcRps = dict["SrcRps"] as! Int64
                }
                if dict.keys.contains("SrcRpsRef") {
                    self.srcRpsRef = dict["SrcRpsRef"] as! Int64
                }
                if dict.keys.contains("SrcRt") {
                    self.srcRt = dict["SrcRt"] as! Int64
                }
                if dict.keys.contains("SrcRtRef") {
                    self.srcRtRef = dict["SrcRtRef"] as! Int64
                }
                if dict.keys.contains("Validated") {
                    self.validated = dict["Validated"] as! Bool
                }
            }
        }
        public var estimatedRemainingSeconds: Int64?

        public var extraInfo: DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo?

        public var finishTime: String?

        public var interactive: Bool?

        public var startTime: String?

        public var stepDescription: String?

        public var stepInfo: DescribeOmsOpenAPIProjectStepsResponseBody.Data.StepInfo?

        public var stepName: String?

        public var stepOrder: Int32?

        public var stepProgress: Int32?

        public var stepStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extraInfo?.validate()
            try self.stepInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.estimatedRemainingSeconds != nil {
                map["EstimatedRemainingSeconds"] = self.estimatedRemainingSeconds!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo?.toMap()
            }
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.interactive != nil {
                map["Interactive"] = self.interactive!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.stepDescription != nil {
                map["StepDescription"] = self.stepDescription!
            }
            if self.stepInfo != nil {
                map["StepInfo"] = self.stepInfo?.toMap()
            }
            if self.stepName != nil {
                map["StepName"] = self.stepName!
            }
            if self.stepOrder != nil {
                map["StepOrder"] = self.stepOrder!
            }
            if self.stepProgress != nil {
                map["StepProgress"] = self.stepProgress!
            }
            if self.stepStatus != nil {
                map["StepStatus"] = self.stepStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EstimatedRemainingSeconds") {
                self.estimatedRemainingSeconds = dict["EstimatedRemainingSeconds"] as! Int64
            }
            if dict.keys.contains("ExtraInfo") {
                var model = DescribeOmsOpenAPIProjectStepsResponseBody.Data.ExtraInfo()
                model.fromMap(dict["ExtraInfo"] as! [String: Any])
                self.extraInfo = model
            }
            if dict.keys.contains("FinishTime") {
                self.finishTime = dict["FinishTime"] as! String
            }
            if dict.keys.contains("Interactive") {
                self.interactive = dict["Interactive"] as! Bool
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StepDescription") {
                self.stepDescription = dict["StepDescription"] as! String
            }
            if dict.keys.contains("StepInfo") {
                var model = DescribeOmsOpenAPIProjectStepsResponseBody.Data.StepInfo()
                model.fromMap(dict["StepInfo"] as! [String: Any])
                self.stepInfo = model
            }
            if dict.keys.contains("StepName") {
                self.stepName = dict["StepName"] as! String
            }
            if dict.keys.contains("StepOrder") {
                self.stepOrder = dict["StepOrder"] as! Int32
            }
            if dict.keys.contains("StepProgress") {
                self.stepProgress = dict["StepProgress"] as! Int32
            }
            if dict.keys.contains("StepStatus") {
                self.stepStatus = dict["StepStatus"] as! String
            }
        }
    }
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: [DescribeOmsOpenAPIProjectStepsResponseBody.Data]?

    public var errorDetail: DescribeOmsOpenAPIProjectStepsResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeOmsOpenAPIProjectStepsResponseBody.Data]
        }
        if dict.keys.contains("ErrorDetail") {
            var model = DescribeOmsOpenAPIProjectStepsResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeOmsOpenAPIProjectStepsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOmsOpenAPIProjectStepsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeOmsOpenAPIProjectStepsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOutlineBindingRequest : Tea.TeaModel {
    public var databaseName: String?

    public var instanceId: String?

    public var isConcurrentLimit: Bool?

    public var SQLId: String?

    public var tableName: String?

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
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isConcurrentLimit != nil {
            map["IsConcurrentLimit"] = self.isConcurrentLimit!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsConcurrentLimit") {
            self.isConcurrentLimit = dict["IsConcurrentLimit"] as! Bool
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeOutlineBindingResponseBody : Tea.TeaModel {
    public class OutlineBinding : Tea.TeaModel {
        public var bindIndex: String?

        public var bindPlan: String?

        public var maxConcurrent: Int32?

        public var outlineId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bindIndex != nil {
                map["BindIndex"] = self.bindIndex!
            }
            if self.bindPlan != nil {
                map["BindPlan"] = self.bindPlan!
            }
            if self.maxConcurrent != nil {
                map["MaxConcurrent"] = self.maxConcurrent!
            }
            if self.outlineId != nil {
                map["OutlineId"] = self.outlineId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BindIndex") {
                self.bindIndex = dict["BindIndex"] as! String
            }
            if dict.keys.contains("BindPlan") {
                self.bindPlan = dict["BindPlan"] as! String
            }
            if dict.keys.contains("MaxConcurrent") {
                self.maxConcurrent = dict["MaxConcurrent"] as! Int32
            }
            if dict.keys.contains("OutlineId") {
                self.outlineId = dict["OutlineId"] as! Int64
            }
        }
    }
    public var outlineBinding: DescribeOutlineBindingResponseBody.OutlineBinding?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.outlineBinding?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outlineBinding != nil {
            map["OutlineBinding"] = self.outlineBinding?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutlineBinding") {
            var model = DescribeOutlineBindingResponseBody.OutlineBinding()
            model.fromMap(dict["OutlineBinding"] as! [String: Any])
            self.outlineBinding = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOutlineBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOutlineBindingResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeOutlineBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParametersRequest : Tea.TeaModel {
    public var dimension: String?

    public var dimensionValue: String?

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
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.dimensionValue != nil {
            map["DimensionValue"] = self.dimensionValue!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimension") {
            self.dimension = dict["Dimension"] as! String
        }
        if dict.keys.contains("DimensionValue") {
            self.dimensionValue = dict["DimensionValue"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var acceptableValue: [String]?

        public var currentValue: String?

        public var defaultValue: String?

        public var description_: String?

        public var name: String?

        public var needReboot: Bool?

        public var rejectedValue: [String]?

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
            if self.acceptableValue != nil {
                map["AcceptableValue"] = self.acceptableValue!
            }
            if self.currentValue != nil {
                map["CurrentValue"] = self.currentValue!
            }
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.needReboot != nil {
                map["NeedReboot"] = self.needReboot!
            }
            if self.rejectedValue != nil {
                map["RejectedValue"] = self.rejectedValue!
            }
            if self.valueType != nil {
                map["ValueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptableValue") {
                self.acceptableValue = dict["AcceptableValue"] as! [String]
            }
            if dict.keys.contains("CurrentValue") {
                self.currentValue = dict["CurrentValue"] as! String
            }
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NeedReboot") {
                self.needReboot = dict["NeedReboot"] as! Bool
            }
            if dict.keys.contains("RejectedValue") {
                self.rejectedValue = dict["RejectedValue"] as! [String]
            }
            if dict.keys.contains("ValueType") {
                self.valueType = dict["ValueType"] as! String
            }
        }
    }
    public var parameters: [DescribeParametersResponseBody.Parameters]?

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
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [DescribeParametersResponseBody.Parameters]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParametersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParametersHistoryRequest : Tea.TeaModel {
    public var dimension: String?

    public var dimensionValue: String?

    public var endTime: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.dimensionValue != nil {
            map["DimensionValue"] = self.dimensionValue!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimension") {
            self.dimension = dict["Dimension"] as! String
        }
        if dict.keys.contains("DimensionValue") {
            self.dimensionValue = dict["DimensionValue"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeParametersHistoryResponseBody : Tea.TeaModel {
    public class Respond : Tea.TeaModel {
        public class Parameters : Tea.TeaModel {
            public var createTime: String?

            public var dimensionValue: String?

            public var name: String?

            public var newValue: String?

            public var oldValue: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dimensionValue != nil {
                    map["DimensionValue"] = self.dimensionValue!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.oldValue != nil {
                    map["OldValue"] = self.oldValue!
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
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DimensionValue") {
                    self.dimensionValue = dict["DimensionValue"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NewValue") {
                    self.newValue = dict["NewValue"] as! String
                }
                if dict.keys.contains("OldValue") {
                    self.oldValue = dict["OldValue"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var parameters: [DescribeParametersHistoryResponseBody.Respond.Parameters]?

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
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
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
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! [DescribeParametersHistoryResponseBody.Respond.Parameters]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var respond: [DescribeParametersHistoryResponseBody.Respond]?

    public override init() {
        super.init()
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
        if self.respond != nil {
            var tmp : [Any] = []
            for k in self.respond! {
                tmp.append(k.toMap())
            }
            map["Respond"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Respond") {
            self.respond = dict["Respond"] as! [DescribeParametersHistoryResponseBody.Respond]
        }
    }
}

public class DescribeParametersHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParametersHistoryResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeParametersHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecommendIndexRequest : Tea.TeaModel {
    public var instanceId: String?

    public var SQLId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeRecommendIndexResponseBody : Tea.TeaModel {
    public class RecommendIndex : Tea.TeaModel {
        public var suggestIndex: String?

        public var tableList: String?

        public var tenantMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.suggestIndex != nil {
                map["SuggestIndex"] = self.suggestIndex!
            }
            if self.tableList != nil {
                map["TableList"] = self.tableList!
            }
            if self.tenantMode != nil {
                map["TenantMode"] = self.tenantMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SuggestIndex") {
                self.suggestIndex = dict["SuggestIndex"] as! String
            }
            if dict.keys.contains("TableList") {
                self.tableList = dict["TableList"] as! String
            }
            if dict.keys.contains("TenantMode") {
                self.tenantMode = dict["TenantMode"] as! String
            }
        }
    }
    public var recommendIndex: DescribeRecommendIndexResponseBody.RecommendIndex?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.recommendIndex?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recommendIndex != nil {
            map["RecommendIndex"] = self.recommendIndex?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecommendIndex") {
            var model = DescribeRecommendIndexResponseBody.RecommendIndex()
            model.fromMap(dict["RecommendIndex"] as! [String: Any])
            self.recommendIndex = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRecommendIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecommendIndexResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRecommendIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLDetailsRequest : Tea.TeaModel {
    public var SQLId: String?

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
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSQLDetailsResponseBody : Tea.TeaModel {
    public class SQLDetails : Tea.TeaModel {
        public var dbName: String?

        public var SQLText: String?

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
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbName") {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var SQLDetails: [DescribeSQLDetailsResponseBody.SQLDetails]?

    public override init() {
        super.init()
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
        if self.SQLDetails != nil {
            var tmp : [Any] = []
            for k in self.SQLDetails! {
                tmp.append(k.toMap())
            }
            map["SQLDetails"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQLDetails") {
            self.SQLDetails = dict["SQLDetails"] as! [DescribeSQLDetailsResponseBody.SQLDetails]
        }
    }
}

public class DescribeSQLDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLDetailsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSQLDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLHistoryListRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var startTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSQLHistoryListResponseBody : Tea.TeaModel {
    public class SQLHistoryList : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var affectedRows: Int64?

            public var appWaitTime: Double?

            public var blockCacheHit: Int64?

            public var blockIndexCacheHit: Int64?

            public var bloomFilterCacheHit: Int64?

            public var clientIp: String?

            public var concurrencyWaitTime: Double?

            public var cpuTime: Double?

            public var dbName: String?

            public var decodeTime: Double?

            public var diskRead: Int64?

            public var elapsedTime: Double?

            public var endTime: Int64?

            public var endTimeUTCString: String?

            public var event: String?

            public var execPerSecond: Int64?

            public var executeTime: Double?

            public var executions: Int64?

            public var failTimes: Int64?

            public var getPlanTime: Double?

            public var IOWaitTime: Double?

            public var logicalRead: Int64?

            public var maxCpuTime: Double?

            public var maxElapsedTime: Double?

            public var memstoreReadRowCount: Int64?

            public var missPlans: Int64?

            public var netWaitTime: Double?

            public var nodeIp: String?

            public var queueTime: Double?

            public var RPCCount: Int64?

            public var remotePlans: Int64?

            public var retryCount: Int64?

            public var returnRows: Int64?

            public var rowCacheHit: Int64?

            public var scheduleTime: Double?

            public var ssstoreReadRowCount: Int64?

            public var totalWaitTime: Double?

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
                if self.affectedRows != nil {
                    map["AffectedRows"] = self.affectedRows!
                }
                if self.appWaitTime != nil {
                    map["AppWaitTime"] = self.appWaitTime!
                }
                if self.blockCacheHit != nil {
                    map["BlockCacheHit"] = self.blockCacheHit!
                }
                if self.blockIndexCacheHit != nil {
                    map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
                }
                if self.bloomFilterCacheHit != nil {
                    map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
                }
                if self.clientIp != nil {
                    map["ClientIp"] = self.clientIp!
                }
                if self.concurrencyWaitTime != nil {
                    map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
                }
                if self.cpuTime != nil {
                    map["CpuTime"] = self.cpuTime!
                }
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.decodeTime != nil {
                    map["DecodeTime"] = self.decodeTime!
                }
                if self.diskRead != nil {
                    map["DiskRead"] = self.diskRead!
                }
                if self.elapsedTime != nil {
                    map["ElapsedTime"] = self.elapsedTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.endTimeUTCString != nil {
                    map["EndTimeUTCString"] = self.endTimeUTCString!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.execPerSecond != nil {
                    map["ExecPerSecond"] = self.execPerSecond!
                }
                if self.executeTime != nil {
                    map["ExecuteTime"] = self.executeTime!
                }
                if self.executions != nil {
                    map["Executions"] = self.executions!
                }
                if self.failTimes != nil {
                    map["FailTimes"] = self.failTimes!
                }
                if self.getPlanTime != nil {
                    map["GetPlanTime"] = self.getPlanTime!
                }
                if self.IOWaitTime != nil {
                    map["IOWaitTime"] = self.IOWaitTime!
                }
                if self.logicalRead != nil {
                    map["LogicalRead"] = self.logicalRead!
                }
                if self.maxCpuTime != nil {
                    map["MaxCpuTime"] = self.maxCpuTime!
                }
                if self.maxElapsedTime != nil {
                    map["MaxElapsedTime"] = self.maxElapsedTime!
                }
                if self.memstoreReadRowCount != nil {
                    map["MemstoreReadRowCount"] = self.memstoreReadRowCount!
                }
                if self.missPlans != nil {
                    map["MissPlans"] = self.missPlans!
                }
                if self.netWaitTime != nil {
                    map["NetWaitTime"] = self.netWaitTime!
                }
                if self.nodeIp != nil {
                    map["NodeIp"] = self.nodeIp!
                }
                if self.queueTime != nil {
                    map["QueueTime"] = self.queueTime!
                }
                if self.RPCCount != nil {
                    map["RPCCount"] = self.RPCCount!
                }
                if self.remotePlans != nil {
                    map["RemotePlans"] = self.remotePlans!
                }
                if self.retryCount != nil {
                    map["RetryCount"] = self.retryCount!
                }
                if self.returnRows != nil {
                    map["ReturnRows"] = self.returnRows!
                }
                if self.rowCacheHit != nil {
                    map["RowCacheHit"] = self.rowCacheHit!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.ssstoreReadRowCount != nil {
                    map["SsstoreReadRowCount"] = self.ssstoreReadRowCount!
                }
                if self.totalWaitTime != nil {
                    map["TotalWaitTime"] = self.totalWaitTime!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AffectedRows") {
                    self.affectedRows = dict["AffectedRows"] as! Int64
                }
                if dict.keys.contains("AppWaitTime") {
                    self.appWaitTime = dict["AppWaitTime"] as! Double
                }
                if dict.keys.contains("BlockCacheHit") {
                    self.blockCacheHit = dict["BlockCacheHit"] as! Int64
                }
                if dict.keys.contains("BlockIndexCacheHit") {
                    self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Int64
                }
                if dict.keys.contains("BloomFilterCacheHit") {
                    self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Int64
                }
                if dict.keys.contains("ClientIp") {
                    self.clientIp = dict["ClientIp"] as! String
                }
                if dict.keys.contains("ConcurrencyWaitTime") {
                    self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
                }
                if dict.keys.contains("CpuTime") {
                    self.cpuTime = dict["CpuTime"] as! Double
                }
                if dict.keys.contains("DbName") {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("DecodeTime") {
                    self.decodeTime = dict["DecodeTime"] as! Double
                }
                if dict.keys.contains("DiskRead") {
                    self.diskRead = dict["DiskRead"] as! Int64
                }
                if dict.keys.contains("ElapsedTime") {
                    self.elapsedTime = dict["ElapsedTime"] as! Double
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("EndTimeUTCString") {
                    self.endTimeUTCString = dict["EndTimeUTCString"] as! String
                }
                if dict.keys.contains("Event") {
                    self.event = dict["Event"] as! String
                }
                if dict.keys.contains("ExecPerSecond") {
                    self.execPerSecond = dict["ExecPerSecond"] as! Int64
                }
                if dict.keys.contains("ExecuteTime") {
                    self.executeTime = dict["ExecuteTime"] as! Double
                }
                if dict.keys.contains("Executions") {
                    self.executions = dict["Executions"] as! Int64
                }
                if dict.keys.contains("FailTimes") {
                    self.failTimes = dict["FailTimes"] as! Int64
                }
                if dict.keys.contains("GetPlanTime") {
                    self.getPlanTime = dict["GetPlanTime"] as! Double
                }
                if dict.keys.contains("IOWaitTime") {
                    self.IOWaitTime = dict["IOWaitTime"] as! Double
                }
                if dict.keys.contains("LogicalRead") {
                    self.logicalRead = dict["LogicalRead"] as! Int64
                }
                if dict.keys.contains("MaxCpuTime") {
                    self.maxCpuTime = dict["MaxCpuTime"] as! Double
                }
                if dict.keys.contains("MaxElapsedTime") {
                    self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
                }
                if dict.keys.contains("MemstoreReadRowCount") {
                    self.memstoreReadRowCount = dict["MemstoreReadRowCount"] as! Int64
                }
                if dict.keys.contains("MissPlans") {
                    self.missPlans = dict["MissPlans"] as! Int64
                }
                if dict.keys.contains("NetWaitTime") {
                    self.netWaitTime = dict["NetWaitTime"] as! Double
                }
                if dict.keys.contains("NodeIp") {
                    self.nodeIp = dict["NodeIp"] as! String
                }
                if dict.keys.contains("QueueTime") {
                    self.queueTime = dict["QueueTime"] as! Double
                }
                if dict.keys.contains("RPCCount") {
                    self.RPCCount = dict["RPCCount"] as! Int64
                }
                if dict.keys.contains("RemotePlans") {
                    self.remotePlans = dict["RemotePlans"] as! Int64
                }
                if dict.keys.contains("RetryCount") {
                    self.retryCount = dict["RetryCount"] as! Int64
                }
                if dict.keys.contains("ReturnRows") {
                    self.returnRows = dict["ReturnRows"] as! Int64
                }
                if dict.keys.contains("RowCacheHit") {
                    self.rowCacheHit = dict["RowCacheHit"] as! Int64
                }
                if dict.keys.contains("ScheduleTime") {
                    self.scheduleTime = dict["ScheduleTime"] as! Double
                }
                if dict.keys.contains("SsstoreReadRowCount") {
                    self.ssstoreReadRowCount = dict["SsstoreReadRowCount"] as! Int64
                }
                if dict.keys.contains("TotalWaitTime") {
                    self.totalWaitTime = dict["TotalWaitTime"] as! Double
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var count: Int64?

        public var list: [DescribeSQLHistoryListResponseBody.SQLHistoryList.List]?

        public override init() {
            super.init()
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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [DescribeSQLHistoryListResponseBody.SQLHistoryList.List]
            }
        }
    }
    public var requestId: String?

    public var SQLHistoryList: DescribeSQLHistoryListResponseBody.SQLHistoryList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SQLHistoryList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SQLHistoryList != nil {
            map["SQLHistoryList"] = self.SQLHistoryList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQLHistoryList") {
            var model = DescribeSQLHistoryListResponseBody.SQLHistoryList()
            model.fromMap(dict["SQLHistoryList"] as! [String: Any])
            self.SQLHistoryList = model
        }
    }
}

public class DescribeSQLHistoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLHistoryListResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSQLHistoryListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLPlansRequest : Tea.TeaModel {
    public var SQLId: String?

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
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSQLPlansResponseBody : Tea.TeaModel {
    public class SQLPlans : Tea.TeaModel {
        public var avgExecutionMS: Double?

        public var avgExecutionTimeMS: Int64?

        public var firstLoadTime: Int64?

        public var firstLoadTimeUTCString: String?

        public var hitCount: Int32?

        public var mergedVersion: Int32?

        public var nodeIp: String?

        public var outlineData: String?

        public var outlineId: Int64?

        public var outlineTime: Int64?

        public var outlineTimeUTCString: String?

        public var planFull: String?

        public var planId: Int32?

        public var planInfo: String?

        public var planUnionHash: String?

        public var querySQL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avgExecutionMS != nil {
                map["AvgExecutionMS"] = self.avgExecutionMS!
            }
            if self.avgExecutionTimeMS != nil {
                map["AvgExecutionTimeMS"] = self.avgExecutionTimeMS!
            }
            if self.firstLoadTime != nil {
                map["FirstLoadTime"] = self.firstLoadTime!
            }
            if self.firstLoadTimeUTCString != nil {
                map["FirstLoadTimeUTCString"] = self.firstLoadTimeUTCString!
            }
            if self.hitCount != nil {
                map["HitCount"] = self.hitCount!
            }
            if self.mergedVersion != nil {
                map["MergedVersion"] = self.mergedVersion!
            }
            if self.nodeIp != nil {
                map["NodeIp"] = self.nodeIp!
            }
            if self.outlineData != nil {
                map["OutlineData"] = self.outlineData!
            }
            if self.outlineId != nil {
                map["OutlineId"] = self.outlineId!
            }
            if self.outlineTime != nil {
                map["OutlineTime"] = self.outlineTime!
            }
            if self.outlineTimeUTCString != nil {
                map["OutlineTimeUTCString"] = self.outlineTimeUTCString!
            }
            if self.planFull != nil {
                map["PlanFull"] = self.planFull!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planInfo != nil {
                map["PlanInfo"] = self.planInfo!
            }
            if self.planUnionHash != nil {
                map["PlanUnionHash"] = self.planUnionHash!
            }
            if self.querySQL != nil {
                map["QuerySQL"] = self.querySQL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvgExecutionMS") {
                self.avgExecutionMS = dict["AvgExecutionMS"] as! Double
            }
            if dict.keys.contains("AvgExecutionTimeMS") {
                self.avgExecutionTimeMS = dict["AvgExecutionTimeMS"] as! Int64
            }
            if dict.keys.contains("FirstLoadTime") {
                self.firstLoadTime = dict["FirstLoadTime"] as! Int64
            }
            if dict.keys.contains("FirstLoadTimeUTCString") {
                self.firstLoadTimeUTCString = dict["FirstLoadTimeUTCString"] as! String
            }
            if dict.keys.contains("HitCount") {
                self.hitCount = dict["HitCount"] as! Int32
            }
            if dict.keys.contains("MergedVersion") {
                self.mergedVersion = dict["MergedVersion"] as! Int32
            }
            if dict.keys.contains("NodeIp") {
                self.nodeIp = dict["NodeIp"] as! String
            }
            if dict.keys.contains("OutlineData") {
                self.outlineData = dict["OutlineData"] as! String
            }
            if dict.keys.contains("OutlineId") {
                self.outlineId = dict["OutlineId"] as! Int64
            }
            if dict.keys.contains("OutlineTime") {
                self.outlineTime = dict["OutlineTime"] as! Int64
            }
            if dict.keys.contains("OutlineTimeUTCString") {
                self.outlineTimeUTCString = dict["OutlineTimeUTCString"] as! String
            }
            if dict.keys.contains("PlanFull") {
                self.planFull = dict["PlanFull"] as! String
            }
            if dict.keys.contains("PlanId") {
                self.planId = dict["PlanId"] as! Int32
            }
            if dict.keys.contains("PlanInfo") {
                self.planInfo = dict["PlanInfo"] as! String
            }
            if dict.keys.contains("PlanUnionHash") {
                self.planUnionHash = dict["PlanUnionHash"] as! String
            }
            if dict.keys.contains("QuerySQL") {
                self.querySQL = dict["QuerySQL"] as! String
            }
        }
    }
    public var requestId: String?

    public var SQLPlans: [DescribeSQLPlansResponseBody.SQLPlans]?

    public override init() {
        super.init()
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
        if self.SQLPlans != nil {
            var tmp : [Any] = []
            for k in self.SQLPlans! {
                tmp.append(k.toMap())
            }
            map["SQLPlans"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQLPlans") {
            self.SQLPlans = dict["SQLPlans"] as! [DescribeSQLPlansResponseBody.SQLPlans]
        }
    }
}

public class DescribeSQLPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLPlansResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSQLPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSecurityIpGroupsRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeSecurityIpGroupsResponseBody : Tea.TeaModel {
    public class SecurityIpGroups : Tea.TeaModel {
        public var securityIpGroupName: String?

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
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityIpGroupName") {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIps") {
                self.securityIps = dict["SecurityIps"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroups: [DescribeSecurityIpGroupsResponseBody.SecurityIpGroups]?

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
        if self.securityIpGroups != nil {
            var tmp : [Any] = []
            for k in self.securityIpGroups! {
                tmp.append(k.toMap())
            }
            map["SecurityIpGroups"] = tmp
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
        if dict.keys.contains("SecurityIpGroups") {
            self.securityIpGroups = dict["SecurityIpGroups"] as! [DescribeSecurityIpGroupsResponseBody.SecurityIpGroups]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSecurityIpGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityIpGroupsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSecurityIpGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowSQLHistoryListRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var startTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSlowSQLHistoryListResponseBody : Tea.TeaModel {
    public class SlowSQLHistoryList : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var affectedRows: Double?

            public var appWaitTime: Double?

            public var blockCacheHit: Double?

            public var blockIndexCacheHit: Double?

            public var bloomFilterCacheHit: Double?

            public var clientIp: String?

            public var concurrencyWaitTime: Double?

            public var cpuTime: Double?

            public var dbName: String?

            public var decodeTime: Double?

            public var diskRead: Double?

            public var elapsedTime: Double?

            public var endTimeUTCString: String?

            public var event: String?

            public var execPerSecond: Double?

            public var executeTime: Double?

            public var executions: Double?

            public var failTimes: Double?

            public var getplanTime: Double?

            public var IOWaitTime: Double?

            public var logicalRead: Double?

            public var maxCpuTime: Double?

            public var maxElapsedTime: Double?

            public var memstoreReadRowCount: Double?

            public var missPlans: Double?

            public var netwaitTime: Double?

            public var nodeIp: String?

            public var queueTime: Double?

            public var RPCCount: Double?

            public var remotePlans: Double?

            public var retryCount: Double?

            public var returnRows: Double?

            public var rowCacheHit: Double?

            public var scheduleTime: Double?

            public var sqlId: String?

            public var sqlType: String?

            public var ssstoreReadRowCount: Double?

            public var tenantName: String?

            public var totalWaitTime: Double?

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
                if self.affectedRows != nil {
                    map["AffectedRows"] = self.affectedRows!
                }
                if self.appWaitTime != nil {
                    map["AppWaitTime"] = self.appWaitTime!
                }
                if self.blockCacheHit != nil {
                    map["BlockCacheHit"] = self.blockCacheHit!
                }
                if self.blockIndexCacheHit != nil {
                    map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
                }
                if self.bloomFilterCacheHit != nil {
                    map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
                }
                if self.clientIp != nil {
                    map["ClientIp"] = self.clientIp!
                }
                if self.concurrencyWaitTime != nil {
                    map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
                }
                if self.cpuTime != nil {
                    map["CpuTime"] = self.cpuTime!
                }
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.decodeTime != nil {
                    map["DecodeTime"] = self.decodeTime!
                }
                if self.diskRead != nil {
                    map["DiskRead"] = self.diskRead!
                }
                if self.elapsedTime != nil {
                    map["ElapsedTime"] = self.elapsedTime!
                }
                if self.endTimeUTCString != nil {
                    map["EndTimeUTCString"] = self.endTimeUTCString!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.execPerSecond != nil {
                    map["ExecPerSecond"] = self.execPerSecond!
                }
                if self.executeTime != nil {
                    map["ExecuteTime"] = self.executeTime!
                }
                if self.executions != nil {
                    map["Executions"] = self.executions!
                }
                if self.failTimes != nil {
                    map["FailTimes"] = self.failTimes!
                }
                if self.getplanTime != nil {
                    map["GetplanTime"] = self.getplanTime!
                }
                if self.IOWaitTime != nil {
                    map["IOWaitTime"] = self.IOWaitTime!
                }
                if self.logicalRead != nil {
                    map["LogicalRead"] = self.logicalRead!
                }
                if self.maxCpuTime != nil {
                    map["MaxCpuTime"] = self.maxCpuTime!
                }
                if self.maxElapsedTime != nil {
                    map["MaxElapsedTime"] = self.maxElapsedTime!
                }
                if self.memstoreReadRowCount != nil {
                    map["MemstoreReadRowCount"] = self.memstoreReadRowCount!
                }
                if self.missPlans != nil {
                    map["MissPlans"] = self.missPlans!
                }
                if self.netwaitTime != nil {
                    map["NetwaitTime"] = self.netwaitTime!
                }
                if self.nodeIp != nil {
                    map["NodeIp"] = self.nodeIp!
                }
                if self.queueTime != nil {
                    map["QueueTime"] = self.queueTime!
                }
                if self.RPCCount != nil {
                    map["RPCCount"] = self.RPCCount!
                }
                if self.remotePlans != nil {
                    map["RemotePlans"] = self.remotePlans!
                }
                if self.retryCount != nil {
                    map["RetryCount"] = self.retryCount!
                }
                if self.returnRows != nil {
                    map["ReturnRows"] = self.returnRows!
                }
                if self.rowCacheHit != nil {
                    map["RowCacheHit"] = self.rowCacheHit!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.sqlId != nil {
                    map["SqlId"] = self.sqlId!
                }
                if self.sqlType != nil {
                    map["SqlType"] = self.sqlType!
                }
                if self.ssstoreReadRowCount != nil {
                    map["SsstoreReadRowCount"] = self.ssstoreReadRowCount!
                }
                if self.tenantName != nil {
                    map["TenantName"] = self.tenantName!
                }
                if self.totalWaitTime != nil {
                    map["TotalWaitTime"] = self.totalWaitTime!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AffectedRows") {
                    self.affectedRows = dict["AffectedRows"] as! Double
                }
                if dict.keys.contains("AppWaitTime") {
                    self.appWaitTime = dict["AppWaitTime"] as! Double
                }
                if dict.keys.contains("BlockCacheHit") {
                    self.blockCacheHit = dict["BlockCacheHit"] as! Double
                }
                if dict.keys.contains("BlockIndexCacheHit") {
                    self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Double
                }
                if dict.keys.contains("BloomFilterCacheHit") {
                    self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Double
                }
                if dict.keys.contains("ClientIp") {
                    self.clientIp = dict["ClientIp"] as! String
                }
                if dict.keys.contains("ConcurrencyWaitTime") {
                    self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
                }
                if dict.keys.contains("CpuTime") {
                    self.cpuTime = dict["CpuTime"] as! Double
                }
                if dict.keys.contains("DbName") {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("DecodeTime") {
                    self.decodeTime = dict["DecodeTime"] as! Double
                }
                if dict.keys.contains("DiskRead") {
                    self.diskRead = dict["DiskRead"] as! Double
                }
                if dict.keys.contains("ElapsedTime") {
                    self.elapsedTime = dict["ElapsedTime"] as! Double
                }
                if dict.keys.contains("EndTimeUTCString") {
                    self.endTimeUTCString = dict["EndTimeUTCString"] as! String
                }
                if dict.keys.contains("Event") {
                    self.event = dict["Event"] as! String
                }
                if dict.keys.contains("ExecPerSecond") {
                    self.execPerSecond = dict["ExecPerSecond"] as! Double
                }
                if dict.keys.contains("ExecuteTime") {
                    self.executeTime = dict["ExecuteTime"] as! Double
                }
                if dict.keys.contains("Executions") {
                    self.executions = dict["Executions"] as! Double
                }
                if dict.keys.contains("FailTimes") {
                    self.failTimes = dict["FailTimes"] as! Double
                }
                if dict.keys.contains("GetplanTime") {
                    self.getplanTime = dict["GetplanTime"] as! Double
                }
                if dict.keys.contains("IOWaitTime") {
                    self.IOWaitTime = dict["IOWaitTime"] as! Double
                }
                if dict.keys.contains("LogicalRead") {
                    self.logicalRead = dict["LogicalRead"] as! Double
                }
                if dict.keys.contains("MaxCpuTime") {
                    self.maxCpuTime = dict["MaxCpuTime"] as! Double
                }
                if dict.keys.contains("MaxElapsedTime") {
                    self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
                }
                if dict.keys.contains("MemstoreReadRowCount") {
                    self.memstoreReadRowCount = dict["MemstoreReadRowCount"] as! Double
                }
                if dict.keys.contains("MissPlans") {
                    self.missPlans = dict["MissPlans"] as! Double
                }
                if dict.keys.contains("NetwaitTime") {
                    self.netwaitTime = dict["NetwaitTime"] as! Double
                }
                if dict.keys.contains("NodeIp") {
                    self.nodeIp = dict["NodeIp"] as! String
                }
                if dict.keys.contains("QueueTime") {
                    self.queueTime = dict["QueueTime"] as! Double
                }
                if dict.keys.contains("RPCCount") {
                    self.RPCCount = dict["RPCCount"] as! Double
                }
                if dict.keys.contains("RemotePlans") {
                    self.remotePlans = dict["RemotePlans"] as! Double
                }
                if dict.keys.contains("RetryCount") {
                    self.retryCount = dict["RetryCount"] as! Double
                }
                if dict.keys.contains("ReturnRows") {
                    self.returnRows = dict["ReturnRows"] as! Double
                }
                if dict.keys.contains("RowCacheHit") {
                    self.rowCacheHit = dict["RowCacheHit"] as! Double
                }
                if dict.keys.contains("ScheduleTime") {
                    self.scheduleTime = dict["ScheduleTime"] as! Double
                }
                if dict.keys.contains("SqlId") {
                    self.sqlId = dict["SqlId"] as! String
                }
                if dict.keys.contains("SqlType") {
                    self.sqlType = dict["SqlType"] as! String
                }
                if dict.keys.contains("SsstoreReadRowCount") {
                    self.ssstoreReadRowCount = dict["SsstoreReadRowCount"] as! Double
                }
                if dict.keys.contains("TenantName") {
                    self.tenantName = dict["TenantName"] as! String
                }
                if dict.keys.contains("TotalWaitTime") {
                    self.totalWaitTime = dict["TotalWaitTime"] as! Double
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var count: Int64?

        public var list: [DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList.List]?

        public override init() {
            super.init()
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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList.List]
            }
        }
    }
    public var requestId: String?

    public var slowSQLHistoryList: DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.slowSQLHistoryList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slowSQLHistoryList != nil {
            map["SlowSQLHistoryList"] = self.slowSQLHistoryList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlowSQLHistoryList") {
            var model = DescribeSlowSQLHistoryListResponseBody.SlowSQLHistoryList()
            model.fromMap(dict["SlowSQLHistoryList"] as! [String: Any])
            self.slowSQLHistoryList = model
        }
    }
}

public class DescribeSlowSQLHistoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowSQLHistoryListResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSlowSQLHistoryListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowSQLListRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var filterCondition: [String: Any]?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") {
            self.filterCondition = dict["FilterCondition"] as! [String: Any]
        }
        if dict.keys.contains("NodeIp") {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSlowSQLListShrinkRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var filterConditionShrink: String?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterConditionShrink != nil {
            map["FilterCondition"] = self.filterConditionShrink!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") {
            self.filterConditionShrink = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("NodeIp") {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSlowSQLListResponseBody : Tea.TeaModel {
    public class SlowSQLList : Tea.TeaModel {
        public var affectedRows: Int64?

        public var appWaitTime: Double?

        public var blockCacheHit: Int64?

        public var blockIndexCacheHit: Int64?

        public var bloomFilterCacheHit: Int64?

        public var clientIp: String?

        public var concurrencyWaitTime: Double?

        public var cpuTime: Double?

        public var dbName: String?

        public var decodeTime: Double?

        public var diskRead: Int64?

        public var elapsedTime: Double?

        public var event: String?

        public var execPerSecond: Double?

        public var executeTime: Double?

        public var executions: Int64?

        public var failTimes: Int64?

        public var getPlanTime: Double?

        public var IOWaitTime: Double?

        public var key: Int64?

        public var logicalRead: Int64?

        public var maxCpuTime: Double?

        public var maxElapsedTime: Double?

        public var memstoreReadRowCount: Int64?

        public var missPlans: Int64?

        public var netWaitTime: Double?

        public var nodeIp: String?

        public var queueTime: Double?

        public var RPCCount: Int64?

        public var remotePlans: Int64?

        public var retryCount: Int64?

        public var returnRows: Int64?

        public var rowCacheHit: Int64?

        public var SQLId: String?

        public var SQLText: String?

        public var SQLType: Int64?

        public var scheduleTime: Double?

        public var ssstoreReadRowCount: Int64?

        public var totalWaitTime: Double?

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
            if self.affectedRows != nil {
                map["AffectedRows"] = self.affectedRows!
            }
            if self.appWaitTime != nil {
                map["AppWaitTime"] = self.appWaitTime!
            }
            if self.blockCacheHit != nil {
                map["BlockCacheHit"] = self.blockCacheHit!
            }
            if self.blockIndexCacheHit != nil {
                map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
            }
            if self.bloomFilterCacheHit != nil {
                map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.concurrencyWaitTime != nil {
                map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
            }
            if self.cpuTime != nil {
                map["CpuTime"] = self.cpuTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.decodeTime != nil {
                map["DecodeTime"] = self.decodeTime!
            }
            if self.diskRead != nil {
                map["DiskRead"] = self.diskRead!
            }
            if self.elapsedTime != nil {
                map["ElapsedTime"] = self.elapsedTime!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.execPerSecond != nil {
                map["ExecPerSecond"] = self.execPerSecond!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.failTimes != nil {
                map["FailTimes"] = self.failTimes!
            }
            if self.getPlanTime != nil {
                map["GetPlanTime"] = self.getPlanTime!
            }
            if self.IOWaitTime != nil {
                map["IOWaitTime"] = self.IOWaitTime!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.logicalRead != nil {
                map["LogicalRead"] = self.logicalRead!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxElapsedTime != nil {
                map["MaxElapsedTime"] = self.maxElapsedTime!
            }
            if self.memstoreReadRowCount != nil {
                map["MemstoreReadRowCount"] = self.memstoreReadRowCount!
            }
            if self.missPlans != nil {
                map["MissPlans"] = self.missPlans!
            }
            if self.netWaitTime != nil {
                map["NetWaitTime"] = self.netWaitTime!
            }
            if self.nodeIp != nil {
                map["NodeIp"] = self.nodeIp!
            }
            if self.queueTime != nil {
                map["QueueTime"] = self.queueTime!
            }
            if self.RPCCount != nil {
                map["RPCCount"] = self.RPCCount!
            }
            if self.remotePlans != nil {
                map["RemotePlans"] = self.remotePlans!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.returnRows != nil {
                map["ReturnRows"] = self.returnRows!
            }
            if self.rowCacheHit != nil {
                map["RowCacheHit"] = self.rowCacheHit!
            }
            if self.SQLId != nil {
                map["SQLId"] = self.SQLId!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.SQLType != nil {
                map["SQLType"] = self.SQLType!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.ssstoreReadRowCount != nil {
                map["SsstoreReadRowCount"] = self.ssstoreReadRowCount!
            }
            if self.totalWaitTime != nil {
                map["TotalWaitTime"] = self.totalWaitTime!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectedRows") {
                self.affectedRows = dict["AffectedRows"] as! Int64
            }
            if dict.keys.contains("AppWaitTime") {
                self.appWaitTime = dict["AppWaitTime"] as! Double
            }
            if dict.keys.contains("BlockCacheHit") {
                self.blockCacheHit = dict["BlockCacheHit"] as! Int64
            }
            if dict.keys.contains("BlockIndexCacheHit") {
                self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Int64
            }
            if dict.keys.contains("BloomFilterCacheHit") {
                self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Int64
            }
            if dict.keys.contains("ClientIp") {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ConcurrencyWaitTime") {
                self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("CpuTime") {
                self.cpuTime = dict["CpuTime"] as! Double
            }
            if dict.keys.contains("DbName") {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DecodeTime") {
                self.decodeTime = dict["DecodeTime"] as! Double
            }
            if dict.keys.contains("DiskRead") {
                self.diskRead = dict["DiskRead"] as! Int64
            }
            if dict.keys.contains("ElapsedTime") {
                self.elapsedTime = dict["ElapsedTime"] as! Double
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("ExecPerSecond") {
                self.execPerSecond = dict["ExecPerSecond"] as! Double
            }
            if dict.keys.contains("ExecuteTime") {
                self.executeTime = dict["ExecuteTime"] as! Double
            }
            if dict.keys.contains("Executions") {
                self.executions = dict["Executions"] as! Int64
            }
            if dict.keys.contains("FailTimes") {
                self.failTimes = dict["FailTimes"] as! Int64
            }
            if dict.keys.contains("GetPlanTime") {
                self.getPlanTime = dict["GetPlanTime"] as! Double
            }
            if dict.keys.contains("IOWaitTime") {
                self.IOWaitTime = dict["IOWaitTime"] as! Double
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! Int64
            }
            if dict.keys.contains("LogicalRead") {
                self.logicalRead = dict["LogicalRead"] as! Int64
            }
            if dict.keys.contains("MaxCpuTime") {
                self.maxCpuTime = dict["MaxCpuTime"] as! Double
            }
            if dict.keys.contains("MaxElapsedTime") {
                self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
            }
            if dict.keys.contains("MemstoreReadRowCount") {
                self.memstoreReadRowCount = dict["MemstoreReadRowCount"] as! Int64
            }
            if dict.keys.contains("MissPlans") {
                self.missPlans = dict["MissPlans"] as! Int64
            }
            if dict.keys.contains("NetWaitTime") {
                self.netWaitTime = dict["NetWaitTime"] as! Double
            }
            if dict.keys.contains("NodeIp") {
                self.nodeIp = dict["NodeIp"] as! String
            }
            if dict.keys.contains("QueueTime") {
                self.queueTime = dict["QueueTime"] as! Double
            }
            if dict.keys.contains("RPCCount") {
                self.RPCCount = dict["RPCCount"] as! Int64
            }
            if dict.keys.contains("RemotePlans") {
                self.remotePlans = dict["RemotePlans"] as! Int64
            }
            if dict.keys.contains("RetryCount") {
                self.retryCount = dict["RetryCount"] as! Int64
            }
            if dict.keys.contains("ReturnRows") {
                self.returnRows = dict["ReturnRows"] as! Int64
            }
            if dict.keys.contains("RowCacheHit") {
                self.rowCacheHit = dict["RowCacheHit"] as! Int64
            }
            if dict.keys.contains("SQLId") {
                self.SQLId = dict["SQLId"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("SQLType") {
                self.SQLType = dict["SQLType"] as! Int64
            }
            if dict.keys.contains("ScheduleTime") {
                self.scheduleTime = dict["ScheduleTime"] as! Double
            }
            if dict.keys.contains("SsstoreReadRowCount") {
                self.ssstoreReadRowCount = dict["SsstoreReadRowCount"] as! Int64
            }
            if dict.keys.contains("TotalWaitTime") {
                self.totalWaitTime = dict["TotalWaitTime"] as! Double
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var slowSQLList: [DescribeSlowSQLListResponseBody.SlowSQLList]?

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
        if self.slowSQLList != nil {
            var tmp : [Any] = []
            for k in self.slowSQLList! {
                tmp.append(k.toMap())
            }
            map["SlowSQLList"] = tmp
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
        if dict.keys.contains("SlowSQLList") {
            self.slowSQLList = dict["SlowSQLList"] as! [DescribeSlowSQLListResponseBody.SlowSQLList]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeSlowSQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowSQLListResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSlowSQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTenantResponseBody : Tea.TeaModel {
    public class Tenant : Tea.TeaModel {
        public class TenantConnections : Tea.TeaModel {
            public var connectionRole: String?

            public var connectionZones: [String]?

            public var internetAddress: String?

            public var internetAddressStatus: String?

            public var internetPort: Int32?

            public var intranetAddress: String?

            public var intranetAddressMasterZoneId: String?

            public var intranetAddressSlaveZoneId: String?

            public var intranetAddressStatus: String?

            public var intranetPort: Int32?

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
                if self.connectionRole != nil {
                    map["ConnectionRole"] = self.connectionRole!
                }
                if self.connectionZones != nil {
                    map["ConnectionZones"] = self.connectionZones!
                }
                if self.internetAddress != nil {
                    map["InternetAddress"] = self.internetAddress!
                }
                if self.internetAddressStatus != nil {
                    map["InternetAddressStatus"] = self.internetAddressStatus!
                }
                if self.internetPort != nil {
                    map["InternetPort"] = self.internetPort!
                }
                if self.intranetAddress != nil {
                    map["IntranetAddress"] = self.intranetAddress!
                }
                if self.intranetAddressMasterZoneId != nil {
                    map["IntranetAddressMasterZoneId"] = self.intranetAddressMasterZoneId!
                }
                if self.intranetAddressSlaveZoneId != nil {
                    map["IntranetAddressSlaveZoneId"] = self.intranetAddressSlaveZoneId!
                }
                if self.intranetAddressStatus != nil {
                    map["IntranetAddressStatus"] = self.intranetAddressStatus!
                }
                if self.intranetPort != nil {
                    map["IntranetPort"] = self.intranetPort!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionRole") {
                    self.connectionRole = dict["ConnectionRole"] as! String
                }
                if dict.keys.contains("ConnectionZones") {
                    self.connectionZones = dict["ConnectionZones"] as! [String]
                }
                if dict.keys.contains("InternetAddress") {
                    self.internetAddress = dict["InternetAddress"] as! String
                }
                if dict.keys.contains("InternetAddressStatus") {
                    self.internetAddressStatus = dict["InternetAddressStatus"] as! String
                }
                if dict.keys.contains("InternetPort") {
                    self.internetPort = dict["InternetPort"] as! Int32
                }
                if dict.keys.contains("IntranetAddress") {
                    self.intranetAddress = dict["IntranetAddress"] as! String
                }
                if dict.keys.contains("IntranetAddressMasterZoneId") {
                    self.intranetAddressMasterZoneId = dict["IntranetAddressMasterZoneId"] as! String
                }
                if dict.keys.contains("IntranetAddressSlaveZoneId") {
                    self.intranetAddressSlaveZoneId = dict["IntranetAddressSlaveZoneId"] as! String
                }
                if dict.keys.contains("IntranetAddressStatus") {
                    self.intranetAddressStatus = dict["IntranetAddressStatus"] as! String
                }
                if dict.keys.contains("IntranetPort") {
                    self.intranetPort = dict["IntranetPort"] as! Int32
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public class TenantResource : Tea.TeaModel {
            public class Cpu : Tea.TeaModel {
                public var totalCpu: Double?

                public var unitCpu: Double?

                public var usedCpu: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalCpu != nil {
                        map["TotalCpu"] = self.totalCpu!
                    }
                    if self.unitCpu != nil {
                        map["UnitCpu"] = self.unitCpu!
                    }
                    if self.usedCpu != nil {
                        map["UsedCpu"] = self.usedCpu!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalCpu") {
                        self.totalCpu = dict["TotalCpu"] as! Double
                    }
                    if dict.keys.contains("UnitCpu") {
                        self.unitCpu = dict["UnitCpu"] as! Double
                    }
                    if dict.keys.contains("UsedCpu") {
                        self.usedCpu = dict["UsedCpu"] as! Double
                    }
                }
            }
            public class DiskSize : Tea.TeaModel {
                public var usedDiskSize: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.usedDiskSize != nil {
                        map["UsedDiskSize"] = self.usedDiskSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("UsedDiskSize") {
                        self.usedDiskSize = dict["UsedDiskSize"] as! Double
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var totalMemory: Double?

                public var unitMemory: Double?

                public var usedMemory: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalMemory != nil {
                        map["TotalMemory"] = self.totalMemory!
                    }
                    if self.unitMemory != nil {
                        map["UnitMemory"] = self.unitMemory!
                    }
                    if self.usedMemory != nil {
                        map["UsedMemory"] = self.usedMemory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalMemory") {
                        self.totalMemory = dict["TotalMemory"] as! Double
                    }
                    if dict.keys.contains("UnitMemory") {
                        self.unitMemory = dict["UnitMemory"] as! Double
                    }
                    if dict.keys.contains("UsedMemory") {
                        self.usedMemory = dict["UsedMemory"] as! Double
                    }
                }
            }
            public var cpu: DescribeTenantResponseBody.Tenant.TenantResource.Cpu?

            public var diskSize: DescribeTenantResponseBody.Tenant.TenantResource.DiskSize?

            public var memory: DescribeTenantResponseBody.Tenant.TenantResource.Memory?

            public var unitNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cpu?.validate()
                try self.diskSize?.validate()
                try self.memory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu?.toMap()
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.unitNum != nil {
                    map["UnitNum"] = self.unitNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") {
                    var model = DescribeTenantResponseBody.Tenant.TenantResource.Cpu()
                    model.fromMap(dict["Cpu"] as! [String: Any])
                    self.cpu = model
                }
                if dict.keys.contains("DiskSize") {
                    var model = DescribeTenantResponseBody.Tenant.TenantResource.DiskSize()
                    model.fromMap(dict["DiskSize"] as! [String: Any])
                    self.diskSize = model
                }
                if dict.keys.contains("Memory") {
                    var model = DescribeTenantResponseBody.Tenant.TenantResource.Memory()
                    model.fromMap(dict["Memory"] as! [String: Any])
                    self.memory = model
                }
                if dict.keys.contains("UnitNum") {
                    self.unitNum = dict["UnitNum"] as! Int32
                }
            }
        }
        public class TenantZones : Tea.TeaModel {
            public var region: String?

            public var tenantZoneId: String?

            public var tenantZoneRole: String?

            public override init() {
                super.init()
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
                if self.tenantZoneId != nil {
                    map["TenantZoneId"] = self.tenantZoneId!
                }
                if self.tenantZoneRole != nil {
                    map["TenantZoneRole"] = self.tenantZoneRole!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("TenantZoneId") {
                    self.tenantZoneId = dict["TenantZoneId"] as! String
                }
                if dict.keys.contains("TenantZoneRole") {
                    self.tenantZoneRole = dict["TenantZoneRole"] as! String
                }
            }
        }
        public var clogServiceStatus: String?

        public var createTime: String?

        public var deployMode: String?

        public var deployType: String?

        public var description_: String?

        public var enableClogService: Bool?

        public var enableInternetAddressService: Bool?

        public var primaryZone: String?

        public var status: String?

        public var tenantConnections: [DescribeTenantResponseBody.Tenant.TenantConnections]?

        public var tenantId: String?

        public var tenantMode: String?

        public var tenantName: String?

        public var tenantResource: DescribeTenantResponseBody.Tenant.TenantResource?

        public var tenantZones: [DescribeTenantResponseBody.Tenant.TenantZones]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tenantResource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clogServiceStatus != nil {
                map["ClogServiceStatus"] = self.clogServiceStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enableClogService != nil {
                map["EnableClogService"] = self.enableClogService!
            }
            if self.enableInternetAddressService != nil {
                map["EnableInternetAddressService"] = self.enableInternetAddressService!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantConnections != nil {
                var tmp : [Any] = []
                for k in self.tenantConnections! {
                    tmp.append(k.toMap())
                }
                map["TenantConnections"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.tenantMode != nil {
                map["TenantMode"] = self.tenantMode!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.tenantResource != nil {
                map["TenantResource"] = self.tenantResource?.toMap()
            }
            if self.tenantZones != nil {
                var tmp : [Any] = []
                for k in self.tenantZones! {
                    tmp.append(k.toMap())
                }
                map["TenantZones"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClogServiceStatus") {
                self.clogServiceStatus = dict["ClogServiceStatus"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployMode") {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnableClogService") {
                self.enableClogService = dict["EnableClogService"] as! Bool
            }
            if dict.keys.contains("EnableInternetAddressService") {
                self.enableInternetAddressService = dict["EnableInternetAddressService"] as! Bool
            }
            if dict.keys.contains("PrimaryZone") {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TenantConnections") {
                self.tenantConnections = dict["TenantConnections"] as! [DescribeTenantResponseBody.Tenant.TenantConnections]
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("TenantMode") {
                self.tenantMode = dict["TenantMode"] as! String
            }
            if dict.keys.contains("TenantName") {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("TenantResource") {
                var model = DescribeTenantResponseBody.Tenant.TenantResource()
                model.fromMap(dict["TenantResource"] as! [String: Any])
                self.tenantResource = model
            }
            if dict.keys.contains("TenantZones") {
                self.tenantZones = dict["TenantZones"] as! [DescribeTenantResponseBody.Tenant.TenantZones]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenant: DescribeTenantResponseBody.Tenant?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenant?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenant != nil {
            map["Tenant"] = self.tenant?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tenant") {
            var model = DescribeTenantResponseBody.Tenant()
            model.fromMap(dict["Tenant"] as! [String: Any])
            self.tenant = model
        }
    }
}

public class DescribeTenantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTenantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var metrics: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var tenantId: String?

    public var tenantIdList: String?

    public var tenantName: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantIdList != nil {
            map["TenantIdList"] = self.tenantIdList!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Metrics") {
            self.metrics = dict["Metrics"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("TenantIdList") {
            self.tenantIdList = dict["TenantIdList"] as! String
        }
        if dict.keys.contains("TenantName") {
            self.tenantName = dict["TenantName"] as! String
        }
    }
}

public class DescribeTenantMetricsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tenantMetrics: String?

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
        if self.tenantMetrics != nil {
            map["TenantMetrics"] = self.tenantMetrics!
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
        if dict.keys.contains("TenantMetrics") {
            self.tenantMetrics = dict["TenantMetrics"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTenantMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantMetricsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTenantMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantUserRolesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var role: [String]?

    public override init() {
        super.init()
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
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! [String]
        }
    }
}

public class DescribeTenantUserRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantUserRolesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTenantUserRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantUsersRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var tenantId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
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
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DescribeTenantUsersResponseBody : Tea.TeaModel {
    public class TenantUsers : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public var database: String?

            public var role: String?

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
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Database") {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Table") {
                    self.table = dict["Table"] as! String
                }
            }
        }
        public var databases: [DescribeTenantUsersResponseBody.TenantUsers.Databases]?

        public var description_: String?

        public var userName: String?

        public var userStatus: String?

        public var userType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["Databases"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Databases") {
                self.databases = dict["Databases"] as! [DescribeTenantUsersResponseBody.TenantUsers.Databases]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserStatus") {
                self.userStatus = dict["UserStatus"] as! String
            }
            if dict.keys.contains("UserType") {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenantUsers: [DescribeTenantUsersResponseBody.TenantUsers]?

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
        if self.tenantUsers != nil {
            var tmp : [Any] = []
            for k in self.tenantUsers! {
                tmp.append(k.toMap())
            }
            map["TenantUsers"] = tmp
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
        if dict.keys.contains("TenantUsers") {
            self.tenantUsers = dict["TenantUsers"] as! [DescribeTenantUsersResponseBody.TenantUsers]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTenantUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantUsersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTenantUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantZonesReadRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTenantZonesReadResponseBody : Tea.TeaModel {
    public class TenantZones : Tea.TeaModel {
        public var isElectable: Bool?

        public var isPrimary: Bool?

        public var isReadOnlyAddressMaster: Bool?

        public var isReadable: String?

        public var zone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isElectable != nil {
                map["IsElectable"] = self.isElectable!
            }
            if self.isPrimary != nil {
                map["IsPrimary"] = self.isPrimary!
            }
            if self.isReadOnlyAddressMaster != nil {
                map["IsReadOnlyAddressMaster"] = self.isReadOnlyAddressMaster!
            }
            if self.isReadable != nil {
                map["IsReadable"] = self.isReadable!
            }
            if self.zone != nil {
                map["Zone"] = self.zone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsElectable") {
                self.isElectable = dict["IsElectable"] as! Bool
            }
            if dict.keys.contains("IsPrimary") {
                self.isPrimary = dict["IsPrimary"] as! Bool
            }
            if dict.keys.contains("IsReadOnlyAddressMaster") {
                self.isReadOnlyAddressMaster = dict["IsReadOnlyAddressMaster"] as! Bool
            }
            if dict.keys.contains("IsReadable") {
                self.isReadable = dict["IsReadable"] as! String
            }
            if dict.keys.contains("Zone") {
                self.zone = dict["Zone"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenantZones: [DescribeTenantZonesReadResponseBody.TenantZones]?

    public override init() {
        super.init()
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
        if self.tenantZones != nil {
            var tmp : [Any] = []
            for k in self.tenantZones! {
                tmp.append(k.toMap())
            }
            map["TenantZones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantZones") {
            self.tenantZones = dict["TenantZones"] as! [DescribeTenantZonesReadResponseBody.TenantZones]
        }
    }
}

public class DescribeTenantZonesReadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantZonesReadResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTenantZonesReadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTenantsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var tenantId: String?

    public var tenantName: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("TenantName") {
            self.tenantName = dict["TenantName"] as! String
        }
    }
}

public class DescribeTenantsResponseBody : Tea.TeaModel {
    public class Tenants : Tea.TeaModel {
        public var cpu: Int32?

        public var createTime: String?

        public var deployMode: String?

        public var deployType: String?

        public var description_: String?

        public var mem: Int32?

        public var primaryZone: String?

        public var status: String?

        public var tenantId: String?

        public var tenantMode: String?

        public var tenantName: String?

        public var unitCpu: Int32?

        public var unitMem: Int32?

        public var unitNum: Int32?

        public var usedDiskSize: Double?

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
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.mem != nil {
                map["Mem"] = self.mem!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.tenantMode != nil {
                map["TenantMode"] = self.tenantMode!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.unitCpu != nil {
                map["UnitCpu"] = self.unitCpu!
            }
            if self.unitMem != nil {
                map["UnitMem"] = self.unitMem!
            }
            if self.unitNum != nil {
                map["UnitNum"] = self.unitNum!
            }
            if self.usedDiskSize != nil {
                map["UsedDiskSize"] = self.usedDiskSize!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployMode") {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Mem") {
                self.mem = dict["Mem"] as! Int32
            }
            if dict.keys.contains("PrimaryZone") {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("TenantMode") {
                self.tenantMode = dict["TenantMode"] as! String
            }
            if dict.keys.contains("TenantName") {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("UnitCpu") {
                self.unitCpu = dict["UnitCpu"] as! Int32
            }
            if dict.keys.contains("UnitMem") {
                self.unitMem = dict["UnitMem"] as! Int32
            }
            if dict.keys.contains("UnitNum") {
                self.unitNum = dict["UnitNum"] as! Int32
            }
            if dict.keys.contains("UsedDiskSize") {
                self.usedDiskSize = dict["UsedDiskSize"] as! Double
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenants: [DescribeTenantsResponseBody.Tenants]?

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
        if self.tenants != nil {
            var tmp : [Any] = []
            for k in self.tenants! {
                tmp.append(k.toMap())
            }
            map["Tenants"] = tmp
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
        if dict.keys.contains("Tenants") {
            self.tenants = dict["Tenants"] as! [DescribeTenantsResponseBody.Tenants]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTenantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTenantsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTenantsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTimeZonesResponseBody : Tea.TeaModel {
    public class TimeZones : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var description_: String?

            public var timeZone: String?

            public override init() {
                super.init()
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
                if self.timeZone != nil {
                    map["TimeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("TimeZone") {
                    self.timeZone = dict["TimeZone"] as! String
                }
            }
        }
        public var default_: String?

        public var list: [DescribeTimeZonesResponseBody.TimeZones.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.default_ != nil {
                map["Default"] = self.default_!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Default") {
                self.default_ = dict["Default"] as! String
            }
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [DescribeTimeZonesResponseBody.TimeZones.List]
            }
        }
    }
    public var requestId: String?

    public var timeZones: DescribeTimeZonesResponseBody.TimeZones?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.timeZones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timeZones != nil {
            map["TimeZones"] = self.timeZones?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TimeZones") {
            var model = DescribeTimeZonesResponseBody.TimeZones()
            model.fromMap(dict["TimeZones"] as! [String: Any])
            self.timeZones = model
        }
    }
}

public class DescribeTimeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTimeZonesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTimeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTopSQLListRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var filterCondition: [String: Any]?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterCondition != nil {
            map["FilterCondition"] = self.filterCondition!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") {
            self.filterCondition = dict["FilterCondition"] as! [String: Any]
        }
        if dict.keys.contains("NodeIp") {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTopSQLListShrinkRequest : Tea.TeaModel {
    public var dbName: String?

    public var endTime: String?

    public var filterConditionShrink: String?

    public var nodeIp: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: String?

    public var searchKeyWord: String?

    public var searchParameter: String?

    public var searchRule: String?

    public var searchValue: String?

    public var sortColumn: String?

    public var sortOrder: String?

    public var startTime: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterConditionShrink != nil {
            map["FilterCondition"] = self.filterConditionShrink!
        }
        if self.nodeIp != nil {
            map["NodeIp"] = self.nodeIp!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.searchKeyWord != nil {
            map["SearchKeyWord"] = self.searchKeyWord!
        }
        if self.searchParameter != nil {
            map["SearchParameter"] = self.searchParameter!
        }
        if self.searchRule != nil {
            map["SearchRule"] = self.searchRule!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FilterCondition") {
            self.filterConditionShrink = dict["FilterCondition"] as! String
        }
        if dict.keys.contains("NodeIp") {
            self.nodeIp = dict["NodeIp"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! String
        }
        if dict.keys.contains("SearchKeyWord") {
            self.searchKeyWord = dict["SearchKeyWord"] as! String
        }
        if dict.keys.contains("SearchParameter") {
            self.searchParameter = dict["SearchParameter"] as! String
        }
        if dict.keys.contains("SearchRule") {
            self.searchRule = dict["SearchRule"] as! String
        }
        if dict.keys.contains("SearchValue") {
            self.searchValue = dict["SearchValue"] as! String
        }
        if dict.keys.contains("SortColumn") {
            self.sortColumn = dict["SortColumn"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeTopSQLListResponseBody : Tea.TeaModel {
    public class TopSQLList : Tea.TeaModel {
        public var affectedRows: Int64?

        public var appWaitTime: Double?

        public var blockCacheHit: Int64?

        public var blockIndexCacheHit: Int64?

        public var bloomFilterCacheHit: Int64?

        public var clientIp: String?

        public var concurrencyWaitTime: Double?

        public var cpuTime: Double?

        public var dbName: String?

        public var decodeTime: Double?

        public var diskRead: Int64?

        public var elapsedTime: Double?

        public var event: String?

        public var execPerSecond: Double?

        public var executeTime: Double?

        public var executions: Int64?

        public var failTimes: Int64?

        public var getPlanTime: Double?

        public var IOWaitTime: Double?

        public var key: Int64?

        public var logicalRead: Int64?

        public var maxCpuTime: Double?

        public var maxElapsedTime: Double?

        public var memstoreReadRowCount: Int64?

        public var missPlans: Int64?

        public var netWaitTime: Double?

        public var nodeIp: String?

        public var queueTime: Double?

        public var RPCCount: Int64?

        public var remotePlans: Int64?

        public var retryCount: Int64?

        public var returnRows: Int64?

        public var rowCacheHit: Int64?

        public var SQLId: String?

        public var SQLText: String?

        public var SQLType: Int64?

        public var scheduleTime: Double?

        public var ssstoreReadRowCount: Int64?

        public var totalWaitTime: Double?

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
            if self.affectedRows != nil {
                map["AffectedRows"] = self.affectedRows!
            }
            if self.appWaitTime != nil {
                map["AppWaitTime"] = self.appWaitTime!
            }
            if self.blockCacheHit != nil {
                map["BlockCacheHit"] = self.blockCacheHit!
            }
            if self.blockIndexCacheHit != nil {
                map["BlockIndexCacheHit"] = self.blockIndexCacheHit!
            }
            if self.bloomFilterCacheHit != nil {
                map["BloomFilterCacheHit"] = self.bloomFilterCacheHit!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.concurrencyWaitTime != nil {
                map["ConcurrencyWaitTime"] = self.concurrencyWaitTime!
            }
            if self.cpuTime != nil {
                map["CpuTime"] = self.cpuTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.decodeTime != nil {
                map["DecodeTime"] = self.decodeTime!
            }
            if self.diskRead != nil {
                map["DiskRead"] = self.diskRead!
            }
            if self.elapsedTime != nil {
                map["ElapsedTime"] = self.elapsedTime!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.execPerSecond != nil {
                map["ExecPerSecond"] = self.execPerSecond!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.executions != nil {
                map["Executions"] = self.executions!
            }
            if self.failTimes != nil {
                map["FailTimes"] = self.failTimes!
            }
            if self.getPlanTime != nil {
                map["GetPlanTime"] = self.getPlanTime!
            }
            if self.IOWaitTime != nil {
                map["IOWaitTime"] = self.IOWaitTime!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.logicalRead != nil {
                map["LogicalRead"] = self.logicalRead!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxElapsedTime != nil {
                map["MaxElapsedTime"] = self.maxElapsedTime!
            }
            if self.memstoreReadRowCount != nil {
                map["MemstoreReadRowCount"] = self.memstoreReadRowCount!
            }
            if self.missPlans != nil {
                map["MissPlans"] = self.missPlans!
            }
            if self.netWaitTime != nil {
                map["NetWaitTime"] = self.netWaitTime!
            }
            if self.nodeIp != nil {
                map["NodeIp"] = self.nodeIp!
            }
            if self.queueTime != nil {
                map["QueueTime"] = self.queueTime!
            }
            if self.RPCCount != nil {
                map["RPCCount"] = self.RPCCount!
            }
            if self.remotePlans != nil {
                map["RemotePlans"] = self.remotePlans!
            }
            if self.retryCount != nil {
                map["RetryCount"] = self.retryCount!
            }
            if self.returnRows != nil {
                map["ReturnRows"] = self.returnRows!
            }
            if self.rowCacheHit != nil {
                map["RowCacheHit"] = self.rowCacheHit!
            }
            if self.SQLId != nil {
                map["SQLId"] = self.SQLId!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.SQLType != nil {
                map["SQLType"] = self.SQLType!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.ssstoreReadRowCount != nil {
                map["SsstoreReadRowCount"] = self.ssstoreReadRowCount!
            }
            if self.totalWaitTime != nil {
                map["TotalWaitTime"] = self.totalWaitTime!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectedRows") {
                self.affectedRows = dict["AffectedRows"] as! Int64
            }
            if dict.keys.contains("AppWaitTime") {
                self.appWaitTime = dict["AppWaitTime"] as! Double
            }
            if dict.keys.contains("BlockCacheHit") {
                self.blockCacheHit = dict["BlockCacheHit"] as! Int64
            }
            if dict.keys.contains("BlockIndexCacheHit") {
                self.blockIndexCacheHit = dict["BlockIndexCacheHit"] as! Int64
            }
            if dict.keys.contains("BloomFilterCacheHit") {
                self.bloomFilterCacheHit = dict["BloomFilterCacheHit"] as! Int64
            }
            if dict.keys.contains("ClientIp") {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ConcurrencyWaitTime") {
                self.concurrencyWaitTime = dict["ConcurrencyWaitTime"] as! Double
            }
            if dict.keys.contains("CpuTime") {
                self.cpuTime = dict["CpuTime"] as! Double
            }
            if dict.keys.contains("DbName") {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DecodeTime") {
                self.decodeTime = dict["DecodeTime"] as! Double
            }
            if dict.keys.contains("DiskRead") {
                self.diskRead = dict["DiskRead"] as! Int64
            }
            if dict.keys.contains("ElapsedTime") {
                self.elapsedTime = dict["ElapsedTime"] as! Double
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("ExecPerSecond") {
                self.execPerSecond = dict["ExecPerSecond"] as! Double
            }
            if dict.keys.contains("ExecuteTime") {
                self.executeTime = dict["ExecuteTime"] as! Double
            }
            if dict.keys.contains("Executions") {
                self.executions = dict["Executions"] as! Int64
            }
            if dict.keys.contains("FailTimes") {
                self.failTimes = dict["FailTimes"] as! Int64
            }
            if dict.keys.contains("GetPlanTime") {
                self.getPlanTime = dict["GetPlanTime"] as! Double
            }
            if dict.keys.contains("IOWaitTime") {
                self.IOWaitTime = dict["IOWaitTime"] as! Double
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! Int64
            }
            if dict.keys.contains("LogicalRead") {
                self.logicalRead = dict["LogicalRead"] as! Int64
            }
            if dict.keys.contains("MaxCpuTime") {
                self.maxCpuTime = dict["MaxCpuTime"] as! Double
            }
            if dict.keys.contains("MaxElapsedTime") {
                self.maxElapsedTime = dict["MaxElapsedTime"] as! Double
            }
            if dict.keys.contains("MemstoreReadRowCount") {
                self.memstoreReadRowCount = dict["MemstoreReadRowCount"] as! Int64
            }
            if dict.keys.contains("MissPlans") {
                self.missPlans = dict["MissPlans"] as! Int64
            }
            if dict.keys.contains("NetWaitTime") {
                self.netWaitTime = dict["NetWaitTime"] as! Double
            }
            if dict.keys.contains("NodeIp") {
                self.nodeIp = dict["NodeIp"] as! String
            }
            if dict.keys.contains("QueueTime") {
                self.queueTime = dict["QueueTime"] as! Double
            }
            if dict.keys.contains("RPCCount") {
                self.RPCCount = dict["RPCCount"] as! Int64
            }
            if dict.keys.contains("RemotePlans") {
                self.remotePlans = dict["RemotePlans"] as! Int64
            }
            if dict.keys.contains("RetryCount") {
                self.retryCount = dict["RetryCount"] as! Int64
            }
            if dict.keys.contains("ReturnRows") {
                self.returnRows = dict["ReturnRows"] as! Int64
            }
            if dict.keys.contains("RowCacheHit") {
                self.rowCacheHit = dict["RowCacheHit"] as! Int64
            }
            if dict.keys.contains("SQLId") {
                self.SQLId = dict["SQLId"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("SQLType") {
                self.SQLType = dict["SQLType"] as! Int64
            }
            if dict.keys.contains("ScheduleTime") {
                self.scheduleTime = dict["ScheduleTime"] as! Double
            }
            if dict.keys.contains("SsstoreReadRowCount") {
                self.ssstoreReadRowCount = dict["SsstoreReadRowCount"] as! Int64
            }
            if dict.keys.contains("TotalWaitTime") {
                self.totalWaitTime = dict["TotalWaitTime"] as! Double
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var topSQLList: [DescribeTopSQLListResponseBody.TopSQLList]?

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
        if self.topSQLList != nil {
            var tmp : [Any] = []
            for k in self.topSQLList! {
                tmp.append(k.toMap())
            }
            map["TopSQLList"] = tmp
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
        if dict.keys.contains("TopSQLList") {
            self.topSQLList = dict["TopSQLList"] as! [DescribeTopSQLListResponseBody.TopSQLList]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeTopSQLListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTopSQLListResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTopSQLListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
    public var deployType: String?

    public var series: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.series != nil {
            map["Series"] = self.series!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeployType") {
            self.deployType = dict["DeployType"] as! String
        }
        if dict.keys.contains("Series") {
            self.series = dict["Series"] as! String
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var deployType: String?

        public var series: String?

        public var zoneId: String?

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
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.zoneName != nil {
                map["ZoneName"] = self.zoneName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
            if dict.keys.contains("ZoneName") {
                self.zoneName = dict["ZoneName"] as! String
            }
        }
    }
    public var requestId: String?

    public var zones: [DescribeZonesResponseBody.Zones]?

    public override init() {
        super.init()
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
        if self.zones != nil {
            var tmp : [Any] = []
            for k in self.zones! {
                tmp.append(k.toMap())
            }
            map["Zones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") {
            self.zones = dict["Zones"] as! [DescribeZonesResponseBody.Zones]
        }
    }
}

public class DescribeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZonesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDatabaseDescriptionRequest : Tea.TeaModel {
    public var databaseName: String?

    public var description_: String?

    public var instanceId: String?

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
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyDatabaseDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyDatabaseDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseDescriptionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDatabaseDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDatabaseUserRolesRequest : Tea.TeaModel {
    public var databaseName: String?

    public var instanceId: String?

    public var tenantId: String?

    public var users: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! String
        }
    }
}

public class ModifyDatabaseUserRolesResponseBody : Tea.TeaModel {
    public class TenantUser : Tea.TeaModel {
        public class Users : Tea.TeaModel {
            public var role: String?

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
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var databaseName: String?

        public var tenantId: String?

        public var users: [ModifyDatabaseUserRolesResponseBody.TenantUser.Users]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["Users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseName") {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("Users") {
                self.users = dict["Users"] as! [ModifyDatabaseUserRolesResponseBody.TenantUser.Users]
            }
        }
    }
    public var requestId: String?

    public var tenantUser: ModifyDatabaseUserRolesResponseBody.TenantUser?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantUser?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantUser != nil {
            map["TenantUser"] = self.tenantUser?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUser") {
            var model = ModifyDatabaseUserRolesResponseBody.TenantUser()
            model.fromMap(dict["TenantUser"] as! [String: Any])
            self.tenantUser = model
        }
    }
}

public class ModifyDatabaseUserRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseUserRolesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDatabaseUserRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceNameRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceName: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
    }
}

public class ModifyInstanceNameResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceNameResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyParametersRequest : Tea.TeaModel {
    public var dimension: String?

    public var dimensionValue: String?

    public var instanceId: String?

    public var parameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.dimensionValue != nil {
            map["DimensionValue"] = self.dimensionValue!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimension") {
            self.dimension = dict["Dimension"] as! String
        }
        if dict.keys.contains("DimensionValue") {
            self.dimensionValue = dict["DimensionValue"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
    }
}

public class ModifyParametersResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var message: String?

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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var results: ModifyParametersResponseBody.Results?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.results?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            map["Results"] = self.results?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") {
            var model = ModifyParametersResponseBody.Results()
            model.fromMap(dict["Results"] as! [String: Any])
            self.results = model
        }
    }
}

public class ModifyParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyParametersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecurityIpsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var securityIpGroupName: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityIpGroupName != nil {
            map["SecurityIpGroupName"] = self.securityIpGroupName!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityIpGroupName") {
            self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
        }
        if dict.keys.contains("SecurityIps") {
            self.securityIps = dict["SecurityIps"] as! String
        }
    }
}

public class ModifySecurityIpsResponseBody : Tea.TeaModel {
    public class SecurityIpGroup : Tea.TeaModel {
        public var instanceId: String?

        public var securityIpGroupName: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.securityIpGroupName != nil {
                map["SecurityIpGroupName"] = self.securityIpGroupName!
            }
            if self.securityIps != nil {
                map["SecurityIps"] = self.securityIps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("SecurityIpGroupName") {
                self.securityIpGroupName = dict["SecurityIpGroupName"] as! String
            }
            if dict.keys.contains("SecurityIps") {
                self.securityIps = dict["SecurityIps"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityIpGroup: ModifySecurityIpsResponseBody.SecurityIpGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityIpGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIpGroup != nil {
            map["SecurityIpGroup"] = self.securityIpGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIpGroup") {
            var model = ModifySecurityIpsResponseBody.SecurityIpGroup()
            model.fromMap(dict["SecurityIpGroup"] as! [String: Any])
            self.securityIpGroup = model
        }
    }
}

public class ModifySecurityIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityIpsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifySecurityIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantPrimaryZoneRequest : Tea.TeaModel {
    public var instanceId: String?

    public var modifyType: String?

    public var primaryZone: String?

    public var tenantId: String?

    public var userVSwitchId: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.primaryZone != nil {
            map["PrimaryZone"] = self.primaryZone!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userVSwitchId != nil {
            map["UserVSwitchId"] = self.userVSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("PrimaryZone") {
            self.primaryZone = dict["PrimaryZone"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserVSwitchId") {
            self.userVSwitchId = dict["UserVSwitchId"] as! String
        }
    }
}

public class ModifyTenantPrimaryZoneResponseBody : Tea.TeaModel {
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

public class ModifyTenantPrimaryZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantPrimaryZoneResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyTenantPrimaryZoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantResourceRequest : Tea.TeaModel {
    public var cpu: Int32?

    public var instanceId: String?

    public var memory: Int32?

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
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyTenantResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class ModifyTenantResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantResourceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyTenantResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantUserDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var tenantId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class ModifyTenantUserDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyTenantUserDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantUserDescriptionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyTenantUserDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantUserPasswordRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public var userName: String?

    public var userPassword: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userPassword != nil {
            map["UserPassword"] = self.userPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserPassword") {
            self.userPassword = dict["UserPassword"] as! String
        }
    }
}

public class ModifyTenantUserPasswordResponseBody : Tea.TeaModel {
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

public class ModifyTenantUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantUserPasswordResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyTenantUserPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantUserRolesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var modifyType: String?

    public var tenantId: String?

    public var userName: String?

    public var userRole: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userRole != nil {
            map["UserRole"] = self.userRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserRole") {
            self.userRole = dict["UserRole"] as! String
        }
    }
}

public class ModifyTenantUserRolesResponseBody : Tea.TeaModel {
    public class TenantUser : Tea.TeaModel {
        public class UserRole : Tea.TeaModel {
            public var database: String?

            public var isSuccess: Bool?

            public var role: String?

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
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.isSuccess != nil {
                    map["IsSuccess"] = self.isSuccess!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Database") {
                    self.database = dict["Database"] as! String
                }
                if dict.keys.contains("IsSuccess") {
                    self.isSuccess = dict["IsSuccess"] as! Bool
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Table") {
                    self.table = dict["Table"] as! String
                }
            }
        }
        public var tenantId: String?

        public var userName: String?

        public var userRole: [ModifyTenantUserRolesResponseBody.TenantUser.UserRole]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userRole != nil {
                var tmp : [Any] = []
                for k in self.userRole! {
                    tmp.append(k.toMap())
                }
                map["UserRole"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserRole") {
                self.userRole = dict["UserRole"] as! [ModifyTenantUserRolesResponseBody.TenantUser.UserRole]
            }
        }
    }
    public var requestId: String?

    public var tenantUser: ModifyTenantUserRolesResponseBody.TenantUser?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantUser?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantUser != nil {
            map["TenantUser"] = self.tenantUser?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUser") {
            var model = ModifyTenantUserRolesResponseBody.TenantUser()
            model.fromMap(dict["TenantUser"] as! [String: Any])
            self.tenantUser = model
        }
    }
}

public class ModifyTenantUserRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantUserRolesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyTenantUserRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantUserStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: String?

    public var userName: String?

    public var userStatus: String?

    public override init() {
        super.init()
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
            map["InstanceId"] = self.instanceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userStatus != nil {
            map["UserStatus"] = self.userStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserStatus") {
            self.userStatus = dict["UserStatus"] as! String
        }
    }
}

public class ModifyTenantUserStatusResponseBody : Tea.TeaModel {
    public class TenantUser : Tea.TeaModel {
        public var tenantId: String?

        public var userName: String?

        public var userStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserStatus") {
                self.userStatus = dict["UserStatus"] as! String
            }
        }
    }
    public var requestId: String?

    public var tenantUser: [ModifyTenantUserStatusResponseBody.TenantUser]?

    public override init() {
        super.init()
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
        if self.tenantUser != nil {
            var tmp : [Any] = []
            for k in self.tenantUser! {
                tmp.append(k.toMap())
            }
            map["TenantUser"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantUser") {
            self.tenantUser = dict["TenantUser"] as! [ModifyTenantUserStatusResponseBody.TenantUser]
        }
    }
}

public class ModifyTenantUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantUserStatusResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyTenantUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class ReleaseOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: ReleaseOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") {
            var model = ReleaseOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ReleaseOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseOmsOpenAPIProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReleaseOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class ResetOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: ResetOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") {
            var model = ResetOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ResetOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetOmsOpenAPIProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class ResumeOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: ResumeOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") {
            var model = ResumeOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ResumeOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeOmsOpenAPIProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResumeOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchOmsOpenAPIMonitorMetricRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var maxPointNum: Int64?

    public var metric: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxPointNum != nil {
            map["MaxPointNum"] = self.maxPointNum!
        }
        if self.metric != nil {
            map["Metric"] = self.metric!
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
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MaxPointNum") {
            self.maxPointNum = dict["MaxPointNum"] as! Int64
        }
        if dict.keys.contains("Metric") {
            self.metric = dict["Metric"] as! String
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
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class SearchOmsOpenAPIMonitorMetricResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataPoints : Tea.TeaModel {
            public var timestamp: Int64?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public var dataPoints: [SearchOmsOpenAPIMonitorMetricResponseBody.Data.DataPoints]?

        public var metric: String?

        public var tags: [String: String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataPoints != nil {
                var tmp : [Any] = []
                for k in self.dataPoints! {
                    tmp.append(k.toMap())
                }
                map["DataPoints"] = tmp
            }
            if self.metric != nil {
                map["Metric"] = self.metric!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataPoints") {
                self.dataPoints = dict["DataPoints"] as! [SearchOmsOpenAPIMonitorMetricResponseBody.Data.DataPoints]
            }
            if dict.keys.contains("Metric") {
                self.metric = dict["Metric"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: String]
            }
        }
    }
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: [SearchOmsOpenAPIMonitorMetricResponseBody.Data]?

    public var errorDetail: SearchOmsOpenAPIMonitorMetricResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [SearchOmsOpenAPIMonitorMetricResponseBody.Data]
        }
        if dict.keys.contains("ErrorDetail") {
            var model = SearchOmsOpenAPIMonitorMetricResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class SearchOmsOpenAPIMonitorMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchOmsOpenAPIMonitorMetricResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchOmsOpenAPIMonitorMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchOmsOpenAPIProjectsRequest : Tea.TeaModel {
    public var destDbTypes: [String]?

    public var labelIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var sourceDbTypes: [String]?

    public var statusList: [String]?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destDbTypes != nil {
            map["DestDbTypes"] = self.destDbTypes!
        }
        if self.labelIds != nil {
            map["LabelIds"] = self.labelIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.sourceDbTypes != nil {
            map["SourceDbTypes"] = self.sourceDbTypes!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestDbTypes") {
            self.destDbTypes = dict["DestDbTypes"] as! [String]
        }
        if dict.keys.contains("LabelIds") {
            self.labelIds = dict["LabelIds"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("SourceDbTypes") {
            self.sourceDbTypes = dict["SourceDbTypes"] as! [String]
        }
        if dict.keys.contains("StatusList") {
            self.statusList = dict["StatusList"] as! [String]
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class SearchOmsOpenAPIProjectsShrinkRequest : Tea.TeaModel {
    public var destDbTypesShrink: String?

    public var labelIdsShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var sourceDbTypesShrink: String?

    public var statusListShrink: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destDbTypesShrink != nil {
            map["DestDbTypes"] = self.destDbTypesShrink!
        }
        if self.labelIdsShrink != nil {
            map["LabelIds"] = self.labelIdsShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.sourceDbTypesShrink != nil {
            map["SourceDbTypes"] = self.sourceDbTypesShrink!
        }
        if self.statusListShrink != nil {
            map["StatusList"] = self.statusListShrink!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestDbTypes") {
            self.destDbTypesShrink = dict["DestDbTypes"] as! String
        }
        if dict.keys.contains("LabelIds") {
            self.labelIdsShrink = dict["LabelIds"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("SourceDbTypes") {
            self.sourceDbTypesShrink = dict["SourceDbTypes"] as! String
        }
        if dict.keys.contains("StatusList") {
            self.statusListShrink = dict["StatusList"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class SearchOmsOpenAPIProjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DestConfig : Tea.TeaModel {
            public var enableMsgTrace: Bool?

            public var endpointId: String?

            public var endpointType: String?

            public var msgTags: String?

            public var partition: Int32?

            public var partitionMode: String?

            public var producerGroup: String?

            public var sendMsgTimeout: Int64?

            public var sequenceEnable: Bool?

            public var sequenceStartTimestamp: Int64?

            public var serializerType: String?

            public var topicType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMsgTrace != nil {
                    map["EnableMsgTrace"] = self.enableMsgTrace!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.msgTags != nil {
                    map["MsgTags"] = self.msgTags!
                }
                if self.partition != nil {
                    map["Partition"] = self.partition!
                }
                if self.partitionMode != nil {
                    map["PartitionMode"] = self.partitionMode!
                }
                if self.producerGroup != nil {
                    map["ProducerGroup"] = self.producerGroup!
                }
                if self.sendMsgTimeout != nil {
                    map["SendMsgTimeout"] = self.sendMsgTimeout!
                }
                if self.sequenceEnable != nil {
                    map["SequenceEnable"] = self.sequenceEnable!
                }
                if self.sequenceStartTimestamp != nil {
                    map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
                }
                if self.serializerType != nil {
                    map["SerializerType"] = self.serializerType!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMsgTrace") {
                    self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
                }
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointType") {
                    self.endpointType = dict["EndpointType"] as! String
                }
                if dict.keys.contains("MsgTags") {
                    self.msgTags = dict["MsgTags"] as! String
                }
                if dict.keys.contains("Partition") {
                    self.partition = dict["Partition"] as! Int32
                }
                if dict.keys.contains("PartitionMode") {
                    self.partitionMode = dict["PartitionMode"] as! String
                }
                if dict.keys.contains("ProducerGroup") {
                    self.producerGroup = dict["ProducerGroup"] as! String
                }
                if dict.keys.contains("SendMsgTimeout") {
                    self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
                }
                if dict.keys.contains("SequenceEnable") {
                    self.sequenceEnable = dict["SequenceEnable"] as! Bool
                }
                if dict.keys.contains("SequenceStartTimestamp") {
                    self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
                }
                if dict.keys.contains("SerializerType") {
                    self.serializerType = dict["SerializerType"] as! String
                }
                if dict.keys.contains("TopicType") {
                    self.topicType = dict["TopicType"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var count: Int32?

            public var creator: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
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
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("Creator") {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class SourceConfig : Tea.TeaModel {
            public var enableMsgTrace: Bool?

            public var endpointId: String?

            public var endpointType: String?

            public var msgTags: String?

            public var partition: Int32?

            public var partitionMode: String?

            public var producerGroup: String?

            public var sendMsgTimeout: Int64?

            public var sequenceEnable: Bool?

            public var sequenceStartTimestamp: Int64?

            public var serializerType: String?

            public var topicType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMsgTrace != nil {
                    map["EnableMsgTrace"] = self.enableMsgTrace!
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointType != nil {
                    map["EndpointType"] = self.endpointType!
                }
                if self.msgTags != nil {
                    map["MsgTags"] = self.msgTags!
                }
                if self.partition != nil {
                    map["Partition"] = self.partition!
                }
                if self.partitionMode != nil {
                    map["PartitionMode"] = self.partitionMode!
                }
                if self.producerGroup != nil {
                    map["ProducerGroup"] = self.producerGroup!
                }
                if self.sendMsgTimeout != nil {
                    map["SendMsgTimeout"] = self.sendMsgTimeout!
                }
                if self.sequenceEnable != nil {
                    map["SequenceEnable"] = self.sequenceEnable!
                }
                if self.sequenceStartTimestamp != nil {
                    map["SequenceStartTimestamp"] = self.sequenceStartTimestamp!
                }
                if self.serializerType != nil {
                    map["SerializerType"] = self.serializerType!
                }
                if self.topicType != nil {
                    map["TopicType"] = self.topicType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMsgTrace") {
                    self.enableMsgTrace = dict["EnableMsgTrace"] as! Bool
                }
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointType") {
                    self.endpointType = dict["EndpointType"] as! String
                }
                if dict.keys.contains("MsgTags") {
                    self.msgTags = dict["MsgTags"] as! String
                }
                if dict.keys.contains("Partition") {
                    self.partition = dict["Partition"] as! Int32
                }
                if dict.keys.contains("PartitionMode") {
                    self.partitionMode = dict["PartitionMode"] as! String
                }
                if dict.keys.contains("ProducerGroup") {
                    self.producerGroup = dict["ProducerGroup"] as! String
                }
                if dict.keys.contains("SendMsgTimeout") {
                    self.sendMsgTimeout = dict["SendMsgTimeout"] as! Int64
                }
                if dict.keys.contains("SequenceEnable") {
                    self.sequenceEnable = dict["SequenceEnable"] as! Bool
                }
                if dict.keys.contains("SequenceStartTimestamp") {
                    self.sequenceStartTimestamp = dict["SequenceStartTimestamp"] as! Int64
                }
                if dict.keys.contains("SerializerType") {
                    self.serializerType = dict["SerializerType"] as! String
                }
                if dict.keys.contains("TopicType") {
                    self.topicType = dict["TopicType"] as! String
                }
            }
        }
        public class Steps : Tea.TeaModel {
            public class ExtraInfo : Tea.TeaModel {
                public class ErrorDetails : Tea.TeaModel {
                    public var code: String?

                    public var level: String?

                    public var message: String?

                    public var proposal: String?

                    public override init() {
                        super.init()
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
                        if self.level != nil {
                            map["Level"] = self.level!
                        }
                        if self.message != nil {
                            map["Message"] = self.message!
                        }
                        if self.proposal != nil {
                            map["Proposal"] = self.proposal!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Level") {
                            self.level = dict["Level"] as! String
                        }
                        if dict.keys.contains("Message") {
                            self.message = dict["Message"] as! String
                        }
                        if dict.keys.contains("Proposal") {
                            self.proposal = dict["Proposal"] as! String
                        }
                    }
                }
                public var errorCode: String?

                public var errorDetails: [SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo.ErrorDetails]?

                public var errorMsg: String?

                public var errorParam: [String: String]?

                public var failedTime: String?

                public override init() {
                    super.init()
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
                    if self.errorDetails != nil {
                        var tmp : [Any] = []
                        for k in self.errorDetails! {
                            tmp.append(k.toMap())
                        }
                        map["ErrorDetails"] = tmp
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.errorParam != nil {
                        map["ErrorParam"] = self.errorParam!
                    }
                    if self.failedTime != nil {
                        map["FailedTime"] = self.failedTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorDetails") {
                        self.errorDetails = dict["ErrorDetails"] as! [SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo.ErrorDetails]
                    }
                    if dict.keys.contains("ErrorMsg") {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ErrorParam") {
                        self.errorParam = dict["ErrorParam"] as! [String: String]
                    }
                    if dict.keys.contains("FailedTime") {
                        self.failedTime = dict["FailedTime"] as! String
                    }
                }
            }
            public class StepInfo : Tea.TeaModel {
                public class ConnectorFullProgressOverview : Tea.TeaModel {
                    public var estimatedRemainingTimeOfSec: Int64?

                    public var estimatedTotalCount: Int64?

                    public var finishedCount: Int64?

                    public var progress: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.estimatedRemainingTimeOfSec != nil {
                            map["EstimatedRemainingTimeOfSec"] = self.estimatedRemainingTimeOfSec!
                        }
                        if self.estimatedTotalCount != nil {
                            map["EstimatedTotalCount"] = self.estimatedTotalCount!
                        }
                        if self.finishedCount != nil {
                            map["FinishedCount"] = self.finishedCount!
                        }
                        if self.progress != nil {
                            map["Progress"] = self.progress!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EstimatedRemainingTimeOfSec") {
                            self.estimatedRemainingTimeOfSec = dict["EstimatedRemainingTimeOfSec"] as! Int64
                        }
                        if dict.keys.contains("EstimatedTotalCount") {
                            self.estimatedTotalCount = dict["EstimatedTotalCount"] as! Int64
                        }
                        if dict.keys.contains("FinishedCount") {
                            self.finishedCount = dict["FinishedCount"] as! Int64
                        }
                        if dict.keys.contains("Progress") {
                            self.progress = dict["Progress"] as! Int32
                        }
                    }
                }
                public var capacity: Int64?

                public var checkpoint: String?

                public var connectorFullProgressOverview: SearchOmsOpenAPIProjectsResponseBody.Data.Steps.StepInfo.ConnectorFullProgressOverview?

                public var deployId: String?

                public var dstIops: Int64?

                public var dstRps: Int64?

                public var dstRpsRef: Int64?

                public var dstRt: Int64?

                public var dstRtRef: Int64?

                public var gmt: Int64?

                public var inconsistencies: Int64?

                public var incrTimestampCheckpoint: Int64?

                public var jobId: String?

                public var processedRecords: Int64?

                public var skipped: Bool?

                public var srcIops: Int64?

                public var srcIopsRef: Int64?

                public var srcRps: Int64?

                public var srcRpsRef: Int64?

                public var srcRt: Int64?

                public var srcRtRef: Int64?

                public var validated: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.connectorFullProgressOverview?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capacity != nil {
                        map["Capacity"] = self.capacity!
                    }
                    if self.checkpoint != nil {
                        map["Checkpoint"] = self.checkpoint!
                    }
                    if self.connectorFullProgressOverview != nil {
                        map["ConnectorFullProgressOverview"] = self.connectorFullProgressOverview?.toMap()
                    }
                    if self.deployId != nil {
                        map["DeployId"] = self.deployId!
                    }
                    if self.dstIops != nil {
                        map["DstIops"] = self.dstIops!
                    }
                    if self.dstRps != nil {
                        map["DstRps"] = self.dstRps!
                    }
                    if self.dstRpsRef != nil {
                        map["DstRpsRef"] = self.dstRpsRef!
                    }
                    if self.dstRt != nil {
                        map["DstRt"] = self.dstRt!
                    }
                    if self.dstRtRef != nil {
                        map["DstRtRef"] = self.dstRtRef!
                    }
                    if self.gmt != nil {
                        map["Gmt"] = self.gmt!
                    }
                    if self.inconsistencies != nil {
                        map["Inconsistencies"] = self.inconsistencies!
                    }
                    if self.incrTimestampCheckpoint != nil {
                        map["IncrTimestampCheckpoint"] = self.incrTimestampCheckpoint!
                    }
                    if self.jobId != nil {
                        map["JobId"] = self.jobId!
                    }
                    if self.processedRecords != nil {
                        map["ProcessedRecords"] = self.processedRecords!
                    }
                    if self.skipped != nil {
                        map["Skipped"] = self.skipped!
                    }
                    if self.srcIops != nil {
                        map["SrcIops"] = self.srcIops!
                    }
                    if self.srcIopsRef != nil {
                        map["SrcIopsRef"] = self.srcIopsRef!
                    }
                    if self.srcRps != nil {
                        map["SrcRps"] = self.srcRps!
                    }
                    if self.srcRpsRef != nil {
                        map["SrcRpsRef"] = self.srcRpsRef!
                    }
                    if self.srcRt != nil {
                        map["SrcRt"] = self.srcRt!
                    }
                    if self.srcRtRef != nil {
                        map["SrcRtRef"] = self.srcRtRef!
                    }
                    if self.validated != nil {
                        map["Validated"] = self.validated!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Capacity") {
                        self.capacity = dict["Capacity"] as! Int64
                    }
                    if dict.keys.contains("Checkpoint") {
                        self.checkpoint = dict["Checkpoint"] as! String
                    }
                    if dict.keys.contains("ConnectorFullProgressOverview") {
                        var model = SearchOmsOpenAPIProjectsResponseBody.Data.Steps.StepInfo.ConnectorFullProgressOverview()
                        model.fromMap(dict["ConnectorFullProgressOverview"] as! [String: Any])
                        self.connectorFullProgressOverview = model
                    }
                    if dict.keys.contains("DeployId") {
                        self.deployId = dict["DeployId"] as! String
                    }
                    if dict.keys.contains("DstIops") {
                        self.dstIops = dict["DstIops"] as! Int64
                    }
                    if dict.keys.contains("DstRps") {
                        self.dstRps = dict["DstRps"] as! Int64
                    }
                    if dict.keys.contains("DstRpsRef") {
                        self.dstRpsRef = dict["DstRpsRef"] as! Int64
                    }
                    if dict.keys.contains("DstRt") {
                        self.dstRt = dict["DstRt"] as! Int64
                    }
                    if dict.keys.contains("DstRtRef") {
                        self.dstRtRef = dict["DstRtRef"] as! Int64
                    }
                    if dict.keys.contains("Gmt") {
                        self.gmt = dict["Gmt"] as! Int64
                    }
                    if dict.keys.contains("Inconsistencies") {
                        self.inconsistencies = dict["Inconsistencies"] as! Int64
                    }
                    if dict.keys.contains("IncrTimestampCheckpoint") {
                        self.incrTimestampCheckpoint = dict["IncrTimestampCheckpoint"] as! Int64
                    }
                    if dict.keys.contains("JobId") {
                        self.jobId = dict["JobId"] as! String
                    }
                    if dict.keys.contains("ProcessedRecords") {
                        self.processedRecords = dict["ProcessedRecords"] as! Int64
                    }
                    if dict.keys.contains("Skipped") {
                        self.skipped = dict["Skipped"] as! Bool
                    }
                    if dict.keys.contains("SrcIops") {
                        self.srcIops = dict["SrcIops"] as! Int64
                    }
                    if dict.keys.contains("SrcIopsRef") {
                        self.srcIopsRef = dict["SrcIopsRef"] as! Int64
                    }
                    if dict.keys.contains("SrcRps") {
                        self.srcRps = dict["SrcRps"] as! Int64
                    }
                    if dict.keys.contains("SrcRpsRef") {
                        self.srcRpsRef = dict["SrcRpsRef"] as! Int64
                    }
                    if dict.keys.contains("SrcRt") {
                        self.srcRt = dict["SrcRt"] as! Int64
                    }
                    if dict.keys.contains("SrcRtRef") {
                        self.srcRtRef = dict["SrcRtRef"] as! Int64
                    }
                    if dict.keys.contains("Validated") {
                        self.validated = dict["Validated"] as! Bool
                    }
                }
            }
            public var estimatedRemainingSeconds: Int64?

            public var extraInfo: SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo?

            public var finishTime: String?

            public var interactive: Bool?

            public var startTime: String?

            public var stepDescription: String?

            public var stepInfo: SearchOmsOpenAPIProjectsResponseBody.Data.Steps.StepInfo?

            public var stepName: String?

            public var stepOrder: Int32?

            public var stepProgress: Int32?

            public var stepStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.extraInfo?.validate()
                try self.stepInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.estimatedRemainingSeconds != nil {
                    map["EstimatedRemainingSeconds"] = self.estimatedRemainingSeconds!
                }
                if self.extraInfo != nil {
                    map["ExtraInfo"] = self.extraInfo?.toMap()
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.interactive != nil {
                    map["Interactive"] = self.interactive!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.stepDescription != nil {
                    map["StepDescription"] = self.stepDescription!
                }
                if self.stepInfo != nil {
                    map["StepInfo"] = self.stepInfo?.toMap()
                }
                if self.stepName != nil {
                    map["StepName"] = self.stepName!
                }
                if self.stepOrder != nil {
                    map["StepOrder"] = self.stepOrder!
                }
                if self.stepProgress != nil {
                    map["StepProgress"] = self.stepProgress!
                }
                if self.stepStatus != nil {
                    map["StepStatus"] = self.stepStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EstimatedRemainingSeconds") {
                    self.estimatedRemainingSeconds = dict["EstimatedRemainingSeconds"] as! Int64
                }
                if dict.keys.contains("ExtraInfo") {
                    var model = SearchOmsOpenAPIProjectsResponseBody.Data.Steps.ExtraInfo()
                    model.fromMap(dict["ExtraInfo"] as! [String: Any])
                    self.extraInfo = model
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("Interactive") {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StepDescription") {
                    self.stepDescription = dict["StepDescription"] as! String
                }
                if dict.keys.contains("StepInfo") {
                    var model = SearchOmsOpenAPIProjectsResponseBody.Data.Steps.StepInfo()
                    model.fromMap(dict["StepInfo"] as! [String: Any])
                    self.stepInfo = model
                }
                if dict.keys.contains("StepName") {
                    self.stepName = dict["StepName"] as! String
                }
                if dict.keys.contains("StepOrder") {
                    self.stepOrder = dict["StepOrder"] as! Int32
                }
                if dict.keys.contains("StepProgress") {
                    self.stepProgress = dict["StepProgress"] as! Int32
                }
                if dict.keys.contains("StepStatus") {
                    self.stepStatus = dict["StepStatus"] as! String
                }
            }
        }
        public class TransferMapping : Tea.TeaModel {
            public class Databases : Tea.TeaModel {
                public class Tables : Tea.TeaModel {
                    public class AdbTableSchema : Tea.TeaModel {
                        public var distributedKeys: [String]?

                        public var partitionLifeCycle: Int32?

                        public var partitionStatement: String?

                        public var primaryKeys: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.distributedKeys != nil {
                                map["DistributedKeys"] = self.distributedKeys!
                            }
                            if self.partitionLifeCycle != nil {
                                map["PartitionLifeCycle"] = self.partitionLifeCycle!
                            }
                            if self.partitionStatement != nil {
                                map["PartitionStatement"] = self.partitionStatement!
                            }
                            if self.primaryKeys != nil {
                                map["PrimaryKeys"] = self.primaryKeys!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("DistributedKeys") {
                                self.distributedKeys = dict["DistributedKeys"] as! [String]
                            }
                            if dict.keys.contains("PartitionLifeCycle") {
                                self.partitionLifeCycle = dict["PartitionLifeCycle"] as! Int32
                            }
                            if dict.keys.contains("PartitionStatement") {
                                self.partitionStatement = dict["PartitionStatement"] as! String
                            }
                            if dict.keys.contains("PrimaryKeys") {
                                self.primaryKeys = dict["PrimaryKeys"] as! [String]
                            }
                        }
                    }
                    public var adbTableSchema: SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables.AdbTableSchema?

                    public var filterColumns: [String]?

                    public var mappedName: String?

                    public var shardColumns: [String]?

                    public var tableId: String?

                    public var tableName: String?

                    public var type: String?

                    public var whereClause: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.adbTableSchema?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.adbTableSchema != nil {
                            map["AdbTableSchema"] = self.adbTableSchema?.toMap()
                        }
                        if self.filterColumns != nil {
                            map["FilterColumns"] = self.filterColumns!
                        }
                        if self.mappedName != nil {
                            map["MappedName"] = self.mappedName!
                        }
                        if self.shardColumns != nil {
                            map["ShardColumns"] = self.shardColumns!
                        }
                        if self.tableId != nil {
                            map["TableId"] = self.tableId!
                        }
                        if self.tableName != nil {
                            map["TableName"] = self.tableName!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.whereClause != nil {
                            map["WhereClause"] = self.whereClause!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AdbTableSchema") {
                            var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables.AdbTableSchema()
                            model.fromMap(dict["AdbTableSchema"] as! [String: Any])
                            self.adbTableSchema = model
                        }
                        if dict.keys.contains("FilterColumns") {
                            self.filterColumns = dict["FilterColumns"] as! [String]
                        }
                        if dict.keys.contains("MappedName") {
                            self.mappedName = dict["MappedName"] as! String
                        }
                        if dict.keys.contains("ShardColumns") {
                            self.shardColumns = dict["ShardColumns"] as! [String]
                        }
                        if dict.keys.contains("TableId") {
                            self.tableId = dict["TableId"] as! String
                        }
                        if dict.keys.contains("TableName") {
                            self.tableName = dict["TableName"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("WhereClause") {
                            self.whereClause = dict["WhereClause"] as! String
                        }
                    }
                }
                public var databaseId: String?

                public var databaseName: String?

                public var mappedName: String?

                public var tables: [SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables]?

                public var tenantName: String?

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
                    if self.databaseId != nil {
                        map["DatabaseId"] = self.databaseId!
                    }
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.mappedName != nil {
                        map["MappedName"] = self.mappedName!
                    }
                    if self.tables != nil {
                        var tmp : [Any] = []
                        for k in self.tables! {
                            tmp.append(k.toMap())
                        }
                        map["Tables"] = tmp
                    }
                    if self.tenantName != nil {
                        map["TenantName"] = self.tenantName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DatabaseId") {
                        self.databaseId = dict["DatabaseId"] as! String
                    }
                    if dict.keys.contains("DatabaseName") {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("MappedName") {
                        self.mappedName = dict["MappedName"] as! String
                    }
                    if dict.keys.contains("Tables") {
                        self.tables = dict["Tables"] as! [SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases.Tables]
                    }
                    if dict.keys.contains("TenantName") {
                        self.tenantName = dict["TenantName"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var databases: [SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases]?

            public var mode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.databases != nil {
                    var tmp : [Any] = []
                    for k in self.databases! {
                        tmp.append(k.toMap())
                    }
                    map["Databases"] = tmp
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Databases") {
                    self.databases = dict["Databases"] as! [SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping.Databases]
                }
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
            }
        }
        public class TransferStepConfig : Tea.TeaModel {
            public class IncrSyncStepTransferConfig : Tea.TeaModel {
                public var recordTypeList: [String]?

                public var startTimestamp: Int64?

                public var storeLogKeptHour: Int64?

                public var storeTransactionEnabled: Bool?

                public var transferStepType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.recordTypeList != nil {
                        map["RecordTypeList"] = self.recordTypeList!
                    }
                    if self.startTimestamp != nil {
                        map["StartTimestamp"] = self.startTimestamp!
                    }
                    if self.storeLogKeptHour != nil {
                        map["StoreLogKeptHour"] = self.storeLogKeptHour!
                    }
                    if self.storeTransactionEnabled != nil {
                        map["StoreTransactionEnabled"] = self.storeTransactionEnabled!
                    }
                    if self.transferStepType != nil {
                        map["TransferStepType"] = self.transferStepType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RecordTypeList") {
                        self.recordTypeList = dict["RecordTypeList"] as! [String]
                    }
                    if dict.keys.contains("StartTimestamp") {
                        self.startTimestamp = dict["StartTimestamp"] as! Int64
                    }
                    if dict.keys.contains("StoreLogKeptHour") {
                        self.storeLogKeptHour = dict["StoreLogKeptHour"] as! Int64
                    }
                    if dict.keys.contains("StoreTransactionEnabled") {
                        self.storeTransactionEnabled = dict["StoreTransactionEnabled"] as! Bool
                    }
                    if dict.keys.contains("TransferStepType") {
                        self.transferStepType = dict["TransferStepType"] as! String
                    }
                }
            }
            public var enableFullSync: Bool?

            public var enableIncrSync: Bool?

            public var enableStructSync: Bool?

            public var incrSyncStepTransferConfig: SearchOmsOpenAPIProjectsResponseBody.Data.TransferStepConfig.IncrSyncStepTransferConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.incrSyncStepTransferConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableFullSync != nil {
                    map["EnableFullSync"] = self.enableFullSync!
                }
                if self.enableIncrSync != nil {
                    map["EnableIncrSync"] = self.enableIncrSync!
                }
                if self.enableStructSync != nil {
                    map["EnableStructSync"] = self.enableStructSync!
                }
                if self.incrSyncStepTransferConfig != nil {
                    map["IncrSyncStepTransferConfig"] = self.incrSyncStepTransferConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableFullSync") {
                    self.enableFullSync = dict["EnableFullSync"] as! Bool
                }
                if dict.keys.contains("EnableIncrSync") {
                    self.enableIncrSync = dict["EnableIncrSync"] as! Bool
                }
                if dict.keys.contains("EnableStructSync") {
                    self.enableStructSync = dict["EnableStructSync"] as! Bool
                }
                if dict.keys.contains("IncrSyncStepTransferConfig") {
                    var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferStepConfig.IncrSyncStepTransferConfig()
                    model.fromMap(dict["IncrSyncStepTransferConfig"] as! [String: Any])
                    self.incrSyncStepTransferConfig = model
                }
            }
        }
        public var businessName: String?

        public var destConfig: SearchOmsOpenAPIProjectsResponseBody.Data.DestConfig?

        public var labels: [SearchOmsOpenAPIProjectsResponseBody.Data.Labels]?

        public var projectId: String?

        public var projectName: String?

        public var projectOwner: String?

        public var sourceConfig: SearchOmsOpenAPIProjectsResponseBody.Data.SourceConfig?

        public var steps: [SearchOmsOpenAPIProjectsResponseBody.Data.Steps]?

        public var transferMapping: SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping?

        public var transferStepConfig: SearchOmsOpenAPIProjectsResponseBody.Data.TransferStepConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.destConfig?.validate()
            try self.sourceConfig?.validate()
            try self.transferMapping?.validate()
            try self.transferStepConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.destConfig != nil {
                map["DestConfig"] = self.destConfig?.toMap()
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectOwner != nil {
                map["ProjectOwner"] = self.projectOwner!
            }
            if self.sourceConfig != nil {
                map["SourceConfig"] = self.sourceConfig?.toMap()
            }
            if self.steps != nil {
                var tmp : [Any] = []
                for k in self.steps! {
                    tmp.append(k.toMap())
                }
                map["Steps"] = tmp
            }
            if self.transferMapping != nil {
                map["TransferMapping"] = self.transferMapping?.toMap()
            }
            if self.transferStepConfig != nil {
                map["TransferStepConfig"] = self.transferStepConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessName") {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("DestConfig") {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data.DestConfig()
                model.fromMap(dict["DestConfig"] as! [String: Any])
                self.destConfig = model
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [SearchOmsOpenAPIProjectsResponseBody.Data.Labels]
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectOwner") {
                self.projectOwner = dict["ProjectOwner"] as! String
            }
            if dict.keys.contains("SourceConfig") {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data.SourceConfig()
                model.fromMap(dict["SourceConfig"] as! [String: Any])
                self.sourceConfig = model
            }
            if dict.keys.contains("Steps") {
                self.steps = dict["Steps"] as! [SearchOmsOpenAPIProjectsResponseBody.Data.Steps]
            }
            if dict.keys.contains("TransferMapping") {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferMapping()
                model.fromMap(dict["TransferMapping"] as! [String: Any])
                self.transferMapping = model
            }
            if dict.keys.contains("TransferStepConfig") {
                var model = SearchOmsOpenAPIProjectsResponseBody.Data.TransferStepConfig()
                model.fromMap(dict["TransferStepConfig"] as! [String: Any])
                self.transferStepConfig = model
            }
        }
    }
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: [SearchOmsOpenAPIProjectsResponseBody.Data]?

    public var errorDetail: SearchOmsOpenAPIProjectsResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [SearchOmsOpenAPIProjectsResponseBody.Data]
        }
        if dict.keys.contains("ErrorDetail") {
            var model = SearchOmsOpenAPIProjectsResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class SearchOmsOpenAPIProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchOmsOpenAPIProjectsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchOmsOpenAPIProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class StartOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: StartOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") {
            var model = StartOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class StartOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartOmsOpenAPIProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopOmsOpenAPIProjectRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var workerGradeId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workerGradeId != nil {
            map["WorkerGradeId"] = self.workerGradeId!
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
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkerGradeId") {
            self.workerGradeId = dict["WorkerGradeId"] as! String
        }
    }
}

public class StopOmsOpenAPIProjectResponseBody : Tea.TeaModel {
    public class ErrorDetail : Tea.TeaModel {
        public var code: String?

        public var level: String?

        public var message: String?

        public var proposal: String?

        public override init() {
            super.init()
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
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
        }
    }
    public var advice: String?

    public var code: String?

    public var cost: String?

    public var data: Bool?

    public var errorDetail: StopOmsOpenAPIProjectResponseBody.ErrorDetail?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advice != nil {
            map["Advice"] = self.advice!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Advice") {
            self.advice = dict["Advice"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Cost") {
            self.cost = dict["Cost"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorDetail") {
            var model = StopOmsOpenAPIProjectResponseBody.ErrorDetail()
            model.fromMap(dict["ErrorDetail"] as! [String: Any])
            self.errorDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class StopOmsOpenAPIProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopOmsOpenAPIProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopOmsOpenAPIProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
