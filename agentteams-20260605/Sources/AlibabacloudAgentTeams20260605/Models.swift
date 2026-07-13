import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BindIdentityProviderRequest : Tea.TeaModel {
    public var clientToken: String?

    public var identityProviderType: String?

    public var idpMetadata: String?

    public var instanceId: String?

    public var loginEnabled: Bool?

    public var syncEnabled: Bool?

    public override init() {
        super.init()
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
        if self.identityProviderType != nil {
            map["IdentityProviderType"] = self.identityProviderType!
        }
        if self.idpMetadata != nil {
            map["IdpMetadata"] = self.idpMetadata!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.loginEnabled != nil {
            map["LoginEnabled"] = self.loginEnabled!
        }
        if self.syncEnabled != nil {
            map["SyncEnabled"] = self.syncEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["IdentityProviderType"] as? String {
            self.identityProviderType = value
        }
        if let value = dict["IdpMetadata"] as? String {
            self.idpMetadata = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LoginEnabled"] as? Bool {
            self.loginEnabled = value
        }
        if let value = dict["SyncEnabled"] as? Bool {
            self.syncEnabled = value
        }
    }
}

public class BindIdentityProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var identityProviderType: String?

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
            if self.identityProviderType != nil {
                map["IdentityProviderType"] = self.identityProviderType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IdentityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
        }
    }
    public var code: String?

    public var data: BindIdentityProviderResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindIdentityProviderResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class BindIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigureNatGatewayRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var eipAllocationId: String?

    public var eipBandwidth: Int32?

    public var instanceId: String?

    public var natGatewayInstanceId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.eipAllocationId != nil {
            map["EipAllocationId"] = self.eipAllocationId!
        }
        if self.eipBandwidth != nil {
            map["EipBandwidth"] = self.eipBandwidth!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.natGatewayInstanceId != nil {
            map["NatGatewayInstanceId"] = self.natGatewayInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EipAllocationId"] as? String {
            self.eipAllocationId = value
        }
        if let value = dict["EipBandwidth"] as? Int32 {
            self.eipBandwidth = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NatGatewayInstanceId"] as? String {
            self.natGatewayInstanceId = value
        }
    }
}

public class ConfigureNatGatewayResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
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

public class ConfigureNatGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigureNatGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigureNatGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCredentialRequest : Tea.TeaModel {
    public var apiKey: String?

    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

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
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var instanceId: String?

        public var name: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: CreateCredentialResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateCredentialResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class CreateCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var vSwitchId: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var clientToken: String?

    public var instanceName: String?

    public var instanceSpec: String?

    public var networkType: String?

    public var paymentType: String?

    public var vpcId: String?

    public var zones: [CreateInstanceRequest.Zones]?

    public override init() {
        super.init()
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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceSpec != nil {
            map["InstanceSpec"] = self.instanceSpec!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceSpec"] as? String {
            self.instanceSpec = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["Zones"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Zones] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Zones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zones = tmp
        }
    }
}

public class CreateInstanceShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceName: String?

    public var instanceSpec: String?

    public var networkType: String?

    public var paymentType: String?

    public var vpcId: String?

    public var zonesShrink: String?

    public override init() {
        super.init()
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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceSpec != nil {
            map["InstanceSpec"] = self.instanceSpec!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zonesShrink != nil {
            map["Zones"] = self.zonesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceSpec"] as? String {
            self.instanceSpec = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["Zones"] as? String {
            self.zonesShrink = value
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
        }
    }
    public var code: String?

    public var data: CreateInstanceResponseBody.Data?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

public class CreateMcpRequest : Tea.TeaModel {
    public var addresses: [String]?

    public var authConfig: String?

    public var authEnabled: Bool?

    public var clientToken: String?

    public var createType: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var protocol_: String?

    public var swaggerConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            map["Addresses"] = self.addresses!
        }
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig!
        }
        if self.authEnabled != nil {
            map["AuthEnabled"] = self.authEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.createType != nil {
            map["CreateType"] = self.createType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.swaggerConfig != nil {
            map["SwaggerConfig"] = self.swaggerConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addresses"] as? [String] {
            self.addresses = value
        }
        if let value = dict["AuthConfig"] as? String {
            self.authConfig = value
        }
        if let value = dict["AuthEnabled"] as? Bool {
            self.authEnabled = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CreateType"] as? String {
            self.createType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["SwaggerConfig"] as? String {
            self.swaggerConfig = value
        }
    }
}

public class CreateMcpShrinkRequest : Tea.TeaModel {
    public var addressesShrink: String?

    public var authConfig: String?

    public var authEnabled: Bool?

    public var clientToken: String?

    public var createType: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var protocol_: String?

    public var swaggerConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressesShrink != nil {
            map["Addresses"] = self.addressesShrink!
        }
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig!
        }
        if self.authEnabled != nil {
            map["AuthEnabled"] = self.authEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.createType != nil {
            map["CreateType"] = self.createType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.swaggerConfig != nil {
            map["SwaggerConfig"] = self.swaggerConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addresses"] as? String {
            self.addressesShrink = value
        }
        if let value = dict["AuthConfig"] as? String {
            self.authConfig = value
        }
        if let value = dict["AuthEnabled"] as? Bool {
            self.authEnabled = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CreateType"] as? String {
            self.createType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["SwaggerConfig"] as? String {
            self.swaggerConfig = value
        }
    }
}

public class CreateMcpResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var addresses: [String]?

        public var createType: String?

        public var deployStatus: String?

        public var description_: String?

        public var id: String?

        public var mcpServerConfig: String?

        public var name: String?

        public var protocol_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["Addresses"] = self.addresses!
            }
            if self.createType != nil {
                map["CreateType"] = self.createType!
            }
            if self.deployStatus != nil {
                map["DeployStatus"] = self.deployStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mcpServerConfig != nil {
                map["McpServerConfig"] = self.mcpServerConfig!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Addresses"] as? [String] {
                self.addresses = value
            }
            if let value = dict["CreateType"] as? String {
                self.createType = value
            }
            if let value = dict["DeployStatus"] as? String {
                self.deployStatus = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["McpServerConfig"] as? String {
                self.mcpServerConfig = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var code: String?

    public var data: CreateMcpResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateMcpResponseBody.Data()
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

public class CreateMcpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var protocols: [String]?

    public var provider: String?

    public var providerId: String?

    public var providerName: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.protocols != nil {
            map["Protocols"] = self.protocols!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Protocols"] as? [String] {
            self.protocols = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
        if let value = dict["ProviderName"] as? String {
            self.providerName = value
        }
    }
}

public class CreateModelShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var protocolsShrink: String?

    public var provider: String?

    public var providerId: String?

    public var providerName: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.protocolsShrink != nil {
            map["Protocols"] = self.protocolsShrink!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Protocols"] as? String {
            self.protocolsShrink = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
        if let value = dict["ProviderName"] as? String {
            self.providerName = value
        }
    }
}

public class CreateModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int64?

        public var description_: String?

        public var id: String?

        public var instanceId: String?

        public var name: String?

        public var protocols: [String]?

        public var provider: String?

        public var providerName: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Protocols"] as? [String] {
                self.protocols = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
            if let value = dict["ProviderName"] as? String {
                self.providerName = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: CreateModelResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateModelResponseBody.Data()
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

public class CreateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelProviderRequest : Tea.TeaModel {
    public var address: String?

    public var apiKeys: [String]?

    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var protocols: [String]?

    public var provider: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.apiKeys != nil {
            map["ApiKeys"] = self.apiKeys!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.protocols != nil {
            map["Protocols"] = self.protocols!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["ApiKeys"] as? [String] {
            self.apiKeys = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Protocols"] as? [String] {
            self.protocols = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
    }
}

public class CreateModelProviderShrinkRequest : Tea.TeaModel {
    public var address: String?

    public var apiKeysShrink: String?

    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var protocolsShrink: String?

    public var provider: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.apiKeysShrink != nil {
            map["ApiKeys"] = self.apiKeysShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.protocolsShrink != nil {
            map["Protocols"] = self.protocolsShrink!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["ApiKeys"] as? String {
            self.apiKeysShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Protocols"] as? String {
            self.protocolsShrink = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
    }
}

public class CreateModelProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var address: String?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var protocols: [String]?

        public var provider: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Protocols"] as? [String] {
                self.protocols = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
        }
    }
    public var code: String?

    public var data: CreateModelProviderResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateModelProviderResponseBody.Data()
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

public class CreateModelProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateModelProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceEndpointRequest : Tea.TeaModel {
    public var certIdentifier: String?

    public var clientToken: String?

    public var component: String?

    public var domain: String?

    public var instanceId: String?

    public var resourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.component != nil {
            map["Component"] = self.component!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Component"] as? String {
            self.component = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
    }
}

public class CreateServiceEndpointResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endpointId: String?

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
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: CreateServiceEndpointResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateServiceEndpointResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class CreateServiceEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateServiceEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTeamRequest : Tea.TeaModel {
    public class TeamMembers : Tea.TeaModel {
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
    public var adminName: String?

    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var teamMembers: [CreateTeamRequest.TeamMembers]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminName != nil {
            map["AdminName"] = self.adminName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.teamMembers != nil {
            var tmp : [Any] = []
            for k in self.teamMembers! {
                tmp.append(k.toMap())
            }
            map["TeamMembers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminName"] as? String {
            self.adminName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TeamMembers"] as? [Any?] {
            var tmp : [CreateTeamRequest.TeamMembers] = []
            for v in value {
                if v != nil {
                    var model = CreateTeamRequest.TeamMembers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.teamMembers = tmp
        }
    }
}

public class CreateTeamShrinkRequest : Tea.TeaModel {
    public var adminName: String?

    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var teamMembersShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminName != nil {
            map["AdminName"] = self.adminName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.teamMembersShrink != nil {
            map["TeamMembers"] = self.teamMembersShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminName"] as? String {
            self.adminName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TeamMembers"] as? String {
            self.teamMembersShrink = value
        }
    }
}

public class CreateTeamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TeamMembers : Tea.TeaModel {
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
        public var adminName: String?

        public var description_: String?

        public var instanceId: String?

        public var name: String?

        public var teamMembers: [CreateTeamResponseBody.Data.TeamMembers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminName != nil {
                map["AdminName"] = self.adminName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.teamMembers != nil {
                var tmp : [Any] = []
                for k in self.teamMembers! {
                    tmp.append(k.toMap())
                }
                map["TeamMembers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdminName"] as? String {
                self.adminName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["TeamMembers"] as? [Any?] {
                var tmp : [CreateTeamResponseBody.Data.TeamMembers] = []
                for v in value {
                    if v != nil {
                        var model = CreateTeamResponseBody.Data.TeamMembers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.teamMembers = tmp
            }
        }
    }
    public var code: String?

    public var data: CreateTeamResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateTeamResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class CreateTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTeamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public var authMethod: String?

    public var clientToken: String?

    public var displayName: String?

    public var email: String?

    public var instanceId: String?

    public var name: String?

    public var note: String?

    public var password: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMethod != nil {
            map["AuthMethod"] = self.authMethod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.note != nil {
            map["Note"] = self.note!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMethod"] as? String {
            self.authMethod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Note"] as? String {
            self.note = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authMethod: String?

        public var displayName: String?

        public var email: String?

        public var initialPassword: String?

        public var instanceId: String?

        public var name: String?

        public var note: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authMethod != nil {
                map["AuthMethod"] = self.authMethod!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.initialPassword != nil {
                map["InitialPassword"] = self.initialPassword!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthMethod"] as? String {
                self.authMethod = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["InitialPassword"] as? String {
                self.initialPassword = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
        }
    }
    public var code: String?

    public var data: CreateUserResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class CreateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkerRequest : Tea.TeaModel {
    public class Channels : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var cardTemplateId: String?

            public var clientId: String?

            public var extension_: String?

            public var messageType: String?

            public var robotCode: String?

            public var showThinking: Bool?

            public var showToolCalls: Bool?

            public var streamingEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cardTemplateId != nil {
                    map["CardTemplateId"] = self.cardTemplateId!
                }
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.messageType != nil {
                    map["MessageType"] = self.messageType!
                }
                if self.robotCode != nil {
                    map["RobotCode"] = self.robotCode!
                }
                if self.showThinking != nil {
                    map["ShowThinking"] = self.showThinking!
                }
                if self.showToolCalls != nil {
                    map["ShowToolCalls"] = self.showToolCalls!
                }
                if self.streamingEnabled != nil {
                    map["StreamingEnabled"] = self.streamingEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CardTemplateId"] as? String {
                    self.cardTemplateId = value
                }
                if let value = dict["ClientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["Extension"] as? String {
                    self.extension_ = value
                }
                if let value = dict["MessageType"] as? String {
                    self.messageType = value
                }
                if let value = dict["RobotCode"] as? String {
                    self.robotCode = value
                }
                if let value = dict["ShowThinking"] as? Bool {
                    self.showThinking = value
                }
                if let value = dict["ShowToolCalls"] as? Bool {
                    self.showToolCalls = value
                }
                if let value = dict["StreamingEnabled"] as? Bool {
                    self.streamingEnabled = value
                }
            }
        }
        public class Secrets : Tea.TeaModel {
            public var clientSecret: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clientSecret != nil {
                    map["ClientSecret"] = self.clientSecret!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClientSecret"] as? String {
                    self.clientSecret = value
                }
            }
        }
        public var config: CreateWorkerRequest.Channels.Config?

        public var enabled: Bool?

        public var secrets: CreateWorkerRequest.Channels.Secrets?

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
            try self.secrets?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.secrets != nil {
                map["Secrets"] = self.secrets?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? [String: Any?] {
                var model = CreateWorkerRequest.Channels.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["Secrets"] as? [String: Any?] {
                var model = CreateWorkerRequest.Channels.Secrets()
                model.fromMap(value)
                self.secrets = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Credentials : Tea.TeaModel {
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
    public class Groups : Tea.TeaModel {
        public var name: String?

        public var role: String?

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
            if self.role != nil {
                map["Role"] = self.role!
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
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class LimitConfig : Tea.TeaModel {
        public var limitType: String?

        public var periodType: String?

        public var usageLimit: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.limitType != nil {
                map["LimitType"] = self.limitType!
            }
            if self.periodType != nil {
                map["PeriodType"] = self.periodType!
            }
            if self.usageLimit != nil {
                map["UsageLimit"] = self.usageLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LimitType"] as? String {
                self.limitType = value
            }
            if let value = dict["PeriodType"] as? String {
                self.periodType = value
            }
            if let value = dict["UsageLimit"] as? Int64 {
                self.usageLimit = value
            }
        }
    }
    public class McpServers : Tea.TeaModel {
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
    public class Model : Tea.TeaModel {
        public var modelName: String?

        public var modelProvider: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelProvider != nil {
                map["ModelProvider"] = self.modelProvider!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModelName"] as? String {
                self.modelName = value
            }
            if let value = dict["ModelProvider"] as? String {
                self.modelProvider = value
            }
        }
    }
    public class Skills : Tea.TeaModel {
        public var label: String?

        public var name: String?

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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class Subagents : Tea.TeaModel {
        public class Skills : Tea.TeaModel {
            public var label: String?

            public var name: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agents: String?

        public var skills: [CreateWorkerRequest.Subagents.Skills]?

        public var subagentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agents != nil {
                map["Agents"] = self.agents!
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["Skills"] = tmp
            }
            if self.subagentId != nil {
                map["SubagentId"] = self.subagentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agents"] as? String {
                self.agents = value
            }
            if let value = dict["Skills"] as? [Any?] {
                var tmp : [CreateWorkerRequest.Subagents.Skills] = []
                for v in value {
                    if v != nil {
                        var model = CreateWorkerRequest.Subagents.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["SubagentId"] as? String {
                self.subagentId = value
            }
        }
    }
    public class Template : Tea.TeaModel {
        public var label: String?

        public var name: String?

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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var agentType: String?

    public var agents: String?

    public var channels: [CreateWorkerRequest.Channels]?

    public var clientToken: String?

    public var credentials: [CreateWorkerRequest.Credentials]?

    public var deployType: String?

    public var groups: [CreateWorkerRequest.Groups]?

    public var instanceId: String?

    public var limitConfig: CreateWorkerRequest.LimitConfig?

    public var mcpServers: [CreateWorkerRequest.McpServers]?

    public var model: CreateWorkerRequest.Model?

    public var name: String?

    public var skills: [CreateWorkerRequest.Skills]?

    public var soul: String?

    public var subagents: [CreateWorkerRequest.Subagents]?

    public var template: CreateWorkerRequest.Template?

    public var versionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.limitConfig?.validate()
        try self.model?.validate()
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.agents != nil {
            map["Agents"] = self.agents!
        }
        if self.channels != nil {
            var tmp : [Any] = []
            for k in self.channels! {
                tmp.append(k.toMap())
            }
            map["Channels"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.credentials != nil {
            var tmp : [Any] = []
            for k in self.credentials! {
                tmp.append(k.toMap())
            }
            map["Credentials"] = tmp
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.limitConfig != nil {
            map["LimitConfig"] = self.limitConfig?.toMap()
        }
        if self.mcpServers != nil {
            var tmp : [Any] = []
            for k in self.mcpServers! {
                tmp.append(k.toMap())
            }
            map["McpServers"] = tmp
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skills != nil {
            var tmp : [Any] = []
            for k in self.skills! {
                tmp.append(k.toMap())
            }
            map["Skills"] = tmp
        }
        if self.soul != nil {
            map["Soul"] = self.soul!
        }
        if self.subagents != nil {
            var tmp : [Any] = []
            for k in self.subagents! {
                tmp.append(k.toMap())
            }
            map["Subagents"] = tmp
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentType"] as? String {
            self.agentType = value
        }
        if let value = dict["Agents"] as? String {
            self.agents = value
        }
        if let value = dict["Channels"] as? [Any?] {
            var tmp : [CreateWorkerRequest.Channels] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkerRequest.Channels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.channels = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Credentials"] as? [Any?] {
            var tmp : [CreateWorkerRequest.Credentials] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkerRequest.Credentials()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.credentials = tmp
        }
        if let value = dict["DeployType"] as? String {
            self.deployType = value
        }
        if let value = dict["Groups"] as? [Any?] {
            var tmp : [CreateWorkerRequest.Groups] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkerRequest.Groups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groups = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LimitConfig"] as? [String: Any?] {
            var model = CreateWorkerRequest.LimitConfig()
            model.fromMap(value)
            self.limitConfig = model
        }
        if let value = dict["McpServers"] as? [Any?] {
            var tmp : [CreateWorkerRequest.McpServers] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkerRequest.McpServers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mcpServers = tmp
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = CreateWorkerRequest.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Skills"] as? [Any?] {
            var tmp : [CreateWorkerRequest.Skills] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkerRequest.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["Soul"] as? String {
            self.soul = value
        }
        if let value = dict["Subagents"] as? [Any?] {
            var tmp : [CreateWorkerRequest.Subagents] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkerRequest.Subagents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subagents = tmp
        }
        if let value = dict["Template"] as? [String: Any?] {
            var model = CreateWorkerRequest.Template()
            model.fromMap(value)
            self.template = model
        }
        if let value = dict["VersionCode"] as? String {
            self.versionCode = value
        }
    }
}

public class CreateWorkerShrinkRequest : Tea.TeaModel {
    public var agentType: String?

    public var agents: String?

    public var channelsShrink: String?

    public var clientToken: String?

    public var credentialsShrink: String?

    public var deployType: String?

    public var groupsShrink: String?

    public var instanceId: String?

    public var limitConfigShrink: String?

    public var mcpServersShrink: String?

    public var modelShrink: String?

    public var name: String?

    public var skillsShrink: String?

    public var soul: String?

    public var subagentsShrink: String?

    public var templateShrink: String?

    public var versionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.agents != nil {
            map["Agents"] = self.agents!
        }
        if self.channelsShrink != nil {
            map["Channels"] = self.channelsShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.credentialsShrink != nil {
            map["Credentials"] = self.credentialsShrink!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.groupsShrink != nil {
            map["Groups"] = self.groupsShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.limitConfigShrink != nil {
            map["LimitConfig"] = self.limitConfigShrink!
        }
        if self.mcpServersShrink != nil {
            map["McpServers"] = self.mcpServersShrink!
        }
        if self.modelShrink != nil {
            map["Model"] = self.modelShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skillsShrink != nil {
            map["Skills"] = self.skillsShrink!
        }
        if self.soul != nil {
            map["Soul"] = self.soul!
        }
        if self.subagentsShrink != nil {
            map["Subagents"] = self.subagentsShrink!
        }
        if self.templateShrink != nil {
            map["Template"] = self.templateShrink!
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentType"] as? String {
            self.agentType = value
        }
        if let value = dict["Agents"] as? String {
            self.agents = value
        }
        if let value = dict["Channels"] as? String {
            self.channelsShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Credentials"] as? String {
            self.credentialsShrink = value
        }
        if let value = dict["DeployType"] as? String {
            self.deployType = value
        }
        if let value = dict["Groups"] as? String {
            self.groupsShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LimitConfig"] as? String {
            self.limitConfigShrink = value
        }
        if let value = dict["McpServers"] as? String {
            self.mcpServersShrink = value
        }
        if let value = dict["Model"] as? String {
            self.modelShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Skills"] as? String {
            self.skillsShrink = value
        }
        if let value = dict["Soul"] as? String {
            self.soul = value
        }
        if let value = dict["Subagents"] as? String {
            self.subagentsShrink = value
        }
        if let value = dict["Template"] as? String {
            self.templateShrink = value
        }
        if let value = dict["VersionCode"] as? String {
            self.versionCode = value
        }
    }
}

public class CreateWorkerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Credentials : Tea.TeaModel {
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
        public class Groups : Tea.TeaModel {
            public var name: String?

            public var role: String?

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
                if self.role != nil {
                    map["Role"] = self.role!
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
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class LimitConfig : Tea.TeaModel {
            public var limitType: String?

            public var periodType: String?

            public var usageLimit: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                if self.periodType != nil {
                    map["PeriodType"] = self.periodType!
                }
                if self.usageLimit != nil {
                    map["UsageLimit"] = self.usageLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LimitType"] as? String {
                    self.limitType = value
                }
                if let value = dict["PeriodType"] as? String {
                    self.periodType = value
                }
                if let value = dict["UsageLimit"] as? Int64 {
                    self.usageLimit = value
                }
            }
        }
        public class McpServers : Tea.TeaModel {
            public var name: String?

            public var transport: String?

            public var url: String?

            public override init() {
                super.init()
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
                if self.transport != nil {
                    map["Transport"] = self.transport!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Transport"] as? String {
                    self.transport = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Model : Tea.TeaModel {
            public var modelName: String?

            public var modelProvider: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelProvider != nil {
                    map["ModelProvider"] = self.modelProvider!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["ModelProvider"] as? String {
                    self.modelProvider = value
                }
            }
        }
        public class Skills : Tea.TeaModel {
            public var label: String?

            public var name: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public var label: String?

            public var name: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agentType: String?

        public var agents: String?

        public var credentials: [CreateWorkerResponseBody.Data.Credentials]?

        public var deployType: String?

        public var groups: [CreateWorkerResponseBody.Data.Groups]?

        public var instanceId: String?

        public var limitConfig: CreateWorkerResponseBody.Data.LimitConfig?

        public var mcpServers: [CreateWorkerResponseBody.Data.McpServers]?

        public var model: CreateWorkerResponseBody.Data.Model?

        public var name: String?

        public var skills: [CreateWorkerResponseBody.Data.Skills]?

        public var soul: String?

        public var startTime: String?

        public var status: String?

        public var template: CreateWorkerResponseBody.Data.Template?

        public var versionCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.limitConfig?.validate()
            try self.model?.validate()
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentType != nil {
                map["AgentType"] = self.agentType!
            }
            if self.agents != nil {
                map["Agents"] = self.agents!
            }
            if self.credentials != nil {
                var tmp : [Any] = []
                for k in self.credentials! {
                    tmp.append(k.toMap())
                }
                map["Credentials"] = tmp
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.limitConfig != nil {
                map["LimitConfig"] = self.limitConfig?.toMap()
            }
            if self.mcpServers != nil {
                var tmp : [Any] = []
                for k in self.mcpServers! {
                    tmp.append(k.toMap())
                }
                map["McpServers"] = tmp
            }
            if self.model != nil {
                map["Model"] = self.model?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["Skills"] = tmp
            }
            if self.soul != nil {
                map["Soul"] = self.soul!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.template != nil {
                map["Template"] = self.template?.toMap()
            }
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentType"] as? String {
                self.agentType = value
            }
            if let value = dict["Agents"] as? String {
                self.agents = value
            }
            if let value = dict["Credentials"] as? [Any?] {
                var tmp : [CreateWorkerResponseBody.Data.Credentials] = []
                for v in value {
                    if v != nil {
                        var model = CreateWorkerResponseBody.Data.Credentials()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.credentials = tmp
            }
            if let value = dict["DeployType"] as? String {
                self.deployType = value
            }
            if let value = dict["Groups"] as? [Any?] {
                var tmp : [CreateWorkerResponseBody.Data.Groups] = []
                for v in value {
                    if v != nil {
                        var model = CreateWorkerResponseBody.Data.Groups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groups = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LimitConfig"] as? [String: Any?] {
                var model = CreateWorkerResponseBody.Data.LimitConfig()
                model.fromMap(value)
                self.limitConfig = model
            }
            if let value = dict["McpServers"] as? [Any?] {
                var tmp : [CreateWorkerResponseBody.Data.McpServers] = []
                for v in value {
                    if v != nil {
                        var model = CreateWorkerResponseBody.Data.McpServers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mcpServers = tmp
            }
            if let value = dict["Model"] as? [String: Any?] {
                var model = CreateWorkerResponseBody.Data.Model()
                model.fromMap(value)
                self.model = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Skills"] as? [Any?] {
                var tmp : [CreateWorkerResponseBody.Data.Skills] = []
                for v in value {
                    if v != nil {
                        var model = CreateWorkerResponseBody.Data.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["Soul"] as? String {
                self.soul = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Template"] as? [String: Any?] {
                var model = CreateWorkerResponseBody.Data.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["VersionCode"] as? String {
                self.versionCode = value
            }
        }
    }
    public var code: String?

    public var data: CreateWorkerResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateWorkerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class CreateWorkerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWorkerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkerBootstrapTokenRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var networkType: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
    }
}

public class CreateWorkerBootstrapTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Cms : Tea.TeaModel {
            public var endpoint: String?

            public var licenseKey: String?

            public var workspace: String?

            public override init() {
                super.init()
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
                if self.licenseKey != nil {
                    map["LicenseKey"] = self.licenseKey!
                }
                if self.workspace != nil {
                    map["Workspace"] = self.workspace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["LicenseKey"] as? String {
                    self.licenseKey = value
                }
                if let value = dict["Workspace"] as? String {
                    self.workspace = value
                }
            }
        }
        public var bootstrapToken: String?

        public var cms: CreateWorkerBootstrapTokenResponseBody.Data.Cms?

        public var instanceId: String?

        public var name: String?

        public var networkType: String?

        public var tokenFingerprint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cms?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bootstrapToken != nil {
                map["BootstrapToken"] = self.bootstrapToken!
            }
            if self.cms != nil {
                map["Cms"] = self.cms?.toMap()
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.tokenFingerprint != nil {
                map["TokenFingerprint"] = self.tokenFingerprint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BootstrapToken"] as? String {
                self.bootstrapToken = value
            }
            if let value = dict["Cms"] as? [String: Any?] {
                var model = CreateWorkerBootstrapTokenResponseBody.Data.Cms()
                model.fromMap(value)
                self.cms = model
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["TokenFingerprint"] as? String {
                self.tokenFingerprint = value
            }
        }
    }
    public var code: String?

    public var data: CreateWorkerBootstrapTokenResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateWorkerBootstrapTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class CreateWorkerBootstrapTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkerBootstrapTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWorkerBootstrapTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCredentialRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteCredentialResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class DeleteCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
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

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteInstanceResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteInstanceResponseBody.Data()
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

public class DeleteMcpRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteMcpResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeleteMcpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMcpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMcpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModelRequest : Tea.TeaModel {
    public var id: String?

    public var instanceId: String?

    public var providerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
    }
}

public class DeleteModelResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeleteModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModelProviderRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteModelProviderResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeleteModelProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteModelProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceEndpointRequest : Tea.TeaModel {
    public var endpointId: String?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteServiceEndpointResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
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

public class DeleteServiceEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteServiceEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTeamRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteTeamResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class DeleteTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTeamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWorkerRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteWorkerResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class DeleteWorkerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWorkerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCredentialRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BoundWorkers : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var boundWorkers: [GetCredentialResponseBody.Data.BoundWorkers]?

        public var createTime: String?

        public var description_: String?

        public var instanceId: String?

        public var name: String?

        public var regionId: String?

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
            if self.boundWorkers != nil {
                var tmp : [Any] = []
                for k in self.boundWorkers! {
                    tmp.append(k.toMap())
                }
                map["BoundWorkers"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BoundWorkers"] as? [Any?] {
                var tmp : [GetCredentialResponseBody.Data.BoundWorkers] = []
                for v in value {
                    if v != nil {
                        var model = GetCredentialResponseBody.Data.BoundWorkers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.boundWorkers = tmp
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: GetCredentialResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCredentialResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIdentityProviderRequest : Tea.TeaModel {
    public var identityProviderType: String?

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
        if self.identityProviderType != nil {
            map["IdentityProviderType"] = self.identityProviderType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProviderType"] as? String {
            self.identityProviderType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetIdentityProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var eventSubscriptionCallbackUrl: String?

        public var identityProviderType: String?

        public var idpMetadata: [String: String]?

        public var instanceId: String?

        public var loginCallbackUrl: String?

        public var loginEnabled: Bool?

        public var status: String?

        public var syncEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventSubscriptionCallbackUrl != nil {
                map["EventSubscriptionCallbackUrl"] = self.eventSubscriptionCallbackUrl!
            }
            if self.identityProviderType != nil {
                map["IdentityProviderType"] = self.identityProviderType!
            }
            if self.idpMetadata != nil {
                map["IdpMetadata"] = self.idpMetadata!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.loginCallbackUrl != nil {
                map["LoginCallbackUrl"] = self.loginCallbackUrl!
            }
            if self.loginEnabled != nil {
                map["LoginEnabled"] = self.loginEnabled!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.syncEnabled != nil {
                map["SyncEnabled"] = self.syncEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EventSubscriptionCallbackUrl"] as? String {
                self.eventSubscriptionCallbackUrl = value
            }
            if let value = dict["IdentityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["IdpMetadata"] as? [String: String] {
                self.idpMetadata = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LoginCallbackUrl"] as? String {
                self.loginCallbackUrl = value
            }
            if let value = dict["LoginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SyncEnabled"] as? Bool {
                self.syncEnabled = value
            }
        }
    }
    public var code: String?

    public var data: GetIdentityProviderResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetIdentityProviderResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIdentityProviderResponseBody()
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
        public class Zones : Tea.TeaModel {
            public var vswitchId: String?

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
                if self.vswitchId != nil {
                    map["VswitchId"] = self.vswitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VswitchId"] as? String {
                    self.vswitchId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var createTime: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceSpec: String?

        public var networkType: String?

        public var ossBucketName: String?

        public var paymentType: String?

        public var regionId: String?

        public var securityGroup: String?

        public var status: String?

        public var updateTime: String?

        public var vpcId: String?

        public var zones: [GetInstanceResponseBody.Data.Zones]?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceSpec != nil {
                map["InstanceSpec"] = self.instanceSpec!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.paymentType != nil {
                map["PaymentType"] = self.paymentType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.securityGroup != nil {
                map["SecurityGroup"] = self.securityGroup!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceSpec"] as? String {
                self.instanceSpec = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["PaymentType"] as? String {
                self.paymentType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecurityGroup"] as? String {
                self.securityGroup = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["Zones"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Data.Zones] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Data.Zones()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zones = tmp
            }
        }
    }
    public var code: String?

    public var data: GetInstanceResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetInstanceResponseBody.Data()
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

public class GetInstanceAsyncTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var status: String?

    public var taskCode: String?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskCode"] as? String {
            self.taskCode = value
        }
    }
}

public class GetInstanceAsyncTaskResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class RecoveryMessage : Tea.TeaModel {
            public var code: String?

            public var message: String?

            public var occurredAt: String?

            public var recoverySuggestion: String?

            public var retryable: Bool?

            public var source: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.occurredAt != nil {
                    map["OccurredAt"] = self.occurredAt!
                }
                if self.recoverySuggestion != nil {
                    map["RecoverySuggestion"] = self.recoverySuggestion!
                }
                if self.retryable != nil {
                    map["Retryable"] = self.retryable!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["OccurredAt"] as? String {
                    self.occurredAt = value
                }
                if let value = dict["RecoverySuggestion"] as? String {
                    self.recoverySuggestion = value
                }
                if let value = dict["Retryable"] as? Bool {
                    self.retryable = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var currentStep: String?

        public var recoveryMessage: GetInstanceAsyncTaskResponseBody.Items.RecoveryMessage?

        public var taskCode: String?

        public var taskId: String?

        public var taskStatus: String?

        public var waitingForUserAction: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.recoveryMessage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentStep != nil {
                map["CurrentStep"] = self.currentStep!
            }
            if self.recoveryMessage != nil {
                map["RecoveryMessage"] = self.recoveryMessage?.toMap()
            }
            if self.taskCode != nil {
                map["TaskCode"] = self.taskCode!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.waitingForUserAction != nil {
                map["WaitingForUserAction"] = self.waitingForUserAction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentStep"] as? String {
                self.currentStep = value
            }
            if let value = dict["RecoveryMessage"] as? [String: Any?] {
                var model = GetInstanceAsyncTaskResponseBody.Items.RecoveryMessage()
                model.fromMap(value)
                self.recoveryMessage = model
            }
            if let value = dict["TaskCode"] as? String {
                self.taskCode = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["WaitingForUserAction"] as? Bool {
                self.waitingForUserAction = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [GetInstanceAsyncTaskResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [GetInstanceAsyncTaskResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceAsyncTaskResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetInstanceAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceAsyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceAsyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceOssMountRamAuthorizeUrlRequest : Tea.TeaModel {
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

public class GetInstanceOssMountRamAuthorizeUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authorizeUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizeUrl != nil {
                map["AuthorizeUrl"] = self.authorizeUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthorizeUrl"] as? String {
                self.authorizeUrl = value
            }
        }
    }
    public var code: String?

    public var data: GetInstanceOssMountRamAuthorizeUrlResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetInstanceOssMountRamAuthorizeUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetInstanceOssMountRamAuthorizeUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceOssMountRamAuthorizeUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceOssMountRamAuthorizeUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMcpRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetMcpResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var addresses: [String]?

        public var authConfig: String?

        public var authEnabled: Bool?

        public var createType: String?

        public var deployStatus: String?

        public var description_: String?

        public var id: String?

        public var mcpServerConfig: String?

        public var name: String?

        public var protocol_: String?

        public var swaggerConfig: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["Addresses"] = self.addresses!
            }
            if self.authConfig != nil {
                map["AuthConfig"] = self.authConfig!
            }
            if self.authEnabled != nil {
                map["AuthEnabled"] = self.authEnabled!
            }
            if self.createType != nil {
                map["CreateType"] = self.createType!
            }
            if self.deployStatus != nil {
                map["DeployStatus"] = self.deployStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mcpServerConfig != nil {
                map["McpServerConfig"] = self.mcpServerConfig!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.swaggerConfig != nil {
                map["SwaggerConfig"] = self.swaggerConfig!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Addresses"] as? [String] {
                self.addresses = value
            }
            if let value = dict["AuthConfig"] as? String {
                self.authConfig = value
            }
            if let value = dict["AuthEnabled"] as? Bool {
                self.authEnabled = value
            }
            if let value = dict["CreateType"] as? String {
                self.createType = value
            }
            if let value = dict["DeployStatus"] as? String {
                self.deployStatus = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["McpServerConfig"] as? String {
                self.mcpServerConfig = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["SwaggerConfig"] as? String {
                self.swaggerConfig = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: GetMcpResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetMcpResponseBody.Data()
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

public class GetMcpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMcpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelInvocationSummaryRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

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
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetModelInvocationSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProviderDistribution : Tea.TeaModel {
            public var count: Int32?

            public var percentage: Double?

            public var providerName: String?

            public override init() {
                super.init()
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
                if self.percentage != nil {
                    map["Percentage"] = self.percentage!
                }
                if self.providerName != nil {
                    map["ProviderName"] = self.providerName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["Percentage"] as? Double {
                    self.percentage = value
                }
                if let value = dict["ProviderName"] as? String {
                    self.providerName = value
                }
            }
        }
        public var callFrequency: Double?

        public var providerDistribution: [GetModelInvocationSummaryResponseBody.Data.ProviderDistribution]?

        public var todayCallCount: Int32?

        public var todayChangeRate: Double?

        public var weekCallCount: Int32?

        public var weekChangeRate: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callFrequency != nil {
                map["CallFrequency"] = self.callFrequency!
            }
            if self.providerDistribution != nil {
                var tmp : [Any] = []
                for k in self.providerDistribution! {
                    tmp.append(k.toMap())
                }
                map["ProviderDistribution"] = tmp
            }
            if self.todayCallCount != nil {
                map["TodayCallCount"] = self.todayCallCount!
            }
            if self.todayChangeRate != nil {
                map["TodayChangeRate"] = self.todayChangeRate!
            }
            if self.weekCallCount != nil {
                map["WeekCallCount"] = self.weekCallCount!
            }
            if self.weekChangeRate != nil {
                map["WeekChangeRate"] = self.weekChangeRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallFrequency"] as? Double {
                self.callFrequency = value
            }
            if let value = dict["ProviderDistribution"] as? [Any?] {
                var tmp : [GetModelInvocationSummaryResponseBody.Data.ProviderDistribution] = []
                for v in value {
                    if v != nil {
                        var model = GetModelInvocationSummaryResponseBody.Data.ProviderDistribution()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.providerDistribution = tmp
            }
            if let value = dict["TodayCallCount"] as? Int32 {
                self.todayCallCount = value
            }
            if let value = dict["TodayChangeRate"] as? Double {
                self.todayChangeRate = value
            }
            if let value = dict["WeekCallCount"] as? Int32 {
                self.weekCallCount = value
            }
            if let value = dict["WeekChangeRate"] as? Double {
                self.weekChangeRate = value
            }
        }
    }
    public var code: String?

    public var data: GetModelInvocationSummaryResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetModelInvocationSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetModelInvocationSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelInvocationSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetModelInvocationSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelProviderRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetModelProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var address: String?

        public var apiKeys: [String]?

        public var createTime: String?

        public var deployStatus: String?

        public var description_: String?

        public var id: String?

        public var instanceId: String?

        public var name: String?

        public var protocols: [String]?

        public var provider: String?

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
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.apiKeys != nil {
                map["ApiKeys"] = self.apiKeys!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployStatus != nil {
                map["DeployStatus"] = self.deployStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["ApiKeys"] as? [String] {
                self.apiKeys = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeployStatus"] as? String {
                self.deployStatus = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Protocols"] as? [String] {
                self.protocols = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var code: String?

    public var data: GetModelProviderResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetModelProviderResponseBody.Data()
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

public class GetModelProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetModelProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNatGatewayStatusRequest : Tea.TeaModel {
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

public class GetNatGatewayStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NatGateways : Tea.TeaModel {
            public var natGatewayId: String?

            public var snatConfigured: Bool?

            public var snatTableId: String?

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
                if self.natGatewayId != nil {
                    map["NatGatewayId"] = self.natGatewayId!
                }
                if self.snatConfigured != nil {
                    map["SnatConfigured"] = self.snatConfigured!
                }
                if self.snatTableId != nil {
                    map["SnatTableId"] = self.snatTableId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NatGatewayId"] as? String {
                    self.natGatewayId = value
                }
                if let value = dict["SnatConfigured"] as? Bool {
                    self.snatConfigured = value
                }
                if let value = dict["SnatTableId"] as? String {
                    self.snatTableId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class ZoneCidrs : Tea.TeaModel {
            public var cidrBlock: String?

            public var covered: Bool?

            public var natGatewayId: String?

            public var snatEntryId: String?

            public var snatSourceCidr: String?

            public var vSwitchId: String?

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
                if self.cidrBlock != nil {
                    map["CidrBlock"] = self.cidrBlock!
                }
                if self.covered != nil {
                    map["Covered"] = self.covered!
                }
                if self.natGatewayId != nil {
                    map["NatGatewayId"] = self.natGatewayId!
                }
                if self.snatEntryId != nil {
                    map["SnatEntryId"] = self.snatEntryId!
                }
                if self.snatSourceCidr != nil {
                    map["SnatSourceCidr"] = self.snatSourceCidr!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CidrBlock"] as? String {
                    self.cidrBlock = value
                }
                if let value = dict["Covered"] as? Bool {
                    self.covered = value
                }
                if let value = dict["NatGatewayId"] as? String {
                    self.natGatewayId = value
                }
                if let value = dict["SnatEntryId"] as? String {
                    self.snatEntryId = value
                }
                if let value = dict["SnatSourceCidr"] as? String {
                    self.snatSourceCidr = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var instanceId: String?

        public var natGatewayConfigured: Bool?

        public var natGateways: [GetNatGatewayStatusResponseBody.Data.NatGateways]?

        public var snatConfigured: Bool?

        public var status: String?

        public var vpcId: String?

        public var zoneCidrCovered: Bool?

        public var zoneCidrs: [GetNatGatewayStatusResponseBody.Data.ZoneCidrs]?

        public override init() {
            super.init()
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
            if self.natGatewayConfigured != nil {
                map["NatGatewayConfigured"] = self.natGatewayConfigured!
            }
            if self.natGateways != nil {
                var tmp : [Any] = []
                for k in self.natGateways! {
                    tmp.append(k.toMap())
                }
                map["NatGateways"] = tmp
            }
            if self.snatConfigured != nil {
                map["SnatConfigured"] = self.snatConfigured!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneCidrCovered != nil {
                map["ZoneCidrCovered"] = self.zoneCidrCovered!
            }
            if self.zoneCidrs != nil {
                var tmp : [Any] = []
                for k in self.zoneCidrs! {
                    tmp.append(k.toMap())
                }
                map["ZoneCidrs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NatGatewayConfigured"] as? Bool {
                self.natGatewayConfigured = value
            }
            if let value = dict["NatGateways"] as? [Any?] {
                var tmp : [GetNatGatewayStatusResponseBody.Data.NatGateways] = []
                for v in value {
                    if v != nil {
                        var model = GetNatGatewayStatusResponseBody.Data.NatGateways()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.natGateways = tmp
            }
            if let value = dict["SnatConfigured"] as? Bool {
                self.snatConfigured = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneCidrCovered"] as? Bool {
                self.zoneCidrCovered = value
            }
            if let value = dict["ZoneCidrs"] as? [Any?] {
                var tmp : [GetNatGatewayStatusResponseBody.Data.ZoneCidrs] = []
                for v in value {
                    if v != nil {
                        var model = GetNatGatewayStatusResponseBody.Data.ZoneCidrs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zoneCidrs = tmp
            }
        }
    }
    public var code: String?

    public var data: GetNatGatewayStatusResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetNatGatewayStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetNatGatewayStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNatGatewayStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetNatGatewayStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceEndpointRequest : Tea.TeaModel {
    public var endpointId: String?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetServiceEndpointResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certIdentifier: String?

        public var component: String?

        public var createTime: String?

        public var domain: String?

        public var domainType: String?

        public var endpointId: String?

        public var endpointName: String?

        public var instanceId: String?

        public var networkType: String?

        public var regionId: String?

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
            if self.certIdentifier != nil {
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.component != nil {
                map["Component"] = self.component!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointName != nil {
                map["EndpointName"] = self.endpointName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertIdentifier"] as? String {
                self.certIdentifier = value
            }
            if let value = dict["Component"] as? String {
                self.component = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["DomainType"] as? String {
                self.domainType = value
            }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["EndpointName"] as? String {
                self.endpointName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: GetServiceEndpointResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetServiceEndpointResponseBody.Data()
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

public class GetServiceEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetServiceEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskStatsSummaryRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

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
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetTaskStatsSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StatusDistribution : Tea.TeaModel {
            public var count: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var averageTaskDuration: Double?

        public var statusDistribution: [GetTaskStatsSummaryResponseBody.Data.StatusDistribution]?

        public var taskTokenConsumption: Int64?

        public var totalTasks: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.averageTaskDuration != nil {
                map["AverageTaskDuration"] = self.averageTaskDuration!
            }
            if self.statusDistribution != nil {
                var tmp : [Any] = []
                for k in self.statusDistribution! {
                    tmp.append(k.toMap())
                }
                map["StatusDistribution"] = tmp
            }
            if self.taskTokenConsumption != nil {
                map["TaskTokenConsumption"] = self.taskTokenConsumption!
            }
            if self.totalTasks != nil {
                map["TotalTasks"] = self.totalTasks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AverageTaskDuration"] as? Double {
                self.averageTaskDuration = value
            }
            if let value = dict["StatusDistribution"] as? [Any?] {
                var tmp : [GetTaskStatsSummaryResponseBody.Data.StatusDistribution] = []
                for v in value {
                    if v != nil {
                        var model = GetTaskStatsSummaryResponseBody.Data.StatusDistribution()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.statusDistribution = tmp
            }
            if let value = dict["TaskTokenConsumption"] as? Int64 {
                self.taskTokenConsumption = value
            }
            if let value = dict["TotalTasks"] as? Int32 {
                self.totalTasks = value
            }
        }
    }
    public var code: String?

    public var data: GetTaskStatsSummaryResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTaskStatsSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetTaskStatsSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskStatsSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskStatsSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTeamRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetTeamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Rooms : Tea.TeaModel {
            public var roomId: String?

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
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RoomId"] as? String {
                    self.roomId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class TeamMembers : Tea.TeaModel {
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
        public var adminName: String?

        public var createdAt: String?

        public var description_: String?

        public var instanceId: String?

        public var leaderName: String?

        public var name: String?

        public var rooms: [GetTeamResponseBody.Data.Rooms]?

        public var status: String?

        public var teamMembers: [GetTeamResponseBody.Data.TeamMembers]?

        public var updatedAt: String?

        public var workerNames: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminName != nil {
                map["AdminName"] = self.adminName!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.leaderName != nil {
                map["LeaderName"] = self.leaderName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.rooms != nil {
                var tmp : [Any] = []
                for k in self.rooms! {
                    tmp.append(k.toMap())
                }
                map["Rooms"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.teamMembers != nil {
                var tmp : [Any] = []
                for k in self.teamMembers! {
                    tmp.append(k.toMap())
                }
                map["TeamMembers"] = tmp
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.workerNames != nil {
                map["WorkerNames"] = self.workerNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdminName"] as? String {
                self.adminName = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LeaderName"] as? String {
                self.leaderName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Rooms"] as? [Any?] {
                var tmp : [GetTeamResponseBody.Data.Rooms] = []
                for v in value {
                    if v != nil {
                        var model = GetTeamResponseBody.Data.Rooms()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rooms = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TeamMembers"] as? [Any?] {
                var tmp : [GetTeamResponseBody.Data.TeamMembers] = []
                for v in value {
                    if v != nil {
                        var model = GetTeamResponseBody.Data.TeamMembers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.teamMembers = tmp
            }
            if let value = dict["UpdatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["WorkerNames"] as? [String] {
                self.workerNames = value
            }
        }
    }
    public var code: String?

    public var data: GetTeamResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTeamResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTeamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenTrendRequest : Tea.TeaModel {
    public var endTime: String?

    public var groupBy: String?

    public var instanceId: String?

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
            map["EndTime"] = self.endTime!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["GroupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetTokenTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public var data: [Any]?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Any] {
                    self.data = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var groupBy: String?

        public var series: [GetTokenTrendResponseBody.Data.Series]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupBy != nil {
                map["GroupBy"] = self.groupBy!
            }
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupBy"] as? String {
                self.groupBy = value
            }
            if let value = dict["Series"] as? [Any?] {
                var tmp : [GetTokenTrendResponseBody.Data.Series] = []
                for v in value {
                    if v != nil {
                        var model = GetTokenTrendResponseBody.Data.Series()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.series = tmp
            }
        }
    }
    public var code: String?

    public var data: GetTokenTrendResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTokenTrendResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetTokenTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTokenTrendResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetToolCallDistributionRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

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
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetToolCallDistributionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var callCount: Int32?

            public var toolName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callCount != nil {
                    map["CallCount"] = self.callCount!
                }
                if self.toolName != nil {
                    map["ToolName"] = self.toolName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CallCount"] as? Int32 {
                    self.callCount = value
                }
                if let value = dict["ToolName"] as? String {
                    self.toolName = value
                }
            }
        }
        public var items: [GetToolCallDistributionResponseBody.Data.Items]?

        public var totalCalls: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalCalls != nil {
                map["TotalCalls"] = self.totalCalls!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [GetToolCallDistributionResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetToolCallDistributionResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["TotalCalls"] as? Int32 {
                self.totalCalls = value
            }
        }
    }
    public var code: String?

    public var data: GetToolCallDistributionResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetToolCallDistributionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetToolCallDistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetToolCallDistributionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetToolCallDistributionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authMethod: String?

        public var createTime: String?

        public var createdAt: String?

        public var displayName: String?

        public var email: String?

        public var instanceId: String?

        public var name: String?

        public var note: String?

        public var regionId: String?

        public var resourceGroupId: String?

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
            if self.authMethod != nil {
                map["AuthMethod"] = self.authMethod!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthMethod"] as? String {
                self.authMethod = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetUserResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserPasswordRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetUserPasswordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var initialPassword: String?

        public var instanceId: String?

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
            if self.initialPassword != nil {
                map["InitialPassword"] = self.initialPassword!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InitialPassword"] as? String {
                self.initialPassword = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var data: GetUserPasswordResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUserPasswordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkerRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetWorkerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Channels : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var cardTemplateId: String?

                public var clientId: String?

                public var extension_: String?

                public var messageType: String?

                public var robotCode: String?

                public var showThinking: Bool?

                public var showToolCalls: Bool?

                public var streamingEnabled: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cardTemplateId != nil {
                        map["CardTemplateId"] = self.cardTemplateId!
                    }
                    if self.clientId != nil {
                        map["ClientId"] = self.clientId!
                    }
                    if self.extension_ != nil {
                        map["Extension"] = self.extension_!
                    }
                    if self.messageType != nil {
                        map["MessageType"] = self.messageType!
                    }
                    if self.robotCode != nil {
                        map["RobotCode"] = self.robotCode!
                    }
                    if self.showThinking != nil {
                        map["ShowThinking"] = self.showThinking!
                    }
                    if self.showToolCalls != nil {
                        map["ShowToolCalls"] = self.showToolCalls!
                    }
                    if self.streamingEnabled != nil {
                        map["StreamingEnabled"] = self.streamingEnabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CardTemplateId"] as? String {
                        self.cardTemplateId = value
                    }
                    if let value = dict["ClientId"] as? String {
                        self.clientId = value
                    }
                    if let value = dict["Extension"] as? String {
                        self.extension_ = value
                    }
                    if let value = dict["MessageType"] as? String {
                        self.messageType = value
                    }
                    if let value = dict["RobotCode"] as? String {
                        self.robotCode = value
                    }
                    if let value = dict["ShowThinking"] as? Bool {
                        self.showThinking = value
                    }
                    if let value = dict["ShowToolCalls"] as? Bool {
                        self.showToolCalls = value
                    }
                    if let value = dict["StreamingEnabled"] as? Bool {
                        self.streamingEnabled = value
                    }
                }
            }
            public class SecretStatus : Tea.TeaModel {
                public var clientSecret: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clientSecret != nil {
                        map["ClientSecret"] = self.clientSecret!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClientSecret"] as? Bool {
                        self.clientSecret = value
                    }
                }
            }
            public var config: GetWorkerResponseBody.Data.Channels.Config?

            public var enabled: Bool?

            public var secretStatus: GetWorkerResponseBody.Data.Channels.SecretStatus?

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
                try self.secretStatus?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.config != nil {
                    map["Config"] = self.config?.toMap()
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.secretStatus != nil {
                    map["SecretStatus"] = self.secretStatus?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Config"] as? [String: Any?] {
                    var model = GetWorkerResponseBody.Data.Channels.Config()
                    model.fromMap(value)
                    self.config = model
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["SecretStatus"] as? [String: Any?] {
                    var model = GetWorkerResponseBody.Data.Channels.SecretStatus()
                    model.fromMap(value)
                    self.secretStatus = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Credentials : Tea.TeaModel {
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
        public class Groups : Tea.TeaModel {
            public var name: String?

            public var role: String?

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
                if self.role != nil {
                    map["Role"] = self.role!
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
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class LimitConfig : Tea.TeaModel {
            public var limitType: String?

            public var overLimit: Bool?

            public var periodType: String?

            public var ruleStatus: String?

            public var usageLimit: Int64?

            public var usedAmount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                if self.overLimit != nil {
                    map["OverLimit"] = self.overLimit!
                }
                if self.periodType != nil {
                    map["PeriodType"] = self.periodType!
                }
                if self.ruleStatus != nil {
                    map["RuleStatus"] = self.ruleStatus!
                }
                if self.usageLimit != nil {
                    map["UsageLimit"] = self.usageLimit!
                }
                if self.usedAmount != nil {
                    map["UsedAmount"] = self.usedAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LimitType"] as? String {
                    self.limitType = value
                }
                if let value = dict["OverLimit"] as? Bool {
                    self.overLimit = value
                }
                if let value = dict["PeriodType"] as? String {
                    self.periodType = value
                }
                if let value = dict["RuleStatus"] as? String {
                    self.ruleStatus = value
                }
                if let value = dict["UsageLimit"] as? Int64 {
                    self.usageLimit = value
                }
                if let value = dict["UsedAmount"] as? Int64 {
                    self.usedAmount = value
                }
            }
        }
        public class McpServers : Tea.TeaModel {
            public var name: String?

            public var transport: String?

            public var url: String?

            public override init() {
                super.init()
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
                if self.transport != nil {
                    map["Transport"] = self.transport!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Transport"] as? String {
                    self.transport = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Model : Tea.TeaModel {
            public var modelName: String?

            public var modelProvider: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelProvider != nil {
                    map["ModelProvider"] = self.modelProvider!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["ModelProvider"] as? String {
                    self.modelProvider = value
                }
            }
        }
        public class Skills : Tea.TeaModel {
            public var label: String?

            public var name: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class Subagents : Tea.TeaModel {
            public class Skills : Tea.TeaModel {
                public var hasSkillMd: Bool?

                public var name: String?

                public var skillId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.hasSkillMd != nil {
                        map["HasSkillMd"] = self.hasSkillMd!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.skillId != nil {
                        map["SkillId"] = self.skillId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HasSkillMd"] as? Bool {
                        self.hasSkillMd = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["SkillId"] as? String {
                        self.skillId = value
                    }
                }
            }
            public var description_: String?

            public var hasAgentsMd: Bool?

            public var name: String?

            public var skills: [GetWorkerResponseBody.Data.Subagents.Skills]?

            public var sourcePath: String?

            public var subagentId: String?

            public override init() {
                super.init()
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
                if self.hasAgentsMd != nil {
                    map["HasAgentsMd"] = self.hasAgentsMd!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.skills != nil {
                    var tmp : [Any] = []
                    for k in self.skills! {
                        tmp.append(k.toMap())
                    }
                    map["Skills"] = tmp
                }
                if self.sourcePath != nil {
                    map["SourcePath"] = self.sourcePath!
                }
                if self.subagentId != nil {
                    map["SubagentId"] = self.subagentId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["HasAgentsMd"] as? Bool {
                    self.hasAgentsMd = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Skills"] as? [Any?] {
                    var tmp : [GetWorkerResponseBody.Data.Subagents.Skills] = []
                    for v in value {
                        if v != nil {
                            var model = GetWorkerResponseBody.Data.Subagents.Skills()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.skills = tmp
                }
                if let value = dict["SourcePath"] as? String {
                    self.sourcePath = value
                }
                if let value = dict["SubagentId"] as? String {
                    self.subagentId = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public var label: String?

            public var name: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agentType: String?

        public var agents: String?

        public var channels: [GetWorkerResponseBody.Data.Channels]?

        public var credentials: [GetWorkerResponseBody.Data.Credentials]?

        public var deployType: String?

        public var groups: [GetWorkerResponseBody.Data.Groups]?

        public var instanceId: String?

        public var limitConfig: GetWorkerResponseBody.Data.LimitConfig?

        public var mcpServers: [GetWorkerResponseBody.Data.McpServers]?

        public var model: GetWorkerResponseBody.Data.Model?

        public var name: String?

        public var regionId: String?

        public var skills: [GetWorkerResponseBody.Data.Skills]?

        public var soul: String?

        public var startTime: String?

        public var status: String?

        public var subagents: [GetWorkerResponseBody.Data.Subagents]?

        public var template: GetWorkerResponseBody.Data.Template?

        public var versionCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.limitConfig?.validate()
            try self.model?.validate()
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentType != nil {
                map["AgentType"] = self.agentType!
            }
            if self.agents != nil {
                map["Agents"] = self.agents!
            }
            if self.channels != nil {
                var tmp : [Any] = []
                for k in self.channels! {
                    tmp.append(k.toMap())
                }
                map["Channels"] = tmp
            }
            if self.credentials != nil {
                var tmp : [Any] = []
                for k in self.credentials! {
                    tmp.append(k.toMap())
                }
                map["Credentials"] = tmp
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.limitConfig != nil {
                map["LimitConfig"] = self.limitConfig?.toMap()
            }
            if self.mcpServers != nil {
                var tmp : [Any] = []
                for k in self.mcpServers! {
                    tmp.append(k.toMap())
                }
                map["McpServers"] = tmp
            }
            if self.model != nil {
                map["Model"] = self.model?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["Skills"] = tmp
            }
            if self.soul != nil {
                map["Soul"] = self.soul!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subagents != nil {
                var tmp : [Any] = []
                for k in self.subagents! {
                    tmp.append(k.toMap())
                }
                map["Subagents"] = tmp
            }
            if self.template != nil {
                map["Template"] = self.template?.toMap()
            }
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentType"] as? String {
                self.agentType = value
            }
            if let value = dict["Agents"] as? String {
                self.agents = value
            }
            if let value = dict["Channels"] as? [Any?] {
                var tmp : [GetWorkerResponseBody.Data.Channels] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkerResponseBody.Data.Channels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.channels = tmp
            }
            if let value = dict["Credentials"] as? [Any?] {
                var tmp : [GetWorkerResponseBody.Data.Credentials] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkerResponseBody.Data.Credentials()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.credentials = tmp
            }
            if let value = dict["DeployType"] as? String {
                self.deployType = value
            }
            if let value = dict["Groups"] as? [Any?] {
                var tmp : [GetWorkerResponseBody.Data.Groups] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkerResponseBody.Data.Groups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groups = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LimitConfig"] as? [String: Any?] {
                var model = GetWorkerResponseBody.Data.LimitConfig()
                model.fromMap(value)
                self.limitConfig = model
            }
            if let value = dict["McpServers"] as? [Any?] {
                var tmp : [GetWorkerResponseBody.Data.McpServers] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkerResponseBody.Data.McpServers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mcpServers = tmp
            }
            if let value = dict["Model"] as? [String: Any?] {
                var model = GetWorkerResponseBody.Data.Model()
                model.fromMap(value)
                self.model = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Skills"] as? [Any?] {
                var tmp : [GetWorkerResponseBody.Data.Skills] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkerResponseBody.Data.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["Soul"] as? String {
                self.soul = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Subagents"] as? [Any?] {
                var tmp : [GetWorkerResponseBody.Data.Subagents] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkerResponseBody.Data.Subagents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subagents = tmp
            }
            if let value = dict["Template"] as? [String: Any?] {
                var model = GetWorkerResponseBody.Data.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["VersionCode"] as? String {
                self.versionCode = value
            }
        }
    }
    public var code: String?

    public var data: GetWorkerResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetWorkerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWorkerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkerBootstrapOptionsRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetWorkerBootstrapOptionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NetworkOptions : Tea.TeaModel {
            public var available: Bool?

            public var networkType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.available != nil {
                    map["Available"] = self.available!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Available"] as? Bool {
                    self.available = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
            }
        }
        public var instanceId: String?

        public var name: String?

        public var networkOptions: [GetWorkerBootstrapOptionsResponseBody.Data.NetworkOptions]?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.networkOptions != nil {
                var tmp : [Any] = []
                for k in self.networkOptions! {
                    tmp.append(k.toMap())
                }
                map["NetworkOptions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NetworkOptions"] as? [Any?] {
                var tmp : [GetWorkerBootstrapOptionsResponseBody.Data.NetworkOptions] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkerBootstrapOptionsResponseBody.Data.NetworkOptions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.networkOptions = tmp
            }
        }
    }
    public var code: String?

    public var data: GetWorkerBootstrapOptionsResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkerBootstrapOptionsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetWorkerBootstrapOptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkerBootstrapOptionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWorkerBootstrapOptionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkerMaxVersionRequest : Tea.TeaModel {
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

public class GetWorkerMaxVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var versionCode: String?

        public override init() {
            super.init()
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
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["VersionCode"] as? String {
                self.versionCode = value
            }
        }
    }
    public var code: String?

    public var data: GetWorkerMaxVersionResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkerMaxVersionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetWorkerMaxVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkerMaxVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWorkerMaxVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkerStatsSummaryRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

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
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetWorkerStatsSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var otherWorkers: Int32?

        public var runningWorkers: Int32?

        public var stoppedWorkers: Int32?

        public var totalWorkers: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.otherWorkers != nil {
                map["OtherWorkers"] = self.otherWorkers!
            }
            if self.runningWorkers != nil {
                map["RunningWorkers"] = self.runningWorkers!
            }
            if self.stoppedWorkers != nil {
                map["StoppedWorkers"] = self.stoppedWorkers!
            }
            if self.totalWorkers != nil {
                map["TotalWorkers"] = self.totalWorkers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OtherWorkers"] as? Int32 {
                self.otherWorkers = value
            }
            if let value = dict["RunningWorkers"] as? Int32 {
                self.runningWorkers = value
            }
            if let value = dict["StoppedWorkers"] as? Int32 {
                self.stoppedWorkers = value
            }
            if let value = dict["TotalWorkers"] as? Int32 {
                self.totalWorkers = value
            }
        }
    }
    public var code: String?

    public var data: GetWorkerStatsSummaryResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkerStatsSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetWorkerStatsSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkerStatsSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWorkerStatsSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCredentialsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nameLike: String?

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
        if self.nameLike != nil {
            map["NameLike"] = self.nameLike!
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
        if let value = dict["NameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListCredentialsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var boundWorkerCount: Int32?

        public var createTime: String?

        public var description_: String?

        public var instanceId: String?

        public var name: String?

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
            if self.boundWorkerCount != nil {
                map["BoundWorkerCount"] = self.boundWorkerCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BoundWorkerCount"] as? Int32 {
                self.boundWorkerCount = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListCredentialsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListCredentialsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListCredentialsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCredentialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIdentityProvidersRequest : Tea.TeaModel {
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

public class ListIdentityProvidersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var identityProviderType: String?

        public var instanceId: String?

        public var loginEnabled: Bool?

        public var status: String?

        public var syncEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.identityProviderType != nil {
                map["IdentityProviderType"] = self.identityProviderType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.loginEnabled != nil {
                map["LoginEnabled"] = self.loginEnabled!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.syncEnabled != nil {
                map["SyncEnabled"] = self.syncEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IdentityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LoginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SyncEnabled"] as? Bool {
                self.syncEnabled = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListIdentityProvidersResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListIdentityProvidersResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListIdentityProvidersResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListIdentityProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIdentityProvidersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListIdentityProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var instanceName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var skip: Int32?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
            public var vswitchId: String?

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
                if self.vswitchId != nil {
                    map["VswitchId"] = self.vswitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VswitchId"] as? String {
                    self.vswitchId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var instanceId: String?

        public var instanceName: String?

        public var instanceSpec: String?

        public var ossBucketName: String?

        public var regionId: String?

        public var securityGroup: String?

        public var status: String?

        public var vpcId: String?

        public var zones: [ListInstancesResponseBody.Items.Zones]?

        public override init() {
            super.init()
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
            if self.instanceSpec != nil {
                map["InstanceSpec"] = self.instanceSpec!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.securityGroup != nil {
                map["SecurityGroup"] = self.securityGroup!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceSpec"] as? String {
                self.instanceSpec = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecurityGroup"] as? String {
                self.securityGroup = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["Zones"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Items.Zones] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Items.Zones()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zones = tmp
            }
        }
    }
    public var code: String?

    public var items: [ListInstancesResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
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

public class ListMcpToolsRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListMcpToolsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var description_: String?

        public var inputSchema: String?

        public var name: String?

        public var title: String?

        public override init() {
            super.init()
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
            if self.inputSchema != nil {
                map["InputSchema"] = self.inputSchema!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InputSchema"] as? String {
                self.inputSchema = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var code: String?

    public var items: [ListMcpToolsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListMcpToolsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListMcpToolsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListMcpToolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcpToolsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcpToolsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcpsRequest : Tea.TeaModel {
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

public class ListMcpsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var addresses: [String]?

        public var createType: String?

        public var deployStatus: String?

        public var description_: String?

        public var id: String?

        public var instanceId: String?

        public var mcpServerConfig: String?

        public var name: String?

        public var protocol_: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["Addresses"] = self.addresses!
            }
            if self.createType != nil {
                map["CreateType"] = self.createType!
            }
            if self.deployStatus != nil {
                map["DeployStatus"] = self.deployStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.mcpServerConfig != nil {
                map["McpServerConfig"] = self.mcpServerConfig!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Addresses"] as? [String] {
                self.addresses = value
            }
            if let value = dict["CreateType"] as? String {
                self.createType = value
            }
            if let value = dict["DeployStatus"] as? String {
                self.deployStatus = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["McpServerConfig"] as? String {
                self.mcpServerConfig = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var items: [ListMcpsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListMcpsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListMcpsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListMcpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcpsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelProvidersRequest : Tea.TeaModel {
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

public class ListModelProvidersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var address: String?

        public var apiKeys: [String]?

        public var createTime: String?

        public var deployStatus: String?

        public var description_: String?

        public var id: String?

        public var instanceId: String?

        public var name: String?

        public var protocols: [String]?

        public var provider: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.apiKeys != nil {
                map["ApiKeys"] = self.apiKeys!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployStatus != nil {
                map["DeployStatus"] = self.deployStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["ApiKeys"] as? [String] {
                self.apiKeys = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeployStatus"] as? String {
                self.deployStatus = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Protocols"] as? [String] {
                self.protocols = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
        }
    }
    public var code: String?

    public var items: [ListModelProvidersResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListModelProvidersResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListModelProvidersResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListModelProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelProvidersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListModelProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelsRequest : Tea.TeaModel {
    public var id: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var providerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProviderName"] as? String {
            self.providerName = value
        }
    }
}

public class ListModelsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var description_: String?

        public var id: String?

        public var instanceId: String?

        public var name: String?

        public var protocols: [String]?

        public var provider: String?

        public var providerId: String?

        public var providerName: String?

        public var workerNum: Int64?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.protocols != nil {
                map["Protocols"] = self.protocols!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.workerNum != nil {
                map["WorkerNum"] = self.workerNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Protocols"] as? [String] {
                self.protocols = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
            if let value = dict["ProviderId"] as? String {
                self.providerId = value
            }
            if let value = dict["ProviderName"] as? String {
                self.providerName = value
            }
            if let value = dict["WorkerNum"] as? Int64 {
                self.workerNum = value
            }
        }
    }
    public var code: String?

    public var items: [ListModelsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListModelsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListModelsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceEndpointsRequest : Tea.TeaModel {
    public var component: String?

    public var domainType: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var networkType: String?

    public var nextToken: String?

    public var resourceName: String?

    public var skip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.component != nil {
            map["Component"] = self.component!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Component"] as? String {
            self.component = value
        }
        if let value = dict["DomainType"] as? String {
            self.domainType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["Skip"] as? String {
            self.skip = value
        }
    }
}

public class ListServiceEndpointsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class EndpointConfig : Tea.TeaModel {
            public class Auth : Tea.TeaModel {
                public var apiKey: String?

                public var apiKeyName: String?

                public override init() {
                    super.init()
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
                    if self.apiKeyName != nil {
                        map["ApiKeyName"] = self.apiKeyName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiKey"] as? String {
                        self.apiKey = value
                    }
                    if let value = dict["ApiKeyName"] as? String {
                        self.apiKeyName = value
                    }
                }
            }
            public var auth: ListServiceEndpointsResponseBody.Items.EndpointConfig.Auth?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.auth?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.auth != nil {
                    map["Auth"] = self.auth?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Auth"] as? [String: Any?] {
                    var model = ListServiceEndpointsResponseBody.Items.EndpointConfig.Auth()
                    model.fromMap(value)
                    self.auth = model
                }
            }
        }
        public var certIdentifier: String?

        public var component: String?

        public var createTime: String?

        public var domain: String?

        public var domainType: String?

        public var endpointConfig: ListServiceEndpointsResponseBody.Items.EndpointConfig?

        public var endpointId: String?

        public var endpointName: String?

        public var instanceId: String?

        public var networkType: String?

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
            try self.endpointConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certIdentifier != nil {
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.component != nil {
                map["Component"] = self.component!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.endpointConfig != nil {
                map["EndpointConfig"] = self.endpointConfig?.toMap()
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointName != nil {
                map["EndpointName"] = self.endpointName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertIdentifier"] as? String {
                self.certIdentifier = value
            }
            if let value = dict["Component"] as? String {
                self.component = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["DomainType"] as? String {
                self.domainType = value
            }
            if let value = dict["EndpointConfig"] as? [String: Any?] {
                var model = ListServiceEndpointsResponseBody.Items.EndpointConfig()
                model.fromMap(value)
                self.endpointConfig = model
            }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["EndpointName"] as? String {
                self.endpointName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var items: [ListServiceEndpointsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListServiceEndpointsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListServiceEndpointsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServiceEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListServiceEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSslCertsRequest : Tea.TeaModel {
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

public class ListSslCertsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var algorithm: String?

        public var certId: Int64?

        public var certIdentifier: String?

        public var certName: String?

        public var chainCompleted: Bool?

        public var commonName: String?

        public var domain: String?

        public var issuer: String?

        public var notAfterTimestamp: Int64?

        public var notBeforeTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.certId != nil {
                map["CertId"] = self.certId!
            }
            if self.certIdentifier != nil {
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.chainCompleted != nil {
                map["ChainCompleted"] = self.chainCompleted!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            if self.notAfterTimestamp != nil {
                map["NotAfterTimestamp"] = self.notAfterTimestamp!
            }
            if self.notBeforeTimestamp != nil {
                map["NotBeforeTimestamp"] = self.notBeforeTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["CertId"] as? Int64 {
                self.certId = value
            }
            if let value = dict["CertIdentifier"] as? String {
                self.certIdentifier = value
            }
            if let value = dict["CertName"] as? String {
                self.certName = value
            }
            if let value = dict["ChainCompleted"] as? Bool {
                self.chainCompleted = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Issuer"] as? String {
                self.issuer = value
            }
            if let value = dict["NotAfterTimestamp"] as? Int64 {
                self.notAfterTimestamp = value
            }
            if let value = dict["NotBeforeTimestamp"] as? Int64 {
                self.notBeforeTimestamp = value
            }
        }
    }
    public var code: String?

    public var items: [ListSslCertsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListSslCertsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListSslCertsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListSslCertsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSslCertsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSslCertsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTeamDetailsRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListTeamDetailsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var avatarUrl: String?

        public var status: String?

        public var successRate: Double?

        public var taskCount: Int32?

        public var teamName: String?

        public var tokenUsage: Int64?

        public var workerCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.successRate != nil {
                map["SuccessRate"] = self.successRate!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            if self.teamName != nil {
                map["TeamName"] = self.teamName!
            }
            if self.tokenUsage != nil {
                map["TokenUsage"] = self.tokenUsage!
            }
            if self.workerCount != nil {
                map["WorkerCount"] = self.workerCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvatarUrl"] as? String {
                self.avatarUrl = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SuccessRate"] as? Double {
                self.successRate = value
            }
            if let value = dict["TaskCount"] as? Int32 {
                self.taskCount = value
            }
            if let value = dict["TeamName"] as? String {
                self.teamName = value
            }
            if let value = dict["TokenUsage"] as? Int64 {
                self.tokenUsage = value
            }
            if let value = dict["WorkerCount"] as? Int32 {
                self.workerCount = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListTeamDetailsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListTeamDetailsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListTeamDetailsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTeamDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTeamDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTeamDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTeamTasksRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var team: String?

    public override init() {
        super.init()
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
        if self.team != nil {
            map["Team"] = self.team!
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
        if let value = dict["Team"] as? String {
            self.team = value
        }
    }
}

public class ListTeamTasksResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var assignedTo: String?

        public var createdAt: String?

        public var status: String?

        public var taskId: String?

        public var taskTitle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assignedTo != nil {
                map["AssignedTo"] = self.assignedTo!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskTitle != nil {
                map["TaskTitle"] = self.taskTitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssignedTo"] as? String {
                self.assignedTo = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskTitle"] as? String {
                self.taskTitle = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListTeamTasksResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListTeamTasksResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListTeamTasksResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTeamTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTeamTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTeamTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTeamsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nameLike: String?

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
        if self.nameLike != nil {
            map["NameLike"] = self.nameLike!
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
        if let value = dict["NameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListTeamsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class TeamMembers : Tea.TeaModel {
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
        public var adminName: String?

        public var createdAt: String?

        public var description_: String?

        public var instanceId: String?

        public var leaderName: String?

        public var name: String?

        public var status: String?

        public var teamMembers: [ListTeamsResponseBody.Items.TeamMembers]?

        public var workerNames: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminName != nil {
                map["AdminName"] = self.adminName!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.leaderName != nil {
                map["LeaderName"] = self.leaderName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.teamMembers != nil {
                var tmp : [Any] = []
                for k in self.teamMembers! {
                    tmp.append(k.toMap())
                }
                map["TeamMembers"] = tmp
            }
            if self.workerNames != nil {
                map["WorkerNames"] = self.workerNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdminName"] as? String {
                self.adminName = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LeaderName"] as? String {
                self.leaderName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TeamMembers"] as? [Any?] {
                var tmp : [ListTeamsResponseBody.Items.TeamMembers] = []
                for v in value {
                    if v != nil {
                        var model = ListTeamsResponseBody.Items.TeamMembers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.teamMembers = tmp
            }
            if let value = dict["WorkerNames"] as? [String] {
                self.workerNames = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListTeamsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListTeamsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListTeamsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTeamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTeamsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTeamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nameLike: String?

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
        if self.nameLike != nil {
            map["NameLike"] = self.nameLike!
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
        if let value = dict["NameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var authMethod: String?

        public var displayName: String?

        public var email: String?

        public var instanceId: String?

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
            if self.authMethod != nil {
                map["AuthMethod"] = self.authMethod!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthMethod"] as? String {
                self.authMethod = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListUsersResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListUsersResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListUsersResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkerStatsDetailsRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListWorkerStatsDetailsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var llmCallCount: Int64?

        public var model: String?

        public var name: String?

        public var status: String?

        public var taskCount: Int64?

        public var tokenUsage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.llmCallCount != nil {
                map["LlmCallCount"] = self.llmCallCount!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            if self.tokenUsage != nil {
                map["TokenUsage"] = self.tokenUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LlmCallCount"] as? Int64 {
                self.llmCallCount = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskCount"] as? Int64 {
                self.taskCount = value
            }
            if let value = dict["TokenUsage"] as? Int64 {
                self.tokenUsage = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListWorkerStatsDetailsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListWorkerStatsDetailsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListWorkerStatsDetailsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListWorkerStatsDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkerStatsDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWorkerStatsDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkersRequest : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var name: String?

        public var role: String?

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
            if self.role != nil {
                map["Role"] = self.role!
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
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Template : Tea.TeaModel {
        public var label: String?

        public var name: String?

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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var agentType: String?

    public var credential: String?

    public var group: ListWorkersRequest.Group?

    public var instanceId: String?

    public var maxResults: Int32?

    public var mcp: String?

    public var modelName: String?

    public var modelProvider: String?

    public var nameLike: String?

    public var nextToken: String?

    public var template: ListWorkersRequest.Template?

    public var versionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.credential != nil {
            map["Credential"] = self.credential!
        }
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.mcp != nil {
            map["Mcp"] = self.mcp!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelProvider != nil {
            map["ModelProvider"] = self.modelProvider!
        }
        if self.nameLike != nil {
            map["NameLike"] = self.nameLike!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentType"] as? String {
            self.agentType = value
        }
        if let value = dict["Credential"] as? String {
            self.credential = value
        }
        if let value = dict["Group"] as? [String: Any?] {
            var model = ListWorkersRequest.Group()
            model.fromMap(value)
            self.group = model
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Mcp"] as? String {
            self.mcp = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["ModelProvider"] as? String {
            self.modelProvider = value
        }
        if let value = dict["NameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Template"] as? [String: Any?] {
            var model = ListWorkersRequest.Template()
            model.fromMap(value)
            self.template = model
        }
        if let value = dict["VersionCode"] as? String {
            self.versionCode = value
        }
    }
}

public class ListWorkersShrinkRequest : Tea.TeaModel {
    public var agentType: String?

    public var credential: String?

    public var groupShrink: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var mcp: String?

    public var modelName: String?

    public var modelProvider: String?

    public var nameLike: String?

    public var nextToken: String?

    public var templateShrink: String?

    public var versionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.credential != nil {
            map["Credential"] = self.credential!
        }
        if self.groupShrink != nil {
            map["Group"] = self.groupShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.mcp != nil {
            map["Mcp"] = self.mcp!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelProvider != nil {
            map["ModelProvider"] = self.modelProvider!
        }
        if self.nameLike != nil {
            map["NameLike"] = self.nameLike!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.templateShrink != nil {
            map["Template"] = self.templateShrink!
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentType"] as? String {
            self.agentType = value
        }
        if let value = dict["Credential"] as? String {
            self.credential = value
        }
        if let value = dict["Group"] as? String {
            self.groupShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Mcp"] as? String {
            self.mcp = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["ModelProvider"] as? String {
            self.modelProvider = value
        }
        if let value = dict["NameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Template"] as? String {
            self.templateShrink = value
        }
        if let value = dict["VersionCode"] as? String {
            self.versionCode = value
        }
    }
}

public class ListWorkersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Groups : Tea.TeaModel {
            public var name: String?

            public var role: String?

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
                if self.role != nil {
                    map["Role"] = self.role!
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
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public var label: String?

            public var name: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agentType: String?

        public var deployType: String?

        public var groups: [ListWorkersResponseBody.Items.Groups]?

        public var instanceId: String?

        public var name: String?

        public var status: String?

        public var template: ListWorkersResponseBody.Items.Template?

        public var versionCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentType != nil {
                map["AgentType"] = self.agentType!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.template != nil {
                map["Template"] = self.template?.toMap()
            }
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentType"] as? String {
                self.agentType = value
            }
            if let value = dict["DeployType"] as? String {
                self.deployType = value
            }
            if let value = dict["Groups"] as? [Any?] {
                var tmp : [ListWorkersResponseBody.Items.Groups] = []
                for v in value {
                    if v != nil {
                        var model = ListWorkersResponseBody.Items.Groups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groups = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Template"] as? [String: Any?] {
                var model = ListWorkersResponseBody.Items.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["VersionCode"] as? String {
                self.versionCode = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListWorkersResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListWorkersResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListWorkersResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListWorkersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWorkersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutCmsWorkspaceRequest : Tea.TeaModel {
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

public class PutCmsWorkspaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var requestId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
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
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var code: String?

    public var data: PutCmsWorkspaceResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PutCmsWorkspaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class PutCmsWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutCmsWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PutCmsWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFeaturesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var resourceName: String?

    public var targetScope: String?

    public override init() {
        super.init()
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
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.targetScope != nil {
            map["TargetScope"] = self.targetScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["TargetScope"] as? String {
            self.targetScope = value
        }
    }
}

public class QueryFeaturesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Features : Tea.TeaModel {
            public var description_: String?

            public var displayName: String?

            public var featureCode: String?

            public var supported: Bool?

            public var unsupportedReason: String?

            public var unsupportedReasonCode: String?

            public override init() {
                super.init()
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
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.featureCode != nil {
                    map["FeatureCode"] = self.featureCode!
                }
                if self.supported != nil {
                    map["Supported"] = self.supported!
                }
                if self.unsupportedReason != nil {
                    map["UnsupportedReason"] = self.unsupportedReason!
                }
                if self.unsupportedReasonCode != nil {
                    map["UnsupportedReasonCode"] = self.unsupportedReasonCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["FeatureCode"] as? String {
                    self.featureCode = value
                }
                if let value = dict["Supported"] as? Bool {
                    self.supported = value
                }
                if let value = dict["UnsupportedReason"] as? String {
                    self.unsupportedReason = value
                }
                if let value = dict["UnsupportedReasonCode"] as? String {
                    self.unsupportedReasonCode = value
                }
            }
        }
        public var features: [QueryFeaturesResponseBody.Data.Features]?

        public var instanceId: String?

        public var resourceName: String?

        public var targetScope: String?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.targetScope != nil {
                map["TargetScope"] = self.targetScope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Features"] as? [Any?] {
                var tmp : [QueryFeaturesResponseBody.Data.Features] = []
                for v in value {
                    if v != nil {
                        var model = QueryFeaturesResponseBody.Data.Features()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.features = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["TargetScope"] as? String {
                self.targetScope = value
            }
        }
    }
    public var code: String?

    public var data: QueryFeaturesResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryFeaturesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class QueryFeaturesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFeaturesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryFeaturesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySupportedZonesRequest : Tea.TeaModel {
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class QuerySupportedZonesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
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
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [QuerySupportedZonesResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [QuerySupportedZonesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = QuerySupportedZonesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class QuerySupportedZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySupportedZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySupportedZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetUserPasswordRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var password: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
    }
}

public class ResetUserPasswordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var name: String?

        public var password: String?

        public var subject: String?

        public var userPoolId: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.userPoolId != nil {
                map["UserPoolId"] = self.userPoolId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Subject"] as? String {
                self.subject = value
            }
            if let value = dict["UserPoolId"] as? String {
                self.userPoolId = value
            }
        }
    }
    public var code: String?

    public var data: ResetUserPasswordResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ResetUserPasswordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class ResetUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetUserPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetUserPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TestModelProviderRequest : Tea.TeaModel {
    public var instanceId: String?

    public var modelName: String?

    public var prompt: String?

    public var providerId: String?

    public var providerName: String?

    public override init() {
        super.init()
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
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
        if let value = dict["ProviderName"] as? String {
            self.providerName = value
        }
    }
}

public class TestModelProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorMessage: String?

        public var inputTokens: Int64?

        public var latencyMs: Int64?

        public var outputTokens: Int64?

        public var response: String?

        public var status: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.inputTokens != nil {
                map["InputTokens"] = self.inputTokens!
            }
            if self.latencyMs != nil {
                map["LatencyMs"] = self.latencyMs!
            }
            if self.outputTokens != nil {
                map["OutputTokens"] = self.outputTokens!
            }
            if self.response != nil {
                map["Response"] = self.response!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["InputTokens"] as? Int64 {
                self.inputTokens = value
            }
            if let value = dict["LatencyMs"] as? Int64 {
                self.latencyMs = value
            }
            if let value = dict["OutputTokens"] as? Int64 {
                self.outputTokens = value
            }
            if let value = dict["Response"] as? String {
                self.response = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: String?

    public var data: TestModelProviderResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TestModelProviderResponseBody.Data()
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

public class TestModelProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestModelProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TestModelProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindIdentityProviderRequest : Tea.TeaModel {
    public var identityProviderType: String?

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
        if self.identityProviderType != nil {
            map["IdentityProviderType"] = self.identityProviderType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProviderType"] as? String {
            self.identityProviderType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UnbindIdentityProviderResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class UnbindIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCredentialRequest : Tea.TeaModel {
    public var apiKey: String?

    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

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
        if self.apiKey != nil {
            map["ApiKey"] = self.apiKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var instanceId: String?

        public var name: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var data: UpdateCredentialResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateCredentialResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class UpdateCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIdentityProviderRequest : Tea.TeaModel {
    public var clientToken: String?

    public var identityProviderType: String?

    public var idpMetadata: String?

    public var instanceId: String?

    public var loginEnabled: Bool?

    public var syncEnabled: Bool?

    public override init() {
        super.init()
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
        if self.identityProviderType != nil {
            map["IdentityProviderType"] = self.identityProviderType!
        }
        if self.idpMetadata != nil {
            map["IdpMetadata"] = self.idpMetadata!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.loginEnabled != nil {
            map["LoginEnabled"] = self.loginEnabled!
        }
        if self.syncEnabled != nil {
            map["SyncEnabled"] = self.syncEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["IdentityProviderType"] as? String {
            self.identityProviderType = value
        }
        if let value = dict["IdpMetadata"] as? String {
            self.idpMetadata = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LoginEnabled"] as? Bool {
            self.loginEnabled = value
        }
        if let value = dict["SyncEnabled"] as? Bool {
            self.syncEnabled = value
        }
    }
}

public class UpdateIdentityProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bindingId: Int64?

        public var identityProviderType: String?

        public var instanceId: String?

        public var loginEnabled: Bool?

        public var syncEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bindingId != nil {
                map["BindingId"] = self.bindingId!
            }
            if self.identityProviderType != nil {
                map["IdentityProviderType"] = self.identityProviderType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.loginEnabled != nil {
                map["LoginEnabled"] = self.loginEnabled!
            }
            if self.syncEnabled != nil {
                map["SyncEnabled"] = self.syncEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindingId"] as? Int64 {
                self.bindingId = value
            }
            if let value = dict["IdentityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LoginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["SyncEnabled"] as? Bool {
                self.syncEnabled = value
            }
        }
    }
    public var code: String?

    public var data: UpdateIdentityProviderResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateIdentityProviderResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class UpdateIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var vSwitchId: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var clientToken: String?

    public var instanceId: String?

    public var instanceName: String?

    public var networkType: String?

    public var zones: [UpdateInstanceRequest.Zones]?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["Zones"] as? [Any?] {
            var tmp : [UpdateInstanceRequest.Zones] = []
            for v in value {
                if v != nil {
                    var model = UpdateInstanceRequest.Zones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zones = tmp
        }
    }
}

public class UpdateInstanceShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var instanceName: String?

    public var networkType: String?

    public var zonesShrink: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.zonesShrink != nil {
            map["Zones"] = self.zonesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["Zones"] as? String {
            self.zonesShrink = value
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: UpdateInstanceResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class UpdateInstanceAsyncTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var isResume: Bool?

    public var taskCode: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isResume != nil {
            map["IsResume"] = self.isResume!
        }
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsResume"] as? Bool {
            self.isResume = value
        }
        if let value = dict["TaskCode"] as? String {
            self.taskCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateInstanceAsyncTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var currentStep: String?

        public var modifiedAt: String?

        public var taskCode: String?

        public var taskId: String?

        public var taskStatus: String?

        public var waitingForUserAction: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.currentStep != nil {
                map["CurrentStep"] = self.currentStep!
            }
            if self.modifiedAt != nil {
                map["ModifiedAt"] = self.modifiedAt!
            }
            if self.taskCode != nil {
                map["TaskCode"] = self.taskCode!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.waitingForUserAction != nil {
                map["WaitingForUserAction"] = self.waitingForUserAction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["CurrentStep"] as? String {
                self.currentStep = value
            }
            if let value = dict["ModifiedAt"] as? String {
                self.modifiedAt = value
            }
            if let value = dict["TaskCode"] as? String {
                self.taskCode = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["WaitingForUserAction"] as? Bool {
                self.waitingForUserAction = value
            }
        }
    }
    public var code: String?

    public var data: UpdateInstanceAsyncTaskResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateInstanceAsyncTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class UpdateInstanceAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceAsyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceAsyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMcpRequest : Tea.TeaModel {
    public var addresses: [String]?

    public var authConfig: String?

    public var authEnabled: Bool?

    public var clientToken: String?

    public var createType: String?

    public var description_: String?

    public var id: String?

    public var instanceId: String?

    public var swaggerConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            map["Addresses"] = self.addresses!
        }
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig!
        }
        if self.authEnabled != nil {
            map["AuthEnabled"] = self.authEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.createType != nil {
            map["CreateType"] = self.createType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.swaggerConfig != nil {
            map["SwaggerConfig"] = self.swaggerConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addresses"] as? [String] {
            self.addresses = value
        }
        if let value = dict["AuthConfig"] as? String {
            self.authConfig = value
        }
        if let value = dict["AuthEnabled"] as? Bool {
            self.authEnabled = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CreateType"] as? String {
            self.createType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SwaggerConfig"] as? String {
            self.swaggerConfig = value
        }
    }
}

public class UpdateMcpShrinkRequest : Tea.TeaModel {
    public var addressesShrink: String?

    public var authConfig: String?

    public var authEnabled: Bool?

    public var clientToken: String?

    public var createType: String?

    public var description_: String?

    public var id: String?

    public var instanceId: String?

    public var swaggerConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressesShrink != nil {
            map["Addresses"] = self.addressesShrink!
        }
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig!
        }
        if self.authEnabled != nil {
            map["AuthEnabled"] = self.authEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.createType != nil {
            map["CreateType"] = self.createType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.swaggerConfig != nil {
            map["SwaggerConfig"] = self.swaggerConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addresses"] as? String {
            self.addressesShrink = value
        }
        if let value = dict["AuthConfig"] as? String {
            self.authConfig = value
        }
        if let value = dict["AuthEnabled"] as? Bool {
            self.authEnabled = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CreateType"] as? String {
            self.createType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SwaggerConfig"] as? String {
            self.swaggerConfig = value
        }
    }
}

public class UpdateMcpResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateMcpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMcpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateMcpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var id: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpdateModelResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelProviderRequest : Tea.TeaModel {
    public var address: String?

    public var apiKeys: [String]?

    public var clientToken: String?

    public var description_: String?

    public var id: String?

    public var instanceId: String?

    public var protocols: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.apiKeys != nil {
            map["ApiKeys"] = self.apiKeys!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.protocols != nil {
            map["Protocols"] = self.protocols!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["ApiKeys"] as? [String] {
            self.apiKeys = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Protocols"] as? [String] {
            self.protocols = value
        }
    }
}

public class UpdateModelProviderShrinkRequest : Tea.TeaModel {
    public var address: String?

    public var apiKeysShrink: String?

    public var clientToken: String?

    public var description_: String?

    public var id: String?

    public var instanceId: String?

    public var protocolsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.apiKeysShrink != nil {
            map["ApiKeys"] = self.apiKeysShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.protocolsShrink != nil {
            map["Protocols"] = self.protocolsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["ApiKeys"] as? String {
            self.apiKeysShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Protocols"] as? String {
            self.protocolsShrink = value
        }
    }
}

public class UpdateModelProviderResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateModelProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateModelProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceEndpointRequest : Tea.TeaModel {
    public var certIdentifier: String?

    public var clientToken: String?

    public var domain: String?

    public var endpointId: String?

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
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpdateServiceEndpointResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certIdentifier: String?

        public var component: String?

        public var domain: String?

        public var domainType: String?

        public var endpointId: String?

        public var endpointName: String?

        public var instanceId: String?

        public var networkType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certIdentifier != nil {
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.component != nil {
                map["Component"] = self.component!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointName != nil {
                map["EndpointName"] = self.endpointName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertIdentifier"] as? String {
                self.certIdentifier = value
            }
            if let value = dict["Component"] as? String {
                self.component = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["DomainType"] as? String {
                self.domainType = value
            }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["EndpointName"] as? String {
                self.endpointName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
        }
    }
    public var code: String?

    public var data: UpdateServiceEndpointResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateServiceEndpointResponseBody.Data()
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

public class UpdateServiceEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateServiceEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTeamRequest : Tea.TeaModel {
    public class TeamMembers : Tea.TeaModel {
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
    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var teamMembers: [UpdateTeamRequest.TeamMembers]?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.teamMembers != nil {
            var tmp : [Any] = []
            for k in self.teamMembers! {
                tmp.append(k.toMap())
            }
            map["TeamMembers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TeamMembers"] as? [Any?] {
            var tmp : [UpdateTeamRequest.TeamMembers] = []
            for v in value {
                if v != nil {
                    var model = UpdateTeamRequest.TeamMembers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.teamMembers = tmp
        }
    }
}

public class UpdateTeamShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var teamMembersShrink: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.teamMembersShrink != nil {
            map["TeamMembers"] = self.teamMembersShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TeamMembers"] as? String {
            self.teamMembersShrink = value
        }
    }
}

public class UpdateTeamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TeamMembers : Tea.TeaModel {
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
        public var adminName: String?

        public var createdAt: String?

        public var description_: String?

        public var instanceId: String?

        public var leaderName: String?

        public var name: String?

        public var teamMembers: [UpdateTeamResponseBody.Data.TeamMembers]?

        public var updatedAt: String?

        public var workerNames: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminName != nil {
                map["AdminName"] = self.adminName!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.leaderName != nil {
                map["LeaderName"] = self.leaderName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.teamMembers != nil {
                var tmp : [Any] = []
                for k in self.teamMembers! {
                    tmp.append(k.toMap())
                }
                map["TeamMembers"] = tmp
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.workerNames != nil {
                map["WorkerNames"] = self.workerNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdminName"] as? String {
                self.adminName = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LeaderName"] as? String {
                self.leaderName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["TeamMembers"] as? [Any?] {
                var tmp : [UpdateTeamResponseBody.Data.TeamMembers] = []
                for v in value {
                    if v != nil {
                        var model = UpdateTeamResponseBody.Data.TeamMembers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.teamMembers = tmp
            }
            if let value = dict["UpdatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["WorkerNames"] as? [String] {
                self.workerNames = value
            }
        }
    }
    public var code: String?

    public var data: UpdateTeamResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateTeamResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class UpdateTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTeamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var authMethod: String?

    public var clientToken: String?

    public var displayName: String?

    public var email: String?

    public var instanceId: String?

    public var name: String?

    public var note: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMethod != nil {
            map["AuthMethod"] = self.authMethod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.note != nil {
            map["Note"] = self.note!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMethod"] as? String {
            self.authMethod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Note"] as? String {
            self.note = value
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authMethod: String?

        public var createdAt: String?

        public var displayName: String?

        public var email: String?

        public var instanceId: String?

        public var name: String?

        public var note: String?

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
            if self.authMethod != nil {
                map["AuthMethod"] = self.authMethod!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthMethod"] as? String {
                self.authMethod = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: UpdateUserResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkerRequest : Tea.TeaModel {
    public class Channels : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var cardTemplateId: String?

            public var clientId: String?

            public var extension_: String?

            public var messageType: String?

            public var robotCode: String?

            public var showThinking: Bool?

            public var showToolCalls: Bool?

            public var streamingEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cardTemplateId != nil {
                    map["CardTemplateId"] = self.cardTemplateId!
                }
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.messageType != nil {
                    map["MessageType"] = self.messageType!
                }
                if self.robotCode != nil {
                    map["RobotCode"] = self.robotCode!
                }
                if self.showThinking != nil {
                    map["ShowThinking"] = self.showThinking!
                }
                if self.showToolCalls != nil {
                    map["ShowToolCalls"] = self.showToolCalls!
                }
                if self.streamingEnabled != nil {
                    map["StreamingEnabled"] = self.streamingEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CardTemplateId"] as? String {
                    self.cardTemplateId = value
                }
                if let value = dict["ClientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["Extension"] as? String {
                    self.extension_ = value
                }
                if let value = dict["MessageType"] as? String {
                    self.messageType = value
                }
                if let value = dict["RobotCode"] as? String {
                    self.robotCode = value
                }
                if let value = dict["ShowThinking"] as? Bool {
                    self.showThinking = value
                }
                if let value = dict["ShowToolCalls"] as? Bool {
                    self.showToolCalls = value
                }
                if let value = dict["StreamingEnabled"] as? Bool {
                    self.streamingEnabled = value
                }
            }
        }
        public class Secrets : Tea.TeaModel {
            public var clientSecret: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clientSecret != nil {
                    map["ClientSecret"] = self.clientSecret!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClientSecret"] as? String {
                    self.clientSecret = value
                }
            }
        }
        public var config: UpdateWorkerRequest.Channels.Config?

        public var enabled: Bool?

        public var secrets: UpdateWorkerRequest.Channels.Secrets?

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
            try self.secrets?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.secrets != nil {
                map["Secrets"] = self.secrets?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? [String: Any?] {
                var model = UpdateWorkerRequest.Channels.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["Secrets"] as? [String: Any?] {
                var model = UpdateWorkerRequest.Channels.Secrets()
                model.fromMap(value)
                self.secrets = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class Credentials : Tea.TeaModel {
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
    public class LimitConfig : Tea.TeaModel {
        public var limitType: String?

        public var periodType: String?

        public var usageLimit: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.limitType != nil {
                map["LimitType"] = self.limitType!
            }
            if self.periodType != nil {
                map["PeriodType"] = self.periodType!
            }
            if self.usageLimit != nil {
                map["UsageLimit"] = self.usageLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LimitType"] as? String {
                self.limitType = value
            }
            if let value = dict["PeriodType"] as? String {
                self.periodType = value
            }
            if let value = dict["UsageLimit"] as? Int64 {
                self.usageLimit = value
            }
        }
    }
    public class McpServers : Tea.TeaModel {
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
    public class Model : Tea.TeaModel {
        public var modelName: String?

        public var modelProvider: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelProvider != nil {
                map["ModelProvider"] = self.modelProvider!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModelName"] as? String {
                self.modelName = value
            }
            if let value = dict["ModelProvider"] as? String {
                self.modelProvider = value
            }
        }
    }
    public class Skills : Tea.TeaModel {
        public var label: String?

        public var name: String?

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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class Template : Tea.TeaModel {
        public var label: String?

        public var name: String?

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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var agents: String?

    public var channels: [UpdateWorkerRequest.Channels]?

    public var clientToken: String?

    public var credentials: [UpdateWorkerRequest.Credentials]?

    public var instanceId: String?

    public var limitConfig: UpdateWorkerRequest.LimitConfig?

    public var mcpServers: [UpdateWorkerRequest.McpServers]?

    public var model: UpdateWorkerRequest.Model?

    public var name: String?

    public var skills: [UpdateWorkerRequest.Skills]?

    public var soul: String?

    public var template: UpdateWorkerRequest.Template?

    public var versionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.limitConfig?.validate()
        try self.model?.validate()
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agents != nil {
            map["Agents"] = self.agents!
        }
        if self.channels != nil {
            var tmp : [Any] = []
            for k in self.channels! {
                tmp.append(k.toMap())
            }
            map["Channels"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.credentials != nil {
            var tmp : [Any] = []
            for k in self.credentials! {
                tmp.append(k.toMap())
            }
            map["Credentials"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.limitConfig != nil {
            map["LimitConfig"] = self.limitConfig?.toMap()
        }
        if self.mcpServers != nil {
            var tmp : [Any] = []
            for k in self.mcpServers! {
                tmp.append(k.toMap())
            }
            map["McpServers"] = tmp
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skills != nil {
            var tmp : [Any] = []
            for k in self.skills! {
                tmp.append(k.toMap())
            }
            map["Skills"] = tmp
        }
        if self.soul != nil {
            map["Soul"] = self.soul!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Agents"] as? String {
            self.agents = value
        }
        if let value = dict["Channels"] as? [Any?] {
            var tmp : [UpdateWorkerRequest.Channels] = []
            for v in value {
                if v != nil {
                    var model = UpdateWorkerRequest.Channels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.channels = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Credentials"] as? [Any?] {
            var tmp : [UpdateWorkerRequest.Credentials] = []
            for v in value {
                if v != nil {
                    var model = UpdateWorkerRequest.Credentials()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.credentials = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LimitConfig"] as? [String: Any?] {
            var model = UpdateWorkerRequest.LimitConfig()
            model.fromMap(value)
            self.limitConfig = model
        }
        if let value = dict["McpServers"] as? [Any?] {
            var tmp : [UpdateWorkerRequest.McpServers] = []
            for v in value {
                if v != nil {
                    var model = UpdateWorkerRequest.McpServers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mcpServers = tmp
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = UpdateWorkerRequest.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Skills"] as? [Any?] {
            var tmp : [UpdateWorkerRequest.Skills] = []
            for v in value {
                if v != nil {
                    var model = UpdateWorkerRequest.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["Soul"] as? String {
            self.soul = value
        }
        if let value = dict["Template"] as? [String: Any?] {
            var model = UpdateWorkerRequest.Template()
            model.fromMap(value)
            self.template = model
        }
        if let value = dict["VersionCode"] as? String {
            self.versionCode = value
        }
    }
}

public class UpdateWorkerShrinkRequest : Tea.TeaModel {
    public var agents: String?

    public var channelsShrink: String?

    public var clientToken: String?

    public var credentialsShrink: String?

    public var instanceId: String?

    public var limitConfigShrink: String?

    public var mcpServersShrink: String?

    public var modelShrink: String?

    public var name: String?

    public var skillsShrink: String?

    public var soul: String?

    public var templateShrink: String?

    public var versionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agents != nil {
            map["Agents"] = self.agents!
        }
        if self.channelsShrink != nil {
            map["Channels"] = self.channelsShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.credentialsShrink != nil {
            map["Credentials"] = self.credentialsShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.limitConfigShrink != nil {
            map["LimitConfig"] = self.limitConfigShrink!
        }
        if self.mcpServersShrink != nil {
            map["McpServers"] = self.mcpServersShrink!
        }
        if self.modelShrink != nil {
            map["Model"] = self.modelShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skillsShrink != nil {
            map["Skills"] = self.skillsShrink!
        }
        if self.soul != nil {
            map["Soul"] = self.soul!
        }
        if self.templateShrink != nil {
            map["Template"] = self.templateShrink!
        }
        if self.versionCode != nil {
            map["VersionCode"] = self.versionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Agents"] as? String {
            self.agents = value
        }
        if let value = dict["Channels"] as? String {
            self.channelsShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Credentials"] as? String {
            self.credentialsShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LimitConfig"] as? String {
            self.limitConfigShrink = value
        }
        if let value = dict["McpServers"] as? String {
            self.mcpServersShrink = value
        }
        if let value = dict["Model"] as? String {
            self.modelShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Skills"] as? String {
            self.skillsShrink = value
        }
        if let value = dict["Soul"] as? String {
            self.soul = value
        }
        if let value = dict["Template"] as? String {
            self.templateShrink = value
        }
        if let value = dict["VersionCode"] as? String {
            self.versionCode = value
        }
    }
}

public class UpdateWorkerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Channels : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var cardTemplateId: String?

                public var clientId: String?

                public var extension_: String?

                public var messageType: String?

                public var robotCode: String?

                public var showThinking: Bool?

                public var showToolCalls: Bool?

                public var streamingEnabled: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cardTemplateId != nil {
                        map["CardTemplateId"] = self.cardTemplateId!
                    }
                    if self.clientId != nil {
                        map["ClientId"] = self.clientId!
                    }
                    if self.extension_ != nil {
                        map["Extension"] = self.extension_!
                    }
                    if self.messageType != nil {
                        map["MessageType"] = self.messageType!
                    }
                    if self.robotCode != nil {
                        map["RobotCode"] = self.robotCode!
                    }
                    if self.showThinking != nil {
                        map["ShowThinking"] = self.showThinking!
                    }
                    if self.showToolCalls != nil {
                        map["ShowToolCalls"] = self.showToolCalls!
                    }
                    if self.streamingEnabled != nil {
                        map["StreamingEnabled"] = self.streamingEnabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CardTemplateId"] as? String {
                        self.cardTemplateId = value
                    }
                    if let value = dict["ClientId"] as? String {
                        self.clientId = value
                    }
                    if let value = dict["Extension"] as? String {
                        self.extension_ = value
                    }
                    if let value = dict["MessageType"] as? String {
                        self.messageType = value
                    }
                    if let value = dict["RobotCode"] as? String {
                        self.robotCode = value
                    }
                    if let value = dict["ShowThinking"] as? Bool {
                        self.showThinking = value
                    }
                    if let value = dict["ShowToolCalls"] as? Bool {
                        self.showToolCalls = value
                    }
                    if let value = dict["StreamingEnabled"] as? Bool {
                        self.streamingEnabled = value
                    }
                }
            }
            public class SecretStatus : Tea.TeaModel {
                public var clientSecret: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clientSecret != nil {
                        map["ClientSecret"] = self.clientSecret!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClientSecret"] as? Bool {
                        self.clientSecret = value
                    }
                }
            }
            public var config: UpdateWorkerResponseBody.Data.Channels.Config?

            public var enabled: Bool?

            public var secretStatus: UpdateWorkerResponseBody.Data.Channels.SecretStatus?

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
                try self.secretStatus?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.config != nil {
                    map["Config"] = self.config?.toMap()
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.secretStatus != nil {
                    map["SecretStatus"] = self.secretStatus?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Config"] as? [String: Any?] {
                    var model = UpdateWorkerResponseBody.Data.Channels.Config()
                    model.fromMap(value)
                    self.config = model
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["SecretStatus"] as? [String: Any?] {
                    var model = UpdateWorkerResponseBody.Data.Channels.SecretStatus()
                    model.fromMap(value)
                    self.secretStatus = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Credentials : Tea.TeaModel {
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
        public class Groups : Tea.TeaModel {
            public var name: String?

            public var role: String?

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
                if self.role != nil {
                    map["Role"] = self.role!
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
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class LimitConfig : Tea.TeaModel {
            public var limitType: String?

            public var periodType: String?

            public var usageLimit: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                if self.periodType != nil {
                    map["PeriodType"] = self.periodType!
                }
                if self.usageLimit != nil {
                    map["UsageLimit"] = self.usageLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LimitType"] as? String {
                    self.limitType = value
                }
                if let value = dict["PeriodType"] as? String {
                    self.periodType = value
                }
                if let value = dict["UsageLimit"] as? Int64 {
                    self.usageLimit = value
                }
            }
        }
        public class McpServers : Tea.TeaModel {
            public var name: String?

            public var transport: String?

            public var url: String?

            public override init() {
                super.init()
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
                if self.transport != nil {
                    map["Transport"] = self.transport!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Transport"] as? String {
                    self.transport = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Model : Tea.TeaModel {
            public var modelName: String?

            public var modelProvider: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelProvider != nil {
                    map["ModelProvider"] = self.modelProvider!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["ModelProvider"] as? String {
                    self.modelProvider = value
                }
            }
        }
        public class Skills : Tea.TeaModel {
            public var label: String?

            public var name: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public var label: String?

            public var name: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agentType: String?

        public var agents: String?

        public var channels: [UpdateWorkerResponseBody.Data.Channels]?

        public var credentials: [UpdateWorkerResponseBody.Data.Credentials]?

        public var deployType: String?

        public var groups: [UpdateWorkerResponseBody.Data.Groups]?

        public var instanceId: String?

        public var limitConfig: UpdateWorkerResponseBody.Data.LimitConfig?

        public var mcpServers: [UpdateWorkerResponseBody.Data.McpServers]?

        public var model: UpdateWorkerResponseBody.Data.Model?

        public var name: String?

        public var regionId: String?

        public var skills: [UpdateWorkerResponseBody.Data.Skills]?

        public var soul: String?

        public var startTime: String?

        public var status: String?

        public var template: UpdateWorkerResponseBody.Data.Template?

        public var versionCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.limitConfig?.validate()
            try self.model?.validate()
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentType != nil {
                map["AgentType"] = self.agentType!
            }
            if self.agents != nil {
                map["Agents"] = self.agents!
            }
            if self.channels != nil {
                var tmp : [Any] = []
                for k in self.channels! {
                    tmp.append(k.toMap())
                }
                map["Channels"] = tmp
            }
            if self.credentials != nil {
                var tmp : [Any] = []
                for k in self.credentials! {
                    tmp.append(k.toMap())
                }
                map["Credentials"] = tmp
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.limitConfig != nil {
                map["LimitConfig"] = self.limitConfig?.toMap()
            }
            if self.mcpServers != nil {
                var tmp : [Any] = []
                for k in self.mcpServers! {
                    tmp.append(k.toMap())
                }
                map["McpServers"] = tmp
            }
            if self.model != nil {
                map["Model"] = self.model?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["Skills"] = tmp
            }
            if self.soul != nil {
                map["Soul"] = self.soul!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.template != nil {
                map["Template"] = self.template?.toMap()
            }
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentType"] as? String {
                self.agentType = value
            }
            if let value = dict["Agents"] as? String {
                self.agents = value
            }
            if let value = dict["Channels"] as? [Any?] {
                var tmp : [UpdateWorkerResponseBody.Data.Channels] = []
                for v in value {
                    if v != nil {
                        var model = UpdateWorkerResponseBody.Data.Channels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.channels = tmp
            }
            if let value = dict["Credentials"] as? [Any?] {
                var tmp : [UpdateWorkerResponseBody.Data.Credentials] = []
                for v in value {
                    if v != nil {
                        var model = UpdateWorkerResponseBody.Data.Credentials()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.credentials = tmp
            }
            if let value = dict["DeployType"] as? String {
                self.deployType = value
            }
            if let value = dict["Groups"] as? [Any?] {
                var tmp : [UpdateWorkerResponseBody.Data.Groups] = []
                for v in value {
                    if v != nil {
                        var model = UpdateWorkerResponseBody.Data.Groups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groups = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LimitConfig"] as? [String: Any?] {
                var model = UpdateWorkerResponseBody.Data.LimitConfig()
                model.fromMap(value)
                self.limitConfig = model
            }
            if let value = dict["McpServers"] as? [Any?] {
                var tmp : [UpdateWorkerResponseBody.Data.McpServers] = []
                for v in value {
                    if v != nil {
                        var model = UpdateWorkerResponseBody.Data.McpServers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mcpServers = tmp
            }
            if let value = dict["Model"] as? [String: Any?] {
                var model = UpdateWorkerResponseBody.Data.Model()
                model.fromMap(value)
                self.model = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Skills"] as? [Any?] {
                var tmp : [UpdateWorkerResponseBody.Data.Skills] = []
                for v in value {
                    if v != nil {
                        var model = UpdateWorkerResponseBody.Data.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["Soul"] as? String {
                self.soul = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Template"] as? [String: Any?] {
                var model = UpdateWorkerResponseBody.Data.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["VersionCode"] as? String {
                self.versionCode = value
            }
        }
    }
    public var code: String?

    public var data: UpdateWorkerResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateWorkerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class UpdateWorkerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateWorkerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
