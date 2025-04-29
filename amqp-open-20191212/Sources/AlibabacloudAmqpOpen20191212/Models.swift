import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataValue : Tea.TeaModel {
    public var masterUid: Int64?

    public var cInstanceId: String?

    public var accessKey: String?

    public var userName: String?

    public var password: String?

    public var deleted: Int64?

    public var createTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.masterUid != nil {
            map["masterUid"] = self.masterUid!
        }
        if self.cInstanceId != nil {
            map["cInstanceId"] = self.cInstanceId!
        }
        if self.accessKey != nil {
            map["accessKey"] = self.accessKey!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.deleted != nil {
            map["deleted"] = self.deleted!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("masterUid") {
            self.masterUid = dict["masterUid"] as! Int64
        }
        if dict.keys.contains("cInstanceId") {
            self.cInstanceId = dict["cInstanceId"] as! String
        }
        if dict.keys.contains("accessKey") {
            self.accessKey = dict["accessKey"] as! String
        }
        if dict.keys.contains("userName") {
            self.userName = dict["userName"] as! String
        }
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("deleted") {
            self.deleted = dict["deleted"] as! Int64
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var accountAccessKey: String?

    public var createTimestamp: Int64?

    public var instanceId: String?

    public var secretSign: String?

    public var signature: String?

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
        if self.accountAccessKey != nil {
            map["accountAccessKey"] = self.accountAccessKey!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.secretSign != nil {
            map["secretSign"] = self.secretSign!
        }
        if self.signature != nil {
            map["signature"] = self.signature!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountAccessKey") {
            self.accountAccessKey = dict["accountAccessKey"] as! String
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("secretSign") {
            self.secretSign = dict["secretSign"] as! String
        }
        if dict.keys.contains("signature") {
            self.signature = dict["signature"] as! String
        }
        if dict.keys.contains("userName") {
            self.userName = dict["userName"] as! String
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKey: String?

        public var createTimeStamp: Int64?

        public var instanceId: String?

        public var masterUId: Int64?

        public var password: String?

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
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.createTimeStamp != nil {
                map["CreateTimeStamp"] = self.createTimeStamp!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.masterUId != nil {
                map["MasterUId"] = self.masterUId!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("CreateTimeStamp") {
                self.createTimeStamp = dict["CreateTimeStamp"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MasterUId") {
                self.masterUId = dict["MasterUId"] as! Int64
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: CreateAccountResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = CreateAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBindingRequest : Tea.TeaModel {
    public var argument: String?

    public var bindingKey: String?

    public var bindingType: String?

    public var destinationName: String?

    public var instanceId: String?

    public var sourceExchange: String?

    public var virtualHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.argument != nil {
            map["Argument"] = self.argument!
        }
        if self.bindingKey != nil {
            map["BindingKey"] = self.bindingKey!
        }
        if self.bindingType != nil {
            map["BindingType"] = self.bindingType!
        }
        if self.destinationName != nil {
            map["DestinationName"] = self.destinationName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sourceExchange != nil {
            map["SourceExchange"] = self.sourceExchange!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Argument") {
            self.argument = dict["Argument"] as! String
        }
        if dict.keys.contains("BindingKey") {
            self.bindingKey = dict["BindingKey"] as! String
        }
        if dict.keys.contains("BindingType") {
            self.bindingType = dict["BindingType"] as! String
        }
        if dict.keys.contains("DestinationName") {
            self.destinationName = dict["DestinationName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SourceExchange") {
            self.sourceExchange = dict["SourceExchange"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class CreateBindingResponseBody : Tea.TeaModel {
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

public class CreateBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBindingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateExchangeRequest : Tea.TeaModel {
    public var alternateExchange: String?

    public var autoDeleteState: Bool?

    public var exchangeName: String?

    public var exchangeType: String?

    public var instanceId: String?

    public var internal_: Bool?

    public var virtualHost: String?

    public var XDelayedType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alternateExchange != nil {
            map["AlternateExchange"] = self.alternateExchange!
        }
        if self.autoDeleteState != nil {
            map["AutoDeleteState"] = self.autoDeleteState!
        }
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.exchangeType != nil {
            map["ExchangeType"] = self.exchangeType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.internal_ != nil {
            map["Internal"] = self.internal_!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        if self.XDelayedType != nil {
            map["XDelayedType"] = self.XDelayedType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlternateExchange") {
            self.alternateExchange = dict["AlternateExchange"] as! String
        }
        if dict.keys.contains("AutoDeleteState") {
            self.autoDeleteState = dict["AutoDeleteState"] as! Bool
        }
        if dict.keys.contains("ExchangeName") {
            self.exchangeName = dict["ExchangeName"] as! String
        }
        if dict.keys.contains("ExchangeType") {
            self.exchangeType = dict["ExchangeType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Internal") {
            self.internal_ = dict["Internal"] as! Bool
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
        if dict.keys.contains("XDelayedType") {
            self.XDelayedType = dict["XDelayedType"] as! String
        }
    }
}

public class CreateExchangeResponseBody : Tea.TeaModel {
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

public class CreateExchangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExchangeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateExchangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var edition: String?

    public var encryptedInstance: Bool?

    public var instanceName: String?

    public var instanceType: String?

    public var kmsKeyId: String?

    public var maxConnections: Int32?

    public var maxEipTps: Int64?

    public var maxPrivateTps: Int64?

    public var paymentType: String?

    public var period: Int32?

    public var periodCycle: String?

    public var provisionedCapacity: Int32?

    public var queueCapacity: Int32?

    public var renewStatus: String?

    public var renewalDurationUnit: String?

    public var resourceGroupId: String?

    public var serverlessChargeType: String?

    public var storageSize: Int32?

    public var supportEip: Bool?

    public var supportTracing: Bool?

    public var tracingStorageTime: Int32?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.encryptedInstance != nil {
            map["EncryptedInstance"] = self.encryptedInstance!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.kmsKeyId != nil {
            map["KmsKeyId"] = self.kmsKeyId!
        }
        if self.maxConnections != nil {
            map["MaxConnections"] = self.maxConnections!
        }
        if self.maxEipTps != nil {
            map["MaxEipTps"] = self.maxEipTps!
        }
        if self.maxPrivateTps != nil {
            map["MaxPrivateTps"] = self.maxPrivateTps!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodCycle != nil {
            map["PeriodCycle"] = self.periodCycle!
        }
        if self.provisionedCapacity != nil {
            map["ProvisionedCapacity"] = self.provisionedCapacity!
        }
        if self.queueCapacity != nil {
            map["QueueCapacity"] = self.queueCapacity!
        }
        if self.renewStatus != nil {
            map["RenewStatus"] = self.renewStatus!
        }
        if self.renewalDurationUnit != nil {
            map["RenewalDurationUnit"] = self.renewalDurationUnit!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serverlessChargeType != nil {
            map["ServerlessChargeType"] = self.serverlessChargeType!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.supportEip != nil {
            map["SupportEip"] = self.supportEip!
        }
        if self.supportTracing != nil {
            map["SupportTracing"] = self.supportTracing!
        }
        if self.tracingStorageTime != nil {
            map["TracingStorageTime"] = self.tracingStorageTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Edition") {
            self.edition = dict["Edition"] as! String
        }
        if dict.keys.contains("EncryptedInstance") {
            self.encryptedInstance = dict["EncryptedInstance"] as! Bool
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("KmsKeyId") {
            self.kmsKeyId = dict["KmsKeyId"] as! String
        }
        if dict.keys.contains("MaxConnections") {
            self.maxConnections = dict["MaxConnections"] as! Int32
        }
        if dict.keys.contains("MaxEipTps") {
            self.maxEipTps = dict["MaxEipTps"] as! Int64
        }
        if dict.keys.contains("MaxPrivateTps") {
            self.maxPrivateTps = dict["MaxPrivateTps"] as! Int64
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodCycle") {
            self.periodCycle = dict["PeriodCycle"] as! String
        }
        if dict.keys.contains("ProvisionedCapacity") {
            self.provisionedCapacity = dict["ProvisionedCapacity"] as! Int32
        }
        if dict.keys.contains("QueueCapacity") {
            self.queueCapacity = dict["QueueCapacity"] as! Int32
        }
        if dict.keys.contains("RenewStatus") {
            self.renewStatus = dict["RenewStatus"] as! String
        }
        if dict.keys.contains("RenewalDurationUnit") {
            self.renewalDurationUnit = dict["RenewalDurationUnit"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServerlessChargeType") {
            self.serverlessChargeType = dict["ServerlessChargeType"] as! String
        }
        if dict.keys.contains("StorageSize") {
            self.storageSize = dict["StorageSize"] as! Int32
        }
        if dict.keys.contains("SupportEip") {
            self.supportEip = dict["SupportEip"] as! Bool
        }
        if dict.keys.contains("SupportTracing") {
            self.supportTracing = dict["SupportTracing"] as! Bool
        }
        if dict.keys.contains("TracingStorageTime") {
            self.tracingStorageTime = dict["TracingStorageTime"] as! Int32
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class CreateQueueRequest : Tea.TeaModel {
    public var autoDeleteState: Bool?

    public var autoExpireState: Int64?

    public var deadLetterExchange: String?

    public var deadLetterRoutingKey: String?

    public var exclusiveState: Bool?

    public var instanceId: String?

    public var maxLength: Int64?

    public var maximumPriority: Int32?

    public var messageTTL: Int64?

    public var queueName: String?

    public var virtualHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDeleteState != nil {
            map["AutoDeleteState"] = self.autoDeleteState!
        }
        if self.autoExpireState != nil {
            map["AutoExpireState"] = self.autoExpireState!
        }
        if self.deadLetterExchange != nil {
            map["DeadLetterExchange"] = self.deadLetterExchange!
        }
        if self.deadLetterRoutingKey != nil {
            map["DeadLetterRoutingKey"] = self.deadLetterRoutingKey!
        }
        if self.exclusiveState != nil {
            map["ExclusiveState"] = self.exclusiveState!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxLength != nil {
            map["MaxLength"] = self.maxLength!
        }
        if self.maximumPriority != nil {
            map["MaximumPriority"] = self.maximumPriority!
        }
        if self.messageTTL != nil {
            map["MessageTTL"] = self.messageTTL!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoDeleteState") {
            self.autoDeleteState = dict["AutoDeleteState"] as! Bool
        }
        if dict.keys.contains("AutoExpireState") {
            self.autoExpireState = dict["AutoExpireState"] as! Int64
        }
        if dict.keys.contains("DeadLetterExchange") {
            self.deadLetterExchange = dict["DeadLetterExchange"] as! String
        }
        if dict.keys.contains("DeadLetterRoutingKey") {
            self.deadLetterRoutingKey = dict["DeadLetterRoutingKey"] as! String
        }
        if dict.keys.contains("ExclusiveState") {
            self.exclusiveState = dict["ExclusiveState"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxLength") {
            self.maxLength = dict["MaxLength"] as! Int64
        }
        if dict.keys.contains("MaximumPriority") {
            self.maximumPriority = dict["MaximumPriority"] as! Int32
        }
        if dict.keys.contains("MessageTTL") {
            self.messageTTL = dict["MessageTTL"] as! Int64
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class CreateQueueResponseBody : Tea.TeaModel {
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

public class CreateQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVirtualHostRequest : Tea.TeaModel {
    public var instanceId: String?

    public var virtualHost: String?

    public override init() {
        super.init()
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
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class CreateVirtualHostResponseBody : Tea.TeaModel {
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

public class CreateVirtualHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateVirtualHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var createTimestamp: Int64?

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
        if self.createTimestamp != nil {
            map["CreateTimestamp"] = self.createTimestamp!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimestamp") {
            self.createTimestamp = dict["CreateTimestamp"] as! Int64
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBindingRequest : Tea.TeaModel {
    public var bindingKey: String?

    public var bindingType: String?

    public var destinationName: String?

    public var instanceId: String?

    public var sourceExchange: String?

    public var virtualHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindingKey != nil {
            map["BindingKey"] = self.bindingKey!
        }
        if self.bindingType != nil {
            map["BindingType"] = self.bindingType!
        }
        if self.destinationName != nil {
            map["DestinationName"] = self.destinationName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sourceExchange != nil {
            map["SourceExchange"] = self.sourceExchange!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BindingKey") {
            self.bindingKey = dict["BindingKey"] as! String
        }
        if dict.keys.contains("BindingType") {
            self.bindingType = dict["BindingType"] as! String
        }
        if dict.keys.contains("DestinationName") {
            self.destinationName = dict["DestinationName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SourceExchange") {
            self.sourceExchange = dict["SourceExchange"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class DeleteBindingResponseBody : Tea.TeaModel {
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

public class DeleteBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBindingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteExchangeRequest : Tea.TeaModel {
    public var exchangeName: String?

    public var instanceId: String?

    public var virtualHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExchangeName") {
            self.exchangeName = dict["ExchangeName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class DeleteExchangeResponseBody : Tea.TeaModel {
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

public class DeleteExchangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExchangeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteExchangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteQueueRequest : Tea.TeaModel {
    public var instanceId: String?

    public var queueName: String?

    public var virtualHost: String?

    public override init() {
        super.init()
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
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class DeleteQueueResponseBody : Tea.TeaModel {
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

public class DeleteQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVirtualHostRequest : Tea.TeaModel {
    public var instanceId: String?

    public var virtualHost: String?

    public override init() {
        super.init()
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
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class DeleteVirtualHostResponseBody : Tea.TeaModel {
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

public class DeleteVirtualHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteVirtualHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceRequest : Tea.TeaModel {
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

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var autoRenewInstance: Bool?

        public var classicEndpoint: String?

        public var encryptedInstance: Bool?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceType: String?

        public var kmsKeyId: String?

        public var maxConnections: Int32?

        public var maxEipTps: Int32?

        public var maxQueue: Int32?

        public var maxTps: Int32?

        public var maxVhost: Int32?

        public var orderCreateTime: Int64?

        public var orderType: String?

        public var privateEndpoint: String?

        public var publicEndpoint: String?

        public var resourceGroupId: String?

        public var status: String?

        public var storageSize: Int32?

        public var supportEIP: Bool?

        public var supportTracing: Bool?

        public var tags: [GetInstanceResponseBody.Data.Tags]?

        public var tracingStorageTime: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenewInstance != nil {
                map["AutoRenewInstance"] = self.autoRenewInstance!
            }
            if self.classicEndpoint != nil {
                map["ClassicEndpoint"] = self.classicEndpoint!
            }
            if self.encryptedInstance != nil {
                map["EncryptedInstance"] = self.encryptedInstance!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.kmsKeyId != nil {
                map["KmsKeyId"] = self.kmsKeyId!
            }
            if self.maxConnections != nil {
                map["MaxConnections"] = self.maxConnections!
            }
            if self.maxEipTps != nil {
                map["MaxEipTps"] = self.maxEipTps!
            }
            if self.maxQueue != nil {
                map["MaxQueue"] = self.maxQueue!
            }
            if self.maxTps != nil {
                map["MaxTps"] = self.maxTps!
            }
            if self.maxVhost != nil {
                map["MaxVhost"] = self.maxVhost!
            }
            if self.orderCreateTime != nil {
                map["OrderCreateTime"] = self.orderCreateTime!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            if self.privateEndpoint != nil {
                map["PrivateEndpoint"] = self.privateEndpoint!
            }
            if self.publicEndpoint != nil {
                map["PublicEndpoint"] = self.publicEndpoint!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            if self.supportEIP != nil {
                map["SupportEIP"] = self.supportEIP!
            }
            if self.supportTracing != nil {
                map["SupportTracing"] = self.supportTracing!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tracingStorageTime != nil {
                map["TracingStorageTime"] = self.tracingStorageTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenewInstance") {
                self.autoRenewInstance = dict["AutoRenewInstance"] as! Bool
            }
            if dict.keys.contains("ClassicEndpoint") {
                self.classicEndpoint = dict["ClassicEndpoint"] as! String
            }
            if dict.keys.contains("EncryptedInstance") {
                self.encryptedInstance = dict["EncryptedInstance"] as! Bool
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("KmsKeyId") {
                self.kmsKeyId = dict["KmsKeyId"] as! String
            }
            if dict.keys.contains("MaxConnections") {
                self.maxConnections = dict["MaxConnections"] as! Int32
            }
            if dict.keys.contains("MaxEipTps") {
                self.maxEipTps = dict["MaxEipTps"] as! Int32
            }
            if dict.keys.contains("MaxQueue") {
                self.maxQueue = dict["MaxQueue"] as! Int32
            }
            if dict.keys.contains("MaxTps") {
                self.maxTps = dict["MaxTps"] as! Int32
            }
            if dict.keys.contains("MaxVhost") {
                self.maxVhost = dict["MaxVhost"] as! Int32
            }
            if dict.keys.contains("OrderCreateTime") {
                self.orderCreateTime = dict["OrderCreateTime"] as! Int64
            }
            if dict.keys.contains("OrderType") {
                self.orderType = dict["OrderType"] as! String
            }
            if dict.keys.contains("PrivateEndpoint") {
                self.privateEndpoint = dict["PrivateEndpoint"] as! String
            }
            if dict.keys.contains("PublicEndpoint") {
                self.publicEndpoint = dict["PublicEndpoint"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageSize") {
                self.storageSize = dict["StorageSize"] as! Int32
            }
            if dict.keys.contains("SupportEIP") {
                self.supportEIP = dict["SupportEIP"] as! Bool
            }
            if dict.keys.contains("SupportTracing") {
                self.supportTracing = dict["SupportTracing"] as! Bool
            }
            if dict.keys.contains("Tags") {
                var tmp : [GetInstanceResponseBody.Data.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetInstanceResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TracingStorageTime") {
                self.tracingStorageTime = dict["TracingStorageTime"] as! Int32
            }
        }
    }
    public var data: GetInstanceResponseBody.Data?

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
            var model = GetInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class GetMetadataAmountRequest : Tea.TeaModel {
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

public class GetMetadataAmountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var currentExchanges: Int32?

        public var currentQueues: Int32?

        public var currentVirtualHosts: Int32?

        public var maxExchanges: Int32?

        public var maxQueues: Int32?

        public var maxVirtualHosts: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentExchanges != nil {
                map["CurrentExchanges"] = self.currentExchanges!
            }
            if self.currentQueues != nil {
                map["CurrentQueues"] = self.currentQueues!
            }
            if self.currentVirtualHosts != nil {
                map["CurrentVirtualHosts"] = self.currentVirtualHosts!
            }
            if self.maxExchanges != nil {
                map["MaxExchanges"] = self.maxExchanges!
            }
            if self.maxQueues != nil {
                map["MaxQueues"] = self.maxQueues!
            }
            if self.maxVirtualHosts != nil {
                map["MaxVirtualHosts"] = self.maxVirtualHosts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentExchanges") {
                self.currentExchanges = dict["CurrentExchanges"] as! Int32
            }
            if dict.keys.contains("CurrentQueues") {
                self.currentQueues = dict["CurrentQueues"] as! Int32
            }
            if dict.keys.contains("CurrentVirtualHosts") {
                self.currentVirtualHosts = dict["CurrentVirtualHosts"] as! Int32
            }
            if dict.keys.contains("MaxExchanges") {
                self.maxExchanges = dict["MaxExchanges"] as! Int32
            }
            if dict.keys.contains("MaxQueues") {
                self.maxQueues = dict["MaxQueues"] as! Int32
            }
            if dict.keys.contains("MaxVirtualHosts") {
                self.maxVirtualHosts = dict["MaxVirtualHosts"] as! Int32
            }
        }
    }
    public var data: GetMetadataAmountResponseBody.Data?

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
            var model = GetMetadataAmountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMetadataAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMetadataAmountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMetadataAmountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccountsRequest : Tea.TeaModel {
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

public class ListAccountsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String: [DataValue]]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.data! {
                var l1 : [Any] = []
                for k1 in v {
                    l1.append(k1.toMap())
                }
                tmp[k] = l1
            }
            map["Data"] = tmp
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [String: [DataValue]] = [:]
            for (k, v) in dict["Data"] as! [String: Any] {
                var l1 : [DataValue] = []
                for v1 in v as! [Any] {
                    var model = DataValue()
                    if v1 != nil {
                        model.fromMap(v1 as! [String: Any])
                    }
                    l1.append(model)
                }
                tmp[k] = l1
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBindingsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var virtualHost: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class ListBindingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Bindings : Tea.TeaModel {
            public var argument: String?

            public var bindingKey: String?

            public var bindingType: String?

            public var destinationName: String?

            public var sourceExchange: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.argument != nil {
                    map["Argument"] = self.argument!
                }
                if self.bindingKey != nil {
                    map["BindingKey"] = self.bindingKey!
                }
                if self.bindingType != nil {
                    map["BindingType"] = self.bindingType!
                }
                if self.destinationName != nil {
                    map["DestinationName"] = self.destinationName!
                }
                if self.sourceExchange != nil {
                    map["SourceExchange"] = self.sourceExchange!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Argument") {
                    self.argument = dict["Argument"] as! String
                }
                if dict.keys.contains("BindingKey") {
                    self.bindingKey = dict["BindingKey"] as! String
                }
                if dict.keys.contains("BindingType") {
                    self.bindingType = dict["BindingType"] as! String
                }
                if dict.keys.contains("DestinationName") {
                    self.destinationName = dict["DestinationName"] as! String
                }
                if dict.keys.contains("SourceExchange") {
                    self.sourceExchange = dict["SourceExchange"] as! String
                }
            }
        }
        public var bindings: [ListBindingsResponseBody.Data.Bindings]?

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
            if self.bindings != nil {
                var tmp : [Any] = []
                for k in self.bindings! {
                    tmp.append(k.toMap())
                }
                map["Bindings"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bindings") {
                var tmp : [ListBindingsResponseBody.Data.Bindings] = []
                for v in dict["Bindings"] as! [Any] {
                    var model = ListBindingsResponseBody.Data.Bindings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bindings = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var data: ListBindingsResponseBody.Data?

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
            var model = ListBindingsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListBindingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDownStreamBindingsRequest : Tea.TeaModel {
    public var exchangeName: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var virtualHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExchangeName") {
            self.exchangeName = dict["ExchangeName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class ListDownStreamBindingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Bindings : Tea.TeaModel {
            public var argument: String?

            public var bindingKey: String?

            public var bindingType: String?

            public var destinationName: String?

            public var sourceExchange: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.argument != nil {
                    map["Argument"] = self.argument!
                }
                if self.bindingKey != nil {
                    map["BindingKey"] = self.bindingKey!
                }
                if self.bindingType != nil {
                    map["BindingType"] = self.bindingType!
                }
                if self.destinationName != nil {
                    map["DestinationName"] = self.destinationName!
                }
                if self.sourceExchange != nil {
                    map["SourceExchange"] = self.sourceExchange!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Argument") {
                    self.argument = dict["Argument"] as! String
                }
                if dict.keys.contains("BindingKey") {
                    self.bindingKey = dict["BindingKey"] as! String
                }
                if dict.keys.contains("BindingType") {
                    self.bindingType = dict["BindingType"] as! String
                }
                if dict.keys.contains("DestinationName") {
                    self.destinationName = dict["DestinationName"] as! String
                }
                if dict.keys.contains("SourceExchange") {
                    self.sourceExchange = dict["SourceExchange"] as! String
                }
            }
        }
        public var bindings: [ListDownStreamBindingsResponseBody.Data.Bindings]?

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
            if self.bindings != nil {
                var tmp : [Any] = []
                for k in self.bindings! {
                    tmp.append(k.toMap())
                }
                map["Bindings"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bindings") {
                var tmp : [ListDownStreamBindingsResponseBody.Data.Bindings] = []
                for v in dict["Bindings"] as! [Any] {
                    var model = ListDownStreamBindingsResponseBody.Data.Bindings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bindings = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: ListDownStreamBindingsResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListDownStreamBindingsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListDownStreamBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDownStreamBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDownStreamBindingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExchangeUpStreamBindingsRequest : Tea.TeaModel {
    public var exchangeName: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var virtualHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExchangeName") {
            self.exchangeName = dict["ExchangeName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class ListExchangeUpStreamBindingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Bindings : Tea.TeaModel {
            public var argument: String?

            public var bindingKey: String?

            public var bindingType: String?

            public var destinationName: String?

            public var sourceExchange: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.argument != nil {
                    map["Argument"] = self.argument!
                }
                if self.bindingKey != nil {
                    map["BindingKey"] = self.bindingKey!
                }
                if self.bindingType != nil {
                    map["BindingType"] = self.bindingType!
                }
                if self.destinationName != nil {
                    map["DestinationName"] = self.destinationName!
                }
                if self.sourceExchange != nil {
                    map["SourceExchange"] = self.sourceExchange!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Argument") {
                    self.argument = dict["Argument"] as! String
                }
                if dict.keys.contains("BindingKey") {
                    self.bindingKey = dict["BindingKey"] as! String
                }
                if dict.keys.contains("BindingType") {
                    self.bindingType = dict["BindingType"] as! String
                }
                if dict.keys.contains("DestinationName") {
                    self.destinationName = dict["DestinationName"] as! String
                }
                if dict.keys.contains("SourceExchange") {
                    self.sourceExchange = dict["SourceExchange"] as! String
                }
            }
        }
        public var bindings: [ListExchangeUpStreamBindingsResponseBody.Data.Bindings]?

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
            if self.bindings != nil {
                var tmp : [Any] = []
                for k in self.bindings! {
                    tmp.append(k.toMap())
                }
                map["Bindings"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bindings") {
                var tmp : [ListExchangeUpStreamBindingsResponseBody.Data.Bindings] = []
                for v in dict["Bindings"] as! [Any] {
                    var model = ListExchangeUpStreamBindingsResponseBody.Data.Bindings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bindings = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: ListExchangeUpStreamBindingsResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListExchangeUpStreamBindingsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListExchangeUpStreamBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExchangeUpStreamBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListExchangeUpStreamBindingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExchangesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var virtualHost: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class ListExchangesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Exchanges : Tea.TeaModel {
            public var attributes: [String: Any]?

            public var autoDeleteState: Bool?

            public var createTime: Int64?

            public var exchangeType: String?

            public var name: String?

            public var VHostName: String?

            public override init() {
                super.init()
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
                if self.autoDeleteState != nil {
                    map["AutoDeleteState"] = self.autoDeleteState!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.exchangeType != nil {
                    map["ExchangeType"] = self.exchangeType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.VHostName != nil {
                    map["VHostName"] = self.VHostName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attributes") {
                    self.attributes = dict["Attributes"] as! [String: Any]
                }
                if dict.keys.contains("AutoDeleteState") {
                    self.autoDeleteState = dict["AutoDeleteState"] as! Bool
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("ExchangeType") {
                    self.exchangeType = dict["ExchangeType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("VHostName") {
                    self.VHostName = dict["VHostName"] as! String
                }
            }
        }
        public var exchanges: [ListExchangesResponseBody.Data.Exchanges]?

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
            if self.exchanges != nil {
                var tmp : [Any] = []
                for k in self.exchanges! {
                    tmp.append(k.toMap())
                }
                map["Exchanges"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Exchanges") {
                var tmp : [ListExchangesResponseBody.Data.Exchanges] = []
                for v in dict["Exchanges"] as! [Any] {
                    var model = ListExchangesResponseBody.Data.Exchanges()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.exchanges = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var data: ListExchangesResponseBody.Data?

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
            var model = ListExchangesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListExchangesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExchangesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListExchangesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
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
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var autoRenewInstance: Bool?

            public var classicEndpoint: String?

            public var encryptedInstance: Bool?

            public var expireTime: Int64?

            public var instanceId: String?

            public var instanceName: String?

            public var instanceType: String?

            public var kmsKeyId: String?

            public var maxEipTps: Int32?

            public var maxQueue: Int32?

            public var maxTps: Int32?

            public var maxVhost: Int32?

            public var orderCreateTime: Int64?

            public var orderType: String?

            public var privateEndpoint: String?

            public var publicEndpoint: String?

            public var resourceGroupId: String?

            public var status: String?

            public var storageSize: Int32?

            public var supportEIP: Bool?

            public var tags: [ListInstancesResponseBody.Data.Instances.Tags]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRenewInstance != nil {
                    map["AutoRenewInstance"] = self.autoRenewInstance!
                }
                if self.classicEndpoint != nil {
                    map["ClassicEndpoint"] = self.classicEndpoint!
                }
                if self.encryptedInstance != nil {
                    map["EncryptedInstance"] = self.encryptedInstance!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.kmsKeyId != nil {
                    map["KmsKeyId"] = self.kmsKeyId!
                }
                if self.maxEipTps != nil {
                    map["MaxEipTps"] = self.maxEipTps!
                }
                if self.maxQueue != nil {
                    map["MaxQueue"] = self.maxQueue!
                }
                if self.maxTps != nil {
                    map["MaxTps"] = self.maxTps!
                }
                if self.maxVhost != nil {
                    map["MaxVhost"] = self.maxVhost!
                }
                if self.orderCreateTime != nil {
                    map["OrderCreateTime"] = self.orderCreateTime!
                }
                if self.orderType != nil {
                    map["OrderType"] = self.orderType!
                }
                if self.privateEndpoint != nil {
                    map["PrivateEndpoint"] = self.privateEndpoint!
                }
                if self.publicEndpoint != nil {
                    map["PublicEndpoint"] = self.publicEndpoint!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                if self.supportEIP != nil {
                    map["SupportEIP"] = self.supportEIP!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoRenewInstance") {
                    self.autoRenewInstance = dict["AutoRenewInstance"] as! Bool
                }
                if dict.keys.contains("ClassicEndpoint") {
                    self.classicEndpoint = dict["ClassicEndpoint"] as! String
                }
                if dict.keys.contains("EncryptedInstance") {
                    self.encryptedInstance = dict["EncryptedInstance"] as! Bool
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("KmsKeyId") {
                    self.kmsKeyId = dict["KmsKeyId"] as! String
                }
                if dict.keys.contains("MaxEipTps") {
                    self.maxEipTps = dict["MaxEipTps"] as! Int32
                }
                if dict.keys.contains("MaxQueue") {
                    self.maxQueue = dict["MaxQueue"] as! Int32
                }
                if dict.keys.contains("MaxTps") {
                    self.maxTps = dict["MaxTps"] as! Int32
                }
                if dict.keys.contains("MaxVhost") {
                    self.maxVhost = dict["MaxVhost"] as! Int32
                }
                if dict.keys.contains("OrderCreateTime") {
                    self.orderCreateTime = dict["OrderCreateTime"] as! Int64
                }
                if dict.keys.contains("OrderType") {
                    self.orderType = dict["OrderType"] as! String
                }
                if dict.keys.contains("PrivateEndpoint") {
                    self.privateEndpoint = dict["PrivateEndpoint"] as! String
                }
                if dict.keys.contains("PublicEndpoint") {
                    self.publicEndpoint = dict["PublicEndpoint"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageSize") {
                    self.storageSize = dict["StorageSize"] as! Int32
                }
                if dict.keys.contains("SupportEIP") {
                    self.supportEIP = dict["SupportEIP"] as! Bool
                }
                if dict.keys.contains("Tags") {
                    var tmp : [ListInstancesResponseBody.Data.Instances.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = ListInstancesResponseBody.Data.Instances.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
            }
        }
        public var instances: [ListInstancesResponseBody.Data.Instances]?

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
            if self.instances != nil {
                var tmp : [Any] = []
                for k in self.instances! {
                    tmp.append(k.toMap())
                }
                map["Instances"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Instances") {
                var tmp : [ListInstancesResponseBody.Data.Instances] = []
                for v in dict["Instances"] as! [Any] {
                    var model = ListInstancesResponseBody.Data.Instances()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instances = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var data: ListInstancesResponseBody.Data?

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
            var model = ListInstancesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class ListQueueConsumersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nextToken: String?

    public var queryCount: Int32?

    public var queue: String?

    public var virtualHost: String?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.queryCount != nil {
            map["QueryCount"] = self.queryCount!
        }
        if self.queue != nil {
            map["Queue"] = self.queue!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("QueryCount") {
            self.queryCount = dict["QueryCount"] as! Int32
        }
        if dict.keys.contains("Queue") {
            self.queue = dict["Queue"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class ListQueueConsumersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Consumers : Tea.TeaModel {
            public var consumerTag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.consumerTag != nil {
                    map["ConsumerTag"] = self.consumerTag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConsumerTag") {
                    self.consumerTag = dict["ConsumerTag"] as! String
                }
            }
        }
        public var consumers: [ListQueueConsumersResponseBody.Data.Consumers]?

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
            if self.consumers != nil {
                var tmp : [Any] = []
                for k in self.consumers! {
                    tmp.append(k.toMap())
                }
                map["Consumers"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Consumers") {
                var tmp : [ListQueueConsumersResponseBody.Data.Consumers] = []
                for v in dict["Consumers"] as! [Any] {
                    var model = ListQueueConsumersResponseBody.Data.Consumers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.consumers = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var data: ListQueueConsumersResponseBody.Data?

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
            var model = ListQueueConsumersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListQueueConsumersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueueConsumersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListQueueConsumersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQueueUpStreamBindingsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var queueName: String?

    public var virtualHost: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class ListQueueUpStreamBindingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Bindings : Tea.TeaModel {
            public var argument: String?

            public var bindingKey: String?

            public var bindingType: String?

            public var destinationName: String?

            public var sourceExchange: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.argument != nil {
                    map["Argument"] = self.argument!
                }
                if self.bindingKey != nil {
                    map["BindingKey"] = self.bindingKey!
                }
                if self.bindingType != nil {
                    map["BindingType"] = self.bindingType!
                }
                if self.destinationName != nil {
                    map["DestinationName"] = self.destinationName!
                }
                if self.sourceExchange != nil {
                    map["SourceExchange"] = self.sourceExchange!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Argument") {
                    self.argument = dict["Argument"] as! String
                }
                if dict.keys.contains("BindingKey") {
                    self.bindingKey = dict["BindingKey"] as! String
                }
                if dict.keys.contains("BindingType") {
                    self.bindingType = dict["BindingType"] as! String
                }
                if dict.keys.contains("DestinationName") {
                    self.destinationName = dict["DestinationName"] as! String
                }
                if dict.keys.contains("SourceExchange") {
                    self.sourceExchange = dict["SourceExchange"] as! String
                }
            }
        }
        public var bindings: [ListQueueUpStreamBindingsResponseBody.Data.Bindings]?

        public var maxResults: String?

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
            if self.bindings != nil {
                var tmp : [Any] = []
                for k in self.bindings! {
                    tmp.append(k.toMap())
                }
                map["Bindings"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bindings") {
                var tmp : [ListQueueUpStreamBindingsResponseBody.Data.Bindings] = []
                for v in dict["Bindings"] as! [Any] {
                    var model = ListQueueUpStreamBindingsResponseBody.Data.Bindings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bindings = tmp
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! String
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
        }
    }
    public var data: ListQueueUpStreamBindingsResponseBody.Data?

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
            var model = ListQueueUpStreamBindingsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListQueueUpStreamBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueueUpStreamBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListQueueUpStreamBindingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQueuesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var virtualHost: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.virtualHost != nil {
            map["VirtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("VirtualHost") {
            self.virtualHost = dict["VirtualHost"] as! String
        }
    }
}

public class ListQueuesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Queues : Tea.TeaModel {
            public var attributes: [String: Any]?

            public var autoDeleteState: Bool?

            public var createTime: Int64?

            public var exclusiveState: Bool?

            public var lastConsumeTime: Int64?

            public var name: String?

            public var ownerId: String?

            public var VHostName: String?

            public override init() {
                super.init()
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
                if self.autoDeleteState != nil {
                    map["AutoDeleteState"] = self.autoDeleteState!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.exclusiveState != nil {
                    map["ExclusiveState"] = self.exclusiveState!
                }
                if self.lastConsumeTime != nil {
                    map["LastConsumeTime"] = self.lastConsumeTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.VHostName != nil {
                    map["VHostName"] = self.VHostName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attributes") {
                    self.attributes = dict["Attributes"] as! [String: Any]
                }
                if dict.keys.contains("AutoDeleteState") {
                    self.autoDeleteState = dict["AutoDeleteState"] as! Bool
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("ExclusiveState") {
                    self.exclusiveState = dict["ExclusiveState"] as! Bool
                }
                if dict.keys.contains("LastConsumeTime") {
                    self.lastConsumeTime = dict["LastConsumeTime"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("VHostName") {
                    self.VHostName = dict["VHostName"] as! String
                }
            }
        }
        public var maxResults: Int32?

        public var nextToken: String?

        public var queues: [ListQueuesResponseBody.Data.Queues]?

        public override init() {
            super.init()
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
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.queues != nil {
                var tmp : [Any] = []
                for k in self.queues! {
                    tmp.append(k.toMap())
                }
                map["Queues"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("Queues") {
                var tmp : [ListQueuesResponseBody.Data.Queues] = []
                for v in dict["Queues"] as! [Any] {
                    var model = ListQueuesResponseBody.Data.Queues()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.queues = tmp
            }
        }
    }
    public var data: ListQueuesResponseBody.Data?

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
            var model = ListQueuesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListQueuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListQueuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVirtualHostsRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListVirtualHostsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VirtualHosts : Tea.TeaModel {
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
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var maxResults: Int32?

        public var nextToken: String?

        public var virtualHosts: [ListVirtualHostsResponseBody.Data.VirtualHosts]?

        public override init() {
            super.init()
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
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.virtualHosts != nil {
                var tmp : [Any] = []
                for k in self.virtualHosts! {
                    tmp.append(k.toMap())
                }
                map["VirtualHosts"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("VirtualHosts") {
                var tmp : [ListVirtualHostsResponseBody.Data.VirtualHosts] = []
                for v in dict["VirtualHosts"] as! [Any] {
                    var model = ListVirtualHostsResponseBody.Data.VirtualHosts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.virtualHosts = tmp
            }
        }
    }
    public var data: ListVirtualHostsResponseBody.Data?

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
            var model = ListVirtualHostsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListVirtualHostsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVirtualHostsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListVirtualHostsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var edition: String?

    public var encryptedInstance: Bool?

    public var instanceId: String?

    public var instanceType: String?

    public var kmsKeyId: String?

    public var maxConnections: Int32?

    public var maxEipTps: Int64?

    public var maxPrivateTps: Int64?

    public var modifyType: String?

    public var provisionedCapacity: Int32?

    public var queueCapacity: Int32?

    public var serverlessChargeType: String?

    public var storageSize: Int32?

    public var supportEip: Bool?

    public var supportTracing: Bool?

    public var tracingStorageTime: Int32?

    public override init() {
        super.init()
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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.encryptedInstance != nil {
            map["EncryptedInstance"] = self.encryptedInstance!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.kmsKeyId != nil {
            map["KmsKeyId"] = self.kmsKeyId!
        }
        if self.maxConnections != nil {
            map["MaxConnections"] = self.maxConnections!
        }
        if self.maxEipTps != nil {
            map["MaxEipTps"] = self.maxEipTps!
        }
        if self.maxPrivateTps != nil {
            map["MaxPrivateTps"] = self.maxPrivateTps!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.provisionedCapacity != nil {
            map["ProvisionedCapacity"] = self.provisionedCapacity!
        }
        if self.queueCapacity != nil {
            map["QueueCapacity"] = self.queueCapacity!
        }
        if self.serverlessChargeType != nil {
            map["ServerlessChargeType"] = self.serverlessChargeType!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.supportEip != nil {
            map["SupportEip"] = self.supportEip!
        }
        if self.supportTracing != nil {
            map["SupportTracing"] = self.supportTracing!
        }
        if self.tracingStorageTime != nil {
            map["TracingStorageTime"] = self.tracingStorageTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Edition") {
            self.edition = dict["Edition"] as! String
        }
        if dict.keys.contains("EncryptedInstance") {
            self.encryptedInstance = dict["EncryptedInstance"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("KmsKeyId") {
            self.kmsKeyId = dict["KmsKeyId"] as! String
        }
        if dict.keys.contains("MaxConnections") {
            self.maxConnections = dict["MaxConnections"] as! Int32
        }
        if dict.keys.contains("MaxEipTps") {
            self.maxEipTps = dict["MaxEipTps"] as! Int64
        }
        if dict.keys.contains("MaxPrivateTps") {
            self.maxPrivateTps = dict["MaxPrivateTps"] as! Int64
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("ProvisionedCapacity") {
            self.provisionedCapacity = dict["ProvisionedCapacity"] as! Int32
        }
        if dict.keys.contains("QueueCapacity") {
            self.queueCapacity = dict["QueueCapacity"] as! Int32
        }
        if dict.keys.contains("ServerlessChargeType") {
            self.serverlessChargeType = dict["ServerlessChargeType"] as! String
        }
        if dict.keys.contains("StorageSize") {
            self.storageSize = dict["StorageSize"] as! Int32
        }
        if dict.keys.contains("SupportEip") {
            self.supportEip = dict["SupportEip"] as! Bool
        }
        if dict.keys.contains("SupportTracing") {
            self.supportTracing = dict["SupportTracing"] as! Bool
        }
        if dict.keys.contains("TracingStorageTime") {
            self.tracingStorageTime = dict["TracingStorageTime"] as! Int32
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

    public var message: String?

    public var requestId: String?

    public var statusCode: String?

    public var success: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceNameRequest : Tea.TeaModel {
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

public class UpdateInstanceNameResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
