import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BindRequest : Tea.TeaModel {
    public var argument: String?

    public var bindingKey: String?

    public var bindingType: Int32?

    public var consoleSessionId: String?

    public var dstName: String?

    public var instanceId: String?

    public var srcName: String?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.dstName != nil {
            map["DstName"] = self.dstName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.srcName != nil {
            map["SrcName"] = self.srcName!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
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
        if let value = dict["BindingType"] as? Int32 {
            self.bindingType = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["DstName"] as? String {
            self.dstName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SrcName"] as? String {
            self.srcName = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class BindResponseBody : Tea.TeaModel {
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

public class BindResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelUserSettingRequest : Tea.TeaModel {
    public var consoleSessionId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CancelUserSettingResponseBody : Tea.TeaModel {
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

public class CancelUserSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelUserSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelUserSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigureUserSettingRequest : Tea.TeaModel {
    public var bucketName: String?

    public var consoleSessionId: String?

    public var instanceId: String?

    public var logstore: String?

    public var projectName: String?

    public var putType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.logstore != nil {
            map["Logstore"] = self.logstore!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.putType != nil {
            map["PutType"] = self.putType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["PutType"] as? String {
            self.putType = value
        }
    }
}

public class ConfigureUserSettingResponseBody : Tea.TeaModel {
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

public class ConfigureUserSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigureUserSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigureUserSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConsoleClearPretendStatusRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class ConsoleClearPretendStatusResponseBody : Tea.TeaModel {
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

public class ConsoleClearPretendStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConsoleClearPretendStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConsoleClearPretendStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConsoleSavePretendStatusRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var key: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
    }
}

public class ConsoleSavePretendStatusResponseBody : Tea.TeaModel {
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

public class ConsoleSavePretendStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConsoleSavePretendStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConsoleSavePretendStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCloudMonitorSLRRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class CreateCloudMonitorSLRResponseBody : Tea.TeaModel {
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

public class CreateCloudMonitorSLRResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCloudMonitorSLRResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCloudMonitorSLRResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExchangeRequest : Tea.TeaModel {
    public var alternateExchange: String?

    public var autoDelete: Bool?

    public var consoleSessionId: String?

    public var exchangeName: String?

    public var exchangeType: Int32?

    public var instanceId: String?

    public var internal_: Bool?

    public var vhostName: String?

    public var XDelayedType: String?

    public var XHashHeader: String?

    public override init() {
        super.init()
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
        if self.autoDelete != nil {
            map["AutoDelete"] = self.autoDelete!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
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
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        if self.XDelayedType != nil {
            map["XDelayedType"] = self.XDelayedType!
        }
        if self.XHashHeader != nil {
            map["XHashHeader"] = self.XHashHeader!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlternateExchange"] as? String {
            self.alternateExchange = value
        }
        if let value = dict["AutoDelete"] as? Bool {
            self.autoDelete = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["ExchangeType"] as? Int32 {
            self.exchangeType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Internal"] as? Bool {
            self.internal_ = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
        if let value = dict["XDelayedType"] as? String {
            self.XDelayedType = value
        }
        if let value = dict["XHashHeader"] as? String {
            self.XHashHeader = value
        }
    }
}

public class CreateExchangeResponseBody : Tea.TeaModel {
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

public class CreateLogDeliverySLRRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class CreateLogDeliverySLRResponseBody : Tea.TeaModel {
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

public class CreateLogDeliverySLRResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLogDeliverySLRResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLogDeliverySLRResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateQueueRequest : Tea.TeaModel {
    public var autoDelete: Bool?

    public var autoExpire: Int64?

    public var consoleSessionId: String?

    public var deadLetterExchange: String?

    public var deadLetterRoutingKey: String?

    public var exclusive: Bool?

    public var instanceId: String?

    public var maxLength: Int64?

    public var maximunPrioty: Int64?

    public var messageTTL: Int64?

    public var ordered: Bool?

    public var queueName: String?

    public var retryInherit: Bool?

    public var retryInterval: Int32?

    public var retryTimes: Int32?

    public var singleActiveConsumer: Bool?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDelete != nil {
            map["AutoDelete"] = self.autoDelete!
        }
        if self.autoExpire != nil {
            map["AutoExpire"] = self.autoExpire!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.deadLetterExchange != nil {
            map["DeadLetterExchange"] = self.deadLetterExchange!
        }
        if self.deadLetterRoutingKey != nil {
            map["DeadLetterRoutingKey"] = self.deadLetterRoutingKey!
        }
        if self.exclusive != nil {
            map["Exclusive"] = self.exclusive!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxLength != nil {
            map["MaxLength"] = self.maxLength!
        }
        if self.maximunPrioty != nil {
            map["MaximunPrioty"] = self.maximunPrioty!
        }
        if self.messageTTL != nil {
            map["MessageTTL"] = self.messageTTL!
        }
        if self.ordered != nil {
            map["Ordered"] = self.ordered!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.retryInherit != nil {
            map["RetryInherit"] = self.retryInherit!
        }
        if self.retryInterval != nil {
            map["RetryInterval"] = self.retryInterval!
        }
        if self.retryTimes != nil {
            map["RetryTimes"] = self.retryTimes!
        }
        if self.singleActiveConsumer != nil {
            map["SingleActiveConsumer"] = self.singleActiveConsumer!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoDelete"] as? Bool {
            self.autoDelete = value
        }
        if let value = dict["AutoExpire"] as? Int64 {
            self.autoExpire = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["DeadLetterExchange"] as? String {
            self.deadLetterExchange = value
        }
        if let value = dict["DeadLetterRoutingKey"] as? String {
            self.deadLetterRoutingKey = value
        }
        if let value = dict["Exclusive"] as? Bool {
            self.exclusive = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxLength"] as? Int64 {
            self.maxLength = value
        }
        if let value = dict["MaximunPrioty"] as? Int64 {
            self.maximunPrioty = value
        }
        if let value = dict["MessageTTL"] as? Int64 {
            self.messageTTL = value
        }
        if let value = dict["Ordered"] as? Bool {
            self.ordered = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["RetryInherit"] as? Bool {
            self.retryInherit = value
        }
        if let value = dict["RetryInterval"] as? Int32 {
            self.retryInterval = value
        }
        if let value = dict["RetryTimes"] as? Int32 {
            self.retryTimes = value
        }
        if let value = dict["SingleActiveConsumer"] as? Bool {
            self.singleActiveConsumer = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class CreateQueueResponseBody : Tea.TeaModel {
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

public class CreateVhostRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class CreateVhostResponseBody : Tea.TeaModel {
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

public class CreateVhostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVhostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVhostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DashboardCheckServiceStatusRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class DashboardCheckServiceStatusResponseBody : Tea.TeaModel {
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

public class DashboardCheckServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DashboardCheckServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DashboardCheckServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DashboardListRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var dashboardName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.dashboardName != nil {
            map["DashboardName"] = self.dashboardName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["DashboardName"] as? String {
            self.dashboardName = value
        }
    }
}

public class DashboardListResponseBody : Tea.TeaModel {
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

public class DashboardListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DashboardListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DashboardListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExchangeRequest : Tea.TeaModel {
    public var collina: String?

    public var consoleSessionId: String?

    public var exchangeName: String?

    public var exchangeNames: [String: Any]?

    public var instanceId: String?

    public var umidToken: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collina != nil {
            map["Collina"] = self.collina!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.exchangeNames != nil {
            map["ExchangeNames"] = self.exchangeNames!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.umidToken != nil {
            map["UmidToken"] = self.umidToken!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collina"] as? String {
            self.collina = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["ExchangeNames"] as? [String: Any] {
            self.exchangeNames = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["UmidToken"] as? String {
            self.umidToken = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class DeleteExchangeShrinkRequest : Tea.TeaModel {
    public var collina: String?

    public var consoleSessionId: String?

    public var exchangeName: String?

    public var exchangeNamesShrink: String?

    public var instanceId: String?

    public var umidToken: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collina != nil {
            map["Collina"] = self.collina!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.exchangeNamesShrink != nil {
            map["ExchangeNames"] = self.exchangeNamesShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.umidToken != nil {
            map["UmidToken"] = self.umidToken!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collina"] as? String {
            self.collina = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["ExchangeNames"] as? String {
            self.exchangeNamesShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["UmidToken"] as? String {
            self.umidToken = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class DeleteExchangeResponseBody : Tea.TeaModel {
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

public class DeleteInstanceRequest : Tea.TeaModel {
    public var consoleSessionId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteQueueRequest : Tea.TeaModel {
    public var collina: String?

    public var consoleSessionId: String?

    public var instanceId: String?

    public var queueName: String?

    public var queueNames: [String: Any]?

    public var umidToken: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collina != nil {
            map["Collina"] = self.collina!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.queueNames != nil {
            map["QueueNames"] = self.queueNames!
        }
        if self.umidToken != nil {
            map["UmidToken"] = self.umidToken!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collina"] as? String {
            self.collina = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["QueueNames"] as? [String: Any] {
            self.queueNames = value
        }
        if let value = dict["UmidToken"] as? String {
            self.umidToken = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class DeleteQueueShrinkRequest : Tea.TeaModel {
    public var collina: String?

    public var consoleSessionId: String?

    public var instanceId: String?

    public var queueName: String?

    public var queueNamesShrink: String?

    public var umidToken: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collina != nil {
            map["Collina"] = self.collina!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.queueNamesShrink != nil {
            map["QueueNames"] = self.queueNamesShrink!
        }
        if self.umidToken != nil {
            map["UmidToken"] = self.umidToken!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collina"] as? String {
            self.collina = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["QueueNames"] as? String {
            self.queueNamesShrink = value
        }
        if let value = dict["UmidToken"] as? String {
            self.umidToken = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class DeleteQueueResponseBody : Tea.TeaModel {
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

public class DeleteStaticAccountRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var createTimeStamp: Int64?

    public var instanceId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.createTimeStamp != nil {
            map["CreateTimeStamp"] = self.createTimeStamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CreateTimeStamp"] as? Int64 {
            self.createTimeStamp = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class DeleteStaticAccountResponseBody : Tea.TeaModel {
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

public class DeleteStaticAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStaticAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteStaticAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVhostRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var vhostName: String?

    public var vhostNames: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        if self.vhostNames != nil {
            map["VhostNames"] = self.vhostNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
        if let value = dict["VhostNames"] as? [String: Any] {
            self.vhostNames = value
        }
    }
}

public class DeleteVhostShrinkRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var vhostName: String?

    public var vhostNamesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        if self.vhostNamesShrink != nil {
            map["VhostNames"] = self.vhostNamesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
        if let value = dict["VhostNames"] as? String {
            self.vhostNamesShrink = value
        }
    }
}

public class DeleteVhostResponseBody : Tea.TeaModel {
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

public class DeleteVhostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVhostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVhostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Regions : Tea.TeaModel {
            public var regionCnName: String?

            public var regionId: String?

            public var regionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionCnName != nil {
                    map["RegionCnName"] = self.regionCnName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionCnName"] as? String {
                    self.regionCnName = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RegionName"] as? String {
                    self.regionName = value
                }
            }
        }
        public var regions: [DescribeRegionsResponseBody.Data.Regions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regions != nil {
                var tmp : [Any] = []
                for k in self.regions! {
                    tmp.append(k.toMap())
                }
                map["Regions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Regions"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Data.Regions] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Data.Regions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regions = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeRegionsResponseBody.Data?

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
            var model = DescribeRegionsResponseBody.Data()
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

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var exportType: Int32?

    public var instanceId: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.exportType != nil {
            map["ExportType"] = self.exportType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ExportType"] as? Int32 {
            self.exportType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class ExportResponseBody : Tea.TeaModel {
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

public class ExportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FetchStaticAccountRequest : Tea.TeaModel {
    public var accountAccessKey: String?

    public var consoleSessionId: String?

    public var createTimeStamp: Int64?

    public var instanceId: String?

    public var remark: String?

    public var SKey: String?

    public var secretSign: String?

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
            map["AccountAccessKey"] = self.accountAccessKey!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.createTimeStamp != nil {
            map["CreateTimeStamp"] = self.createTimeStamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.SKey != nil {
            map["SKey"] = self.SKey!
        }
        if self.secretSign != nil {
            map["SecretSign"] = self.secretSign!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountAccessKey"] as? String {
            self.accountAccessKey = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CreateTimeStamp"] as? Int64 {
            self.createTimeStamp = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SKey"] as? String {
            self.SKey = value
        }
        if let value = dict["SecretSign"] as? String {
            self.secretSign = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class FetchStaticAccountResponseBody : Tea.TeaModel {
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

    public var data: FetchStaticAccountResponseBody.Data?

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
            var model = FetchStaticAccountResponseBody.Data()
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

public class FetchStaticAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FetchStaticAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FetchStaticAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAckInfoByIntervalRequest : Tea.TeaModel {
    public var clientToken: String?

    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var endTime: Int32?

    public var instanceId: String?

    public var intervalSec: Int32?

    public var pageSize: Int32?

    public var queueName: String?

    public var startTime: Int32?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intervalSec != nil {
            map["IntervalSec"] = self.intervalSec!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntervalSec"] as? Int32 {
            self.intervalSec = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["StartTime"] as? Int32 {
            self.startTime = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetAckInfoByIntervalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public var action: String?

            public var channelId: String?

            public var connectionId: String?

            public var deliveryTag: Int64?

            public var queueName: String?

            public var rocketMqMsgId: String?

            public var rt: Int32?

            public var timeStamp: String?

            public override init() {
                super.init()
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
                    map["Action"] = self.action!
                }
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.connectionId != nil {
                    map["ConnectionId"] = self.connectionId!
                }
                if self.deliveryTag != nil {
                    map["DeliveryTag"] = self.deliveryTag!
                }
                if self.queueName != nil {
                    map["QueueName"] = self.queueName!
                }
                if self.rocketMqMsgId != nil {
                    map["RocketMqMsgId"] = self.rocketMqMsgId!
                }
                if self.rt != nil {
                    map["Rt"] = self.rt!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["ChannelId"] as? String {
                    self.channelId = value
                }
                if let value = dict["ConnectionId"] as? String {
                    self.connectionId = value
                }
                if let value = dict["DeliveryTag"] as? Int64 {
                    self.deliveryTag = value
                }
                if let value = dict["QueueName"] as? String {
                    self.queueName = value
                }
                if let value = dict["RocketMqMsgId"] as? String {
                    self.rocketMqMsgId = value
                }
                if let value = dict["Rt"] as? Int32 {
                    self.rt = value
                }
                if let value = dict["TimeStamp"] as? String {
                    self.timeStamp = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var voList: [GetAckInfoByIntervalResponseBody.Data.VoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                var tmp : [Any] = []
                for k in self.voList! {
                    tmp.append(k.toMap())
                }
                map["VoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [Any?] {
                var tmp : [GetAckInfoByIntervalResponseBody.Data.VoList] = []
                for v in value {
                    if v != nil {
                        var model = GetAckInfoByIntervalResponseBody.Data.VoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voList = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetAckInfoByIntervalResponseBody.Data?

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
            var model = GetAckInfoByIntervalResponseBody.Data()
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

public class GetAckInfoByIntervalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAckInfoByIntervalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAckInfoByIntervalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAckInfoOfMessageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var consoleSessionId: String?

    public var consumeStatus: String?

    public var deliveryTag: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var msgId: String?

    public var queueName: String?

    public var startTime: Int64?

    public var timeStamp: String?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.consumeStatus != nil {
            map["ConsumeStatus"] = self.consumeStatus!
        }
        if self.deliveryTag != nil {
            map["DeliveryTag"] = self.deliveryTag!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ConsumeStatus"] as? String {
            self.consumeStatus = value
        }
        if let value = dict["DeliveryTag"] as? String {
            self.deliveryTag = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TimeStamp"] as? String {
            self.timeStamp = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetAckInfoOfMessageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ackErrorInfo: String?

        public var ackResult: String?

        public var action: String?

        public var code: String?

        public var property: [String: Any]?

        public var timeStamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ackErrorInfo != nil {
                map["AckErrorInfo"] = self.ackErrorInfo!
            }
            if self.ackResult != nil {
                map["AckResult"] = self.ackResult!
            }
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.property != nil {
                map["Property"] = self.property!
            }
            if self.timeStamp != nil {
                map["TimeStamp"] = self.timeStamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AckErrorInfo"] as? String {
                self.ackErrorInfo = value
            }
            if let value = dict["AckResult"] as? String {
                self.ackResult = value
            }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Property"] as? [String: Any] {
                self.property = value
            }
            if let value = dict["TimeStamp"] as? String {
                self.timeStamp = value
            }
        }
    }
    public var code: Int32?

    public var data: [GetAckInfoOfMessageResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetAckInfoOfMessageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetAckInfoOfMessageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

public class GetAckInfoOfMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAckInfoOfMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAckInfoOfMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBindingCountRequest : Tea.TeaModel {
    public var bindingType: Int32?

    public var consoleSessionId: String?

    public var instanceId: String?

    public var resourceName: String?

    public var upstream: Bool?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindingType != nil {
            map["BindingType"] = self.bindingType!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.upstream != nil {
            map["Upstream"] = self.upstream!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindingType"] as? Int32 {
            self.bindingType = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["Upstream"] as? Bool {
            self.upstream = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetBindingCountResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int32?

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
        if let value = dict["Data"] as? Int32 {
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

public class GetBindingCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBindingCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBindingCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBindingErrorByTaskIdRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetBindingErrorByTaskIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class BindingErrorDO : Tea.TeaModel {
                public var destination: String?

                public var destinationType: String?

                public var errorMessage: String?

                public var routingKey: String?

                public var src: String?

                public var taskId: Int64?

                public var vhostName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destination != nil {
                        map["Destination"] = self.destination!
                    }
                    if self.destinationType != nil {
                        map["DestinationType"] = self.destinationType!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.routingKey != nil {
                        map["RoutingKey"] = self.routingKey!
                    }
                    if self.src != nil {
                        map["Src"] = self.src!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    if self.vhostName != nil {
                        map["VhostName"] = self.vhostName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Destination"] as? String {
                        self.destination = value
                    }
                    if let value = dict["DestinationType"] as? String {
                        self.destinationType = value
                    }
                    if let value = dict["ErrorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["RoutingKey"] as? String {
                        self.routingKey = value
                    }
                    if let value = dict["Src"] as? String {
                        self.src = value
                    }
                    if let value = dict["TaskId"] as? Int64 {
                        self.taskId = value
                    }
                    if let value = dict["VhostName"] as? String {
                        self.vhostName = value
                    }
                }
            }
            public var bindingErrorDO: [GetBindingErrorByTaskIdResponseBody.Data.VoList.BindingErrorDO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindingErrorDO != nil {
                    var tmp : [Any] = []
                    for k in self.bindingErrorDO! {
                        tmp.append(k.toMap())
                    }
                    map["BindingErrorDO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindingErrorDO"] as? [Any?] {
                    var tmp : [GetBindingErrorByTaskIdResponseBody.Data.VoList.BindingErrorDO] = []
                    for v in value {
                        if v != nil {
                            var model = GetBindingErrorByTaskIdResponseBody.Data.VoList.BindingErrorDO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bindingErrorDO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var voList: GetBindingErrorByTaskIdResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = GetBindingErrorByTaskIdResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: GetBindingErrorByTaskIdResponseBody.Data?

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
            var model = GetBindingErrorByTaskIdResponseBody.Data()
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

public class GetBindingErrorByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBindingErrorByTaskIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBindingErrorByTaskIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCommonBuyUrlRequest : Tea.TeaModel {
    public var actionType: String?

    public var consoleSessionId: String?

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
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? String {
            self.actionType = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetCommonBuyUrlResponseBody : Tea.TeaModel {
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

public class GetCommonBuyUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommonBuyUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCommonBuyUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumeTraceByQueueAndRocketMqMsgIdRequest : Tea.TeaModel {
    public var clientToken: String?

    public var consoleSessionId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var msgId: String?

    public var queueName: String?

    public var startTime: Int64?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetConsumeTraceByQueueAndRocketMqMsgIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var autoAckTag: String?

        public var clientAddress: String?

        public var code: String?

        public var consumeType: String?

        public var consumerTag: String?

        public var currentStatus: String?

        public var deliveryErrorInfo: String?

        public var deliveryTag: String?

        public var dlqQueueMsgIdMap: [String: Any]?

        public var reason: String?

        public var showAckIcon: Bool?

        public var timeStamp: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoAckTag != nil {
                map["AutoAckTag"] = self.autoAckTag!
            }
            if self.clientAddress != nil {
                map["ClientAddress"] = self.clientAddress!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.consumeType != nil {
                map["ConsumeType"] = self.consumeType!
            }
            if self.consumerTag != nil {
                map["ConsumerTag"] = self.consumerTag!
            }
            if self.currentStatus != nil {
                map["CurrentStatus"] = self.currentStatus!
            }
            if self.deliveryErrorInfo != nil {
                map["DeliveryErrorInfo"] = self.deliveryErrorInfo!
            }
            if self.deliveryTag != nil {
                map["DeliveryTag"] = self.deliveryTag!
            }
            if self.dlqQueueMsgIdMap != nil {
                map["DlqQueueMsgIdMap"] = self.dlqQueueMsgIdMap!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.showAckIcon != nil {
                map["ShowAckIcon"] = self.showAckIcon!
            }
            if self.timeStamp != nil {
                map["TimeStamp"] = self.timeStamp!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoAckTag"] as? String {
                self.autoAckTag = value
            }
            if let value = dict["ClientAddress"] as? String {
                self.clientAddress = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["ConsumeType"] as? String {
                self.consumeType = value
            }
            if let value = dict["ConsumerTag"] as? String {
                self.consumerTag = value
            }
            if let value = dict["CurrentStatus"] as? String {
                self.currentStatus = value
            }
            if let value = dict["DeliveryErrorInfo"] as? String {
                self.deliveryErrorInfo = value
            }
            if let value = dict["DeliveryTag"] as? String {
                self.deliveryTag = value
            }
            if let value = dict["DlqQueueMsgIdMap"] as? [String: Any] {
                self.dlqQueueMsgIdMap = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["ShowAckIcon"] as? Bool {
                self.showAckIcon = value
            }
            if let value = dict["TimeStamp"] as? String {
                self.timeStamp = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: Int32?

    public var data: [GetConsumeTraceByQueueAndRocketMqMsgIdResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetConsumeTraceByQueueAndRocketMqMsgIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetConsumeTraceByQueueAndRocketMqMsgIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

public class GetConsumeTraceByQueueAndRocketMqMsgIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumeTraceByQueueAndRocketMqMsgIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsumeTraceByQueueAndRocketMqMsgIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExchangeErrorByTaskIdRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetExchangeErrorByTaskIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class ExchangeErrorDO : Tea.TeaModel {
                public var errorMessage: Int32?

                public var exchangeName: String?

                public var exchangeType: String?

                public var taskId: Int64?

                public var vhostName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.exchangeName != nil {
                        map["ExchangeName"] = self.exchangeName!
                    }
                    if self.exchangeType != nil {
                        map["ExchangeType"] = self.exchangeType!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    if self.vhostName != nil {
                        map["VhostName"] = self.vhostName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorMessage"] as? Int32 {
                        self.errorMessage = value
                    }
                    if let value = dict["ExchangeName"] as? String {
                        self.exchangeName = value
                    }
                    if let value = dict["ExchangeType"] as? String {
                        self.exchangeType = value
                    }
                    if let value = dict["TaskId"] as? Int64 {
                        self.taskId = value
                    }
                    if let value = dict["VhostName"] as? String {
                        self.vhostName = value
                    }
                }
            }
            public var exchangeErrorDO: [GetExchangeErrorByTaskIdResponseBody.Data.VoList.ExchangeErrorDO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exchangeErrorDO != nil {
                    var tmp : [Any] = []
                    for k in self.exchangeErrorDO! {
                        tmp.append(k.toMap())
                    }
                    map["ExchangeErrorDO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExchangeErrorDO"] as? [Any?] {
                    var tmp : [GetExchangeErrorByTaskIdResponseBody.Data.VoList.ExchangeErrorDO] = []
                    for v in value {
                        if v != nil {
                            var model = GetExchangeErrorByTaskIdResponseBody.Data.VoList.ExchangeErrorDO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.exchangeErrorDO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var voList: GetExchangeErrorByTaskIdResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = GetExchangeErrorByTaskIdResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: GetExchangeErrorByTaskIdResponseBody.Data?

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
            var model = GetExchangeErrorByTaskIdResponseBody.Data()
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

public class GetExchangeErrorByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExchangeErrorByTaskIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetExchangeErrorByTaskIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExchangeRateRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var exchangeNames: [String: Any]?

    public var instanceId: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.exchangeNames != nil {
            map["ExchangeNames"] = self.exchangeNames!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ExchangeNames"] as? [String: Any] {
            self.exchangeNames = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetExchangeRateShrinkRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var exchangeNamesShrink: String?

    public var instanceId: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.exchangeNamesShrink != nil {
            map["ExchangeNames"] = self.exchangeNamesShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ExchangeNames"] as? String {
            self.exchangeNamesShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetExchangeRateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ExchangeQuotaVO : Tea.TeaModel {
            public var exchangeName: String?

            public var inQps: Int64?

            public var instanceId: String?

            public var outQps: Int64?

            public var vhostName: String?

            public override init() {
                super.init()
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
                if self.inQps != nil {
                    map["InQps"] = self.inQps!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.outQps != nil {
                    map["OutQps"] = self.outQps!
                }
                if self.vhostName != nil {
                    map["VhostName"] = self.vhostName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExchangeName"] as? String {
                    self.exchangeName = value
                }
                if let value = dict["InQps"] as? Int64 {
                    self.inQps = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["OutQps"] as? Int64 {
                    self.outQps = value
                }
                if let value = dict["VhostName"] as? String {
                    self.vhostName = value
                }
            }
        }
        public var exchangeQuotaVO: [GetExchangeRateResponseBody.Data.ExchangeQuotaVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exchangeQuotaVO != nil {
                var tmp : [Any] = []
                for k in self.exchangeQuotaVO! {
                    tmp.append(k.toMap())
                }
                map["ExchangeQuotaVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExchangeQuotaVO"] as? [Any?] {
                var tmp : [GetExchangeRateResponseBody.Data.ExchangeQuotaVO] = []
                for v in value {
                    if v != nil {
                        var model = GetExchangeRateResponseBody.Data.ExchangeQuotaVO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.exchangeQuotaVO = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetExchangeRateResponseBody.Data?

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
            var model = GetExchangeRateResponseBody.Data()
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

public class GetExchangeRateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExchangeRateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetExchangeRateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMsgIdListByQueueRequest : Tea.TeaModel {
    public var clientToken: String?

    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var pageSize: Int32?

    public var queueName: String?

    public var startTime: Int64?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetMsgIdListByQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var voList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String] {
                self.voList = value
            }
        }
    }
    public var code: Int32?

    public var data: GetMsgIdListByQueueResponseBody.Data?

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
            var model = GetMsgIdListByQueueResponseBody.Data()
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

public class GetMsgIdListByQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMsgIdListByQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMsgIdListByQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQueueConsumersRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var instanceId: String?

    public var pageSize: Int32?

    public var queueName: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetQueueConsumersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public var clientAddress: String?

            public var consumerTag: String?

            public var gmtCreate: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clientAddress != nil {
                    map["ClientAddress"] = self.clientAddress!
                }
                if self.consumerTag != nil {
                    map["ConsumerTag"] = self.consumerTag!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClientAddress"] as? String {
                    self.clientAddress = value
                }
                if let value = dict["ConsumerTag"] as? String {
                    self.consumerTag = value
                }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var taskId: String?

        public var totalCount: Int32?

        public var voList: [GetQueueConsumersResponseBody.Data.VoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                var tmp : [Any] = []
                for k in self.voList! {
                    tmp.append(k.toMap())
                }
                map["VoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [Any?] {
                var tmp : [GetQueueConsumersResponseBody.Data.VoList] = []
                for v in value {
                    if v != nil {
                        var model = GetQueueConsumersResponseBody.Data.VoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voList = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetQueueConsumersResponseBody.Data?

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
            var model = GetQueueConsumersResponseBody.Data()
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

public class GetQueueConsumersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQueueConsumersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQueueConsumersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQueueErrorByTaskIdRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetQueueErrorByTaskIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class QueueErrorDO : Tea.TeaModel {
                public var autoDelete: Bool?

                public var durable: Bool?

                public var errorMessage: Int32?

                public var queueName: String?

                public var taskId: Int64?

                public var vhostName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoDelete != nil {
                        map["AutoDelete"] = self.autoDelete!
                    }
                    if self.durable != nil {
                        map["Durable"] = self.durable!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.queueName != nil {
                        map["QueueName"] = self.queueName!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    if self.vhostName != nil {
                        map["VhostName"] = self.vhostName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AutoDelete"] as? Bool {
                        self.autoDelete = value
                    }
                    if let value = dict["Durable"] as? Bool {
                        self.durable = value
                    }
                    if let value = dict["ErrorMessage"] as? Int32 {
                        self.errorMessage = value
                    }
                    if let value = dict["QueueName"] as? String {
                        self.queueName = value
                    }
                    if let value = dict["TaskId"] as? Int64 {
                        self.taskId = value
                    }
                    if let value = dict["VhostName"] as? String {
                        self.vhostName = value
                    }
                }
            }
            public var queueErrorDO: [GetQueueErrorByTaskIdResponseBody.Data.VoList.QueueErrorDO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.queueErrorDO != nil {
                    var tmp : [Any] = []
                    for k in self.queueErrorDO! {
                        tmp.append(k.toMap())
                    }
                    map["QueueErrorDO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["QueueErrorDO"] as? [Any?] {
                    var tmp : [GetQueueErrorByTaskIdResponseBody.Data.VoList.QueueErrorDO] = []
                    for v in value {
                        if v != nil {
                            var model = GetQueueErrorByTaskIdResponseBody.Data.VoList.QueueErrorDO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.queueErrorDO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var voList: GetQueueErrorByTaskIdResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = GetQueueErrorByTaskIdResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: GetQueueErrorByTaskIdResponseBody.Data?

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
            var model = GetQueueErrorByTaskIdResponseBody.Data()
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

public class GetQueueErrorByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQueueErrorByTaskIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQueueErrorByTaskIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQueueRateRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var queueNames: [String: Any]?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queueNames != nil {
            map["QueueNames"] = self.queueNames!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueNames"] as? [String: Any] {
            self.queueNames = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetQueueRateShrinkRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var queueNamesShrink: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queueNamesShrink != nil {
            map["QueueNames"] = self.queueNamesShrink!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueNames"] as? String {
            self.queueNamesShrink = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetQueueRateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var inQps: Int64?

        public var instanceId: String?

        public var outQps: Int64?

        public var queueName: String?

        public var vhostName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inQps != nil {
                map["InQps"] = self.inQps!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.outQps != nil {
                map["OutQps"] = self.outQps!
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.vhostName != nil {
                map["VhostName"] = self.vhostName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InQps"] as? Int64 {
                self.inQps = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OutQps"] as? Int64 {
                self.outQps = value
            }
            if let value = dict["QueueName"] as? String {
                self.queueName = value
            }
            if let value = dict["VhostName"] as? String {
                self.vhostName = value
            }
        }
    }
    public var code: Int32?

    public var data: [GetQueueRateResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetQueueRateResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetQueueRateResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

public class GetQueueRateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQueueRateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQueueRateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSendTraceByConnectionAndChannelAndDeliveryTagRequest : Tea.TeaModel {
    public var channelId: String?

    public var clientToken: String?

    public var connectionId: String?

    public var consoleSessionId: String?

    public var deliveryTag: Int64?

    public var endTime: Int32?

    public var instanceId: String?

    public var startTime: Int32?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionId != nil {
            map["ConnectionId"] = self.connectionId!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.deliveryTag != nil {
            map["DeliveryTag"] = self.deliveryTag!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConnectionId"] as? String {
            self.connectionId = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["DeliveryTag"] as? Int64 {
            self.deliveryTag = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartTime"] as? Int32 {
            self.startTime = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetSendTraceByConnectionAndChannelAndDeliveryTagResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var delay: String?

        public var exchange: String?

        public var expiration: String?

        public var messageId: String?

        public var queueMsgIdMap: [String: Any]?

        public var remoteAddress: String?

        public var routingKey: String?

        public var sendErrorInfo: String?

        public var timeStamp: String?

        public var userId: String?

        public var vhost: String?

        public var XDelay: String?

        public override init() {
            super.init()
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
            if self.delay != nil {
                map["Delay"] = self.delay!
            }
            if self.exchange != nil {
                map["Exchange"] = self.exchange!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            if self.queueMsgIdMap != nil {
                map["QueueMsgIdMap"] = self.queueMsgIdMap!
            }
            if self.remoteAddress != nil {
                map["RemoteAddress"] = self.remoteAddress!
            }
            if self.routingKey != nil {
                map["RoutingKey"] = self.routingKey!
            }
            if self.sendErrorInfo != nil {
                map["SendErrorInfo"] = self.sendErrorInfo!
            }
            if self.timeStamp != nil {
                map["TimeStamp"] = self.timeStamp!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.vhost != nil {
                map["Vhost"] = self.vhost!
            }
            if self.XDelay != nil {
                map["XDelay"] = self.XDelay!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Delay"] as? String {
                self.delay = value
            }
            if let value = dict["Exchange"] as? String {
                self.exchange = value
            }
            if let value = dict["Expiration"] as? String {
                self.expiration = value
            }
            if let value = dict["MessageId"] as? String {
                self.messageId = value
            }
            if let value = dict["QueueMsgIdMap"] as? [String: Any] {
                self.queueMsgIdMap = value
            }
            if let value = dict["RemoteAddress"] as? String {
                self.remoteAddress = value
            }
            if let value = dict["RoutingKey"] as? String {
                self.routingKey = value
            }
            if let value = dict["SendErrorInfo"] as? String {
                self.sendErrorInfo = value
            }
            if let value = dict["TimeStamp"] as? String {
                self.timeStamp = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["Vhost"] as? String {
                self.vhost = value
            }
            if let value = dict["XDelay"] as? String {
                self.XDelay = value
            }
        }
    }
    public var code: Int32?

    public var data: GetSendTraceByConnectionAndChannelAndDeliveryTagResponseBody.Data?

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
            var model = GetSendTraceByConnectionAndChannelAndDeliveryTagResponseBody.Data()
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

public class GetSendTraceByConnectionAndChannelAndDeliveryTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSendTraceByConnectionAndChannelAndDeliveryTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSendTraceByConnectionAndChannelAndDeliveryTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSendTraceByMsgIdRequest : Tea.TeaModel {
    public var clientToken: String?

    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var msgId: String?

    public var pageSize: Int32?

    public var queueName: String?

    public var startTime: Int64?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetSendTraceByMsgIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public var code: String?

            public var exchange: String?

            public var instanceId: String?

            public var messageBodyLength: String?

            public var messagePropertiesMap: [String: Any]?

            public var queueMsgIdMap: [String: Any]?

            public var remoteAddress: String?

            public var routingKey: String?

            public var sendErrorInfo: String?

            public var timeStamp: String?

            public var userId: String?

            public var vhost: String?

            public override init() {
                super.init()
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
                if self.exchange != nil {
                    map["Exchange"] = self.exchange!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.messageBodyLength != nil {
                    map["MessageBodyLength"] = self.messageBodyLength!
                }
                if self.messagePropertiesMap != nil {
                    map["MessagePropertiesMap"] = self.messagePropertiesMap!
                }
                if self.queueMsgIdMap != nil {
                    map["QueueMsgIdMap"] = self.queueMsgIdMap!
                }
                if self.remoteAddress != nil {
                    map["RemoteAddress"] = self.remoteAddress!
                }
                if self.routingKey != nil {
                    map["RoutingKey"] = self.routingKey!
                }
                if self.sendErrorInfo != nil {
                    map["SendErrorInfo"] = self.sendErrorInfo!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.vhost != nil {
                    map["Vhost"] = self.vhost!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Exchange"] as? String {
                    self.exchange = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["MessageBodyLength"] as? String {
                    self.messageBodyLength = value
                }
                if let value = dict["MessagePropertiesMap"] as? [String: Any] {
                    self.messagePropertiesMap = value
                }
                if let value = dict["QueueMsgIdMap"] as? [String: Any] {
                    self.queueMsgIdMap = value
                }
                if let value = dict["RemoteAddress"] as? String {
                    self.remoteAddress = value
                }
                if let value = dict["RoutingKey"] as? String {
                    self.routingKey = value
                }
                if let value = dict["SendErrorInfo"] as? String {
                    self.sendErrorInfo = value
                }
                if let value = dict["TimeStamp"] as? String {
                    self.timeStamp = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["Vhost"] as? String {
                    self.vhost = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var voList: [GetSendTraceByMsgIdResponseBody.Data.VoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                var tmp : [Any] = []
                for k in self.voList! {
                    tmp.append(k.toMap())
                }
                map["VoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [Any?] {
                var tmp : [GetSendTraceByMsgIdResponseBody.Data.VoList] = []
                for v in value {
                    if v != nil {
                        var model = GetSendTraceByMsgIdResponseBody.Data.VoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voList = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetSendTraceByMsgIdResponseBody.Data?

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
            var model = GetSendTraceByMsgIdResponseBody.Data()
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

public class GetSendTraceByMsgIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSendTraceByMsgIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSendTraceByMsgIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSendTraceByQueueRequest : Tea.TeaModel {
    public var clientToken: String?

    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var endTime: Int32?

    public var instanceId: String?

    public var pageSize: Int32?

    public var queueName: String?

    public var startTime: Int32?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["StartTime"] as? Int32 {
            self.startTime = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetSendTraceByQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public var code: String?

            public var exchange: String?

            public var messageBodyLength: String?

            public var messageId: String?

            public var messagePropertiesMap: [String: Any]?

            public var queueMsgIdMap: [String: Any]?

            public var remoteAddress: String?

            public var routingKey: String?

            public var sendErrorInfo: String?

            public var timeStamp: String?

            public var userId: String?

            public var vhost: String?

            public override init() {
                super.init()
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
                if self.exchange != nil {
                    map["Exchange"] = self.exchange!
                }
                if self.messageBodyLength != nil {
                    map["MessageBodyLength"] = self.messageBodyLength!
                }
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.messagePropertiesMap != nil {
                    map["MessagePropertiesMap"] = self.messagePropertiesMap!
                }
                if self.queueMsgIdMap != nil {
                    map["QueueMsgIdMap"] = self.queueMsgIdMap!
                }
                if self.remoteAddress != nil {
                    map["RemoteAddress"] = self.remoteAddress!
                }
                if self.routingKey != nil {
                    map["RoutingKey"] = self.routingKey!
                }
                if self.sendErrorInfo != nil {
                    map["SendErrorInfo"] = self.sendErrorInfo!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.vhost != nil {
                    map["Vhost"] = self.vhost!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Exchange"] as? String {
                    self.exchange = value
                }
                if let value = dict["MessageBodyLength"] as? String {
                    self.messageBodyLength = value
                }
                if let value = dict["MessageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["MessagePropertiesMap"] as? [String: Any] {
                    self.messagePropertiesMap = value
                }
                if let value = dict["QueueMsgIdMap"] as? [String: Any] {
                    self.queueMsgIdMap = value
                }
                if let value = dict["RemoteAddress"] as? String {
                    self.remoteAddress = value
                }
                if let value = dict["RoutingKey"] as? String {
                    self.routingKey = value
                }
                if let value = dict["SendErrorInfo"] as? String {
                    self.sendErrorInfo = value
                }
                if let value = dict["TimeStamp"] as? String {
                    self.timeStamp = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["Vhost"] as? String {
                    self.vhost = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var voList: [GetSendTraceByQueueResponseBody.Data.VoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                var tmp : [Any] = []
                for k in self.voList! {
                    tmp.append(k.toMap())
                }
                map["VoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [Any?] {
                var tmp : [GetSendTraceByQueueResponseBody.Data.VoList] = []
                for v in value {
                    if v != nil {
                        var model = GetSendTraceByQueueResponseBody.Data.VoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voList = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetSendTraceByQueueResponseBody.Data?

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
            var model = GetSendTraceByQueueResponseBody.Data()
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

public class GetSendTraceByQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSendTraceByQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSendTraceByQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStatisticsByVhostRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetStatisticsByVhostResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConnectionStatistics : Tea.TeaModel {
            public class ChannelStatisticsList : Tea.TeaModel {
                public class ChannelStatistics : Tea.TeaModel {
                    public var ackQps: Double?

                    public var confirmQps: Double?

                    public var deliverQps: Double?

                    public var getQps: Double?

                    public var prefetch: Int32?

                    public var publishQps: Double?

                    public var state: Int32?

                    public var unacked: Int32?

                    public var unconfirmed: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ackQps != nil {
                            map["AckQps"] = self.ackQps!
                        }
                        if self.confirmQps != nil {
                            map["ConfirmQps"] = self.confirmQps!
                        }
                        if self.deliverQps != nil {
                            map["DeliverQps"] = self.deliverQps!
                        }
                        if self.getQps != nil {
                            map["GetQps"] = self.getQps!
                        }
                        if self.prefetch != nil {
                            map["Prefetch"] = self.prefetch!
                        }
                        if self.publishQps != nil {
                            map["PublishQps"] = self.publishQps!
                        }
                        if self.state != nil {
                            map["State"] = self.state!
                        }
                        if self.unacked != nil {
                            map["Unacked"] = self.unacked!
                        }
                        if self.unconfirmed != nil {
                            map["Unconfirmed"] = self.unconfirmed!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AckQps"] as? Double {
                            self.ackQps = value
                        }
                        if let value = dict["ConfirmQps"] as? Double {
                            self.confirmQps = value
                        }
                        if let value = dict["DeliverQps"] as? Double {
                            self.deliverQps = value
                        }
                        if let value = dict["GetQps"] as? Double {
                            self.getQps = value
                        }
                        if let value = dict["Prefetch"] as? Int32 {
                            self.prefetch = value
                        }
                        if let value = dict["PublishQps"] as? Double {
                            self.publishQps = value
                        }
                        if let value = dict["State"] as? Int32 {
                            self.state = value
                        }
                        if let value = dict["Unacked"] as? Int32 {
                            self.unacked = value
                        }
                        if let value = dict["Unconfirmed"] as? Int32 {
                            self.unconfirmed = value
                        }
                    }
                }
                public var channelStatistics: [GetStatisticsByVhostResponseBody.Data.ConnectionStatistics.ChannelStatisticsList.ChannelStatistics]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.channelStatistics != nil {
                        var tmp : [Any] = []
                        for k in self.channelStatistics! {
                            tmp.append(k.toMap())
                        }
                        map["ChannelStatistics"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ChannelStatistics"] as? [Any?] {
                        var tmp : [GetStatisticsByVhostResponseBody.Data.ConnectionStatistics.ChannelStatisticsList.ChannelStatistics] = []
                        for v in value {
                            if v != nil {
                                var model = GetStatisticsByVhostResponseBody.Data.ConnectionStatistics.ChannelStatisticsList.ChannelStatistics()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.channelStatistics = tmp
                    }
                }
            }
            public var accessKey: String?

            public var channelNum: Int32?

            public var channelStatisticsList: GetStatisticsByVhostResponseBody.Data.ConnectionStatistics.ChannelStatisticsList?

            public var connectionName: String?

            public var deliverQps: Double?

            public var protocol_: String?

            public var publishQps: Double?

            public var remoteAddress: String?

            public var securityTransport: Bool?

            public var state: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.channelStatisticsList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKey != nil {
                    map["AccessKey"] = self.accessKey!
                }
                if self.channelNum != nil {
                    map["ChannelNum"] = self.channelNum!
                }
                if self.channelStatisticsList != nil {
                    map["ChannelStatisticsList"] = self.channelStatisticsList?.toMap()
                }
                if self.connectionName != nil {
                    map["ConnectionName"] = self.connectionName!
                }
                if self.deliverQps != nil {
                    map["DeliverQps"] = self.deliverQps!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.publishQps != nil {
                    map["PublishQps"] = self.publishQps!
                }
                if self.remoteAddress != nil {
                    map["RemoteAddress"] = self.remoteAddress!
                }
                if self.securityTransport != nil {
                    map["SecurityTransport"] = self.securityTransport!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessKey"] as? String {
                    self.accessKey = value
                }
                if let value = dict["ChannelNum"] as? Int32 {
                    self.channelNum = value
                }
                if let value = dict["ChannelStatisticsList"] as? [String: Any?] {
                    var model = GetStatisticsByVhostResponseBody.Data.ConnectionStatistics.ChannelStatisticsList()
                    model.fromMap(value)
                    self.channelStatisticsList = model
                }
                if let value = dict["ConnectionName"] as? String {
                    self.connectionName = value
                }
                if let value = dict["DeliverQps"] as? Double {
                    self.deliverQps = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["PublishQps"] as? Double {
                    self.publishQps = value
                }
                if let value = dict["RemoteAddress"] as? String {
                    self.remoteAddress = value
                }
                if let value = dict["SecurityTransport"] as? Bool {
                    self.securityTransport = value
                }
                if let value = dict["State"] as? Int32 {
                    self.state = value
                }
            }
        }
        public var connectionStatistics: [GetStatisticsByVhostResponseBody.Data.ConnectionStatistics]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionStatistics != nil {
                var tmp : [Any] = []
                for k in self.connectionStatistics! {
                    tmp.append(k.toMap())
                }
                map["ConnectionStatistics"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionStatistics"] as? [Any?] {
                var tmp : [GetStatisticsByVhostResponseBody.Data.ConnectionStatistics] = []
                for v in value {
                    if v != nil {
                        var model = GetStatisticsByVhostResponseBody.Data.ConnectionStatistics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connectionStatistics = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetStatisticsByVhostResponseBody.Data?

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
            var model = GetStatisticsByVhostResponseBody.Data()
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

public class GetStatisticsByVhostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStatisticsByVhostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetStatisticsByVhostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskByUidRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class GetTaskByUidResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class ImportDefinitionTaskDO : Tea.TeaModel {
                public var bindingNum: Int32?

                public var exchangeNum: Int32?

                public var gmtCreate: String?

                public var id: Int64?

                public var importType: Int32?

                public var instanceId: String?

                public var instanceName: String?

                public var queueNum: Int32?

                public var status: Int32?

                public var userId: Int64?

                public var vhostName: String?

                public var vhostNum: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bindingNum != nil {
                        map["BindingNum"] = self.bindingNum!
                    }
                    if self.exchangeNum != nil {
                        map["ExchangeNum"] = self.exchangeNum!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.importType != nil {
                        map["ImportType"] = self.importType!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.instanceName != nil {
                        map["InstanceName"] = self.instanceName!
                    }
                    if self.queueNum != nil {
                        map["QueueNum"] = self.queueNum!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    if self.vhostName != nil {
                        map["VhostName"] = self.vhostName!
                    }
                    if self.vhostNum != nil {
                        map["VhostNum"] = self.vhostNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BindingNum"] as? Int32 {
                        self.bindingNum = value
                    }
                    if let value = dict["ExchangeNum"] as? Int32 {
                        self.exchangeNum = value
                    }
                    if let value = dict["GmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["ImportType"] as? Int32 {
                        self.importType = value
                    }
                    if let value = dict["InstanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["InstanceName"] as? String {
                        self.instanceName = value
                    }
                    if let value = dict["QueueNum"] as? Int32 {
                        self.queueNum = value
                    }
                    if let value = dict["Status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["UserId"] as? Int64 {
                        self.userId = value
                    }
                    if let value = dict["VhostName"] as? String {
                        self.vhostName = value
                    }
                    if let value = dict["VhostNum"] as? Int32 {
                        self.vhostNum = value
                    }
                }
            }
            public var importDefinitionTaskDO: [GetTaskByUidResponseBody.Data.VoList.ImportDefinitionTaskDO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.importDefinitionTaskDO != nil {
                    var tmp : [Any] = []
                    for k in self.importDefinitionTaskDO! {
                        tmp.append(k.toMap())
                    }
                    map["ImportDefinitionTaskDO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImportDefinitionTaskDO"] as? [Any?] {
                    var tmp : [GetTaskByUidResponseBody.Data.VoList.ImportDefinitionTaskDO] = []
                    for v in value {
                        if v != nil {
                            var model = GetTaskByUidResponseBody.Data.VoList.ImportDefinitionTaskDO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.importDefinitionTaskDO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var voList: GetTaskByUidResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = GetTaskByUidResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: GetTaskByUidResponseBody.Data?

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
            var model = GetTaskByUidResponseBody.Data()
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

public class GetTaskByUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskByUidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskByUidResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTpsByTimeRequest : Tea.TeaModel {
    public var api: String?

    public var clientToken: String?

    public var consoleSessionId: String?

    public var endTime: Int32?

    public var instanceId: String?

    public var queueName: String?

    public var startTime: Int32?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.api != nil {
            map["Api"] = self.api!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Api"] as? String {
            self.api = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["StartTime"] as? Int32 {
            self.startTime = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class GetTpsByTimeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endTime: String?

        public var maxTps: Int32?

        public var startTime: Int64?

        public var tpsList: [Int32]?

        public override init() {
            super.init()
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
            if self.maxTps != nil {
                map["MaxTps"] = self.maxTps!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.tpsList != nil {
                map["tpsList"] = self.tpsList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["MaxTps"] as? Int32 {
                self.maxTps = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["tpsList"] as? [Int32] {
                self.tpsList = value
            }
        }
    }
    public var code: Int32?

    public var data: GetTpsByTimeResponseBody.Data?

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
            var model = GetTpsByTimeResponseBody.Data()
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

public class GetTpsByTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTpsByTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTpsByTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserSettingRequest : Tea.TeaModel {
    public var consoleSessionId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetUserSettingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var logstore: String?

        public var regionId: String?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logstore != nil {
                map["Logstore"] = self.logstore!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var code: Int32?

    public var data: GetUserSettingResponseBody.Data?

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
            var model = GetUserSettingResponseBody.Data()
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

public class GetUserSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVhostErrorByTaskIdRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetVhostErrorByTaskIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class VhostErrorDO : Tea.TeaModel {
                public var errorMessage: Int32?

                public var taskId: Int64?

                public var vhostName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    if self.vhostName != nil {
                        map["VhostName"] = self.vhostName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorMessage"] as? Int32 {
                        self.errorMessage = value
                    }
                    if let value = dict["TaskId"] as? Int64 {
                        self.taskId = value
                    }
                    if let value = dict["VhostName"] as? String {
                        self.vhostName = value
                    }
                }
            }
            public var vhostErrorDO: [GetVhostErrorByTaskIdResponseBody.Data.VoList.VhostErrorDO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vhostErrorDO != nil {
                    var tmp : [Any] = []
                    for k in self.vhostErrorDO! {
                        tmp.append(k.toMap())
                    }
                    map["VhostErrorDO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VhostErrorDO"] as? [Any?] {
                    var tmp : [GetVhostErrorByTaskIdResponseBody.Data.VoList.VhostErrorDO] = []
                    for v in value {
                        if v != nil {
                            var model = GetVhostErrorByTaskIdResponseBody.Data.VoList.VhostErrorDO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vhostErrorDO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var voList: GetVhostErrorByTaskIdResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = GetVhostErrorByTaskIdResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: GetVhostErrorByTaskIdResponseBody.Data?

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
            var model = GetVhostErrorByTaskIdResponseBody.Data()
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

public class GetVhostErrorByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVhostErrorByTaskIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVhostErrorByTaskIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVhostRateRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var vhostNames: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostNames != nil {
            map["VhostNames"] = self.vhostNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostNames"] as? [String: Any] {
            self.vhostNames = value
        }
    }
}

public class GetVhostRateShrinkRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var vhostNamesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostNamesShrink != nil {
            map["VhostNames"] = self.vhostNamesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostNames"] as? String {
            self.vhostNamesShrink = value
        }
    }
}

public class GetVhostRateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var channelNum: Int32?

        public var connectionNum: Int32?

        public var inQps: Int64?

        public var outQps: Int64?

        public var vhostName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelNum != nil {
                map["ChannelNum"] = self.channelNum!
            }
            if self.connectionNum != nil {
                map["ConnectionNum"] = self.connectionNum!
            }
            if self.inQps != nil {
                map["InQps"] = self.inQps!
            }
            if self.outQps != nil {
                map["OutQps"] = self.outQps!
            }
            if self.vhostName != nil {
                map["VhostName"] = self.vhostName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChannelNum"] as? Int32 {
                self.channelNum = value
            }
            if let value = dict["ConnectionNum"] as? Int32 {
                self.connectionNum = value
            }
            if let value = dict["InQps"] as? Int64 {
                self.inQps = value
            }
            if let value = dict["OutQps"] as? Int64 {
                self.outQps = value
            }
            if let value = dict["VhostName"] as? String {
                self.vhostName = value
            }
        }
    }
    public var code: Int32?

    public var data: [GetVhostRateResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetVhostRateResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetVhostRateResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

public class GetVhostRateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVhostRateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVhostRateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportDefinitionAsynchronousRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var importType: Int32?

    public var instanceId: String?

    public var instanceName: String?

    public var ossUrl: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.importType != nil {
            map["ImportType"] = self.importType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.ossUrl != nil {
            map["OssUrl"] = self.ossUrl!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ImportType"] as? Int32 {
            self.importType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["OssUrl"] as? String {
            self.ossUrl = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class ImportDefinitionAsynchronousResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? Bool {
                self.result = value
            }
        }
    }
    public var code: Int32?

    public var data: ImportDefinitionAsynchronousResponseBody.Data?

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
            var model = ImportDefinitionAsynchronousResponseBody.Data()
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

public class ImportDefinitionAsynchronousResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportDefinitionAsynchronousResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImportDefinitionAsynchronousResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstancePreivewRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class InstancePreivewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public class InstancesVO : Tea.TeaModel {
                public class Tags : Tea.TeaModel {
                    public class TagsVO : Tea.TeaModel {
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
                    public var tagsVO: [InstancePreivewResponseBody.Data.Instances.InstancesVO.Tags.TagsVO]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.tagsVO != nil {
                            var tmp : [Any] = []
                            for k in self.tagsVO! {
                                tmp.append(k.toMap())
                            }
                            map["TagsVO"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["TagsVO"] as? [Any?] {
                            var tmp : [InstancePreivewResponseBody.Data.Instances.InstancesVO.Tags.TagsVO] = []
                            for v in value {
                                if v != nil {
                                    var model = InstancePreivewResponseBody.Data.Instances.InstancesVO.Tags.TagsVO()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.tagsVO = tmp
                        }
                    }
                }
                public var autoRenew: Bool?

                public var ceaseStatus: Bool?

                public var classicEndpoint: String?

                public var enableDlqTtl: Bool?

                public var encrypted: Bool?

                public var expire: Int64?

                public var instanceId: String?

                public var instanceName: String?

                public var instanceType: String?

                public var invisibleTime: Int32?

                public var kmsKeyId: String?

                public var maxBindingCount: Int32?

                public var maxConnectionChannelCount: Int32?

                public var maxConnectionCount: Int32?

                public var maxConsumeRetryTime: Int32?

                public var maxEIPTPS: Int32?

                public var maxExchangeCount: Int32?

                public var maxMsgBodyByte: Int32?

                public var maxMsgDelayHour: Int32?

                public var maxMsgTraceTime: Int32?

                public var maxQueue: Int32?

                public var maxQueueConsumerCount: Int32?

                public var maxRetryInterval: Int32?

                public var maxRetryTimes: Int32?

                public var maxTPS: Int32?

                public var maxVhost: Int32?

                public var orderCreate: Int64?

                public var orderType: String?

                public var privateEndpoint: String?

                public var publicEndpoint: String?

                public var resourceGroupId: String?

                public var serverlessRate: Double?

                public var serverlessSwitch: Bool?

                public var status: String?

                public var storageSize: Int32?

                public var supportEIP: Bool?

                public var supportMsgTrace: Bool?

                public var supportOpenSourceAuth: Bool?

                public var tags: InstancePreivewResponseBody.Data.Instances.InstancesVO.Tags?

                public var usedQueue: Int32?

                public var usedVhost: Int32?

                public var version: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.tags?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoRenew != nil {
                        map["AutoRenew"] = self.autoRenew!
                    }
                    if self.ceaseStatus != nil {
                        map["CeaseStatus"] = self.ceaseStatus!
                    }
                    if self.classicEndpoint != nil {
                        map["ClassicEndpoint"] = self.classicEndpoint!
                    }
                    if self.enableDlqTtl != nil {
                        map["EnableDlqTtl"] = self.enableDlqTtl!
                    }
                    if self.encrypted != nil {
                        map["Encrypted"] = self.encrypted!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
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
                    if self.invisibleTime != nil {
                        map["InvisibleTime"] = self.invisibleTime!
                    }
                    if self.kmsKeyId != nil {
                        map["KmsKeyId"] = self.kmsKeyId!
                    }
                    if self.maxBindingCount != nil {
                        map["MaxBindingCount"] = self.maxBindingCount!
                    }
                    if self.maxConnectionChannelCount != nil {
                        map["MaxConnectionChannelCount"] = self.maxConnectionChannelCount!
                    }
                    if self.maxConnectionCount != nil {
                        map["MaxConnectionCount"] = self.maxConnectionCount!
                    }
                    if self.maxConsumeRetryTime != nil {
                        map["MaxConsumeRetryTime"] = self.maxConsumeRetryTime!
                    }
                    if self.maxEIPTPS != nil {
                        map["MaxEIPTPS"] = self.maxEIPTPS!
                    }
                    if self.maxExchangeCount != nil {
                        map["MaxExchangeCount"] = self.maxExchangeCount!
                    }
                    if self.maxMsgBodyByte != nil {
                        map["MaxMsgBodyByte"] = self.maxMsgBodyByte!
                    }
                    if self.maxMsgDelayHour != nil {
                        map["MaxMsgDelayHour"] = self.maxMsgDelayHour!
                    }
                    if self.maxMsgTraceTime != nil {
                        map["MaxMsgTraceTime"] = self.maxMsgTraceTime!
                    }
                    if self.maxQueue != nil {
                        map["MaxQueue"] = self.maxQueue!
                    }
                    if self.maxQueueConsumerCount != nil {
                        map["MaxQueueConsumerCount"] = self.maxQueueConsumerCount!
                    }
                    if self.maxRetryInterval != nil {
                        map["MaxRetryInterval"] = self.maxRetryInterval!
                    }
                    if self.maxRetryTimes != nil {
                        map["MaxRetryTimes"] = self.maxRetryTimes!
                    }
                    if self.maxTPS != nil {
                        map["MaxTPS"] = self.maxTPS!
                    }
                    if self.maxVhost != nil {
                        map["MaxVhost"] = self.maxVhost!
                    }
                    if self.orderCreate != nil {
                        map["OrderCreate"] = self.orderCreate!
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
                    if self.serverlessRate != nil {
                        map["ServerlessRate"] = self.serverlessRate!
                    }
                    if self.serverlessSwitch != nil {
                        map["ServerlessSwitch"] = self.serverlessSwitch!
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
                    if self.supportMsgTrace != nil {
                        map["SupportMsgTrace"] = self.supportMsgTrace!
                    }
                    if self.supportOpenSourceAuth != nil {
                        map["SupportOpenSourceAuth"] = self.supportOpenSourceAuth!
                    }
                    if self.tags != nil {
                        map["Tags"] = self.tags?.toMap()
                    }
                    if self.usedQueue != nil {
                        map["UsedQueue"] = self.usedQueue!
                    }
                    if self.usedVhost != nil {
                        map["UsedVhost"] = self.usedVhost!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AutoRenew"] as? Bool {
                        self.autoRenew = value
                    }
                    if let value = dict["CeaseStatus"] as? Bool {
                        self.ceaseStatus = value
                    }
                    if let value = dict["ClassicEndpoint"] as? String {
                        self.classicEndpoint = value
                    }
                    if let value = dict["EnableDlqTtl"] as? Bool {
                        self.enableDlqTtl = value
                    }
                    if let value = dict["Encrypted"] as? Bool {
                        self.encrypted = value
                    }
                    if let value = dict["Expire"] as? Int64 {
                        self.expire = value
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
                    if let value = dict["InvisibleTime"] as? Int32 {
                        self.invisibleTime = value
                    }
                    if let value = dict["KmsKeyId"] as? String {
                        self.kmsKeyId = value
                    }
                    if let value = dict["MaxBindingCount"] as? Int32 {
                        self.maxBindingCount = value
                    }
                    if let value = dict["MaxConnectionChannelCount"] as? Int32 {
                        self.maxConnectionChannelCount = value
                    }
                    if let value = dict["MaxConnectionCount"] as? Int32 {
                        self.maxConnectionCount = value
                    }
                    if let value = dict["MaxConsumeRetryTime"] as? Int32 {
                        self.maxConsumeRetryTime = value
                    }
                    if let value = dict["MaxEIPTPS"] as? Int32 {
                        self.maxEIPTPS = value
                    }
                    if let value = dict["MaxExchangeCount"] as? Int32 {
                        self.maxExchangeCount = value
                    }
                    if let value = dict["MaxMsgBodyByte"] as? Int32 {
                        self.maxMsgBodyByte = value
                    }
                    if let value = dict["MaxMsgDelayHour"] as? Int32 {
                        self.maxMsgDelayHour = value
                    }
                    if let value = dict["MaxMsgTraceTime"] as? Int32 {
                        self.maxMsgTraceTime = value
                    }
                    if let value = dict["MaxQueue"] as? Int32 {
                        self.maxQueue = value
                    }
                    if let value = dict["MaxQueueConsumerCount"] as? Int32 {
                        self.maxQueueConsumerCount = value
                    }
                    if let value = dict["MaxRetryInterval"] as? Int32 {
                        self.maxRetryInterval = value
                    }
                    if let value = dict["MaxRetryTimes"] as? Int32 {
                        self.maxRetryTimes = value
                    }
                    if let value = dict["MaxTPS"] as? Int32 {
                        self.maxTPS = value
                    }
                    if let value = dict["MaxVhost"] as? Int32 {
                        self.maxVhost = value
                    }
                    if let value = dict["OrderCreate"] as? Int64 {
                        self.orderCreate = value
                    }
                    if let value = dict["OrderType"] as? String {
                        self.orderType = value
                    }
                    if let value = dict["PrivateEndpoint"] as? String {
                        self.privateEndpoint = value
                    }
                    if let value = dict["PublicEndpoint"] as? String {
                        self.publicEndpoint = value
                    }
                    if let value = dict["ResourceGroupId"] as? String {
                        self.resourceGroupId = value
                    }
                    if let value = dict["ServerlessRate"] as? Double {
                        self.serverlessRate = value
                    }
                    if let value = dict["ServerlessSwitch"] as? Bool {
                        self.serverlessSwitch = value
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
                    if let value = dict["SupportMsgTrace"] as? Bool {
                        self.supportMsgTrace = value
                    }
                    if let value = dict["SupportOpenSourceAuth"] as? Bool {
                        self.supportOpenSourceAuth = value
                    }
                    if let value = dict["Tags"] as? [String: Any?] {
                        var model = InstancePreivewResponseBody.Data.Instances.InstancesVO.Tags()
                        model.fromMap(value)
                        self.tags = model
                    }
                    if let value = dict["UsedQueue"] as? Int32 {
                        self.usedQueue = value
                    }
                    if let value = dict["UsedVhost"] as? Int32 {
                        self.usedVhost = value
                    }
                    if let value = dict["Version"] as? Int32 {
                        self.version = value
                    }
                }
            }
            public var instancesVO: [InstancePreivewResponseBody.Data.Instances.InstancesVO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instancesVO != nil {
                    var tmp : [Any] = []
                    for k in self.instancesVO! {
                        tmp.append(k.toMap())
                    }
                    map["InstancesVO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstancesVO"] as? [Any?] {
                    var tmp : [InstancePreivewResponseBody.Data.Instances.InstancesVO] = []
                    for v in value {
                        if v != nil {
                            var model = InstancePreivewResponseBody.Data.Instances.InstancesVO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.instancesVO = tmp
                }
            }
        }
        public var exchangeNum: Int32?

        public var instanceNum: Int32?

        public var instances: InstancePreivewResponseBody.Data.Instances?

        public var queueNum: Int32?

        public var vhostNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instances?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exchangeNum != nil {
                map["ExchangeNum"] = self.exchangeNum!
            }
            if self.instanceNum != nil {
                map["InstanceNum"] = self.instanceNum!
            }
            if self.instances != nil {
                map["Instances"] = self.instances?.toMap()
            }
            if self.queueNum != nil {
                map["QueueNum"] = self.queueNum!
            }
            if self.vhostNum != nil {
                map["VhostNum"] = self.vhostNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExchangeNum"] as? Int32 {
                self.exchangeNum = value
            }
            if let value = dict["InstanceNum"] as? Int32 {
                self.instanceNum = value
            }
            if let value = dict["Instances"] as? [String: Any?] {
                var model = InstancePreivewResponseBody.Data.Instances()
                model.fromMap(value)
                self.instances = model
            }
            if let value = dict["QueueNum"] as? Int32 {
                self.queueNum = value
            }
            if let value = dict["VhostNum"] as? Int32 {
                self.vhostNum = value
            }
        }
    }
    public var code: Int32?

    public var data: InstancePreivewResponseBody.Data?

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
            var model = InstancePreivewResponseBody.Data()
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

public class InstancePreivewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstancePreivewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InstancePreivewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExchangeRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var exchangeNamePrefix: String?

    public var instanceId: String?

    public var pageSize: Int32?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.exchangeNamePrefix != nil {
            map["ExchangeNamePrefix"] = self.exchangeNamePrefix!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["ExchangeNamePrefix"] as? String {
            self.exchangeNamePrefix = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class ListExchangeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class ExchangVO : Tea.TeaModel {
                public var attributes: String?

                public var autoDelete: Bool?

                public var canDelete: Bool?

                public var createTime: Int64?

                public var exchangeType: Int32?

                public var internal_: Bool?

                public var name: String?

                public var vhostName: String?

                public override init() {
                    super.init()
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
                    if self.autoDelete != nil {
                        map["AutoDelete"] = self.autoDelete!
                    }
                    if self.canDelete != nil {
                        map["CanDelete"] = self.canDelete!
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
                    if self.vhostName != nil {
                        map["VhostName"] = self.vhostName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Attributes"] as? String {
                        self.attributes = value
                    }
                    if let value = dict["AutoDelete"] as? Bool {
                        self.autoDelete = value
                    }
                    if let value = dict["CanDelete"] as? Bool {
                        self.canDelete = value
                    }
                    if let value = dict["CreateTime"] as? Int64 {
                        self.createTime = value
                    }
                    if let value = dict["ExchangeType"] as? Int32 {
                        self.exchangeType = value
                    }
                    if let value = dict["Internal"] as? Bool {
                        self.internal_ = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["VhostName"] as? String {
                        self.vhostName = value
                    }
                }
            }
            public var exchangVO: [ListExchangeResponseBody.Data.VoList.ExchangVO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exchangVO != nil {
                    var tmp : [Any] = []
                    for k in self.exchangVO! {
                        tmp.append(k.toMap())
                    }
                    map["ExchangVO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExchangVO"] as? [Any?] {
                    var tmp : [ListExchangeResponseBody.Data.VoList.ExchangVO] = []
                    for v in value {
                        if v != nil {
                            var model = ListExchangeResponseBody.Data.VoList.ExchangVO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.exchangVO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var voList: ListExchangeResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = ListExchangeResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: ListExchangeResponseBody.Data?

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
            var model = ListExchangeResponseBody.Data()
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

public class ListExchangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExchangeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListExchangeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExchangeDownstreamBindingsRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var exchangeName: String?

    public var instanceId: String?

    public var pageSize: Int32?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class ListExchangeDownstreamBindingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class BindingVO : Tea.TeaModel {
                public var argument: String?

                public var bindingKey: String?

                public var bindingType: Int32?

                public var dstName: String?

                public var srcName: String?

                public override init() {
                    super.init()
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
                    if self.dstName != nil {
                        map["DstName"] = self.dstName!
                    }
                    if self.srcName != nil {
                        map["SrcName"] = self.srcName!
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
                    if let value = dict["BindingType"] as? Int32 {
                        self.bindingType = value
                    }
                    if let value = dict["DstName"] as? String {
                        self.dstName = value
                    }
                    if let value = dict["SrcName"] as? String {
                        self.srcName = value
                    }
                }
            }
            public var bindingVO: [ListExchangeDownstreamBindingsResponseBody.Data.VoList.BindingVO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindingVO != nil {
                    var tmp : [Any] = []
                    for k in self.bindingVO! {
                        tmp.append(k.toMap())
                    }
                    map["BindingVO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindingVO"] as? [Any?] {
                    var tmp : [ListExchangeDownstreamBindingsResponseBody.Data.VoList.BindingVO] = []
                    for v in value {
                        if v != nil {
                            var model = ListExchangeDownstreamBindingsResponseBody.Data.VoList.BindingVO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bindingVO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var voList: ListExchangeDownstreamBindingsResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = ListExchangeDownstreamBindingsResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: ListExchangeDownstreamBindingsResponseBody.Data?

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
            var model = ListExchangeDownstreamBindingsResponseBody.Data()
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

public class ListExchangeDownstreamBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExchangeDownstreamBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListExchangeDownstreamBindingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExchangeUpstreamBindingsRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var exchangeName: String?

    public var instanceId: String?

    public var pageSize: Int32?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class ListExchangeUpstreamBindingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class BindingVO : Tea.TeaModel {
                public var argument: String?

                public var bindType: Int32?

                public var bindingKey: String?

                public var dstName: String?

                public var srcName: String?

                public override init() {
                    super.init()
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
                    if self.bindType != nil {
                        map["BindType"] = self.bindType!
                    }
                    if self.bindingKey != nil {
                        map["BindingKey"] = self.bindingKey!
                    }
                    if self.dstName != nil {
                        map["DstName"] = self.dstName!
                    }
                    if self.srcName != nil {
                        map["SrcName"] = self.srcName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Argument"] as? String {
                        self.argument = value
                    }
                    if let value = dict["BindType"] as? Int32 {
                        self.bindType = value
                    }
                    if let value = dict["BindingKey"] as? String {
                        self.bindingKey = value
                    }
                    if let value = dict["DstName"] as? String {
                        self.dstName = value
                    }
                    if let value = dict["SrcName"] as? String {
                        self.srcName = value
                    }
                }
            }
            public var bindingVO: [ListExchangeUpstreamBindingsResponseBody.Data.VoList.BindingVO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindingVO != nil {
                    var tmp : [Any] = []
                    for k in self.bindingVO! {
                        tmp.append(k.toMap())
                    }
                    map["BindingVO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindingVO"] as? [Any?] {
                    var tmp : [ListExchangeUpstreamBindingsResponseBody.Data.VoList.BindingVO] = []
                    for v in value {
                        if v != nil {
                            var model = ListExchangeUpstreamBindingsResponseBody.Data.VoList.BindingVO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bindingVO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var voList: ListExchangeUpstreamBindingsResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = ListExchangeUpstreamBindingsResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: ListExchangeUpstreamBindingsResponseBody.Data?

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
            var model = ListExchangeUpstreamBindingsResponseBody.Data()
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

public class ListExchangeUpstreamBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExchangeUpstreamBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListExchangeUpstreamBindingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class ListInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                public var tags: [ListInstanceResponseBody.Data.Instances.Tags.Tags]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
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
                    if let value = dict["tags"] as? [Any?] {
                        var tmp : [ListInstanceResponseBody.Data.Instances.Tags.Tags] = []
                        for v in value {
                            if v != nil {
                                var model = ListInstanceResponseBody.Data.Instances.Tags.Tags()
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
            public var autoRenew: Bool?

            public var classicEndpoint: String?

            public var expire: Int64?

            public var instanceId: String?

            public var instanceName: String?

            public var instanceType: String?

            public var maxEIPTPS: Int32?

            public var maxQueue: Int32?

            public var maxTPS: Int32?

            public var maxVhost: Int32?

            public var orderCreate: Int64?

            public var orderType: String?

            public var privateEndpoint: String?

            public var publicEndpoint: String?

            public var status: String?

            public var storageSize: Int32?

            public var supportEIP: Bool?

            public var tags: ListInstanceResponseBody.Data.Instances.Tags?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRenew != nil {
                    map["AutoRenew"] = self.autoRenew!
                }
                if self.classicEndpoint != nil {
                    map["ClassicEndpoint"] = self.classicEndpoint!
                }
                if self.expire != nil {
                    map["Expire"] = self.expire!
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
                if self.maxEIPTPS != nil {
                    map["MaxEIPTPS"] = self.maxEIPTPS!
                }
                if self.maxQueue != nil {
                    map["MaxQueue"] = self.maxQueue!
                }
                if self.maxTPS != nil {
                    map["MaxTPS"] = self.maxTPS!
                }
                if self.maxVhost != nil {
                    map["MaxVhost"] = self.maxVhost!
                }
                if self.orderCreate != nil {
                    map["OrderCreate"] = self.orderCreate!
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
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoRenew"] as? Bool {
                    self.autoRenew = value
                }
                if let value = dict["ClassicEndpoint"] as? String {
                    self.classicEndpoint = value
                }
                if let value = dict["Expire"] as? Int64 {
                    self.expire = value
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
                if let value = dict["MaxEIPTPS"] as? Int32 {
                    self.maxEIPTPS = value
                }
                if let value = dict["MaxQueue"] as? Int32 {
                    self.maxQueue = value
                }
                if let value = dict["MaxTPS"] as? Int32 {
                    self.maxTPS = value
                }
                if let value = dict["MaxVhost"] as? Int32 {
                    self.maxVhost = value
                }
                if let value = dict["OrderCreate"] as? Int64 {
                    self.orderCreate = value
                }
                if let value = dict["OrderType"] as? String {
                    self.orderType = value
                }
                if let value = dict["PrivateEndpoint"] as? String {
                    self.privateEndpoint = value
                }
                if let value = dict["PublicEndpoint"] as? String {
                    self.publicEndpoint = value
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
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListInstanceResponseBody.Data.Instances.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
            }
        }
        public var instances: [ListInstanceResponseBody.Data.Instances]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instances"] as? [Any?] {
                var tmp : [ListInstanceResponseBody.Data.Instances] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceResponseBody.Data.Instances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instances = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListInstanceResponseBody.Data?

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
            var model = ListInstanceResponseBody.Data()
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

public class ListInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceAlarmRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class ListInstanceAlarmResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class CommodityInstanceAlarmVO : Tea.TeaModel {
                public class AlarmVO : Tea.TeaModel {
                    public class AlarmDetails : Tea.TeaModel {
                        public class AlarmDetail : Tea.TeaModel {
                            public var alertState: String?

                            public var comparisonOperator: String?

                            public var contactGroups: String?

                            public var dimensions: String?

                            public var effectiveInterval: String?

                            public var enableState: Bool?

                            public var groupId: String?

                            public var groupName: String?

                            public var mailSubject: String?

                            public var metricName: String?

                            public var namespace: String?

                            public var noEffectiveInterval: String?

                            public var period: String?

                            public var resources: String?

                            public var ruleId: String?

                            public var ruleName: String?

                            public var silenceTime: String?

                            public var statistics: String?

                            public var threshold: String?

                            public var times: String?

                            public var webhook: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.alertState != nil {
                                    map["AlertState"] = self.alertState!
                                }
                                if self.comparisonOperator != nil {
                                    map["ComparisonOperator"] = self.comparisonOperator!
                                }
                                if self.contactGroups != nil {
                                    map["ContactGroups"] = self.contactGroups!
                                }
                                if self.dimensions != nil {
                                    map["Dimensions"] = self.dimensions!
                                }
                                if self.effectiveInterval != nil {
                                    map["EffectiveInterval"] = self.effectiveInterval!
                                }
                                if self.enableState != nil {
                                    map["EnableState"] = self.enableState!
                                }
                                if self.groupId != nil {
                                    map["GroupId"] = self.groupId!
                                }
                                if self.groupName != nil {
                                    map["GroupName"] = self.groupName!
                                }
                                if self.mailSubject != nil {
                                    map["MailSubject"] = self.mailSubject!
                                }
                                if self.metricName != nil {
                                    map["MetricName"] = self.metricName!
                                }
                                if self.namespace != nil {
                                    map["Namespace"] = self.namespace!
                                }
                                if self.noEffectiveInterval != nil {
                                    map["NoEffectiveInterval"] = self.noEffectiveInterval!
                                }
                                if self.period != nil {
                                    map["Period"] = self.period!
                                }
                                if self.resources != nil {
                                    map["Resources"] = self.resources!
                                }
                                if self.ruleId != nil {
                                    map["RuleId"] = self.ruleId!
                                }
                                if self.ruleName != nil {
                                    map["RuleName"] = self.ruleName!
                                }
                                if self.silenceTime != nil {
                                    map["SilenceTime"] = self.silenceTime!
                                }
                                if self.statistics != nil {
                                    map["Statistics"] = self.statistics!
                                }
                                if self.threshold != nil {
                                    map["Threshold"] = self.threshold!
                                }
                                if self.times != nil {
                                    map["Times"] = self.times!
                                }
                                if self.webhook != nil {
                                    map["Webhook"] = self.webhook!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["AlertState"] as? String {
                                    self.alertState = value
                                }
                                if let value = dict["ComparisonOperator"] as? String {
                                    self.comparisonOperator = value
                                }
                                if let value = dict["ContactGroups"] as? String {
                                    self.contactGroups = value
                                }
                                if let value = dict["Dimensions"] as? String {
                                    self.dimensions = value
                                }
                                if let value = dict["EffectiveInterval"] as? String {
                                    self.effectiveInterval = value
                                }
                                if let value = dict["EnableState"] as? Bool {
                                    self.enableState = value
                                }
                                if let value = dict["GroupId"] as? String {
                                    self.groupId = value
                                }
                                if let value = dict["GroupName"] as? String {
                                    self.groupName = value
                                }
                                if let value = dict["MailSubject"] as? String {
                                    self.mailSubject = value
                                }
                                if let value = dict["MetricName"] as? String {
                                    self.metricName = value
                                }
                                if let value = dict["Namespace"] as? String {
                                    self.namespace = value
                                }
                                if let value = dict["NoEffectiveInterval"] as? String {
                                    self.noEffectiveInterval = value
                                }
                                if let value = dict["Period"] as? String {
                                    self.period = value
                                }
                                if let value = dict["Resources"] as? String {
                                    self.resources = value
                                }
                                if let value = dict["RuleId"] as? String {
                                    self.ruleId = value
                                }
                                if let value = dict["RuleName"] as? String {
                                    self.ruleName = value
                                }
                                if let value = dict["SilenceTime"] as? String {
                                    self.silenceTime = value
                                }
                                if let value = dict["Statistics"] as? String {
                                    self.statistics = value
                                }
                                if let value = dict["Threshold"] as? String {
                                    self.threshold = value
                                }
                                if let value = dict["Times"] as? String {
                                    self.times = value
                                }
                                if let value = dict["Webhook"] as? String {
                                    self.webhook = value
                                }
                            }
                        }
                        public var alarmDetail: [ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO.AlarmVO.AlarmDetails.AlarmDetail]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.alarmDetail != nil {
                                var tmp : [Any] = []
                                for k in self.alarmDetail! {
                                    tmp.append(k.toMap())
                                }
                                map["AlarmDetail"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["AlarmDetail"] as? [Any?] {
                                var tmp : [ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO.AlarmVO.AlarmDetails.AlarmDetail] = []
                                for v in value {
                                    if v != nil {
                                        var model = ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO.AlarmVO.AlarmDetails.AlarmDetail()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.alarmDetail = tmp
                            }
                        }
                    }
                    public var alarmCount: Int32?

                    public var alarmDetails: ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO.AlarmVO.AlarmDetails?

                    public var hasConfigAlarm: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.alarmDetails?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.alarmCount != nil {
                            map["AlarmCount"] = self.alarmCount!
                        }
                        if self.alarmDetails != nil {
                            map["AlarmDetails"] = self.alarmDetails?.toMap()
                        }
                        if self.hasConfigAlarm != nil {
                            map["HasConfigAlarm"] = self.hasConfigAlarm!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AlarmCount"] as? Int32 {
                            self.alarmCount = value
                        }
                        if let value = dict["AlarmDetails"] as? [String: Any?] {
                            var model = ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO.AlarmVO.AlarmDetails()
                            model.fromMap(value)
                            self.alarmDetails = model
                        }
                        if let value = dict["HasConfigAlarm"] as? Bool {
                            self.hasConfigAlarm = value
                        }
                    }
                }
                public var alarmVO: ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO.AlarmVO?

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
                    try self.alarmVO?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alarmVO != nil {
                        map["AlarmVO"] = self.alarmVO?.toMap()
                    }
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
                    if let value = dict["AlarmVO"] as? [String: Any?] {
                        var model = ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO.AlarmVO()
                        model.fromMap(value)
                        self.alarmVO = model
                    }
                    if let value = dict["InstanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["InstanceName"] as? String {
                        self.instanceName = value
                    }
                }
            }
            public var commodityInstanceAlarmVO: [ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityInstanceAlarmVO != nil {
                    var tmp : [Any] = []
                    for k in self.commodityInstanceAlarmVO! {
                        tmp.append(k.toMap())
                    }
                    map["CommodityInstanceAlarmVO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommodityInstanceAlarmVO"] as? [Any?] {
                    var tmp : [ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO] = []
                    for v in value {
                        if v != nil {
                            var model = ListInstanceAlarmResponseBody.Data.VoList.CommodityInstanceAlarmVO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.commodityInstanceAlarmVO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var voList: ListInstanceAlarmResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = ListInstanceAlarmResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: ListInstanceAlarmResponseBody.Data?

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
            var model = ListInstanceAlarmResponseBody.Data()
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

public class ListInstanceAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceAlarmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstanceAlarmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLogstoreRequest : Tea.TeaModel {
    public var consoleSessionId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class ListLogstoreResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var logstores: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logstores != nil {
                map["Logstores"] = self.logstores!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Logstores"] as? [String] {
                self.logstores = value
            }
        }
    }
    public var code: Int32?

    public var data: ListLogstoreResponseBody.Data?

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
            var model = ListLogstoreResponseBody.Data()
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

public class ListLogstoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogstoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLogstoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class ListProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var projects: [String]?

        public override init() {
            super.init()
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
                map["Projects"] = self.projects!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Projects"] as? [String] {
                self.projects = value
            }
        }
    }
    public var code: Int32?

    public var data: ListProjectResponseBody.Data?

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
            var model = ListProjectResponseBody.Data()
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

public class ListProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQueueRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var instanceId: String?

    public var pageSize: Int32?

    public var queueNamePrefix: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueNamePrefix != nil {
            map["QueueNamePrefix"] = self.queueNamePrefix!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueNamePrefix"] as? String {
            self.queueNamePrefix = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class ListQueueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class QueueVO : Tea.TeaModel {
                public var accumulationCount: Int64?

                public var attributes: [String: Any]?

                public var autoDelete: Bool?

                public var canDelete: Bool?

                public var createTime: Int64?

                public var durable: Bool?

                public var exclusive: Bool?

                public var lastConsumeTime: Int64?

                public var name: String?

                public var vhostName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accumulationCount != nil {
                        map["AccumulationCount"] = self.accumulationCount!
                    }
                    if self.attributes != nil {
                        map["Attributes"] = self.attributes!
                    }
                    if self.autoDelete != nil {
                        map["AutoDelete"] = self.autoDelete!
                    }
                    if self.canDelete != nil {
                        map["CanDelete"] = self.canDelete!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.durable != nil {
                        map["Durable"] = self.durable!
                    }
                    if self.exclusive != nil {
                        map["Exclusive"] = self.exclusive!
                    }
                    if self.lastConsumeTime != nil {
                        map["LastConsumeTime"] = self.lastConsumeTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.vhostName != nil {
                        map["VhostName"] = self.vhostName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AccumulationCount"] as? Int64 {
                        self.accumulationCount = value
                    }
                    if let value = dict["Attributes"] as? [String: Any] {
                        self.attributes = value
                    }
                    if let value = dict["AutoDelete"] as? Bool {
                        self.autoDelete = value
                    }
                    if let value = dict["CanDelete"] as? Bool {
                        self.canDelete = value
                    }
                    if let value = dict["CreateTime"] as? Int64 {
                        self.createTime = value
                    }
                    if let value = dict["Durable"] as? Bool {
                        self.durable = value
                    }
                    if let value = dict["Exclusive"] as? Bool {
                        self.exclusive = value
                    }
                    if let value = dict["LastConsumeTime"] as? Int64 {
                        self.lastConsumeTime = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["VhostName"] as? String {
                        self.vhostName = value
                    }
                }
            }
            public var queueVO: [ListQueueResponseBody.Data.VoList.QueueVO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.queueVO != nil {
                    var tmp : [Any] = []
                    for k in self.queueVO! {
                        tmp.append(k.toMap())
                    }
                    map["QueueVO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["QueueVO"] as? [Any?] {
                    var tmp : [ListQueueResponseBody.Data.VoList.QueueVO] = []
                    for v in value {
                        if v != nil {
                            var model = ListQueueResponseBody.Data.VoList.QueueVO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.queueVO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var voList: ListQueueResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = ListQueueResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: ListQueueResponseBody.Data?

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
            var model = ListQueueResponseBody.Data()
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

public class ListQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQueueUpstreamBindingsRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var instanceId: String?

    public var pageSize: Int32?

    public var queueName: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class ListQueueUpstreamBindingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class BindingVO : Tea.TeaModel {
                public var argument: String?

                public var bindingKey: String?

                public var bindingType: Int32?

                public var dstName: String?

                public var srcName: String?

                public override init() {
                    super.init()
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
                    if self.dstName != nil {
                        map["DstName"] = self.dstName!
                    }
                    if self.srcName != nil {
                        map["SrcName"] = self.srcName!
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
                    if let value = dict["BindingType"] as? Int32 {
                        self.bindingType = value
                    }
                    if let value = dict["DstName"] as? String {
                        self.dstName = value
                    }
                    if let value = dict["SrcName"] as? String {
                        self.srcName = value
                    }
                }
            }
            public var bindingVO: [ListQueueUpstreamBindingsResponseBody.Data.VoList.BindingVO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindingVO != nil {
                    var tmp : [Any] = []
                    for k in self.bindingVO! {
                        tmp.append(k.toMap())
                    }
                    map["BindingVO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindingVO"] as? [Any?] {
                    var tmp : [ListQueueUpstreamBindingsResponseBody.Data.VoList.BindingVO] = []
                    for v in value {
                        if v != nil {
                            var model = ListQueueUpstreamBindingsResponseBody.Data.VoList.BindingVO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bindingVO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var voList: ListQueueUpstreamBindingsResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = ListQueueUpstreamBindingsResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: ListQueueUpstreamBindingsResponseBody.Data?

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
            var model = ListQueueUpstreamBindingsResponseBody.Data()
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

public class ListQueueUpstreamBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueueUpstreamBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListQueueUpstreamBindingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListStaticAccountsRequest : Tea.TeaModel {
    public var consoleSessionId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListStaticAccountsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String: Any]?

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
        if let value = dict["Data"] as? [String: Any] {
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

public class ListStaticAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStaticAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListStaticAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVhostRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var vhostNamePrefix: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vhostNamePrefix != nil {
            map["VhostNamePrefix"] = self.vhostNamePrefix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VhostNamePrefix"] as? String {
            self.vhostNamePrefix = value
        }
    }
}

public class ListVhostResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Vhosts : Tea.TeaModel {
            public var channelNum: Int32?

            public var connectionNum: Int32?

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
                if self.channelNum != nil {
                    map["ChannelNum"] = self.channelNum!
                }
                if self.connectionNum != nil {
                    map["ConnectionNum"] = self.connectionNum!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChannelNum"] as? Int32 {
                    self.channelNum = value
                }
                if let value = dict["ConnectionNum"] as? Int32 {
                    self.connectionNum = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var vhosts: [ListVhostResponseBody.Data.Vhosts]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vhosts != nil {
                var tmp : [Any] = []
                for k in self.vhosts! {
                    tmp.append(k.toMap())
                }
                map["Vhosts"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Vhosts"] as? [Any?] {
                var tmp : [ListVhostResponseBody.Data.Vhosts] = []
                for v in value {
                    if v != nil {
                        var model = ListVhostResponseBody.Data.Vhosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vhosts = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListVhostResponseBody.Data?

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
            var model = ListVhostResponseBody.Data()
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

public class ListVhostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVhostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVhostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MetadataRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
    }
}

public class MetadataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endpoint: String?

        public var hasPretendPermission: Bool?

        public var internalEndpoint: String?

        public var pretendUserId: String?

        public var userStatus: Int32?

        public override init() {
            super.init()
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
                map["Endpoint"] = self.endpoint!
            }
            if self.hasPretendPermission != nil {
                map["HasPretendPermission"] = self.hasPretendPermission!
            }
            if self.internalEndpoint != nil {
                map["InternalEndpoint"] = self.internalEndpoint!
            }
            if self.pretendUserId != nil {
                map["PretendUserId"] = self.pretendUserId!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["HasPretendPermission"] as? Bool {
                self.hasPretendPermission = value
            }
            if let value = dict["InternalEndpoint"] as? String {
                self.internalEndpoint = value
            }
            if let value = dict["PretendUserId"] as? String {
                self.pretendUserId = value
            }
            if let value = dict["UserStatus"] as? Int32 {
                self.userStatus = value
            }
        }
    }
    public var code: Int32?

    public var data: MetadataResponseBody.Data?

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
            var model = MetadataResponseBody.Data()
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

public class MetadataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MetadataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MetadataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PurgeQueueRequest : Tea.TeaModel {
    public var collina: String?

    public var consoleSessionId: String?

    public var instanceId: String?

    public var queueName: String?

    public var queueNames: [String: Any]?

    public var umidToken: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collina != nil {
            map["Collina"] = self.collina!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.queueNames != nil {
            map["QueueNames"] = self.queueNames!
        }
        if self.umidToken != nil {
            map["UmidToken"] = self.umidToken!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collina"] as? String {
            self.collina = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["QueueNames"] as? [String: Any] {
            self.queueNames = value
        }
        if let value = dict["UmidToken"] as? String {
            self.umidToken = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class PurgeQueueShrinkRequest : Tea.TeaModel {
    public var collina: String?

    public var consoleSessionId: String?

    public var instanceId: String?

    public var queueName: String?

    public var queueNamesShrink: String?

    public var umidToken: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collina != nil {
            map["Collina"] = self.collina!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.queueNamesShrink != nil {
            map["QueueNames"] = self.queueNamesShrink!
        }
        if self.umidToken != nil {
            map["UmidToken"] = self.umidToken!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collina"] as? String {
            self.collina = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["QueueNames"] as? String {
            self.queueNamesShrink = value
        }
        if let value = dict["UmidToken"] as? String {
            self.umidToken = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class PurgeQueueResponseBody : Tea.TeaModel {
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

public class PurgeQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurgeQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PurgeQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMessageByMessageIdRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var messageId: String?

    public var pageSize: Int32?

    public var queueName: String?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class QueryMessageByMessageIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public var appId: String?

            public var body: String?

            public var clusterId: String?

            public var contentEncoding: String?

            public var contentType: String?

            public var correlationId: String?

            public var deliveryMode: Int32?

            public var exchangeName: String?

            public var expiration: String?

            public var headers: String?

            public var immediate: Bool?

            public var mandatory: Bool?

            public var messageId: String?

            public var priority: Int32?

            public var processToken: String?

            public var reconsumeTimes: Int32?

            public var replyTo: String?

            public var routingKey: String?

            public var storeTimestamp: Int64?

            public var timestamp: Int64?

            public var type: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.body != nil {
                    map["Body"] = self.body!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.contentEncoding != nil {
                    map["ContentEncoding"] = self.contentEncoding!
                }
                if self.contentType != nil {
                    map["ContentType"] = self.contentType!
                }
                if self.correlationId != nil {
                    map["CorrelationId"] = self.correlationId!
                }
                if self.deliveryMode != nil {
                    map["DeliveryMode"] = self.deliveryMode!
                }
                if self.exchangeName != nil {
                    map["ExchangeName"] = self.exchangeName!
                }
                if self.expiration != nil {
                    map["Expiration"] = self.expiration!
                }
                if self.headers != nil {
                    map["Headers"] = self.headers!
                }
                if self.immediate != nil {
                    map["Immediate"] = self.immediate!
                }
                if self.mandatory != nil {
                    map["Mandatory"] = self.mandatory!
                }
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.processToken != nil {
                    map["ProcessToken"] = self.processToken!
                }
                if self.reconsumeTimes != nil {
                    map["ReconsumeTimes"] = self.reconsumeTimes!
                }
                if self.replyTo != nil {
                    map["ReplyTo"] = self.replyTo!
                }
                if self.routingKey != nil {
                    map["RoutingKey"] = self.routingKey!
                }
                if self.storeTimestamp != nil {
                    map["StoreTimestamp"] = self.storeTimestamp!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["Body"] as? String {
                    self.body = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["ContentEncoding"] as? String {
                    self.contentEncoding = value
                }
                if let value = dict["ContentType"] as? String {
                    self.contentType = value
                }
                if let value = dict["CorrelationId"] as? String {
                    self.correlationId = value
                }
                if let value = dict["DeliveryMode"] as? Int32 {
                    self.deliveryMode = value
                }
                if let value = dict["ExchangeName"] as? String {
                    self.exchangeName = value
                }
                if let value = dict["Expiration"] as? String {
                    self.expiration = value
                }
                if let value = dict["Headers"] as? String {
                    self.headers = value
                }
                if let value = dict["Immediate"] as? Bool {
                    self.immediate = value
                }
                if let value = dict["Mandatory"] as? Bool {
                    self.mandatory = value
                }
                if let value = dict["MessageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["ProcessToken"] as? String {
                    self.processToken = value
                }
                if let value = dict["ReconsumeTimes"] as? Int32 {
                    self.reconsumeTimes = value
                }
                if let value = dict["ReplyTo"] as? String {
                    self.replyTo = value
                }
                if let value = dict["RoutingKey"] as? String {
                    self.routingKey = value
                }
                if let value = dict["StoreTimestamp"] as? Int64 {
                    self.storeTimestamp = value
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var taskId: String?

        public var totalCount: Int32?

        public var voList: [QueryMessageByMessageIdResponseBody.Data.VoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                var tmp : [Any] = []
                for k in self.voList! {
                    tmp.append(k.toMap())
                }
                map["VoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [Any?] {
                var tmp : [QueryMessageByMessageIdResponseBody.Data.VoList] = []
                for v in value {
                    if v != nil {
                        var model = QueryMessageByMessageIdResponseBody.Data.VoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voList = tmp
            }
        }
    }
    public var code: Int32?

    public var data: QueryMessageByMessageIdResponseBody.Data?

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
            var model = QueryMessageByMessageIdResponseBody.Data()
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

public class QueryMessageByMessageIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMessageByMessageIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMessageByMessageIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMessageByQueueNameRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var consoleSessionId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var pageSize: Int32?

    public var queueName: String?

    public var taskId: String?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class QueryMessageByQueueNameResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoList : Tea.TeaModel {
            public class AmqpMessageVO : Tea.TeaModel {
                public var appId: String?

                public var body: String?

                public var clusterId: String?

                public var contentEncoding: String?

                public var contentType: String?

                public var correlationId: String?

                public var deliveryMode: Int32?

                public var exchangeName: String?

                public var expiration: String?

                public var headers: String?

                public var immediate: Bool?

                public var mandatory: Bool?

                public var messageId: String?

                public var priority: Int32?

                public var processToken: String?

                public var reconsumeTimes: Int32?

                public var replyTo: String?

                public var routingKey: String?

                public var storeTimestamp: Int64?

                public var timestamp: Int64?

                public var type: String?

                public var userId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appId != nil {
                        map["AppId"] = self.appId!
                    }
                    if self.body != nil {
                        map["Body"] = self.body!
                    }
                    if self.clusterId != nil {
                        map["ClusterId"] = self.clusterId!
                    }
                    if self.contentEncoding != nil {
                        map["ContentEncoding"] = self.contentEncoding!
                    }
                    if self.contentType != nil {
                        map["ContentType"] = self.contentType!
                    }
                    if self.correlationId != nil {
                        map["CorrelationId"] = self.correlationId!
                    }
                    if self.deliveryMode != nil {
                        map["DeliveryMode"] = self.deliveryMode!
                    }
                    if self.exchangeName != nil {
                        map["ExchangeName"] = self.exchangeName!
                    }
                    if self.expiration != nil {
                        map["Expiration"] = self.expiration!
                    }
                    if self.headers != nil {
                        map["Headers"] = self.headers!
                    }
                    if self.immediate != nil {
                        map["Immediate"] = self.immediate!
                    }
                    if self.mandatory != nil {
                        map["Mandatory"] = self.mandatory!
                    }
                    if self.messageId != nil {
                        map["MessageId"] = self.messageId!
                    }
                    if self.priority != nil {
                        map["Priority"] = self.priority!
                    }
                    if self.processToken != nil {
                        map["ProcessToken"] = self.processToken!
                    }
                    if self.reconsumeTimes != nil {
                        map["ReconsumeTimes"] = self.reconsumeTimes!
                    }
                    if self.replyTo != nil {
                        map["ReplyTo"] = self.replyTo!
                    }
                    if self.routingKey != nil {
                        map["RoutingKey"] = self.routingKey!
                    }
                    if self.storeTimestamp != nil {
                        map["StoreTimestamp"] = self.storeTimestamp!
                    }
                    if self.timestamp != nil {
                        map["Timestamp"] = self.timestamp!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AppId"] as? String {
                        self.appId = value
                    }
                    if let value = dict["Body"] as? String {
                        self.body = value
                    }
                    if let value = dict["ClusterId"] as? String {
                        self.clusterId = value
                    }
                    if let value = dict["ContentEncoding"] as? String {
                        self.contentEncoding = value
                    }
                    if let value = dict["ContentType"] as? String {
                        self.contentType = value
                    }
                    if let value = dict["CorrelationId"] as? String {
                        self.correlationId = value
                    }
                    if let value = dict["DeliveryMode"] as? Int32 {
                        self.deliveryMode = value
                    }
                    if let value = dict["ExchangeName"] as? String {
                        self.exchangeName = value
                    }
                    if let value = dict["Expiration"] as? String {
                        self.expiration = value
                    }
                    if let value = dict["Headers"] as? String {
                        self.headers = value
                    }
                    if let value = dict["Immediate"] as? Bool {
                        self.immediate = value
                    }
                    if let value = dict["Mandatory"] as? Bool {
                        self.mandatory = value
                    }
                    if let value = dict["MessageId"] as? String {
                        self.messageId = value
                    }
                    if let value = dict["Priority"] as? Int32 {
                        self.priority = value
                    }
                    if let value = dict["ProcessToken"] as? String {
                        self.processToken = value
                    }
                    if let value = dict["ReconsumeTimes"] as? Int32 {
                        self.reconsumeTimes = value
                    }
                    if let value = dict["ReplyTo"] as? String {
                        self.replyTo = value
                    }
                    if let value = dict["RoutingKey"] as? String {
                        self.routingKey = value
                    }
                    if let value = dict["StoreTimestamp"] as? Int64 {
                        self.storeTimestamp = value
                    }
                    if let value = dict["Timestamp"] as? Int64 {
                        self.timestamp = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["UserId"] as? String {
                        self.userId = value
                    }
                }
            }
            public var amqpMessageVO: [QueryMessageByQueueNameResponseBody.Data.VoList.AmqpMessageVO]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amqpMessageVO != nil {
                    var tmp : [Any] = []
                    for k in self.amqpMessageVO! {
                        tmp.append(k.toMap())
                    }
                    map["AmqpMessageVO"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AmqpMessageVO"] as? [Any?] {
                    var tmp : [QueryMessageByQueueNameResponseBody.Data.VoList.AmqpMessageVO] = []
                    for v in value {
                        if v != nil {
                            var model = QueryMessageByQueueNameResponseBody.Data.VoList.AmqpMessageVO()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.amqpMessageVO = tmp
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var taskId: String?

        public var totalCount: Int64?

        public var voList: QueryMessageByQueueNameResponseBody.Data.VoList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voList != nil {
                map["VoList"] = self.voList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["VoList"] as? [String: Any?] {
                var model = QueryMessageByQueueNameResponseBody.Data.VoList()
                model.fromMap(value)
                self.voList = model
            }
        }
    }
    public var code: Int32?

    public var data: QueryMessageByQueueNameResponseBody.Data?

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
            var model = QueryMessageByQueueNameResponseBody.Data()
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

public class QueryMessageByQueueNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMessageByQueueNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMessageByQueueNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseInstanceRequest : Tea.TeaModel {
    public var consoleSessionId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ReleaseInstanceResponseBody : Tea.TeaModel {
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

public class ReleaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReleaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendMessageRequest : Tea.TeaModel {
    public var body: String?

    public var consoleSessionId: String?

    public var exchangeName: String?

    public var instanceId: String?

    public var messageId: String?

    public var props: String?

    public var routingKey: String?

    public var vhostName: String?

    public override init() {
        super.init()
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
            map["Body"] = self.body!
        }
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.exchangeName != nil {
            map["ExchangeName"] = self.exchangeName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.props != nil {
            map["Props"] = self.props!
        }
        if self.routingKey != nil {
            map["RoutingKey"] = self.routingKey!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["ExchangeName"] as? String {
            self.exchangeName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["Props"] as? String {
            self.props = value
        }
        if let value = dict["RoutingKey"] as? String {
            self.routingKey = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class SendMessageResponseBody : Tea.TeaModel {
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

public class SendMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendMessageCopyRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var processToken: String?

    public var queueName: String?

    public var vhostName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.processToken != nil {
            map["ProcessToken"] = self.processToken!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProcessToken"] as? String {
            self.processToken = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class SendMessageCopyResponseBody : Tea.TeaModel {
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

public class SendMessageCopyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMessageCopyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendMessageCopyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindRequest : Tea.TeaModel {
    public var bindingKey: String?

    public var bindingType: Int32?

    public var consoleSessionId: String?

    public var dstName: String?

    public var instanceId: String?

    public var srcName: String?

    public var vhostName: String?

    public override init() {
        super.init()
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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.dstName != nil {
            map["DstName"] = self.dstName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.srcName != nil {
            map["SrcName"] = self.srcName!
        }
        if self.vhostName != nil {
            map["VhostName"] = self.vhostName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindingKey"] as? String {
            self.bindingKey = value
        }
        if let value = dict["BindingType"] as? Int32 {
            self.bindingType = value
        }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["DstName"] as? String {
            self.dstName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SrcName"] as? String {
            self.srcName = value
        }
        if let value = dict["VhostName"] as? String {
            self.vhostName = value
        }
    }
}

public class UnbindResponseBody : Tea.TeaModel {
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

public class UnbindResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public var consoleSessionId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
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
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
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

public class UpdateInstanceRetryStrategyRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var retryInterval: Int32?

    public var retryTimes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.retryInterval != nil {
            map["RetryInterval"] = self.retryInterval!
        }
        if self.retryTimes != nil {
            map["RetryTimes"] = self.retryTimes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RetryInterval"] as? Int32 {
            self.retryInterval = value
        }
        if let value = dict["RetryTimes"] as? Int32 {
            self.retryTimes = value
        }
    }
}

public class UpdateInstanceRetryStrategyResponseBody : Tea.TeaModel {
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

public class UpdateInstanceRetryStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceRetryStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceRetryStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServerlessSwitchRequest : Tea.TeaModel {
    public var consoleSessionId: String?

    public var instanceId: String?

    public var serverlessSwitch: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.serverlessSwitch != nil {
            map["ServerlessSwitch"] = self.serverlessSwitch!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ServerlessSwitch"] as? Bool {
            self.serverlessSwitch = value
        }
    }
}

public class UpdateServerlessSwitchResponseBody : Tea.TeaModel {
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

public class UpdateServerlessSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServerlessSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateServerlessSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeLimitsRequest : Tea.TeaModel {
    public var consoleSessionId: String?

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
        if self.consoleSessionId != nil {
            map["ConsoleSessionId"] = self.consoleSessionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsoleSessionId"] as? String {
            self.consoleSessionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpgradeLimitsResponseBody : Tea.TeaModel {
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

public class UpgradeLimitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeLimitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeLimitsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
