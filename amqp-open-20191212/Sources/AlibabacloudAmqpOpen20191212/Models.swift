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

    public var remark: String?

    public override init() {
        super.init()
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
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["masterUid"] as? Int64 {
            self.masterUid = value
        }
        if let value = dict["cInstanceId"] as? String {
            self.cInstanceId = value
        }
        if let value = dict["accessKey"] as? String {
            self.accessKey = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
        if let value = dict["password"] as? String {
            self.password = value
        }
        if let value = dict["deleted"] as? Int64 {
            self.deleted = value
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var remark: String?

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
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["accountAccessKey"] as? String {
            self.accountAccessKey = value
        }
        if let value = dict["createTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["secretSign"] as? String {
            self.secretSign = value
        }
        if let value = dict["signature"] as? String {
            self.signature = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
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

        public var remark: String?

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
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["CreateTimeStamp"] as? Int64 {
                self.createTimeStamp = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MasterUId"] as? Int64 {
                self.masterUId = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Argument"] as? String {
            self.argument = value
        }
        if let value = dict["BindingKey"] as? String {
            self.bindingKey = value
        }
        if let value = dict["BindingType"] as? String {
            self.bindingType = value
        }
        if let value = dict["DestinationName"] as? String {
            self.destinationName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SourceExchange"] as? String {
            self.sourceExchange = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateBindingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlternateExchange"] as? String {
            self.alternateExchange = value
        }
        if let value = dict["AutoDeleteState"] as? Bool {
            self.autoDeleteState = value
        }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["ExchangeType"] as? String {
            self.exchangeType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Internal"] as? Bool {
            self.internal_ = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
        }
        if let value = dict["XDelayedType"] as? String {
            self.XDelayedType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateExchangeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
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

    public var tags: [CreateInstanceRequest.Tags]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["EncryptedInstance"] as? Bool {
            self.encryptedInstance = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["KmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["MaxConnections"] as? Int32 {
            self.maxConnections = value
        }
        if let value = dict["MaxEipTps"] as? Int64 {
            self.maxEipTps = value
        }
        if let value = dict["MaxPrivateTps"] as? Int64 {
            self.maxPrivateTps = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodCycle"] as? String {
            self.periodCycle = value
        }
        if let value = dict["ProvisionedCapacity"] as? Int32 {
            self.provisionedCapacity = value
        }
        if let value = dict["QueueCapacity"] as? Int32 {
            self.queueCapacity = value
        }
        if let value = dict["RenewStatus"] as? String {
            self.renewStatus = value
        }
        if let value = dict["RenewalDurationUnit"] as? String {
            self.renewalDurationUnit = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServerlessChargeType"] as? String {
            self.serverlessChargeType = value
        }
        if let value = dict["StorageSize"] as? Int32 {
            self.storageSize = value
        }
        if let value = dict["SupportEip"] as? Bool {
            self.supportEip = value
        }
        if let value = dict["SupportTracing"] as? Bool {
            self.supportTracing = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TracingStorageTime"] as? Int32 {
            self.tracingStorageTime = value
        }
    }
}

public class CreateInstanceShrinkRequest : Tea.TeaModel {
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

    public var tagsShrink: String?

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
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.tracingStorageTime != nil {
            map["TracingStorageTime"] = self.tracingStorageTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["EncryptedInstance"] as? Bool {
            self.encryptedInstance = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["KmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["MaxConnections"] as? Int32 {
            self.maxConnections = value
        }
        if let value = dict["MaxEipTps"] as? Int64 {
            self.maxEipTps = value
        }
        if let value = dict["MaxPrivateTps"] as? Int64 {
            self.maxPrivateTps = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodCycle"] as? String {
            self.periodCycle = value
        }
        if let value = dict["ProvisionedCapacity"] as? Int32 {
            self.provisionedCapacity = value
        }
        if let value = dict["QueueCapacity"] as? Int32 {
            self.queueCapacity = value
        }
        if let value = dict["RenewStatus"] as? String {
            self.renewStatus = value
        }
        if let value = dict["RenewalDurationUnit"] as? String {
            self.renewalDurationUnit = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServerlessChargeType"] as? String {
            self.serverlessChargeType = value
        }
        if let value = dict["StorageSize"] as? Int32 {
            self.storageSize = value
        }
        if let value = dict["SupportEip"] as? Bool {
            self.supportEip = value
        }
        if let value = dict["SupportTracing"] as? Bool {
            self.supportTracing = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TracingStorageTime"] as? Int32 {
            self.tracingStorageTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoDeleteState"] as? Bool {
            self.autoDeleteState = value
        }
        if let value = dict["AutoExpireState"] as? Int64 {
            self.autoExpireState = value
        }
        if let value = dict["DeadLetterExchange"] as? String {
            self.deadLetterExchange = value
        }
        if let value = dict["DeadLetterRoutingKey"] as? String {
            self.deadLetterRoutingKey = value
        }
        if let value = dict["ExclusiveState"] as? Bool {
            self.exclusiveState = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxLength"] as? Int64 {
            self.maxLength = value
        }
        if let value = dict["MaximumPriority"] as? Int32 {
            self.maximumPriority = value
        }
        if let value = dict["MessageTTL"] as? Int64 {
            self.messageTTL = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateQueueResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVirtualHostResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTimestamp"] as? Int64 {
            self.createTimestamp = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindingKey"] as? String {
            self.bindingKey = value
        }
        if let value = dict["BindingType"] as? String {
            self.bindingType = value
        }
        if let value = dict["DestinationName"] as? String {
            self.destinationName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SourceExchange"] as? String {
            self.sourceExchange = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteBindingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteExchangeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteQueueResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVirtualHostResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var autoRenewInstance: Bool?

        public var classicEndpoint: String?

        public var edition: String?

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

        public var provisionedCapacity: Int32?

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
            if self.edition != nil {
                map["Edition"] = self.edition!
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
            if self.provisionedCapacity != nil {
                map["ProvisionedCapacity"] = self.provisionedCapacity!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoRenewInstance"] as? Bool {
                self.autoRenewInstance = value
            }
            if let value = dict["ClassicEndpoint"] as? String {
                self.classicEndpoint = value
            }
            if let value = dict["Edition"] as? String {
                self.edition = value
            }
            if let value = dict["EncryptedInstance"] as? Bool {
                self.encryptedInstance = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["KmsKeyId"] as? String {
                self.kmsKeyId = value
            }
            if let value = dict["MaxConnections"] as? Int32 {
                self.maxConnections = value
            }
            if let value = dict["MaxEipTps"] as? Int32 {
                self.maxEipTps = value
            }
            if let value = dict["MaxQueue"] as? Int32 {
                self.maxQueue = value
            }
            if let value = dict["MaxTps"] as? Int32 {
                self.maxTps = value
            }
            if let value = dict["MaxVhost"] as? Int32 {
                self.maxVhost = value
            }
            if let value = dict["OrderCreateTime"] as? Int64 {
                self.orderCreateTime = value
            }
            if let value = dict["OrderType"] as? String {
                self.orderType = value
            }
            if let value = dict["PrivateEndpoint"] as? String {
                self.privateEndpoint = value
            }
            if let value = dict["ProvisionedCapacity"] as? Int32 {
                self.provisionedCapacity = value
            }
            if let value = dict["PublicEndpoint"] as? String {
                self.publicEndpoint = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageSize"] as? Int32 {
                self.storageSize = value
            }
            if let value = dict["SupportEIP"] as? Bool {
                self.supportEIP = value
            }
            if let value = dict["SupportTracing"] as? Bool {
                self.supportTracing = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TracingStorageTime"] as? Int32 {
                self.tracingStorageTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentExchanges"] as? Int32 {
                self.currentExchanges = value
            }
            if let value = dict["CurrentQueues"] as? Int32 {
                self.currentQueues = value
            }
            if let value = dict["CurrentVirtualHosts"] as? Int32 {
                self.currentVirtualHosts = value
            }
            if let value = dict["MaxExchanges"] as? Int32 {
                self.maxExchanges = value
            }
            if let value = dict["MaxQueues"] as? Int32 {
                self.maxQueues = value
            }
            if let value = dict["MaxVirtualHosts"] as? Int32 {
                self.maxVirtualHosts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetMetadataAmountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMetadataAmountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var tmp : [String: [DataValue]] = [:]
            for (k, v) in value {
                var l1 : [DataValue] = []
                for v1 in v as! [Any?] {
                    if v1 != nil {
                        var model = DataValue()
                        if v1 != nil {
                            model.fromMap(v1 as? [String: Any?])
                        }
                        l1.append(model)
                    }
                }
                tmp[k] = l1
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccountsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Argument"] as? String {
                    self.argument = value
                }
                if let value = dict["BindingKey"] as? String {
                    self.bindingKey = value
                }
                if let value = dict["BindingType"] as? String {
                    self.bindingType = value
                }
                if let value = dict["DestinationName"] as? String {
                    self.destinationName = value
                }
                if let value = dict["SourceExchange"] as? String {
                    self.sourceExchange = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bindings"] as? [Any?] {
                var tmp : [ListBindingsResponseBody.Data.Bindings] = []
                for v in value {
                    if v != nil {
                        var model = ListBindingsResponseBody.Data.Bindings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bindings = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListBindingsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListBindingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Argument"] as? String {
                    self.argument = value
                }
                if let value = dict["BindingKey"] as? String {
                    self.bindingKey = value
                }
                if let value = dict["BindingType"] as? String {
                    self.bindingType = value
                }
                if let value = dict["DestinationName"] as? String {
                    self.destinationName = value
                }
                if let value = dict["SourceExchange"] as? String {
                    self.sourceExchange = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bindings"] as? [Any?] {
                var tmp : [ListDownStreamBindingsResponseBody.Data.Bindings] = []
                for v in value {
                    if v != nil {
                        var model = ListDownStreamBindingsResponseBody.Data.Bindings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bindings = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListDownStreamBindingsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDownStreamBindingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Argument"] as? String {
                    self.argument = value
                }
                if let value = dict["BindingKey"] as? String {
                    self.bindingKey = value
                }
                if let value = dict["BindingType"] as? String {
                    self.bindingType = value
                }
                if let value = dict["DestinationName"] as? String {
                    self.destinationName = value
                }
                if let value = dict["SourceExchange"] as? String {
                    self.sourceExchange = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bindings"] as? [Any?] {
                var tmp : [ListExchangeUpStreamBindingsResponseBody.Data.Bindings] = []
                for v in value {
                    if v != nil {
                        var model = ListExchangeUpStreamBindingsResponseBody.Data.Bindings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bindings = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListExchangeUpStreamBindingsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExchangeUpStreamBindingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

            public var internal_: Bool?

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
                if self.internal_ != nil {
                    map["Internal"] = self.internal_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.VHostName != nil {
                    map["VHostName"] = self.VHostName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Attributes"] as? [String: Any] {
                    self.attributes = value
                }
                if let value = dict["AutoDeleteState"] as? Bool {
                    self.autoDeleteState = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["ExchangeType"] as? String {
                    self.exchangeType = value
                }
                if let value = dict["Internal"] as? Bool {
                    self.internal_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["VHostName"] as? String {
                    self.VHostName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Exchanges"] as? [Any?] {
                var tmp : [ListExchangesResponseBody.Data.Exchanges] = []
                for v in value {
                    if v != nil {
                        var model = ListExchangesResponseBody.Data.Exchanges()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.exchanges = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListExchangesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExchangesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public var autoRenewInstance: Bool?

            public var classicEndpoint: String?

            public var edition: String?

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

            public var provisionedCapacity: Int32?

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
                if self.edition != nil {
                    map["Edition"] = self.edition!
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
                if self.provisionedCapacity != nil {
                    map["ProvisionedCapacity"] = self.provisionedCapacity!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoRenewInstance"] as? Bool {
                    self.autoRenewInstance = value
                }
                if let value = dict["ClassicEndpoint"] as? String {
                    self.classicEndpoint = value
                }
                if let value = dict["Edition"] as? String {
                    self.edition = value
                }
                if let value = dict["EncryptedInstance"] as? Bool {
                    self.encryptedInstance = value
                }
                if let value = dict["ExpireTime"] as? Int64 {
                    self.expireTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["KmsKeyId"] as? String {
                    self.kmsKeyId = value
                }
                if let value = dict["MaxEipTps"] as? Int32 {
                    self.maxEipTps = value
                }
                if let value = dict["MaxQueue"] as? Int32 {
                    self.maxQueue = value
                }
                if let value = dict["MaxTps"] as? Int32 {
                    self.maxTps = value
                }
                if let value = dict["MaxVhost"] as? Int32 {
                    self.maxVhost = value
                }
                if let value = dict["OrderCreateTime"] as? Int64 {
                    self.orderCreateTime = value
                }
                if let value = dict["OrderType"] as? String {
                    self.orderType = value
                }
                if let value = dict["PrivateEndpoint"] as? String {
                    self.privateEndpoint = value
                }
                if let value = dict["ProvisionedCapacity"] as? Int32 {
                    self.provisionedCapacity = value
                }
                if let value = dict["PublicEndpoint"] as? String {
                    self.publicEndpoint = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageSize"] as? Int32 {
                    self.storageSize = value
                }
                if let value = dict["SupportEIP"] as? Bool {
                    self.supportEIP = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListInstancesResponseBody.Data.Instances.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListInstancesResponseBody.Data.Instances.Tags()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instances"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Data.Instances] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Data.Instances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instances = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListInstancesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QueryCount"] as? Int32 {
            self.queryCount = value
        }
        if let value = dict["Queue"] as? String {
            self.queue = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConsumerTag"] as? String {
                    self.consumerTag = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Consumers"] as? [Any?] {
                var tmp : [ListQueueConsumersResponseBody.Data.Consumers] = []
                for v in value {
                    if v != nil {
                        var model = ListQueueConsumersResponseBody.Data.Consumers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.consumers = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListQueueConsumersResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQueueConsumersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Argument"] as? String {
                    self.argument = value
                }
                if let value = dict["BindingKey"] as? String {
                    self.bindingKey = value
                }
                if let value = dict["BindingType"] as? String {
                    self.bindingType = value
                }
                if let value = dict["DestinationName"] as? String {
                    self.destinationName = value
                }
                if let value = dict["SourceExchange"] as? String {
                    self.sourceExchange = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bindings"] as? [Any?] {
                var tmp : [ListQueueUpStreamBindingsResponseBody.Data.Bindings] = []
                for v in value {
                    if v != nil {
                        var model = ListQueueUpStreamBindingsResponseBody.Data.Bindings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bindings = tmp
            }
            if let value = dict["MaxResults"] as? String {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListQueueUpStreamBindingsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQueueUpStreamBindingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["VirtualHost"] as? String {
            self.virtualHost = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Attributes"] as? [String: Any] {
                    self.attributes = value
                }
                if let value = dict["AutoDeleteState"] as? Bool {
                    self.autoDeleteState = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["ExclusiveState"] as? Bool {
                    self.exclusiveState = value
                }
                if let value = dict["LastConsumeTime"] as? Int64 {
                    self.lastConsumeTime = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OwnerId"] as? String {
                    self.ownerId = value
                }
                if let value = dict["VHostName"] as? String {
                    self.VHostName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["Queues"] as? [Any?] {
                var tmp : [ListQueuesResponseBody.Data.Queues] = []
                for v in value {
                    if v != nil {
                        var model = ListQueuesResponseBody.Data.Queues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListQueuesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQueuesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["VirtualHosts"] as? [Any?] {
                var tmp : [ListVirtualHostsResponseBody.Data.VirtualHosts] = []
                for v in value {
                    if v != nil {
                        var model = ListVirtualHostsResponseBody.Data.VirtualHosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListVirtualHostsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListVirtualHostsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["EncryptedInstance"] as? Bool {
            self.encryptedInstance = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["KmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["MaxConnections"] as? Int32 {
            self.maxConnections = value
        }
        if let value = dict["MaxEipTps"] as? Int64 {
            self.maxEipTps = value
        }
        if let value = dict["MaxPrivateTps"] as? Int64 {
            self.maxPrivateTps = value
        }
        if let value = dict["ModifyType"] as? String {
            self.modifyType = value
        }
        if let value = dict["ProvisionedCapacity"] as? Int32 {
            self.provisionedCapacity = value
        }
        if let value = dict["QueueCapacity"] as? Int32 {
            self.queueCapacity = value
        }
        if let value = dict["ServerlessChargeType"] as? String {
            self.serverlessChargeType = value
        }
        if let value = dict["StorageSize"] as? Int32 {
            self.storageSize = value
        }
        if let value = dict["SupportEip"] as? Bool {
            self.supportEip = value
        }
        if let value = dict["SupportTracing"] as? Bool {
            self.supportTracing = value
        }
        if let value = dict["TracingStorageTime"] as? Int32 {
            self.tracingStorageTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StatusCode"] as? String {
            self.statusCode = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
