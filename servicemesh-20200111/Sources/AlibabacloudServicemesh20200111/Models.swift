import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class SecretCreateRecordValue : Tea.TeaModel {
    public var state: String?

    public var clusterId: String?

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
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
    }
}

public class SecretDeleteRecordValue : Tea.TeaModel {
    public var state: String?

    public var clusterId: String?

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
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
    }
}

public class CCMVersionsValue : Tea.TeaModel {
    public var queryState: String?

    public var version: String?

    public var SLBGracefulDrainSupported: Bool?

    public var clusterId: String?

    public var message: String?

    public var SLBGracefulDrainSupport: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryState != nil {
            map["QueryState"] = self.queryState!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.SLBGracefulDrainSupported != nil {
            map["SLBGracefulDrainSupported"] = self.SLBGracefulDrainSupported!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.SLBGracefulDrainSupport != nil {
            map["SLBGracefulDrainSupport"] = self.SLBGracefulDrainSupport!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryState"] as? String {
            self.queryState = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
        if let value = dict["SLBGracefulDrainSupported"] as? Bool {
            self.SLBGracefulDrainSupported = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["SLBGracefulDrainSupport"] as? Bool {
            self.SLBGracefulDrainSupport = value
        }
    }
}

public class MultiClusterNetworksValue : Tea.TeaModel {
    public var network: String?

    public var enableGateway: Bool?

    public var customGatewayAddress: String?

    public var gatewayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.enableGateway != nil {
            map["EnableGateway"] = self.enableGateway!
        }
        if self.customGatewayAddress != nil {
            map["CustomGatewayAddress"] = self.customGatewayAddress!
        }
        if self.gatewayName != nil {
            map["GatewayName"] = self.gatewayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Network"] as? String {
            self.network = value
        }
        if let value = dict["EnableGateway"] as? Bool {
            self.enableGateway = value
        }
        if let value = dict["CustomGatewayAddress"] as? String {
            self.customGatewayAddress = value
        }
        if let value = dict["GatewayName"] as? String {
            self.gatewayName = value
        }
    }
}

public class UpgradeDetailGatewayStatusRecordValue : Tea.TeaModel {
    public var status: String?

    public var message: String?

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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class AddClusterIntoServiceMeshRequest : Tea.TeaModel {
    public var clusterId: String?

    public var discoveryOnly: Bool?

    public var ignoreNamespaceCheck: Bool?

    public var kubeconfig: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.discoveryOnly != nil {
            map["DiscoveryOnly"] = self.discoveryOnly!
        }
        if self.ignoreNamespaceCheck != nil {
            map["IgnoreNamespaceCheck"] = self.ignoreNamespaceCheck!
        }
        if self.kubeconfig != nil {
            map["Kubeconfig"] = self.kubeconfig!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DiscoveryOnly"] as? Bool {
            self.discoveryOnly = value
        }
        if let value = dict["IgnoreNamespaceCheck"] as? Bool {
            self.ignoreNamespaceCheck = value
        }
        if let value = dict["Kubeconfig"] as? String {
            self.kubeconfig = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class AddClusterIntoServiceMeshResponseBody : Tea.TeaModel {
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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddClusterIntoServiceMeshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddClusterIntoServiceMeshResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddClusterIntoServiceMeshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddVMIntoServiceMeshRequest : Tea.TeaModel {
    public var ecsId: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsId != nil {
            map["EcsId"] = self.ecsId!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcsId"] as? String {
            self.ecsId = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class AddVMIntoServiceMeshResponseBody : Tea.TeaModel {
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

public class AddVMIntoServiceMeshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddVMIntoServiceMeshResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddVMIntoServiceMeshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateASMGatewayRequest : Tea.TeaModel {
    public var body: String?

    public var istioGatewayName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
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
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class CreateASMGatewayResponseBody : Tea.TeaModel {
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

public class CreateASMGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateASMGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateASMGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGatewaySecretRequest : Tea.TeaModel {
    public var cert: String?

    public var istioGatewayName: String?

    public var key: String?

    public var secretName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cert != nil {
            map["Cert"] = self.cert!
        }
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cert"] as? String {
            self.cert = value
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class CreateGatewaySecretResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretCreateRecord: [String: SecretCreateRecordValue]?

    public override init() {
        super.init()
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
        if self.secretCreateRecord != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.secretCreateRecord! {
                tmp[k] = v.toMap()
            }
            map["SecretCreateRecord"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretCreateRecord"] as? [String: Any?] {
            var tmp : [String: SecretCreateRecordValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = SecretCreateRecordValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.secretCreateRecord = tmp
        }
    }
}

public class CreateGatewaySecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewaySecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateGatewaySecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIstioGatewayDomainsRequest : Tea.TeaModel {
    public var credential: String?

    public var forceHttps: Bool?

    public var hosts: String?

    public var istioGatewayName: String?

    public var limit: String?

    public var namespace: String?

    public var number: Int32?

    public var portName: String?

    public var protocol_: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credential != nil {
            map["Credential"] = self.credential!
        }
        if self.forceHttps != nil {
            map["ForceHttps"] = self.forceHttps!
        }
        if self.hosts != nil {
            map["Hosts"] = self.hosts!
        }
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        if self.portName != nil {
            map["PortName"] = self.portName!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Credential"] as? String {
            self.credential = value
        }
        if let value = dict["ForceHttps"] as? Bool {
            self.forceHttps = value
        }
        if let value = dict["Hosts"] as? String {
            self.hosts = value
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Limit"] as? String {
            self.limit = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["Number"] as? Int32 {
            self.number = value
        }
        if let value = dict["PortName"] as? String {
            self.portName = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class CreateIstioGatewayDomainsResponseBody : Tea.TeaModel {
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

public class CreateIstioGatewayDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIstioGatewayDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateIstioGatewayDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIstioGatewayRoutesRequest : Tea.TeaModel {
    public class GatewayRoute : Tea.TeaModel {
        public class HTTPAdvancedOptions : Tea.TeaModel {
            public class Delegate : Tea.TeaModel {
                public var name: String?

                public var namespace: String?

                public override init() {
                    super.init()
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
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Namespace"] as? String {
                        self.namespace = value
                    }
                }
            }
            public class Fault : Tea.TeaModel {
                public class Abort : Tea.TeaModel {
                    public class Percentage : Tea.TeaModel {
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
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Value"] as? Double {
                                self.value = value
                            }
                        }
                    }
                    public var httpStatus: Int32?

                    public var percentage: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort.Percentage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.percentage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.httpStatus != nil {
                            map["HttpStatus"] = self.httpStatus!
                        }
                        if self.percentage != nil {
                            map["Percentage"] = self.percentage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["HttpStatus"] as? Int32 {
                            self.httpStatus = value
                        }
                        if let value = dict["Percentage"] as? [String: Any?] {
                            var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort.Percentage()
                            model.fromMap(value)
                            self.percentage = model
                        }
                    }
                }
                public class Delay : Tea.TeaModel {
                    public class Percentage : Tea.TeaModel {
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
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Value"] as? Double {
                                self.value = value
                            }
                        }
                    }
                    public var fixedDelay: String?

                    public var percentage: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay.Percentage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.percentage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.fixedDelay != nil {
                            map["FixedDelay"] = self.fixedDelay!
                        }
                        if self.percentage != nil {
                            map["Percentage"] = self.percentage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FixedDelay"] as? String {
                            self.fixedDelay = value
                        }
                        if let value = dict["Percentage"] as? [String: Any?] {
                            var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay.Percentage()
                            model.fromMap(value)
                            self.percentage = model
                        }
                    }
                }
                public var abort: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort?

                public var delay: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.abort?.validate()
                    try self.delay?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.abort != nil {
                        map["Abort"] = self.abort?.toMap()
                    }
                    if self.delay != nil {
                        map["Delay"] = self.delay?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Abort"] as? [String: Any?] {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(value)
                        self.abort = model
                    }
                    if let value = dict["Delay"] as? [String: Any?] {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay()
                        model.fromMap(value)
                        self.delay = model
                    }
                }
            }
            public class HTTPRedirect : Tea.TeaModel {
                public var authority: String?

                public var redirectCode: Int32?

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
                    if self.authority != nil {
                        map["Authority"] = self.authority!
                    }
                    if self.redirectCode != nil {
                        map["RedirectCode"] = self.redirectCode!
                    }
                    if self.uri != nil {
                        map["Uri"] = self.uri!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Authority"] as? String {
                        self.authority = value
                    }
                    if let value = dict["RedirectCode"] as? Int32 {
                        self.redirectCode = value
                    }
                    if let value = dict["Uri"] as? String {
                        self.uri = value
                    }
                }
            }
            public class Mirror : Tea.TeaModel {
                public var host: String?

                public var subset: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.subset != nil {
                        map["Subset"] = self.subset!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Subset"] as? String {
                        self.subset = value
                    }
                }
            }
            public class MirrorPercentage : Tea.TeaModel {
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
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Value"] as? Double {
                        self.value = value
                    }
                }
            }
            public class Retries : Tea.TeaModel {
                public class RetryRemoteLocalities : Tea.TeaModel {
                    public var value: Bool?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Value"] as? Bool {
                            self.value = value
                        }
                    }
                }
                public var attempts: Int32?

                public var perTryTimeout: String?

                public var retryOn: String?

                public var retryRemoteLocalities: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries.RetryRemoteLocalities?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.retryRemoteLocalities?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attempts != nil {
                        map["Attempts"] = self.attempts!
                    }
                    if self.perTryTimeout != nil {
                        map["PerTryTimeout"] = self.perTryTimeout!
                    }
                    if self.retryOn != nil {
                        map["RetryOn"] = self.retryOn!
                    }
                    if self.retryRemoteLocalities != nil {
                        map["RetryRemoteLocalities"] = self.retryRemoteLocalities?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Attempts"] as? Int32 {
                        self.attempts = value
                    }
                    if let value = dict["PerTryTimeout"] as? String {
                        self.perTryTimeout = value
                    }
                    if let value = dict["RetryOn"] as? String {
                        self.retryOn = value
                    }
                    if let value = dict["RetryRemoteLocalities"] as? [String: Any?] {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries.RetryRemoteLocalities()
                        model.fromMap(value)
                        self.retryRemoteLocalities = model
                    }
                }
            }
            public class Rewrite : Tea.TeaModel {
                public var authority: String?

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
                    if self.authority != nil {
                        map["Authority"] = self.authority!
                    }
                    if self.uri != nil {
                        map["Uri"] = self.uri!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Authority"] as? String {
                        self.authority = value
                    }
                    if let value = dict["Uri"] as? String {
                        self.uri = value
                    }
                }
            }
            public var delegate: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Delegate?

            public var fault: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault?

            public var HTTPRedirect: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.HTTPRedirect?

            public var mirror: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Mirror?

            public var mirrorPercentage: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.MirrorPercentage?

            public var retries: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries?

            public var rewrite: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Rewrite?

            public var timeout: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.delegate?.validate()
                try self.fault?.validate()
                try self.HTTPRedirect?.validate()
                try self.mirror?.validate()
                try self.mirrorPercentage?.validate()
                try self.retries?.validate()
                try self.rewrite?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.delegate != nil {
                    map["Delegate"] = self.delegate?.toMap()
                }
                if self.fault != nil {
                    map["Fault"] = self.fault?.toMap()
                }
                if self.HTTPRedirect != nil {
                    map["HTTPRedirect"] = self.HTTPRedirect?.toMap()
                }
                if self.mirror != nil {
                    map["Mirror"] = self.mirror?.toMap()
                }
                if self.mirrorPercentage != nil {
                    map["MirrorPercentage"] = self.mirrorPercentage?.toMap()
                }
                if self.retries != nil {
                    map["Retries"] = self.retries?.toMap()
                }
                if self.rewrite != nil {
                    map["Rewrite"] = self.rewrite?.toMap()
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Delegate"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Delegate()
                    model.fromMap(value)
                    self.delegate = model
                }
                if let value = dict["Fault"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault()
                    model.fromMap(value)
                    self.fault = model
                }
                if let value = dict["HTTPRedirect"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(value)
                    self.HTTPRedirect = model
                }
                if let value = dict["Mirror"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Mirror()
                    model.fromMap(value)
                    self.mirror = model
                }
                if let value = dict["MirrorPercentage"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(value)
                    self.mirrorPercentage = model
                }
                if let value = dict["Retries"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries()
                    model.fromMap(value)
                    self.retries = model
                }
                if let value = dict["Rewrite"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(value)
                    self.rewrite = model
                }
                if let value = dict["Timeout"] as? String {
                    self.timeout = value
                }
            }
        }
        public class MatchRequest : Tea.TeaModel {
            public class Headers : Tea.TeaModel {
                public var matchingContent: String?

                public var matchingMode: String?

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
                    if self.matchingContent != nil {
                        map["MatchingContent"] = self.matchingContent!
                    }
                    if self.matchingMode != nil {
                        map["MatchingMode"] = self.matchingMode!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MatchingContent"] as? String {
                        self.matchingContent = value
                    }
                    if let value = dict["MatchingMode"] as? String {
                        self.matchingMode = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public class TLSMatchAttributes : Tea.TeaModel {
                public var SNIHosts: [String]?

                public var TLSPort: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.SNIHosts != nil {
                        map["SNIHosts"] = self.SNIHosts!
                    }
                    if self.TLSPort != nil {
                        map["TLSPort"] = self.TLSPort!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SNIHosts"] as? [String] {
                        self.SNIHosts = value
                    }
                    if let value = dict["TLSPort"] as? Int32 {
                        self.TLSPort = value
                    }
                }
            }
            public class URI : Tea.TeaModel {
                public var matchingContent: String?

                public var matchingMode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.matchingContent != nil {
                        map["MatchingContent"] = self.matchingContent!
                    }
                    if self.matchingMode != nil {
                        map["MatchingMode"] = self.matchingMode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MatchingContent"] as? String {
                        self.matchingContent = value
                    }
                    if let value = dict["MatchingMode"] as? String {
                        self.matchingMode = value
                    }
                }
            }
            public var headers: [CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers]?

            public var ports: [Int32]?

            public var TLSMatchAttributes: [CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes]?

            public var URI: CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.URI?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.URI?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.headers != nil {
                    var tmp : [Any] = []
                    for k in self.headers! {
                        tmp.append(k.toMap())
                    }
                    map["Headers"] = tmp
                }
                if self.ports != nil {
                    map["Ports"] = self.ports!
                }
                if self.TLSMatchAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.TLSMatchAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["TLSMatchAttributes"] = tmp
                }
                if self.URI != nil {
                    map["URI"] = self.URI?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Headers"] as? [Any?] {
                    var tmp : [CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers] = []
                    for v in value {
                        if v != nil {
                            var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.headers = tmp
                }
                if let value = dict["Ports"] as? [Int32] {
                    self.ports = value
                }
                if let value = dict["TLSMatchAttributes"] as? [Any?] {
                    var tmp : [CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes] = []
                    for v in value {
                        if v != nil {
                            var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.TLSMatchAttributes = tmp
                }
                if let value = dict["URI"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.URI()
                    model.fromMap(value)
                    self.URI = model
                }
            }
        }
        public class RouteDestinations : Tea.TeaModel {
            public class Destination : Tea.TeaModel {
                public class Port : Tea.TeaModel {
                    public var number: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.number != nil {
                            map["Number"] = self.number!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Number"] as? Int32 {
                            self.number = value
                        }
                    }
                }
                public var host: String?

                public var port: CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination.Port?

                public var subset: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.port?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.port != nil {
                        map["Port"] = self.port?.toMap()
                    }
                    if self.subset != nil {
                        map["Subset"] = self.subset!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Port"] as? [String: Any?] {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination.Port()
                        model.fromMap(value)
                        self.port = model
                    }
                    if let value = dict["Subset"] as? String {
                        self.subset = value
                    }
                }
            }
            public var destination: CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.destination?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destination != nil {
                    map["Destination"] = self.destination?.toMap()
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Destination"] as? [String: Any?] {
                    var model = CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination()
                    model.fromMap(value)
                    self.destination = model
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var domains: [String]?

        public var HTTPAdvancedOptions: CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions?

        public var matchRequest: CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest?

        public var namespace: String?

        public var rawVSRoute: Any?

        public var routeDestinations: [CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations]?

        public var routeName: String?

        public var routeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.HTTPAdvancedOptions?.validate()
            try self.matchRequest?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.HTTPAdvancedOptions != nil {
                map["HTTPAdvancedOptions"] = self.HTTPAdvancedOptions?.toMap()
            }
            if self.matchRequest != nil {
                map["MatchRequest"] = self.matchRequest?.toMap()
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.rawVSRoute != nil {
                map["RawVSRoute"] = self.rawVSRoute!
            }
            if self.routeDestinations != nil {
                var tmp : [Any] = []
                for k in self.routeDestinations! {
                    tmp.append(k.toMap())
                }
                map["RouteDestinations"] = tmp
            }
            if self.routeName != nil {
                map["RouteName"] = self.routeName!
            }
            if self.routeType != nil {
                map["RouteType"] = self.routeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domains"] as? [String] {
                self.domains = value
            }
            if let value = dict["HTTPAdvancedOptions"] as? [String: Any?] {
                var model = CreateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions()
                model.fromMap(value)
                self.HTTPAdvancedOptions = model
            }
            if let value = dict["MatchRequest"] as? [String: Any?] {
                var model = CreateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest()
                model.fromMap(value)
                self.matchRequest = model
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["RawVSRoute"] as? Any {
                self.rawVSRoute = value
            }
            if let value = dict["RouteDestinations"] as? [Any?] {
                var tmp : [CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations] = []
                for v in value {
                    if v != nil {
                        var model = CreateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.routeDestinations = tmp
            }
            if let value = dict["RouteName"] as? String {
                self.routeName = value
            }
            if let value = dict["RouteType"] as? String {
                self.routeType = value
            }
        }
    }
    public var description_: String?

    public var gatewayRoute: CreateIstioGatewayRoutesRequest.GatewayRoute?

    public var istioGatewayName: String?

    public var priority: Int32?

    public var serviceMeshId: String?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gatewayRoute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gatewayRoute != nil {
            map["GatewayRoute"] = self.gatewayRoute?.toMap()
        }
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GatewayRoute"] as? [String: Any?] {
            var model = CreateIstioGatewayRoutesRequest.GatewayRoute()
            model.fromMap(value)
            self.gatewayRoute = model
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class CreateIstioGatewayRoutesShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var gatewayRouteShrink: String?

    public var istioGatewayName: String?

    public var priority: Int32?

    public var serviceMeshId: String?

    public var status: Int32?

    public override init() {
        super.init()
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
        if self.gatewayRouteShrink != nil {
            map["GatewayRoute"] = self.gatewayRouteShrink!
        }
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GatewayRoute"] as? String {
            self.gatewayRouteShrink = value
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class CreateIstioGatewayRoutesResponseBody : Tea.TeaModel {
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

public class CreateIstioGatewayRoutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIstioGatewayRoutesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateIstioGatewayRoutesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceMeshRequest : Tea.TeaModel {
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
    public var accessLogEnabled: Bool?

    public var accessLogFile: String?

    public var accessLogFormat: String?

    public var accessLogProject: String?

    public var accessLogServiceEnabled: Bool?

    public var accessLogServiceHost: String?

    public var accessLogServicePort: Int32?

    public var apiServerLoadBalancerSpec: String?

    public var apiServerPublicEip: Bool?

    public var auditProject: String?

    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var CRAggregationEnabled: Bool?

    public var certChain: String?

    public var chargeType: String?

    public var clusterDomain: String?

    public var clusterSpec: String?

    public var configSourceEnabled: Bool?

    public var configSourceNacosID: String?

    public var controlPlaneLogEnabled: Bool?

    public var controlPlaneLogProject: String?

    public var customizedPrometheus: Bool?

    public var customizedZipkin: Bool?

    public var DNSProxyingEnabled: Bool?

    public var dubboFilterEnabled: Bool?

    public var edition: String?

    public var enableACMG: Bool?

    public var enableAmbient: Bool?

    public var enableAudit: Bool?

    public var enableCRHistory: Bool?

    public var enableSDSServer: Bool?

    public var excludeIPRanges: String?

    public var excludeInboundPorts: String?

    public var excludeOutboundPorts: String?

    public var existingCaCert: String?

    public var existingCaKey: String?

    public var existingCaType: String?

    public var existingRootCaCert: String?

    public var existingRootCaKey: String?

    public var filterGatewayClusterConfig: Bool?

    public var gatewayAPIEnabled: Bool?

    public var guestCluster: String?

    public var includeIPRanges: String?

    public var istioVersion: String?

    public var kialiEnabled: Bool?

    public var localityLBConf: String?

    public var localityLoadBalancing: Bool?

    public var MSEEnabled: Bool?

    public var multiBufferEnabled: Bool?

    public var multiBufferPollDelay: String?

    public var mysqlFilterEnabled: Bool?

    public var name: String?

    public var OPALimitCPU: String?

    public var OPALimitMemory: String?

    public var OPALogLevel: String?

    public var OPARequestCPU: String?

    public var OPARequestMemory: String?

    public var opaEnabled: Bool?

    public var openAgentPolicy: Bool?

    public var period: Int32?

    public var pilotLoadBalancerSpec: String?

    public var playgroundScene: String?

    public var prometheusUrl: String?

    public var proxyLimitCPU: String?

    public var proxyLimitMemory: String?

    public var proxyRequestCPU: String?

    public var proxyRequestMemory: String?

    public var redisFilterEnabled: Bool?

    public var regionId: String?

    public var tag: [CreateServiceMeshRequest.Tag]?

    public var telemetry: Bool?

    public var thriftFilterEnabled: Bool?

    public var traceSampling: Double?

    public var tracing: Bool?

    public var useExistingCA: Bool?

    public var vSwitches: String?

    public var vpcId: String?

    public var webAssemblyFilterEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLogEnabled != nil {
            map["AccessLogEnabled"] = self.accessLogEnabled!
        }
        if self.accessLogFile != nil {
            map["AccessLogFile"] = self.accessLogFile!
        }
        if self.accessLogFormat != nil {
            map["AccessLogFormat"] = self.accessLogFormat!
        }
        if self.accessLogProject != nil {
            map["AccessLogProject"] = self.accessLogProject!
        }
        if self.accessLogServiceEnabled != nil {
            map["AccessLogServiceEnabled"] = self.accessLogServiceEnabled!
        }
        if self.accessLogServiceHost != nil {
            map["AccessLogServiceHost"] = self.accessLogServiceHost!
        }
        if self.accessLogServicePort != nil {
            map["AccessLogServicePort"] = self.accessLogServicePort!
        }
        if self.apiServerLoadBalancerSpec != nil {
            map["ApiServerLoadBalancerSpec"] = self.apiServerLoadBalancerSpec!
        }
        if self.apiServerPublicEip != nil {
            map["ApiServerPublicEip"] = self.apiServerPublicEip!
        }
        if self.auditProject != nil {
            map["AuditProject"] = self.auditProject!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.CRAggregationEnabled != nil {
            map["CRAggregationEnabled"] = self.CRAggregationEnabled!
        }
        if self.certChain != nil {
            map["CertChain"] = self.certChain!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clusterDomain != nil {
            map["ClusterDomain"] = self.clusterDomain!
        }
        if self.clusterSpec != nil {
            map["ClusterSpec"] = self.clusterSpec!
        }
        if self.configSourceEnabled != nil {
            map["ConfigSourceEnabled"] = self.configSourceEnabled!
        }
        if self.configSourceNacosID != nil {
            map["ConfigSourceNacosID"] = self.configSourceNacosID!
        }
        if self.controlPlaneLogEnabled != nil {
            map["ControlPlaneLogEnabled"] = self.controlPlaneLogEnabled!
        }
        if self.controlPlaneLogProject != nil {
            map["ControlPlaneLogProject"] = self.controlPlaneLogProject!
        }
        if self.customizedPrometheus != nil {
            map["CustomizedPrometheus"] = self.customizedPrometheus!
        }
        if self.customizedZipkin != nil {
            map["CustomizedZipkin"] = self.customizedZipkin!
        }
        if self.DNSProxyingEnabled != nil {
            map["DNSProxyingEnabled"] = self.DNSProxyingEnabled!
        }
        if self.dubboFilterEnabled != nil {
            map["DubboFilterEnabled"] = self.dubboFilterEnabled!
        }
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.enableACMG != nil {
            map["EnableACMG"] = self.enableACMG!
        }
        if self.enableAmbient != nil {
            map["EnableAmbient"] = self.enableAmbient!
        }
        if self.enableAudit != nil {
            map["EnableAudit"] = self.enableAudit!
        }
        if self.enableCRHistory != nil {
            map["EnableCRHistory"] = self.enableCRHistory!
        }
        if self.enableSDSServer != nil {
            map["EnableSDSServer"] = self.enableSDSServer!
        }
        if self.excludeIPRanges != nil {
            map["ExcludeIPRanges"] = self.excludeIPRanges!
        }
        if self.excludeInboundPorts != nil {
            map["ExcludeInboundPorts"] = self.excludeInboundPorts!
        }
        if self.excludeOutboundPorts != nil {
            map["ExcludeOutboundPorts"] = self.excludeOutboundPorts!
        }
        if self.existingCaCert != nil {
            map["ExistingCaCert"] = self.existingCaCert!
        }
        if self.existingCaKey != nil {
            map["ExistingCaKey"] = self.existingCaKey!
        }
        if self.existingCaType != nil {
            map["ExistingCaType"] = self.existingCaType!
        }
        if self.existingRootCaCert != nil {
            map["ExistingRootCaCert"] = self.existingRootCaCert!
        }
        if self.existingRootCaKey != nil {
            map["ExistingRootCaKey"] = self.existingRootCaKey!
        }
        if self.filterGatewayClusterConfig != nil {
            map["FilterGatewayClusterConfig"] = self.filterGatewayClusterConfig!
        }
        if self.gatewayAPIEnabled != nil {
            map["GatewayAPIEnabled"] = self.gatewayAPIEnabled!
        }
        if self.guestCluster != nil {
            map["GuestCluster"] = self.guestCluster!
        }
        if self.includeIPRanges != nil {
            map["IncludeIPRanges"] = self.includeIPRanges!
        }
        if self.istioVersion != nil {
            map["IstioVersion"] = self.istioVersion!
        }
        if self.kialiEnabled != nil {
            map["KialiEnabled"] = self.kialiEnabled!
        }
        if self.localityLBConf != nil {
            map["LocalityLBConf"] = self.localityLBConf!
        }
        if self.localityLoadBalancing != nil {
            map["LocalityLoadBalancing"] = self.localityLoadBalancing!
        }
        if self.MSEEnabled != nil {
            map["MSEEnabled"] = self.MSEEnabled!
        }
        if self.multiBufferEnabled != nil {
            map["MultiBufferEnabled"] = self.multiBufferEnabled!
        }
        if self.multiBufferPollDelay != nil {
            map["MultiBufferPollDelay"] = self.multiBufferPollDelay!
        }
        if self.mysqlFilterEnabled != nil {
            map["MysqlFilterEnabled"] = self.mysqlFilterEnabled!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.OPALimitCPU != nil {
            map["OPALimitCPU"] = self.OPALimitCPU!
        }
        if self.OPALimitMemory != nil {
            map["OPALimitMemory"] = self.OPALimitMemory!
        }
        if self.OPALogLevel != nil {
            map["OPALogLevel"] = self.OPALogLevel!
        }
        if self.OPARequestCPU != nil {
            map["OPARequestCPU"] = self.OPARequestCPU!
        }
        if self.OPARequestMemory != nil {
            map["OPARequestMemory"] = self.OPARequestMemory!
        }
        if self.opaEnabled != nil {
            map["OpaEnabled"] = self.opaEnabled!
        }
        if self.openAgentPolicy != nil {
            map["OpenAgentPolicy"] = self.openAgentPolicy!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.pilotLoadBalancerSpec != nil {
            map["PilotLoadBalancerSpec"] = self.pilotLoadBalancerSpec!
        }
        if self.playgroundScene != nil {
            map["PlaygroundScene"] = self.playgroundScene!
        }
        if self.prometheusUrl != nil {
            map["PrometheusUrl"] = self.prometheusUrl!
        }
        if self.proxyLimitCPU != nil {
            map["ProxyLimitCPU"] = self.proxyLimitCPU!
        }
        if self.proxyLimitMemory != nil {
            map["ProxyLimitMemory"] = self.proxyLimitMemory!
        }
        if self.proxyRequestCPU != nil {
            map["ProxyRequestCPU"] = self.proxyRequestCPU!
        }
        if self.proxyRequestMemory != nil {
            map["ProxyRequestMemory"] = self.proxyRequestMemory!
        }
        if self.redisFilterEnabled != nil {
            map["RedisFilterEnabled"] = self.redisFilterEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.telemetry != nil {
            map["Telemetry"] = self.telemetry!
        }
        if self.thriftFilterEnabled != nil {
            map["ThriftFilterEnabled"] = self.thriftFilterEnabled!
        }
        if self.traceSampling != nil {
            map["TraceSampling"] = self.traceSampling!
        }
        if self.tracing != nil {
            map["Tracing"] = self.tracing!
        }
        if self.useExistingCA != nil {
            map["UseExistingCA"] = self.useExistingCA!
        }
        if self.vSwitches != nil {
            map["VSwitches"] = self.vSwitches!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.webAssemblyFilterEnabled != nil {
            map["WebAssemblyFilterEnabled"] = self.webAssemblyFilterEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessLogEnabled"] as? Bool {
            self.accessLogEnabled = value
        }
        if let value = dict["AccessLogFile"] as? String {
            self.accessLogFile = value
        }
        if let value = dict["AccessLogFormat"] as? String {
            self.accessLogFormat = value
        }
        if let value = dict["AccessLogProject"] as? String {
            self.accessLogProject = value
        }
        if let value = dict["AccessLogServiceEnabled"] as? Bool {
            self.accessLogServiceEnabled = value
        }
        if let value = dict["AccessLogServiceHost"] as? String {
            self.accessLogServiceHost = value
        }
        if let value = dict["AccessLogServicePort"] as? Int32 {
            self.accessLogServicePort = value
        }
        if let value = dict["ApiServerLoadBalancerSpec"] as? String {
            self.apiServerLoadBalancerSpec = value
        }
        if let value = dict["ApiServerPublicEip"] as? Bool {
            self.apiServerPublicEip = value
        }
        if let value = dict["AuditProject"] as? String {
            self.auditProject = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["CRAggregationEnabled"] as? Bool {
            self.CRAggregationEnabled = value
        }
        if let value = dict["CertChain"] as? String {
            self.certChain = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClusterDomain"] as? String {
            self.clusterDomain = value
        }
        if let value = dict["ClusterSpec"] as? String {
            self.clusterSpec = value
        }
        if let value = dict["ConfigSourceEnabled"] as? Bool {
            self.configSourceEnabled = value
        }
        if let value = dict["ConfigSourceNacosID"] as? String {
            self.configSourceNacosID = value
        }
        if let value = dict["ControlPlaneLogEnabled"] as? Bool {
            self.controlPlaneLogEnabled = value
        }
        if let value = dict["ControlPlaneLogProject"] as? String {
            self.controlPlaneLogProject = value
        }
        if let value = dict["CustomizedPrometheus"] as? Bool {
            self.customizedPrometheus = value
        }
        if let value = dict["CustomizedZipkin"] as? Bool {
            self.customizedZipkin = value
        }
        if let value = dict["DNSProxyingEnabled"] as? Bool {
            self.DNSProxyingEnabled = value
        }
        if let value = dict["DubboFilterEnabled"] as? Bool {
            self.dubboFilterEnabled = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["EnableACMG"] as? Bool {
            self.enableACMG = value
        }
        if let value = dict["EnableAmbient"] as? Bool {
            self.enableAmbient = value
        }
        if let value = dict["EnableAudit"] as? Bool {
            self.enableAudit = value
        }
        if let value = dict["EnableCRHistory"] as? Bool {
            self.enableCRHistory = value
        }
        if let value = dict["EnableSDSServer"] as? Bool {
            self.enableSDSServer = value
        }
        if let value = dict["ExcludeIPRanges"] as? String {
            self.excludeIPRanges = value
        }
        if let value = dict["ExcludeInboundPorts"] as? String {
            self.excludeInboundPorts = value
        }
        if let value = dict["ExcludeOutboundPorts"] as? String {
            self.excludeOutboundPorts = value
        }
        if let value = dict["ExistingCaCert"] as? String {
            self.existingCaCert = value
        }
        if let value = dict["ExistingCaKey"] as? String {
            self.existingCaKey = value
        }
        if let value = dict["ExistingCaType"] as? String {
            self.existingCaType = value
        }
        if let value = dict["ExistingRootCaCert"] as? String {
            self.existingRootCaCert = value
        }
        if let value = dict["ExistingRootCaKey"] as? String {
            self.existingRootCaKey = value
        }
        if let value = dict["FilterGatewayClusterConfig"] as? Bool {
            self.filterGatewayClusterConfig = value
        }
        if let value = dict["GatewayAPIEnabled"] as? Bool {
            self.gatewayAPIEnabled = value
        }
        if let value = dict["GuestCluster"] as? String {
            self.guestCluster = value
        }
        if let value = dict["IncludeIPRanges"] as? String {
            self.includeIPRanges = value
        }
        if let value = dict["IstioVersion"] as? String {
            self.istioVersion = value
        }
        if let value = dict["KialiEnabled"] as? Bool {
            self.kialiEnabled = value
        }
        if let value = dict["LocalityLBConf"] as? String {
            self.localityLBConf = value
        }
        if let value = dict["LocalityLoadBalancing"] as? Bool {
            self.localityLoadBalancing = value
        }
        if let value = dict["MSEEnabled"] as? Bool {
            self.MSEEnabled = value
        }
        if let value = dict["MultiBufferEnabled"] as? Bool {
            self.multiBufferEnabled = value
        }
        if let value = dict["MultiBufferPollDelay"] as? String {
            self.multiBufferPollDelay = value
        }
        if let value = dict["MysqlFilterEnabled"] as? Bool {
            self.mysqlFilterEnabled = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OPALimitCPU"] as? String {
            self.OPALimitCPU = value
        }
        if let value = dict["OPALimitMemory"] as? String {
            self.OPALimitMemory = value
        }
        if let value = dict["OPALogLevel"] as? String {
            self.OPALogLevel = value
        }
        if let value = dict["OPARequestCPU"] as? String {
            self.OPARequestCPU = value
        }
        if let value = dict["OPARequestMemory"] as? String {
            self.OPARequestMemory = value
        }
        if let value = dict["OpaEnabled"] as? Bool {
            self.opaEnabled = value
        }
        if let value = dict["OpenAgentPolicy"] as? Bool {
            self.openAgentPolicy = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PilotLoadBalancerSpec"] as? String {
            self.pilotLoadBalancerSpec = value
        }
        if let value = dict["PlaygroundScene"] as? String {
            self.playgroundScene = value
        }
        if let value = dict["PrometheusUrl"] as? String {
            self.prometheusUrl = value
        }
        if let value = dict["ProxyLimitCPU"] as? String {
            self.proxyLimitCPU = value
        }
        if let value = dict["ProxyLimitMemory"] as? String {
            self.proxyLimitMemory = value
        }
        if let value = dict["ProxyRequestCPU"] as? String {
            self.proxyRequestCPU = value
        }
        if let value = dict["ProxyRequestMemory"] as? String {
            self.proxyRequestMemory = value
        }
        if let value = dict["RedisFilterEnabled"] as? Bool {
            self.redisFilterEnabled = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateServiceMeshRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceMeshRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Telemetry"] as? Bool {
            self.telemetry = value
        }
        if let value = dict["ThriftFilterEnabled"] as? Bool {
            self.thriftFilterEnabled = value
        }
        if let value = dict["TraceSampling"] as? Double {
            self.traceSampling = value
        }
        if let value = dict["Tracing"] as? Bool {
            self.tracing = value
        }
        if let value = dict["UseExistingCA"] as? Bool {
            self.useExistingCA = value
        }
        if let value = dict["VSwitches"] as? String {
            self.vSwitches = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["WebAssemblyFilterEnabled"] as? Bool {
            self.webAssemblyFilterEnabled = value
        }
    }
}

public class CreateServiceMeshResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
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
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class CreateServiceMeshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceMeshResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceMeshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSwimLaneRequest : Tea.TeaModel {
    public var groupName: String?

    public var labelSelectorKey: String?

    public var labelSelectorValue: String?

    public var serviceMeshId: String?

    public var servicesList: String?

    public var swimLaneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.labelSelectorKey != nil {
            map["LabelSelectorKey"] = self.labelSelectorKey!
        }
        if self.labelSelectorValue != nil {
            map["LabelSelectorValue"] = self.labelSelectorValue!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.servicesList != nil {
            map["ServicesList"] = self.servicesList!
        }
        if self.swimLaneName != nil {
            map["SwimLaneName"] = self.swimLaneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["LabelSelectorKey"] as? String {
            self.labelSelectorKey = value
        }
        if let value = dict["LabelSelectorValue"] as? String {
            self.labelSelectorValue = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ServicesList"] as? String {
            self.servicesList = value
        }
        if let value = dict["SwimLaneName"] as? String {
            self.swimLaneName = value
        }
    }
}

public class CreateSwimLaneResponseBody : Tea.TeaModel {
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

public class CreateSwimLaneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSwimLaneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSwimLaneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSwimLaneGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var ingressGatewayName: String?

    public var ingressGatewayNamespace: String?

    public var ingressType: String?

    public var isPermissive: Bool?

    public var routeHeader: String?

    public var serviceMeshId: String?

    public var servicesList: String?

    public var traceHeader: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.ingressGatewayName != nil {
            map["IngressGatewayName"] = self.ingressGatewayName!
        }
        if self.ingressGatewayNamespace != nil {
            map["IngressGatewayNamespace"] = self.ingressGatewayNamespace!
        }
        if self.ingressType != nil {
            map["IngressType"] = self.ingressType!
        }
        if self.isPermissive != nil {
            map["IsPermissive"] = self.isPermissive!
        }
        if self.routeHeader != nil {
            map["RouteHeader"] = self.routeHeader!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.servicesList != nil {
            map["ServicesList"] = self.servicesList!
        }
        if self.traceHeader != nil {
            map["TraceHeader"] = self.traceHeader!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["IngressGatewayName"] as? String {
            self.ingressGatewayName = value
        }
        if let value = dict["IngressGatewayNamespace"] as? String {
            self.ingressGatewayNamespace = value
        }
        if let value = dict["IngressType"] as? String {
            self.ingressType = value
        }
        if let value = dict["IsPermissive"] as? Bool {
            self.isPermissive = value
        }
        if let value = dict["RouteHeader"] as? String {
            self.routeHeader = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ServicesList"] as? String {
            self.servicesList = value
        }
        if let value = dict["TraceHeader"] as? String {
            self.traceHeader = value
        }
    }
}

public class CreateSwimLaneGroupResponseBody : Tea.TeaModel {
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

public class CreateSwimLaneGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSwimLaneGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSwimLaneGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWaypointRequest : Tea.TeaModel {
    public var clusterId: String?

    public var HPAEnabled: Bool?

    public var HPAMaxReplicas: Int32?

    public var HPAMinReplicas: Int32?

    public var HPATargetCPU: Int32?

    public var HPATargetMemory: Int32?

    public var limitCPU: String?

    public var limitMemory: String?

    public var namespace: String?

    public var preferECI: Bool?

    public var replicas: Int32?

    public var requestCPU: String?

    public var requestMemory: String?

    public var serviceAccount: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.HPAEnabled != nil {
            map["HPAEnabled"] = self.HPAEnabled!
        }
        if self.HPAMaxReplicas != nil {
            map["HPAMaxReplicas"] = self.HPAMaxReplicas!
        }
        if self.HPAMinReplicas != nil {
            map["HPAMinReplicas"] = self.HPAMinReplicas!
        }
        if self.HPATargetCPU != nil {
            map["HPATargetCPU"] = self.HPATargetCPU!
        }
        if self.HPATargetMemory != nil {
            map["HPATargetMemory"] = self.HPATargetMemory!
        }
        if self.limitCPU != nil {
            map["LimitCPU"] = self.limitCPU!
        }
        if self.limitMemory != nil {
            map["LimitMemory"] = self.limitMemory!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.preferECI != nil {
            map["PreferECI"] = self.preferECI!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.serviceAccount != nil {
            map["ServiceAccount"] = self.serviceAccount!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["HPAEnabled"] as? Bool {
            self.HPAEnabled = value
        }
        if let value = dict["HPAMaxReplicas"] as? Int32 {
            self.HPAMaxReplicas = value
        }
        if let value = dict["HPAMinReplicas"] as? Int32 {
            self.HPAMinReplicas = value
        }
        if let value = dict["HPATargetCPU"] as? Int32 {
            self.HPATargetCPU = value
        }
        if let value = dict["HPATargetMemory"] as? Int32 {
            self.HPATargetMemory = value
        }
        if let value = dict["LimitCPU"] as? String {
            self.limitCPU = value
        }
        if let value = dict["LimitMemory"] as? String {
            self.limitMemory = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["PreferECI"] as? Bool {
            self.preferECI = value
        }
        if let value = dict["Replicas"] as? Int32 {
            self.replicas = value
        }
        if let value = dict["RequestCPU"] as? String {
            self.requestCPU = value
        }
        if let value = dict["RequestMemory"] as? String {
            self.requestMemory = value
        }
        if let value = dict["ServiceAccount"] as? String {
            self.serviceAccount = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class CreateWaypointResponseBody : Tea.TeaModel {
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

public class CreateWaypointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWaypointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateWaypointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGatewayRouteRequest : Tea.TeaModel {
    public var istioGatewayName: String?

    public var routeName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.routeName != nil {
            map["RouteName"] = self.routeName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["RouteName"] as? String {
            self.routeName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DeleteGatewayRouteResponseBody : Tea.TeaModel {
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

public class DeleteGatewayRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteGatewayRouteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGatewaySecretRequest : Tea.TeaModel {
    public var istioGatewayName: String?

    public var secretName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DeleteGatewaySecretResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretDeleteRecord: [String: SecretDeleteRecordValue]?

    public override init() {
        super.init()
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
        if self.secretDeleteRecord != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.secretDeleteRecord! {
                tmp[k] = v.toMap()
            }
            map["SecretDeleteRecord"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretDeleteRecord"] as? [String: Any?] {
            var tmp : [String: SecretDeleteRecordValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = SecretDeleteRecordValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.secretDeleteRecord = tmp
        }
    }
}

public class DeleteGatewaySecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewaySecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteGatewaySecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteIstioGatewayDomainsRequest : Tea.TeaModel {
    public var hosts: String?

    public var istioGatewayName: String?

    public var limit: String?

    public var namespace: String?

    public var portName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hosts != nil {
            map["Hosts"] = self.hosts!
        }
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.portName != nil {
            map["PortName"] = self.portName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? String {
            self.hosts = value
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Limit"] as? String {
            self.limit = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["PortName"] as? String {
            self.portName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DeleteIstioGatewayDomainsResponseBody : Tea.TeaModel {
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

public class DeleteIstioGatewayDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIstioGatewayDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteIstioGatewayDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceMeshRequest : Tea.TeaModel {
    public var force: Bool?

    public var retainResources: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.retainResources != nil {
            map["RetainResources"] = self.retainResources!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["RetainResources"] as? String {
            self.retainResources = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DeleteServiceMeshResponseBody : Tea.TeaModel {
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

public class DeleteServiceMeshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceMeshResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteServiceMeshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSwimLaneRequest : Tea.TeaModel {
    public var groupName: String?

    public var serviceMeshId: String?

    public var swimLaneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.swimLaneName != nil {
            map["SwimLaneName"] = self.swimLaneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["SwimLaneName"] as? String {
            self.swimLaneName = value
        }
    }
}

public class DeleteSwimLaneResponseBody : Tea.TeaModel {
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

public class DeleteSwimLaneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSwimLaneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSwimLaneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSwimLaneGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DeleteSwimLaneGroupResponseBody : Tea.TeaModel {
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

public class DeleteSwimLaneGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSwimLaneGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSwimLaneGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWaypointRequest : Tea.TeaModel {
    public var clusterId: String?

    public var name: String?

    public var namespace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DeleteWaypointResponseBody : Tea.TeaModel {
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

public class DeleteWaypointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWaypointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteWaypointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeASMGatewayImportedServicesRequest : Tea.TeaModel {
    public var ASMGatewayName: String?

    public var serviceMeshId: String?

    public var serviceNamespace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ASMGatewayName != nil {
            map["ASMGatewayName"] = self.ASMGatewayName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.serviceNamespace != nil {
            map["ServiceNamespace"] = self.serviceNamespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASMGatewayName"] as? String {
            self.ASMGatewayName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ServiceNamespace"] as? String {
            self.serviceNamespace = value
        }
    }
}

public class DescribeASMGatewayImportedServicesResponseBody : Tea.TeaModel {
    public class ImportedServices : Tea.TeaModel {
        public var serviceName: String?

        public var serviceNamespace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceNamespace != nil {
                map["ServiceNamespace"] = self.serviceNamespace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["ServiceNamespace"] as? String {
                self.serviceNamespace = value
            }
        }
    }
    public var importedServices: [DescribeASMGatewayImportedServicesResponseBody.ImportedServices]?

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
        if self.importedServices != nil {
            var tmp : [Any] = []
            for k in self.importedServices! {
                tmp.append(k.toMap())
            }
            map["ImportedServices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImportedServices"] as? [Any?] {
            var tmp : [DescribeASMGatewayImportedServicesResponseBody.ImportedServices] = []
            for v in value {
                if v != nil {
                    var model = DescribeASMGatewayImportedServicesResponseBody.ImportedServices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.importedServices = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeASMGatewayImportedServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeASMGatewayImportedServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeASMGatewayImportedServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCCMVersionRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeCCMVersionResponseBody : Tea.TeaModel {
    public var CCMVersions: [String: CCMVersionsValue]?

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
        if self.CCMVersions != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.CCMVersions! {
                tmp[k] = v.toMap()
            }
            map["CCMVersions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CCMVersions"] as? [String: Any?] {
            var tmp : [String: CCMVersionsValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = CCMVersionsValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.CCMVersions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCCMVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCCMVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCCMVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCensRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeCensResponseBody : Tea.TeaModel {
    public var clusters: [String]?

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
        if self.clusters != nil {
            map["Clusters"] = self.clusters!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clusters"] as? [String] {
            self.clusters = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCensResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCensResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCensResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClusterGrafanaRequest : Tea.TeaModel {
    public var k8sClusterId: String?

    public var reAddPrometheusIntegration: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.k8sClusterId != nil {
            map["K8sClusterId"] = self.k8sClusterId!
        }
        if self.reAddPrometheusIntegration != nil {
            map["ReAddPrometheusIntegration"] = self.reAddPrometheusIntegration!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["K8sClusterId"] as? String {
            self.k8sClusterId = value
        }
        if let value = dict["ReAddPrometheusIntegration"] as? String {
            self.reAddPrometheusIntegration = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeClusterGrafanaResponseBody : Tea.TeaModel {
    public class Dashboards : Tea.TeaModel {
        public var title: String?

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
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var dashboards: [DescribeClusterGrafanaResponseBody.Dashboards]?

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
        if self.dashboards != nil {
            var tmp : [Any] = []
            for k in self.dashboards! {
                tmp.append(k.toMap())
            }
            map["Dashboards"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dashboards"] as? [Any?] {
            var tmp : [DescribeClusterGrafanaResponseBody.Dashboards] = []
            for v in value {
                if v != nil {
                    var model = DescribeClusterGrafanaResponseBody.Dashboards()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dashboards = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeClusterGrafanaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterGrafanaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeClusterGrafanaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClusterPrometheusRequest : Tea.TeaModel {
    public var k8sClusterId: String?

    public var k8sClusterRegionId: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.k8sClusterId != nil {
            map["K8sClusterId"] = self.k8sClusterId!
        }
        if self.k8sClusterRegionId != nil {
            map["K8sClusterRegionId"] = self.k8sClusterRegionId!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["K8sClusterId"] as? String {
            self.k8sClusterId = value
        }
        if let value = dict["K8sClusterRegionId"] as? String {
            self.k8sClusterRegionId = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeClusterPrometheusResponseBody : Tea.TeaModel {
    public var prometheus: String?

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
        if self.prometheus != nil {
            map["Prometheus"] = self.prometheus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Prometheus"] as? String {
            self.prometheus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeClusterPrometheusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterPrometheusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeClusterPrometheusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClustersInServiceMeshRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeClustersInServiceMeshResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class AccessLogDashboards : Tea.TeaModel {
            public var title: String?

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
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class GuestClusterConfig : Tea.TeaModel {
            public class SMC : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public var SMC: DescribeClustersInServiceMeshResponseBody.Clusters.GuestClusterConfig.SMC?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.SMC?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.SMC != nil {
                    map["SMC"] = self.SMC?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SMC"] as? [String: Any?] {
                    var model = DescribeClustersInServiceMeshResponseBody.Clusters.GuestClusterConfig.SMC()
                    model.fromMap(value)
                    self.SMC = model
                }
            }
        }
        public var accessLogDashboards: [DescribeClustersInServiceMeshResponseBody.Clusters.AccessLogDashboards]?

        public var clusterDomain: String?

        public var clusterId: String?

        public var clusterType: String?

        public var creationTime: String?

        public var errorMessage: String?

        public var guestClusterConfig: DescribeClustersInServiceMeshResponseBody.Clusters.GuestClusterConfig?

        public var logtailInstalledState: String?

        public var name: String?

        public var regionId: String?

        public var sgId: String?

        public var state: String?

        public var updateTime: String?

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
            try self.guestClusterConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessLogDashboards != nil {
                var tmp : [Any] = []
                for k in self.accessLogDashboards! {
                    tmp.append(k.toMap())
                }
                map["AccessLogDashboards"] = tmp
            }
            if self.clusterDomain != nil {
                map["ClusterDomain"] = self.clusterDomain!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.guestClusterConfig != nil {
                map["GuestClusterConfig"] = self.guestClusterConfig?.toMap()
            }
            if self.logtailInstalledState != nil {
                map["LogtailInstalledState"] = self.logtailInstalledState!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sgId != nil {
                map["SgId"] = self.sgId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessLogDashboards"] as? [Any?] {
                var tmp : [DescribeClustersInServiceMeshResponseBody.Clusters.AccessLogDashboards] = []
                for v in value {
                    if v != nil {
                        var model = DescribeClustersInServiceMeshResponseBody.Clusters.AccessLogDashboards()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.accessLogDashboards = tmp
            }
            if let value = dict["ClusterDomain"] as? String {
                self.clusterDomain = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterType"] as? String {
                self.clusterType = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["GuestClusterConfig"] as? [String: Any?] {
                var model = DescribeClustersInServiceMeshResponseBody.Clusters.GuestClusterConfig()
                model.fromMap(value)
                self.guestClusterConfig = model
            }
            if let value = dict["LogtailInstalledState"] as? String {
                self.logtailInstalledState = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SgId"] as? String {
                self.sgId = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var clusters: [DescribeClustersInServiceMeshResponseBody.Clusters]?

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
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["Clusters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clusters"] as? [Any?] {
            var tmp : [DescribeClustersInServiceMeshResponseBody.Clusters] = []
            for v in value {
                if v != nil {
                    var model = DescribeClustersInServiceMeshResponseBody.Clusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clusters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeClustersInServiceMeshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClustersInServiceMeshResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeClustersInServiceMeshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCrTemplatesRequest : Tea.TeaModel {
    public var istioVersion: String?

    public var kind: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.istioVersion != nil {
            map["IstioVersion"] = self.istioVersion!
        }
        if self.kind != nil {
            map["Kind"] = self.kind!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IstioVersion"] as? String {
            self.istioVersion = value
        }
        if let value = dict["Kind"] as? String {
            self.kind = value
        }
    }
}

public class DescribeCrTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public var chineseName: String?

        public var englishName: String?

        public var yaml: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chineseName != nil {
                map["ChineseName"] = self.chineseName!
            }
            if self.englishName != nil {
                map["EnglishName"] = self.englishName!
            }
            if self.yaml != nil {
                map["Yaml"] = self.yaml!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChineseName"] as? String {
                self.chineseName = value
            }
            if let value = dict["EnglishName"] as? String {
                self.englishName = value
            }
            if let value = dict["Yaml"] as? String {
                self.yaml = value
            }
        }
    }
    public var requestId: String?

    public var templates: [DescribeCrTemplatesResponseBody.Templates]?

    public override init() {
        super.init()
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
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Templates"] as? [Any?] {
            var tmp : [DescribeCrTemplatesResponseBody.Templates] = []
            for v in value {
                if v != nil {
                    var model = DescribeCrTemplatesResponseBody.Templates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templates = tmp
        }
    }
}

public class DescribeCrTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCrTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCrTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEipResourcesRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeEipResourcesResponseBody : Tea.TeaModel {
    public class EipList : Tea.TeaModel {
        public var allocationId: String?

        public var instanceType: String?

        public var ipAddress: String?

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
            if self.allocationId != nil {
                map["AllocationId"] = self.allocationId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllocationId"] as? String {
                self.allocationId = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["IpAddress"] as? String {
                self.ipAddress = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class PageResult : Tea.TeaModel {
        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
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
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var eipList: [DescribeEipResourcesResponseBody.EipList]?

    public var pageResult: DescribeEipResourcesResponseBody.PageResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eipList != nil {
            var tmp : [Any] = []
            for k in self.eipList! {
                tmp.append(k.toMap())
            }
            map["EipList"] = tmp
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EipList"] as? [Any?] {
            var tmp : [DescribeEipResourcesResponseBody.EipList] = []
            for v in value {
                if v != nil {
                    var model = DescribeEipResourcesResponseBody.EipList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.eipList = tmp
        }
        if let value = dict["PageResult"] as? [String: Any?] {
            var model = DescribeEipResourcesResponseBody.PageResult()
            model.fromMap(value)
            self.pageResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeEipResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEipResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeEipResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGatewaySecretDetailsRequest : Tea.TeaModel {
    public var istioGatewayName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeGatewaySecretDetailsResponseBody : Tea.TeaModel {
    public class GatewaySecretDetails : Tea.TeaModel {
        public var expiredTime: String?

        public var gatewayName: String?

        public var issueTime: String?

        public var message: String?

        public var SNI: String?

        public var secretName: String?

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
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.gatewayName != nil {
                map["GatewayName"] = self.gatewayName!
            }
            if self.issueTime != nil {
                map["IssueTime"] = self.issueTime!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.SNI != nil {
                map["SNI"] = self.SNI!
            }
            if self.secretName != nil {
                map["SecretName"] = self.secretName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["GatewayName"] as? String {
                self.gatewayName = value
            }
            if let value = dict["IssueTime"] as? String {
                self.issueTime = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["SNI"] as? String {
                self.SNI = value
            }
            if let value = dict["SecretName"] as? String {
                self.secretName = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
        }
    }
    public var gatewaySecretDetails: [DescribeGatewaySecretDetailsResponseBody.GatewaySecretDetails]?

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
        if self.gatewaySecretDetails != nil {
            var tmp : [Any] = []
            for k in self.gatewaySecretDetails! {
                tmp.append(k.toMap())
            }
            map["GatewaySecretDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewaySecretDetails"] as? [Any?] {
            var tmp : [DescribeGatewaySecretDetailsResponseBody.GatewaySecretDetails] = []
            for v in value {
                if v != nil {
                    var model = DescribeGatewaySecretDetailsResponseBody.GatewaySecretDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.gatewaySecretDetails = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeGatewaySecretDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewaySecretDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeGatewaySecretDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGuestClusterAccessLogDashboardsRequest : Tea.TeaModel {
    public var k8sClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.k8sClusterId != nil {
            map["K8sClusterId"] = self.k8sClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["K8sClusterId"] as? String {
            self.k8sClusterId = value
        }
    }
}

public class DescribeGuestClusterAccessLogDashboardsResponseBody : Tea.TeaModel {
    public class Dashboards : Tea.TeaModel {
        public var title: String?

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
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var dashboards: [DescribeGuestClusterAccessLogDashboardsResponseBody.Dashboards]?

    public var k8sClusterId: String?

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
        if self.dashboards != nil {
            var tmp : [Any] = []
            for k in self.dashboards! {
                tmp.append(k.toMap())
            }
            map["Dashboards"] = tmp
        }
        if self.k8sClusterId != nil {
            map["K8sClusterId"] = self.k8sClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dashboards"] as? [Any?] {
            var tmp : [DescribeGuestClusterAccessLogDashboardsResponseBody.Dashboards] = []
            for v in value {
                if v != nil {
                    var model = DescribeGuestClusterAccessLogDashboardsResponseBody.Dashboards()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dashboards = tmp
        }
        if let value = dict["K8sClusterId"] as? String {
            self.k8sClusterId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeGuestClusterAccessLogDashboardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGuestClusterAccessLogDashboardsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeGuestClusterAccessLogDashboardsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGuestClusterNamespacesRequest : Tea.TeaModel {
    public var guestClusterID: String?

    public var serviceMeshId: String?

    public var showNsLabels: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.guestClusterID != nil {
            map["GuestClusterID"] = self.guestClusterID!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.showNsLabels != nil {
            map["ShowNsLabels"] = self.showNsLabels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GuestClusterID"] as? String {
            self.guestClusterID = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ShowNsLabels"] as? Bool {
            self.showNsLabels = value
        }
    }
}

public class DescribeGuestClusterNamespacesResponseBody : Tea.TeaModel {
    public var nsLabels: [String: Any]?

    public var nsList: [String]?

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
        if self.nsLabels != nil {
            map["NsLabels"] = self.nsLabels!
        }
        if self.nsList != nil {
            map["NsList"] = self.nsList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NsLabels"] as? [String: Any] {
            self.nsLabels = value
        }
        if let value = dict["NsList"] as? [String] {
            self.nsList = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeGuestClusterNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGuestClusterNamespacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeGuestClusterNamespacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGuestClusterPodsRequest : Tea.TeaModel {
    public var guestClusterID: String?

    public var namespace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.guestClusterID != nil {
            map["GuestClusterID"] = self.guestClusterID!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GuestClusterID"] as? String {
            self.guestClusterID = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeGuestClusterPodsResponseBody : Tea.TeaModel {
    public var podList: [String]?

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
        if self.podList != nil {
            map["PodList"] = self.podList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PodList"] as? [String] {
            self.podList = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeGuestClusterPodsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGuestClusterPodsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeGuestClusterPodsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeImportedServicesDetailRequest : Tea.TeaModel {
    public var ASMGatewayName: String?

    public var serviceMeshId: String?

    public var serviceNamespace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ASMGatewayName != nil {
            map["ASMGatewayName"] = self.ASMGatewayName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.serviceNamespace != nil {
            map["ServiceNamespace"] = self.serviceNamespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASMGatewayName"] as? String {
            self.ASMGatewayName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ServiceNamespace"] as? String {
            self.serviceNamespace = value
        }
    }
}

public class DescribeImportedServicesDetailResponseBody : Tea.TeaModel {
    public class Details : Tea.TeaModel {
        public class Ports : Tea.TeaModel {
            public var name: String?

            public var nodePort: Int32?

            public var port: Int32?

            public var protocol_: String?

            public var targetPort: Int32?

            public override init() {
                super.init()
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
                if self.nodePort != nil {
                    map["NodePort"] = self.nodePort!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.targetPort != nil {
                    map["TargetPort"] = self.targetPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NodePort"] as? Int32 {
                    self.nodePort = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["TargetPort"] as? Int32 {
                    self.targetPort = value
                }
            }
        }
        public var clusterIds: [String]?

        public var labels: [String: String]?

        public var namespace: String?

        public var ports: [DescribeImportedServicesDetailResponseBody.Details.Ports]?

        public var serviceName: String?

        public var serviceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterIds != nil {
                map["ClusterIds"] = self.clusterIds!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.ports != nil {
                var tmp : [Any] = []
                for k in self.ports! {
                    tmp.append(k.toMap())
                }
                map["Ports"] = tmp
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterIds"] as? [String] {
                self.clusterIds = value
            }
            if let value = dict["Labels"] as? [String: String] {
                self.labels = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["Ports"] as? [Any?] {
                var tmp : [DescribeImportedServicesDetailResponseBody.Details.Ports] = []
                for v in value {
                    if v != nil {
                        var model = DescribeImportedServicesDetailResponseBody.Details.Ports()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ports = tmp
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
        }
    }
    public var details: [DescribeImportedServicesDetailResponseBody.Details]?

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
        if self.details != nil {
            var tmp : [Any] = []
            for k in self.details! {
                tmp.append(k.toMap())
            }
            map["Details"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Details"] as? [Any?] {
            var tmp : [DescribeImportedServicesDetailResponseBody.Details] = []
            for v in value {
                if v != nil {
                    var model = DescribeImportedServicesDetailResponseBody.Details()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.details = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeImportedServicesDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImportedServicesDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeImportedServicesDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIstioGatewayDomainsRequest : Tea.TeaModel {
    public var istioGatewayName: String?

    public var limit: String?

    public var namespace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Limit"] as? String {
            self.limit = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeIstioGatewayDomainsResponseBody : Tea.TeaModel {
    public class GatewaySecretDetails : Tea.TeaModel {
        public var credentialName: String?

        public var detail: String?

        public var domains: [String]?

        public var gatewayCRName: String?

        public var namespace: String?

        public var portName: String?

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
            if self.credentialName != nil {
                map["CredentialName"] = self.credentialName!
            }
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.gatewayCRName != nil {
                map["GatewayCRName"] = self.gatewayCRName!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.portName != nil {
                map["PortName"] = self.portName!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CredentialName"] as? String {
                self.credentialName = value
            }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["Domains"] as? [String] {
                self.domains = value
            }
            if let value = dict["GatewayCRName"] as? String {
                self.gatewayCRName = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["PortName"] as? String {
                self.portName = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var gatewaySecretDetails: [DescribeIstioGatewayDomainsResponseBody.GatewaySecretDetails]?

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
        if self.gatewaySecretDetails != nil {
            var tmp : [Any] = []
            for k in self.gatewaySecretDetails! {
                tmp.append(k.toMap())
            }
            map["GatewaySecretDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewaySecretDetails"] as? [Any?] {
            var tmp : [DescribeIstioGatewayDomainsResponseBody.GatewaySecretDetails] = []
            for v in value {
                if v != nil {
                    var model = DescribeIstioGatewayDomainsResponseBody.GatewaySecretDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.gatewaySecretDetails = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeIstioGatewayDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIstioGatewayDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeIstioGatewayDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIstioGatewayRouteDetailRequest : Tea.TeaModel {
    public var istioGatewayName: String?

    public var routeName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.routeName != nil {
            map["RouteName"] = self.routeName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["RouteName"] as? String {
            self.routeName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeIstioGatewayRouteDetailResponseBody : Tea.TeaModel {
    public class RouteDetail : Tea.TeaModel {
        public class HTTPAdvancedOptions : Tea.TeaModel {
            public class Delegate : Tea.TeaModel {
                public var name: String?

                public var namespace: String?

                public override init() {
                    super.init()
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
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Namespace"] as? String {
                        self.namespace = value
                    }
                }
            }
            public class Fault : Tea.TeaModel {
                public class Abort : Tea.TeaModel {
                    public class Percentage : Tea.TeaModel {
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
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Value"] as? Double {
                                self.value = value
                            }
                        }
                    }
                    public var httpStatus: Int32?

                    public var percentage: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Abort.Percentage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.percentage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.httpStatus != nil {
                            map["HttpStatus"] = self.httpStatus!
                        }
                        if self.percentage != nil {
                            map["Percentage"] = self.percentage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["HttpStatus"] as? Int32 {
                            self.httpStatus = value
                        }
                        if let value = dict["Percentage"] as? [String: Any?] {
                            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Abort.Percentage()
                            model.fromMap(value)
                            self.percentage = model
                        }
                    }
                }
                public class Delay : Tea.TeaModel {
                    public class Percentage : Tea.TeaModel {
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
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Value"] as? Double {
                                self.value = value
                            }
                        }
                    }
                    public var exponentialDelay: String?

                    public var fixedDelay: String?

                    public var percentage: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Delay.Percentage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.percentage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.exponentialDelay != nil {
                            map["ExponentialDelay"] = self.exponentialDelay!
                        }
                        if self.fixedDelay != nil {
                            map["FixedDelay"] = self.fixedDelay!
                        }
                        if self.percentage != nil {
                            map["Percentage"] = self.percentage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ExponentialDelay"] as? String {
                            self.exponentialDelay = value
                        }
                        if let value = dict["FixedDelay"] as? String {
                            self.fixedDelay = value
                        }
                        if let value = dict["Percentage"] as? [String: Any?] {
                            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Delay.Percentage()
                            model.fromMap(value)
                            self.percentage = model
                        }
                    }
                }
                public var abort: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Abort?

                public var delay: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Delay?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.abort?.validate()
                    try self.delay?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.abort != nil {
                        map["Abort"] = self.abort?.toMap()
                    }
                    if self.delay != nil {
                        map["Delay"] = self.delay?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Abort"] as? [String: Any?] {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(value)
                        self.abort = model
                    }
                    if let value = dict["Delay"] as? [String: Any?] {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault.Delay()
                        model.fromMap(value)
                        self.delay = model
                    }
                }
            }
            public class HTTPRedirect : Tea.TeaModel {
                public var authority: String?

                public var redirectCode: Int32?

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
                    if self.authority != nil {
                        map["Authority"] = self.authority!
                    }
                    if self.redirectCode != nil {
                        map["RedirectCode"] = self.redirectCode!
                    }
                    if self.uri != nil {
                        map["Uri"] = self.uri!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Authority"] as? String {
                        self.authority = value
                    }
                    if let value = dict["RedirectCode"] as? Int32 {
                        self.redirectCode = value
                    }
                    if let value = dict["Uri"] as? String {
                        self.uri = value
                    }
                }
            }
            public class Mirror : Tea.TeaModel {
                public var host: String?

                public var subset: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.subset != nil {
                        map["Subset"] = self.subset!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Subset"] as? String {
                        self.subset = value
                    }
                }
            }
            public class MirrorPercentage : Tea.TeaModel {
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
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Value"] as? Double {
                        self.value = value
                    }
                }
            }
            public class Retries : Tea.TeaModel {
                public class RetryRemoteLocalities : Tea.TeaModel {
                    public var value: Bool?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Value"] as? Bool {
                            self.value = value
                        }
                    }
                }
                public var attempts: Int32?

                public var perTryTimeout: String?

                public var retryOn: String?

                public var retryRemoteLocalities: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Retries.RetryRemoteLocalities?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.retryRemoteLocalities?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attempts != nil {
                        map["Attempts"] = self.attempts!
                    }
                    if self.perTryTimeout != nil {
                        map["PerTryTimeout"] = self.perTryTimeout!
                    }
                    if self.retryOn != nil {
                        map["RetryOn"] = self.retryOn!
                    }
                    if self.retryRemoteLocalities != nil {
                        map["RetryRemoteLocalities"] = self.retryRemoteLocalities?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Attempts"] as? Int32 {
                        self.attempts = value
                    }
                    if let value = dict["PerTryTimeout"] as? String {
                        self.perTryTimeout = value
                    }
                    if let value = dict["RetryOn"] as? String {
                        self.retryOn = value
                    }
                    if let value = dict["RetryRemoteLocalities"] as? [String: Any?] {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Retries.RetryRemoteLocalities()
                        model.fromMap(value)
                        self.retryRemoteLocalities = model
                    }
                }
            }
            public class Rewrite : Tea.TeaModel {
                public var authority: String?

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
                    if self.authority != nil {
                        map["Authority"] = self.authority!
                    }
                    if self.uri != nil {
                        map["Uri"] = self.uri!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Authority"] as? String {
                        self.authority = value
                    }
                    if let value = dict["Uri"] as? String {
                        self.uri = value
                    }
                }
            }
            public var delegate: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Delegate?

            public var fault: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault?

            public var HTTPRedirect: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.HTTPRedirect?

            public var mirror: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Mirror?

            public var mirrorPercentage: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.MirrorPercentage?

            public var retries: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Retries?

            public var rewrite: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Rewrite?

            public var timeout: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.delegate?.validate()
                try self.fault?.validate()
                try self.HTTPRedirect?.validate()
                try self.mirror?.validate()
                try self.mirrorPercentage?.validate()
                try self.retries?.validate()
                try self.rewrite?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.delegate != nil {
                    map["Delegate"] = self.delegate?.toMap()
                }
                if self.fault != nil {
                    map["Fault"] = self.fault?.toMap()
                }
                if self.HTTPRedirect != nil {
                    map["HTTPRedirect"] = self.HTTPRedirect?.toMap()
                }
                if self.mirror != nil {
                    map["Mirror"] = self.mirror?.toMap()
                }
                if self.mirrorPercentage != nil {
                    map["MirrorPercentage"] = self.mirrorPercentage?.toMap()
                }
                if self.retries != nil {
                    map["Retries"] = self.retries?.toMap()
                }
                if self.rewrite != nil {
                    map["Rewrite"] = self.rewrite?.toMap()
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Delegate"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Delegate()
                    model.fromMap(value)
                    self.delegate = model
                }
                if let value = dict["Fault"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Fault()
                    model.fromMap(value)
                    self.fault = model
                }
                if let value = dict["HTTPRedirect"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(value)
                    self.HTTPRedirect = model
                }
                if let value = dict["Mirror"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Mirror()
                    model.fromMap(value)
                    self.mirror = model
                }
                if let value = dict["MirrorPercentage"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(value)
                    self.mirrorPercentage = model
                }
                if let value = dict["Retries"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Retries()
                    model.fromMap(value)
                    self.retries = model
                }
                if let value = dict["Rewrite"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(value)
                    self.rewrite = model
                }
                if let value = dict["Timeout"] as? String {
                    self.timeout = value
                }
            }
        }
        public class MatchRequest : Tea.TeaModel {
            public class Headers : Tea.TeaModel {
                public var matchingContent: String?

                public var matchingMode: String?

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
                    if self.matchingContent != nil {
                        map["MatchingContent"] = self.matchingContent!
                    }
                    if self.matchingMode != nil {
                        map["MatchingMode"] = self.matchingMode!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MatchingContent"] as? String {
                        self.matchingContent = value
                    }
                    if let value = dict["MatchingMode"] as? String {
                        self.matchingMode = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public class TLSMatchAttributes : Tea.TeaModel {
                public var SNIHosts: [String]?

                public var TLSPort: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.SNIHosts != nil {
                        map["SNIHosts"] = self.SNIHosts!
                    }
                    if self.TLSPort != nil {
                        map["TLSPort"] = self.TLSPort!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SNIHosts"] as? [String] {
                        self.SNIHosts = value
                    }
                    if let value = dict["TLSPort"] as? Int32 {
                        self.TLSPort = value
                    }
                }
            }
            public class URI : Tea.TeaModel {
                public var matchingContent: String?

                public var matchingMode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.matchingContent != nil {
                        map["MatchingContent"] = self.matchingContent!
                    }
                    if self.matchingMode != nil {
                        map["MatchingMode"] = self.matchingMode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MatchingContent"] as? String {
                        self.matchingContent = value
                    }
                    if let value = dict["MatchingMode"] as? String {
                        self.matchingMode = value
                    }
                }
            }
            public var headers: [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.Headers]?

            public var ports: [Int32]?

            public var TLSMatchAttributes: [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.TLSMatchAttributes]?

            public var URI: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.URI?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.URI?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.headers != nil {
                    var tmp : [Any] = []
                    for k in self.headers! {
                        tmp.append(k.toMap())
                    }
                    map["Headers"] = tmp
                }
                if self.ports != nil {
                    map["Ports"] = self.ports!
                }
                if self.TLSMatchAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.TLSMatchAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["TLSMatchAttributes"] = tmp
                }
                if self.URI != nil {
                    map["URI"] = self.URI?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Headers"] as? [Any?] {
                    var tmp : [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.Headers] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.Headers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.headers = tmp
                }
                if let value = dict["Ports"] as? [Int32] {
                    self.ports = value
                }
                if let value = dict["TLSMatchAttributes"] as? [Any?] {
                    var tmp : [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.TLSMatchAttributes] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.TLSMatchAttributes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.TLSMatchAttributes = tmp
                }
                if let value = dict["URI"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest.URI()
                    model.fromMap(value)
                    self.URI = model
                }
            }
        }
        public class RouteDestinations : Tea.TeaModel {
            public class Destination : Tea.TeaModel {
                public class Port : Tea.TeaModel {
                    public var number: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.number != nil {
                            map["Number"] = self.number!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Number"] as? Int32 {
                            self.number = value
                        }
                    }
                }
                public var host: String?

                public var port: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Destination.Port?

                public var subset: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.port?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.port != nil {
                        map["Port"] = self.port?.toMap()
                    }
                    if self.subset != nil {
                        map["Subset"] = self.subset!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Port"] as? [String: Any?] {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Destination.Port()
                        model.fromMap(value)
                        self.port = model
                    }
                    if let value = dict["Subset"] as? String {
                        self.subset = value
                    }
                }
            }
            public class Headers : Tea.TeaModel {
                public class Request : Tea.TeaModel {
                    public var add: [String: Any]?

                    public var remove: [String]?

                    public var set_: [String: String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.add != nil {
                            map["Add"] = self.add!
                        }
                        if self.remove != nil {
                            map["Remove"] = self.remove!
                        }
                        if self.set_ != nil {
                            map["Set"] = self.set_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Add"] as? [String: Any] {
                            self.add = value
                        }
                        if let value = dict["Remove"] as? [String] {
                            self.remove = value
                        }
                        if let value = dict["Set"] as? [String: String] {
                            self.set_ = value
                        }
                    }
                }
                public class Response : Tea.TeaModel {
                    public var add: [String: Any]?

                    public var remove: [String]?

                    public var set_: [String: Any]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.add != nil {
                            map["Add"] = self.add!
                        }
                        if self.remove != nil {
                            map["Remove"] = self.remove!
                        }
                        if self.set_ != nil {
                            map["Set"] = self.set_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Add"] as? [String: Any] {
                            self.add = value
                        }
                        if let value = dict["Remove"] as? [String] {
                            self.remove = value
                        }
                        if let value = dict["Set"] as? [String: Any] {
                            self.set_ = value
                        }
                    }
                }
                public var request: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers.Request?

                public var response: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers.Response?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.request?.validate()
                    try self.response?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.request != nil {
                        map["Request"] = self.request?.toMap()
                    }
                    if self.response != nil {
                        map["Response"] = self.response?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Request"] as? [String: Any?] {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers.Request()
                        model.fromMap(value)
                        self.request = model
                    }
                    if let value = dict["Response"] as? [String: Any?] {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers.Response()
                        model.fromMap(value)
                        self.response = model
                    }
                }
            }
            public var destination: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Destination?

            public var headers: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.destination?.validate()
                try self.headers?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destination != nil {
                    map["Destination"] = self.destination?.toMap()
                }
                if self.headers != nil {
                    map["Headers"] = self.headers?.toMap()
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Destination"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Destination()
                    model.fromMap(value)
                    self.destination = model
                }
                if let value = dict["Headers"] as? [String: Any?] {
                    var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations.Headers()
                    model.fromMap(value)
                    self.headers = model
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var domains: [String]?

        public var HTTPAdvancedOptions: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions?

        public var hasUnsafeFeatures: Bool?

        public var matchRequest: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest?

        public var rawVSRoute: String?

        public var routeDestinations: [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations]?

        public var routeName: String?

        public var routeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.HTTPAdvancedOptions?.validate()
            try self.matchRequest?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.HTTPAdvancedOptions != nil {
                map["HTTPAdvancedOptions"] = self.HTTPAdvancedOptions?.toMap()
            }
            if self.hasUnsafeFeatures != nil {
                map["HasUnsafeFeatures"] = self.hasUnsafeFeatures!
            }
            if self.matchRequest != nil {
                map["MatchRequest"] = self.matchRequest?.toMap()
            }
            if self.rawVSRoute != nil {
                map["RawVSRoute"] = self.rawVSRoute!
            }
            if self.routeDestinations != nil {
                var tmp : [Any] = []
                for k in self.routeDestinations! {
                    tmp.append(k.toMap())
                }
                map["RouteDestinations"] = tmp
            }
            if self.routeName != nil {
                map["RouteName"] = self.routeName!
            }
            if self.routeType != nil {
                map["RouteType"] = self.routeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domains"] as? [String] {
                self.domains = value
            }
            if let value = dict["HTTPAdvancedOptions"] as? [String: Any?] {
                var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.HTTPAdvancedOptions()
                model.fromMap(value)
                self.HTTPAdvancedOptions = model
            }
            if let value = dict["HasUnsafeFeatures"] as? Bool {
                self.hasUnsafeFeatures = value
            }
            if let value = dict["MatchRequest"] as? [String: Any?] {
                var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.MatchRequest()
                model.fromMap(value)
                self.matchRequest = model
            }
            if let value = dict["RawVSRoute"] as? String {
                self.rawVSRoute = value
            }
            if let value = dict["RouteDestinations"] as? [Any?] {
                var tmp : [DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations] = []
                for v in value {
                    if v != nil {
                        var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail.RouteDestinations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.routeDestinations = tmp
            }
            if let value = dict["RouteName"] as? String {
                self.routeName = value
            }
            if let value = dict["RouteType"] as? String {
                self.routeType = value
            }
        }
    }
    public var description_: String?

    public var namespace: String?

    public var priority: Int32?

    public var requestId: String?

    public var routeDetail: DescribeIstioGatewayRouteDetailResponseBody.RouteDetail?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.routeDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.routeDetail != nil {
            map["RouteDetail"] = self.routeDetail?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RouteDetail"] as? [String: Any?] {
            var model = DescribeIstioGatewayRouteDetailResponseBody.RouteDetail()
            model.fromMap(value)
            self.routeDetail = model
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class DescribeIstioGatewayRouteDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIstioGatewayRouteDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeIstioGatewayRouteDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIstioGatewayRoutesRequest : Tea.TeaModel {
    public var istioGatewayName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeIstioGatewayRoutesResponseBody : Tea.TeaModel {
    public class ManagementRoutes : Tea.TeaModel {
        public var ASMGatewayName: String?

        public var description_: String?

        public var destinationHost: [String]?

        public var destinationSubSet: [String]?

        public var namespace: String?

        public var priority: Int32?

        public var routeName: String?

        public var routePath: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ASMGatewayName != nil {
                map["ASMGatewayName"] = self.ASMGatewayName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationHost != nil {
                map["DestinationHost"] = self.destinationHost!
            }
            if self.destinationSubSet != nil {
                map["DestinationSubSet"] = self.destinationSubSet!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.routeName != nil {
                map["RouteName"] = self.routeName!
            }
            if self.routePath != nil {
                map["RoutePath"] = self.routePath!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ASMGatewayName"] as? String {
                self.ASMGatewayName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DestinationHost"] as? [String] {
                self.destinationHost = value
            }
            if let value = dict["DestinationSubSet"] as? [String] {
                self.destinationSubSet = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["RouteName"] as? String {
                self.routeName = value
            }
            if let value = dict["RoutePath"] as? String {
                self.routePath = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var managementRoutes: [DescribeIstioGatewayRoutesResponseBody.ManagementRoutes]?

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
        if self.managementRoutes != nil {
            var tmp : [Any] = []
            for k in self.managementRoutes! {
                tmp.append(k.toMap())
            }
            map["ManagementRoutes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ManagementRoutes"] as? [Any?] {
            var tmp : [DescribeIstioGatewayRoutesResponseBody.ManagementRoutes] = []
            for v in value {
                if v != nil {
                    var model = DescribeIstioGatewayRoutesResponseBody.ManagementRoutes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.managementRoutes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeIstioGatewayRoutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIstioGatewayRoutesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeIstioGatewayRoutesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMeshMultiClusterNetworkRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeMeshMultiClusterNetworkResponseBody : Tea.TeaModel {
    public var multiClusterNetworks: [String: MultiClusterNetworksValue]?

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
        if self.multiClusterNetworks != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.multiClusterNetworks! {
                tmp[k] = v.toMap()
            }
            map["MultiClusterNetworks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MultiClusterNetworks"] as? [String: Any?] {
            var tmp : [String: MultiClusterNetworksValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = MultiClusterNetworksValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.multiClusterNetworks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMeshMultiClusterNetworkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeshMultiClusterNetworkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeMeshMultiClusterNetworkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMetadataResponseBody : Tea.TeaModel {
    public class MetaData : Tea.TeaModel {
        public class PlaygroundScene : Tea.TeaModel {
            public var observability: [String]?

            public var other: [String]?

            public var security: [String]?

            public var trafficManagement: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.observability != nil {
                    map["observability"] = self.observability!
                }
                if self.other != nil {
                    map["other"] = self.other!
                }
                if self.security != nil {
                    map["security"] = self.security!
                }
                if self.trafficManagement != nil {
                    map["trafficManagement"] = self.trafficManagement!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["observability"] as? [String] {
                    self.observability = value
                }
                if let value = dict["other"] as? [String] {
                    self.other = value
                }
                if let value = dict["security"] as? [String] {
                    self.security = value
                }
                if let value = dict["trafficManagement"] as? [String] {
                    self.trafficManagement = value
                }
            }
        }
        public class ProEdition : Tea.TeaModel {
            public var currentVersion: String?

            public var versionCrds: [[String: Any]]?

            public var versionRegistry: [[String: Any]]?

            public var versions: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currentVersion != nil {
                    map["CurrentVersion"] = self.currentVersion!
                }
                if self.versionCrds != nil {
                    map["VersionCrds"] = self.versionCrds!
                }
                if self.versionRegistry != nil {
                    map["VersionRegistry"] = self.versionRegistry!
                }
                if self.versions != nil {
                    map["Versions"] = self.versions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentVersion"] as? String {
                    self.currentVersion = value
                }
                if let value = dict["VersionCrds"] as? [[String: Any]] {
                    self.versionCrds = value
                }
                if let value = dict["VersionRegistry"] as? [[String: Any]] {
                    self.versionRegistry = value
                }
                if let value = dict["Versions"] as? [String] {
                    self.versions = value
                }
            }
        }
        public var compatibilityInfoList: [[String: Any]]?

        public var currentVersion: String?

        public var playgroundScene: DescribeMetadataResponseBody.MetaData.PlaygroundScene?

        public var proEdition: DescribeMetadataResponseBody.MetaData.ProEdition?

        public var regions: [String]?

        public var versionCrds: [[String: Any]]?

        public var versionRegistry: [[String: Any]]?

        public var versions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.playgroundScene?.validate()
            try self.proEdition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compatibilityInfoList != nil {
                map["CompatibilityInfoList"] = self.compatibilityInfoList!
            }
            if self.currentVersion != nil {
                map["CurrentVersion"] = self.currentVersion!
            }
            if self.playgroundScene != nil {
                map["PlaygroundScene"] = self.playgroundScene?.toMap()
            }
            if self.proEdition != nil {
                map["ProEdition"] = self.proEdition?.toMap()
            }
            if self.regions != nil {
                map["Regions"] = self.regions!
            }
            if self.versionCrds != nil {
                map["VersionCrds"] = self.versionCrds!
            }
            if self.versionRegistry != nil {
                map["VersionRegistry"] = self.versionRegistry!
            }
            if self.versions != nil {
                map["Versions"] = self.versions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompatibilityInfoList"] as? [[String: Any]] {
                self.compatibilityInfoList = value
            }
            if let value = dict["CurrentVersion"] as? String {
                self.currentVersion = value
            }
            if let value = dict["PlaygroundScene"] as? [String: Any?] {
                var model = DescribeMetadataResponseBody.MetaData.PlaygroundScene()
                model.fromMap(value)
                self.playgroundScene = model
            }
            if let value = dict["ProEdition"] as? [String: Any?] {
                var model = DescribeMetadataResponseBody.MetaData.ProEdition()
                model.fromMap(value)
                self.proEdition = model
            }
            if let value = dict["Regions"] as? [String] {
                self.regions = value
            }
            if let value = dict["VersionCrds"] as? [[String: Any]] {
                self.versionCrds = value
            }
            if let value = dict["VersionRegistry"] as? [[String: Any]] {
                self.versionRegistry = value
            }
            if let value = dict["Versions"] as? [String] {
                self.versions = value
            }
        }
    }
    public var metaData: DescribeMetadataResponseBody.MetaData?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metaData != nil {
            map["MetaData"] = self.metaData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MetaData"] as? [String: Any?] {
            var model = DescribeMetadataResponseBody.MetaData()
            model.fromMap(value)
            self.metaData = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMetadataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMetadataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeMetadataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNamespaceScopeSidecarConfigRequest : Tea.TeaModel {
    public var namespace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeNamespaceScopeSidecarConfigResponseBody : Tea.TeaModel {
    public class ConfigPatches : Tea.TeaModel {
        public class ProxyStatsMatcher : Tea.TeaModel {
            public var inclusionPrefixes: [String]?

            public var inclusionRegexps: [String]?

            public var inclusionSuffixes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inclusionPrefixes != nil {
                    map["InclusionPrefixes"] = self.inclusionPrefixes!
                }
                if self.inclusionRegexps != nil {
                    map["InclusionRegexps"] = self.inclusionRegexps!
                }
                if self.inclusionSuffixes != nil {
                    map["InclusionSuffixes"] = self.inclusionSuffixes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InclusionPrefixes"] as? [String] {
                    self.inclusionPrefixes = value
                }
                if let value = dict["InclusionRegexps"] as? [String] {
                    self.inclusionRegexps = value
                }
                if let value = dict["InclusionSuffixes"] as? [String] {
                    self.inclusionSuffixes = value
                }
            }
        }
        public class SMCConfiguration : Tea.TeaModel {
            public var enabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
            }
        }
        public class ScaledSidecarResource : Tea.TeaModel {
            public var containerRef: String?

            public var resourceCalculationStrategy: String?

            public var resourcePercentage: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.containerRef != nil {
                    map["ContainerRef"] = self.containerRef!
                }
                if self.resourceCalculationStrategy != nil {
                    map["ResourceCalculationStrategy"] = self.resourceCalculationStrategy!
                }
                if self.resourcePercentage != nil {
                    map["ResourcePercentage"] = self.resourcePercentage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ContainerRef"] as? String {
                    self.containerRef = value
                }
                if let value = dict["ResourceCalculationStrategy"] as? String {
                    self.resourceCalculationStrategy = value
                }
                if let value = dict["ResourcePercentage"] as? Int32 {
                    self.resourcePercentage = value
                }
            }
        }
        public class SidecarProxyAckSloResource : Tea.TeaModel {
            public var limits: [String: String]?

            public var requests: [String: String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limits != nil {
                    map["Limits"] = self.limits!
                }
                if self.requests != nil {
                    map["Requests"] = self.requests!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limits"] as? [String: String] {
                    self.limits = value
                }
                if let value = dict["Requests"] as? [String: String] {
                    self.requests = value
                }
            }
        }
        public class SidecarProxyInitAckSloResource : Tea.TeaModel {
            public var limits: [String: String]?

            public var requests: [String: String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limits != nil {
                    map["Limits"] = self.limits!
                }
                if self.requests != nil {
                    map["Requests"] = self.requests!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limits"] as? [String: String] {
                    self.limits = value
                }
                if let value = dict["Requests"] as? [String: String] {
                    self.requests = value
                }
            }
        }
        public class SidecarProxyInitResourceLimit : Tea.TeaModel {
            public var resourceCPULimit: String?

            public var resourceMemoryLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceCPULimit != nil {
                    map["ResourceCPULimit"] = self.resourceCPULimit!
                }
                if self.resourceMemoryLimit != nil {
                    map["ResourceMemoryLimit"] = self.resourceMemoryLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceCPULimit"] as? String {
                    self.resourceCPULimit = value
                }
                if let value = dict["ResourceMemoryLimit"] as? String {
                    self.resourceMemoryLimit = value
                }
            }
        }
        public class SidecarProxyInitResourceRequest : Tea.TeaModel {
            public var resourceCPURequest: String?

            public var resourceMemoryRequest: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceCPURequest != nil {
                    map["ResourceCPURequest"] = self.resourceCPURequest!
                }
                if self.resourceMemoryRequest != nil {
                    map["ResourceMemoryRequest"] = self.resourceMemoryRequest!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceCPURequest"] as? String {
                    self.resourceCPURequest = value
                }
                if let value = dict["ResourceMemoryRequest"] as? String {
                    self.resourceMemoryRequest = value
                }
            }
        }
        public class SidecarProxyResourceLimit : Tea.TeaModel {
            public var resourceCPULimit: String?

            public var resourceMemoryLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceCPULimit != nil {
                    map["ResourceCPULimit"] = self.resourceCPULimit!
                }
                if self.resourceMemoryLimit != nil {
                    map["ResourceMemoryLimit"] = self.resourceMemoryLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceCPULimit"] as? String {
                    self.resourceCPULimit = value
                }
                if let value = dict["ResourceMemoryLimit"] as? String {
                    self.resourceMemoryLimit = value
                }
            }
        }
        public class SidecarProxyResourceRequest : Tea.TeaModel {
            public var resourceCPURequest: String?

            public var resourceMemoryRequest: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceCPURequest != nil {
                    map["ResourceCPURequest"] = self.resourceCPURequest!
                }
                if self.resourceMemoryRequest != nil {
                    map["ResourceMemoryRequest"] = self.resourceMemoryRequest!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceCPURequest"] as? String {
                    self.resourceCPURequest = value
                }
                if let value = dict["ResourceMemoryRequest"] as? String {
                    self.resourceMemoryRequest = value
                }
            }
        }
        public class Tracing : Tea.TeaModel {
            public var customTags: [String: Any]?

            public var maxPathTagLength: Int32?

            public var sampling: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customTags != nil {
                    map["CustomTags"] = self.customTags!
                }
                if self.maxPathTagLength != nil {
                    map["MaxPathTagLength"] = self.maxPathTagLength!
                }
                if self.sampling != nil {
                    map["Sampling"] = self.sampling!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomTags"] as? [String: Any] {
                    self.customTags = value
                }
                if let value = dict["MaxPathTagLength"] as? Int32 {
                    self.maxPathTagLength = value
                }
                if let value = dict["Sampling"] as? Double {
                    self.sampling = value
                }
            }
        }
        public var concurrency: Int32?

        public var enableCoreDump: Bool?

        public var excludeInboundPorts: String?

        public var excludeOutboundIPRanges: String?

        public var excludeOutboundPorts: String?

        public var holdApplicationUntilProxyStarts: Bool?

        public var includeInboundPorts: String?

        public var includeOutboundIPRanges: String?

        public var includeOutboundPorts: String?

        public var interceptionMode: String?

        public var istioDNSProxyEnabled: Bool?

        public var lifecycleStr: String?

        public var logLevel: String?

        public var privileged: Bool?

        public var proxyMetadata: [String: String]?

        public var proxyStatsMatcher: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.ProxyStatsMatcher?

        public var readinessFailureThreshold: Int32?

        public var readinessInitialDelaySeconds: Int32?

        public var readinessPeriodSeconds: Int32?

        public var runtimeValues: [String: String]?

        public var SMCConfiguration: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SMCConfiguration?

        public var scaledSidecarResource: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.ScaledSidecarResource?

        public var sidecarProxyAckSloResource: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyAckSloResource?

        public var sidecarProxyInitAckSloResource: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitAckSloResource?

        public var sidecarProxyInitResourceLimit: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceLimit?

        public var sidecarProxyInitResourceRequest: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceRequest?

        public var sidecarProxyResourceLimit: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceLimit?

        public var sidecarProxyResourceRequest: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceRequest?

        public var terminationDrainDuration: String?

        public var tracing: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.Tracing?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.proxyStatsMatcher?.validate()
            try self.SMCConfiguration?.validate()
            try self.scaledSidecarResource?.validate()
            try self.sidecarProxyAckSloResource?.validate()
            try self.sidecarProxyInitAckSloResource?.validate()
            try self.sidecarProxyInitResourceLimit?.validate()
            try self.sidecarProxyInitResourceRequest?.validate()
            try self.sidecarProxyResourceLimit?.validate()
            try self.sidecarProxyResourceRequest?.validate()
            try self.tracing?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.enableCoreDump != nil {
                map["EnableCoreDump"] = self.enableCoreDump!
            }
            if self.excludeInboundPorts != nil {
                map["ExcludeInboundPorts"] = self.excludeInboundPorts!
            }
            if self.excludeOutboundIPRanges != nil {
                map["ExcludeOutboundIPRanges"] = self.excludeOutboundIPRanges!
            }
            if self.excludeOutboundPorts != nil {
                map["ExcludeOutboundPorts"] = self.excludeOutboundPorts!
            }
            if self.holdApplicationUntilProxyStarts != nil {
                map["HoldApplicationUntilProxyStarts"] = self.holdApplicationUntilProxyStarts!
            }
            if self.includeInboundPorts != nil {
                map["IncludeInboundPorts"] = self.includeInboundPorts!
            }
            if self.includeOutboundIPRanges != nil {
                map["IncludeOutboundIPRanges"] = self.includeOutboundIPRanges!
            }
            if self.includeOutboundPorts != nil {
                map["IncludeOutboundPorts"] = self.includeOutboundPorts!
            }
            if self.interceptionMode != nil {
                map["InterceptionMode"] = self.interceptionMode!
            }
            if self.istioDNSProxyEnabled != nil {
                map["IstioDNSProxyEnabled"] = self.istioDNSProxyEnabled!
            }
            if self.lifecycleStr != nil {
                map["LifecycleStr"] = self.lifecycleStr!
            }
            if self.logLevel != nil {
                map["LogLevel"] = self.logLevel!
            }
            if self.privileged != nil {
                map["Privileged"] = self.privileged!
            }
            if self.proxyMetadata != nil {
                map["ProxyMetadata"] = self.proxyMetadata!
            }
            if self.proxyStatsMatcher != nil {
                map["ProxyStatsMatcher"] = self.proxyStatsMatcher?.toMap()
            }
            if self.readinessFailureThreshold != nil {
                map["ReadinessFailureThreshold"] = self.readinessFailureThreshold!
            }
            if self.readinessInitialDelaySeconds != nil {
                map["ReadinessInitialDelaySeconds"] = self.readinessInitialDelaySeconds!
            }
            if self.readinessPeriodSeconds != nil {
                map["ReadinessPeriodSeconds"] = self.readinessPeriodSeconds!
            }
            if self.runtimeValues != nil {
                map["RuntimeValues"] = self.runtimeValues!
            }
            if self.SMCConfiguration != nil {
                map["SMCConfiguration"] = self.SMCConfiguration?.toMap()
            }
            if self.scaledSidecarResource != nil {
                map["ScaledSidecarResource"] = self.scaledSidecarResource?.toMap()
            }
            if self.sidecarProxyAckSloResource != nil {
                map["SidecarProxyAckSloResource"] = self.sidecarProxyAckSloResource?.toMap()
            }
            if self.sidecarProxyInitAckSloResource != nil {
                map["SidecarProxyInitAckSloResource"] = self.sidecarProxyInitAckSloResource?.toMap()
            }
            if self.sidecarProxyInitResourceLimit != nil {
                map["SidecarProxyInitResourceLimit"] = self.sidecarProxyInitResourceLimit?.toMap()
            }
            if self.sidecarProxyInitResourceRequest != nil {
                map["SidecarProxyInitResourceRequest"] = self.sidecarProxyInitResourceRequest?.toMap()
            }
            if self.sidecarProxyResourceLimit != nil {
                map["SidecarProxyResourceLimit"] = self.sidecarProxyResourceLimit?.toMap()
            }
            if self.sidecarProxyResourceRequest != nil {
                map["SidecarProxyResourceRequest"] = self.sidecarProxyResourceRequest?.toMap()
            }
            if self.terminationDrainDuration != nil {
                map["TerminationDrainDuration"] = self.terminationDrainDuration!
            }
            if self.tracing != nil {
                map["Tracing"] = self.tracing?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
            if let value = dict["EnableCoreDump"] as? Bool {
                self.enableCoreDump = value
            }
            if let value = dict["ExcludeInboundPorts"] as? String {
                self.excludeInboundPorts = value
            }
            if let value = dict["ExcludeOutboundIPRanges"] as? String {
                self.excludeOutboundIPRanges = value
            }
            if let value = dict["ExcludeOutboundPorts"] as? String {
                self.excludeOutboundPorts = value
            }
            if let value = dict["HoldApplicationUntilProxyStarts"] as? Bool {
                self.holdApplicationUntilProxyStarts = value
            }
            if let value = dict["IncludeInboundPorts"] as? String {
                self.includeInboundPorts = value
            }
            if let value = dict["IncludeOutboundIPRanges"] as? String {
                self.includeOutboundIPRanges = value
            }
            if let value = dict["IncludeOutboundPorts"] as? String {
                self.includeOutboundPorts = value
            }
            if let value = dict["InterceptionMode"] as? String {
                self.interceptionMode = value
            }
            if let value = dict["IstioDNSProxyEnabled"] as? Bool {
                self.istioDNSProxyEnabled = value
            }
            if let value = dict["LifecycleStr"] as? String {
                self.lifecycleStr = value
            }
            if let value = dict["LogLevel"] as? String {
                self.logLevel = value
            }
            if let value = dict["Privileged"] as? Bool {
                self.privileged = value
            }
            if let value = dict["ProxyMetadata"] as? [String: String] {
                self.proxyMetadata = value
            }
            if let value = dict["ProxyStatsMatcher"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.ProxyStatsMatcher()
                model.fromMap(value)
                self.proxyStatsMatcher = model
            }
            if let value = dict["ReadinessFailureThreshold"] as? Int32 {
                self.readinessFailureThreshold = value
            }
            if let value = dict["ReadinessInitialDelaySeconds"] as? Int32 {
                self.readinessInitialDelaySeconds = value
            }
            if let value = dict["ReadinessPeriodSeconds"] as? Int32 {
                self.readinessPeriodSeconds = value
            }
            if let value = dict["RuntimeValues"] as? [String: String] {
                self.runtimeValues = value
            }
            if let value = dict["SMCConfiguration"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SMCConfiguration()
                model.fromMap(value)
                self.SMCConfiguration = model
            }
            if let value = dict["ScaledSidecarResource"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.ScaledSidecarResource()
                model.fromMap(value)
                self.scaledSidecarResource = model
            }
            if let value = dict["SidecarProxyAckSloResource"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyAckSloResource()
                model.fromMap(value)
                self.sidecarProxyAckSloResource = model
            }
            if let value = dict["SidecarProxyInitAckSloResource"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitAckSloResource()
                model.fromMap(value)
                self.sidecarProxyInitAckSloResource = model
            }
            if let value = dict["SidecarProxyInitResourceLimit"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceLimit()
                model.fromMap(value)
                self.sidecarProxyInitResourceLimit = model
            }
            if let value = dict["SidecarProxyInitResourceRequest"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyInitResourceRequest()
                model.fromMap(value)
                self.sidecarProxyInitResourceRequest = model
            }
            if let value = dict["SidecarProxyResourceLimit"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceLimit()
                model.fromMap(value)
                self.sidecarProxyResourceLimit = model
            }
            if let value = dict["SidecarProxyResourceRequest"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.SidecarProxyResourceRequest()
                model.fromMap(value)
                self.sidecarProxyResourceRequest = model
            }
            if let value = dict["TerminationDrainDuration"] as? String {
                self.terminationDrainDuration = value
            }
            if let value = dict["Tracing"] as? [String: Any?] {
                var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches.Tracing()
                model.fromMap(value)
                self.tracing = model
            }
        }
    }
    public var configPatches: DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configPatches?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configPatches != nil {
            map["ConfigPatches"] = self.configPatches?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigPatches"] as? [String: Any?] {
            var model = DescribeNamespaceScopeSidecarConfigResponseBody.ConfigPatches()
            model.fromMap(value)
            self.configPatches = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNamespaceScopeSidecarConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNamespaceScopeSidecarConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNamespaceScopeSidecarConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNodesInstanceTypeRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeNodesInstanceTypeResponseBody : Tea.TeaModel {
    public class InstanceTypes : Tea.TeaModel {
        public var key: String?

        public var multiBufferEnabled: Bool?

        public var nodeType: String?

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
            if self.multiBufferEnabled != nil {
                map["MultiBufferEnabled"] = self.multiBufferEnabled!
            }
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
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
            if let value = dict["MultiBufferEnabled"] as? Bool {
                self.multiBufferEnabled = value
            }
            if let value = dict["NodeType"] as? String {
                self.nodeType = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var instanceTypes: [DescribeNodesInstanceTypeResponseBody.InstanceTypes]?

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
        if self.instanceTypes != nil {
            var tmp : [Any] = []
            for k in self.instanceTypes! {
                tmp.append(k.toMap())
            }
            map["InstanceTypes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceTypes"] as? [Any?] {
            var tmp : [DescribeNodesInstanceTypeResponseBody.InstanceTypes] = []
            for v in value {
                if v != nil {
                    var model = DescribeNodesInstanceTypeResponseBody.InstanceTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceTypes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNodesInstanceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodesInstanceTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNodesInstanceTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeReusableSlbRequest : Tea.TeaModel {
    public var k8sClusterId: String?

    public var lbType: String?

    public var networkType: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.k8sClusterId != nil {
            map["K8sClusterId"] = self.k8sClusterId!
        }
        if self.lbType != nil {
            map["LbType"] = self.lbType!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["K8sClusterId"] as? String {
            self.k8sClusterId = value
        }
        if let value = dict["LbType"] as? String {
            self.lbType = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeReusableSlbResponseBody : Tea.TeaModel {
    public class ReusableSlbList : Tea.TeaModel {
        public var loadBalancerId: String?

        public var loadBalancerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.loadBalancerId != nil {
                map["LoadBalancerId"] = self.loadBalancerId!
            }
            if self.loadBalancerName != nil {
                map["LoadBalancerName"] = self.loadBalancerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LoadBalancerId"] as? String {
                self.loadBalancerId = value
            }
            if let value = dict["LoadBalancerName"] as? String {
                self.loadBalancerName = value
            }
        }
    }
    public var requestId: String?

    public var reusableSlbList: [DescribeReusableSlbResponseBody.ReusableSlbList]?

    public override init() {
        super.init()
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
        if self.reusableSlbList != nil {
            var tmp : [Any] = []
            for k in self.reusableSlbList! {
                tmp.append(k.toMap())
            }
            map["ReusableSlbList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ReusableSlbList"] as? [Any?] {
            var tmp : [DescribeReusableSlbResponseBody.ReusableSlbList] = []
            for v in value {
                if v != nil {
                    var model = DescribeReusableSlbResponseBody.ReusableSlbList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reusableSlbList = tmp
        }
    }
}

public class DescribeReusableSlbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeReusableSlbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeReusableSlbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshAdditionalStatusRequest : Tea.TeaModel {
    public var checkMode: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkMode != nil {
            map["CheckMode"] = self.checkMode!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckMode"] as? String {
            self.checkMode = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeServiceMeshAdditionalStatusResponseBody : Tea.TeaModel {
    public class ClusterStatus : Tea.TeaModel {
        public class ApiServerLoadBalancerStatus : Tea.TeaModel {
            public var locked: Bool?

            public var payType: String?

            public var reused: Bool?

            public var SLBBackEndServerNumStatus: String?

            public var SLBExistStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.locked != nil {
                    map["Locked"] = self.locked!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.reused != nil {
                    map["Reused"] = self.reused!
                }
                if self.SLBBackEndServerNumStatus != nil {
                    map["SLBBackEndServerNumStatus"] = self.SLBBackEndServerNumStatus!
                }
                if self.SLBExistStatus != nil {
                    map["SLBExistStatus"] = self.SLBExistStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Locked"] as? Bool {
                    self.locked = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["Reused"] as? Bool {
                    self.reused = value
                }
                if let value = dict["SLBBackEndServerNumStatus"] as? String {
                    self.SLBBackEndServerNumStatus = value
                }
                if let value = dict["SLBExistStatus"] as? String {
                    self.SLBExistStatus = value
                }
            }
        }
        public class CanaryPilotLoadBalancerStatus : Tea.TeaModel {
            public var locked: Bool?

            public var payType: String?

            public var reused: Bool?

            public var SLBBackEndServerNumStatus: String?

            public var SLBExistStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.locked != nil {
                    map["Locked"] = self.locked!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.reused != nil {
                    map["Reused"] = self.reused!
                }
                if self.SLBBackEndServerNumStatus != nil {
                    map["SLBBackEndServerNumStatus"] = self.SLBBackEndServerNumStatus!
                }
                if self.SLBExistStatus != nil {
                    map["SLBExistStatus"] = self.SLBExistStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Locked"] as? Bool {
                    self.locked = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["Reused"] as? Bool {
                    self.reused = value
                }
                if let value = dict["SLBBackEndServerNumStatus"] as? String {
                    self.SLBBackEndServerNumStatus = value
                }
                if let value = dict["SLBExistStatus"] as? String {
                    self.SLBExistStatus = value
                }
            }
        }
        public class PilotLoadBalancerStatus : Tea.TeaModel {
            public var locked: Bool?

            public var payType: String?

            public var reused: Bool?

            public var SLBBackEndServerNumStatus: String?

            public var SLBExistStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.locked != nil {
                    map["Locked"] = self.locked!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.reused != nil {
                    map["Reused"] = self.reused!
                }
                if self.SLBBackEndServerNumStatus != nil {
                    map["SLBBackEndServerNumStatus"] = self.SLBBackEndServerNumStatus!
                }
                if self.SLBExistStatus != nil {
                    map["SLBExistStatus"] = self.SLBExistStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Locked"] as? Bool {
                    self.locked = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["Reused"] as? Bool {
                    self.reused = value
                }
                if let value = dict["SLBBackEndServerNumStatus"] as? String {
                    self.SLBBackEndServerNumStatus = value
                }
                if let value = dict["SLBExistStatus"] as? String {
                    self.SLBExistStatus = value
                }
            }
        }
        public var accessLogProjectStatus: String?

        public var apiServerEIPStatus: String?

        public var apiServerLoadBalancerStatus: DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.ApiServerLoadBalancerStatus?

        public var auditProjectStatus: String?

        public var canaryPilotEIPStatus: String?

        public var canaryPilotLoadBalancerStatus: DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.CanaryPilotLoadBalancerStatus?

        public var controlPlaneProjectStatus: String?

        public var logtailStatusRecord: [String: Any]?

        public var pilotEIPStatus: String?

        public var pilotLoadBalancerStatus: DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.PilotLoadBalancerStatus?

        public var RAMApplicationStatus: String?

        public var sgStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.apiServerLoadBalancerStatus?.validate()
            try self.canaryPilotLoadBalancerStatus?.validate()
            try self.pilotLoadBalancerStatus?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessLogProjectStatus != nil {
                map["AccessLogProjectStatus"] = self.accessLogProjectStatus!
            }
            if self.apiServerEIPStatus != nil {
                map["ApiServerEIPStatus"] = self.apiServerEIPStatus!
            }
            if self.apiServerLoadBalancerStatus != nil {
                map["ApiServerLoadBalancerStatus"] = self.apiServerLoadBalancerStatus?.toMap()
            }
            if self.auditProjectStatus != nil {
                map["AuditProjectStatus"] = self.auditProjectStatus!
            }
            if self.canaryPilotEIPStatus != nil {
                map["CanaryPilotEIPStatus"] = self.canaryPilotEIPStatus!
            }
            if self.canaryPilotLoadBalancerStatus != nil {
                map["CanaryPilotLoadBalancerStatus"] = self.canaryPilotLoadBalancerStatus?.toMap()
            }
            if self.controlPlaneProjectStatus != nil {
                map["ControlPlaneProjectStatus"] = self.controlPlaneProjectStatus!
            }
            if self.logtailStatusRecord != nil {
                map["LogtailStatusRecord"] = self.logtailStatusRecord!
            }
            if self.pilotEIPStatus != nil {
                map["PilotEIPStatus"] = self.pilotEIPStatus!
            }
            if self.pilotLoadBalancerStatus != nil {
                map["PilotLoadBalancerStatus"] = self.pilotLoadBalancerStatus?.toMap()
            }
            if self.RAMApplicationStatus != nil {
                map["RAMApplicationStatus"] = self.RAMApplicationStatus!
            }
            if self.sgStatus != nil {
                map["SgStatus"] = self.sgStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessLogProjectStatus"] as? String {
                self.accessLogProjectStatus = value
            }
            if let value = dict["ApiServerEIPStatus"] as? String {
                self.apiServerEIPStatus = value
            }
            if let value = dict["ApiServerLoadBalancerStatus"] as? [String: Any?] {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.ApiServerLoadBalancerStatus()
                model.fromMap(value)
                self.apiServerLoadBalancerStatus = model
            }
            if let value = dict["AuditProjectStatus"] as? String {
                self.auditProjectStatus = value
            }
            if let value = dict["CanaryPilotEIPStatus"] as? String {
                self.canaryPilotEIPStatus = value
            }
            if let value = dict["CanaryPilotLoadBalancerStatus"] as? [String: Any?] {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.CanaryPilotLoadBalancerStatus()
                model.fromMap(value)
                self.canaryPilotLoadBalancerStatus = model
            }
            if let value = dict["ControlPlaneProjectStatus"] as? String {
                self.controlPlaneProjectStatus = value
            }
            if let value = dict["LogtailStatusRecord"] as? [String: Any] {
                self.logtailStatusRecord = value
            }
            if let value = dict["PilotEIPStatus"] as? String {
                self.pilotEIPStatus = value
            }
            if let value = dict["PilotLoadBalancerStatus"] as? [String: Any?] {
                var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus.PilotLoadBalancerStatus()
                model.fromMap(value)
                self.pilotLoadBalancerStatus = model
            }
            if let value = dict["RAMApplicationStatus"] as? String {
                self.RAMApplicationStatus = value
            }
            if let value = dict["SgStatus"] as? String {
                self.sgStatus = value
            }
        }
    }
    public var clusterStatus: DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterStatus != nil {
            map["ClusterStatus"] = self.clusterStatus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterStatus"] as? [String: Any?] {
            var model = DescribeServiceMeshAdditionalStatusResponseBody.ClusterStatus()
            model.fromMap(value)
            self.clusterStatus = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceMeshAdditionalStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshAdditionalStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshAdditionalStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshClustersRequest : Tea.TeaModel {
    public var limit: Int64?

    public var offset: Int64?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Offset"] as? Int64 {
            self.offset = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeServiceMeshClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public var clusterDomain: String?

        public var clusterId: String?

        public var clusterType: String?

        public var creationTime: String?

        public var errorMessage: String?

        public var forbiddenFlag: Int64?

        public var forbiddenInfo: String?

        public var name: String?

        public var regionId: String?

        public var serviceMeshId: String?

        public var sgId: String?

        public var state: String?

        public var updateTime: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterDomain != nil {
                map["ClusterDomain"] = self.clusterDomain!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.forbiddenFlag != nil {
                map["ForbiddenFlag"] = self.forbiddenFlag!
            }
            if self.forbiddenInfo != nil {
                map["ForbiddenInfo"] = self.forbiddenInfo!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.serviceMeshId != nil {
                map["ServiceMeshId"] = self.serviceMeshId!
            }
            if self.sgId != nil {
                map["SgId"] = self.sgId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterDomain"] as? String {
                self.clusterDomain = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterType"] as? String {
                self.clusterType = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["ForbiddenFlag"] as? Int64 {
                self.forbiddenFlag = value
            }
            if let value = dict["ForbiddenInfo"] as? String {
                self.forbiddenInfo = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ServiceMeshId"] as? String {
                self.serviceMeshId = value
            }
            if let value = dict["SgId"] as? String {
                self.sgId = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var clusters: [DescribeServiceMeshClustersResponseBody.Clusters]?

    public var numberOfClusters: Int64?

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
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["Clusters"] = tmp
        }
        if self.numberOfClusters != nil {
            map["NumberOfClusters"] = self.numberOfClusters!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clusters"] as? [Any?] {
            var tmp : [DescribeServiceMeshClustersResponseBody.Clusters] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceMeshClustersResponseBody.Clusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clusters = tmp
        }
        if let value = dict["NumberOfClusters"] as? Int64 {
            self.numberOfClusters = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceMeshClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshDetailRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeServiceMeshDetailResponseBody : Tea.TeaModel {
    public class ServiceMesh : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var intranetApiServerEndpoint: String?

            public var intranetCanaryPilotEndpoint: String?

            public var intranetPilotEndpoint: String?

            public var publicApiServerEndpoint: String?

            public var publicCanaryPilotEndpoint: String?

            public var publicPilotEndpoint: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.intranetApiServerEndpoint != nil {
                    map["IntranetApiServerEndpoint"] = self.intranetApiServerEndpoint!
                }
                if self.intranetCanaryPilotEndpoint != nil {
                    map["IntranetCanaryPilotEndpoint"] = self.intranetCanaryPilotEndpoint!
                }
                if self.intranetPilotEndpoint != nil {
                    map["IntranetPilotEndpoint"] = self.intranetPilotEndpoint!
                }
                if self.publicApiServerEndpoint != nil {
                    map["PublicApiServerEndpoint"] = self.publicApiServerEndpoint!
                }
                if self.publicCanaryPilotEndpoint != nil {
                    map["PublicCanaryPilotEndpoint"] = self.publicCanaryPilotEndpoint!
                }
                if self.publicPilotEndpoint != nil {
                    map["PublicPilotEndpoint"] = self.publicPilotEndpoint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IntranetApiServerEndpoint"] as? String {
                    self.intranetApiServerEndpoint = value
                }
                if let value = dict["IntranetCanaryPilotEndpoint"] as? String {
                    self.intranetCanaryPilotEndpoint = value
                }
                if let value = dict["IntranetPilotEndpoint"] as? String {
                    self.intranetPilotEndpoint = value
                }
                if let value = dict["PublicApiServerEndpoint"] as? String {
                    self.publicApiServerEndpoint = value
                }
                if let value = dict["PublicCanaryPilotEndpoint"] as? String {
                    self.publicCanaryPilotEndpoint = value
                }
                if let value = dict["PublicPilotEndpoint"] as? String {
                    self.publicPilotEndpoint = value
                }
            }
        }
        public class ServiceMeshInfo : Tea.TeaModel {
            public var creationTime: String?

            public var errorMessage: String?

            public var name: String?

            public var profile: String?

            public var regionId: String?

            public var serviceMeshId: String?

            public var state: String?

            public var updateTime: String?

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
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.serviceMeshId != nil {
                    map["ServiceMeshId"] = self.serviceMeshId!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Profile"] as? String {
                    self.profile = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ServiceMeshId"] as? String {
                    self.serviceMeshId = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class Spec : Tea.TeaModel {
            public class LoadBalancer : Tea.TeaModel {
                public var apiServerLoadbalancerId: String?

                public var apiServerPublicEip: Bool?

                public var apiServerPublicEipId: String?

                public var canaryPilotLoadBalancerId: String?

                public var canaryPilotPublicEipId: String?

                public var pilotPublicEip: Bool?

                public var pilotPublicEipId: String?

                public var pilotPublicLoadbalancerId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiServerLoadbalancerId != nil {
                        map["ApiServerLoadbalancerId"] = self.apiServerLoadbalancerId!
                    }
                    if self.apiServerPublicEip != nil {
                        map["ApiServerPublicEip"] = self.apiServerPublicEip!
                    }
                    if self.apiServerPublicEipId != nil {
                        map["ApiServerPublicEipId"] = self.apiServerPublicEipId!
                    }
                    if self.canaryPilotLoadBalancerId != nil {
                        map["CanaryPilotLoadBalancerId"] = self.canaryPilotLoadBalancerId!
                    }
                    if self.canaryPilotPublicEipId != nil {
                        map["CanaryPilotPublicEipId"] = self.canaryPilotPublicEipId!
                    }
                    if self.pilotPublicEip != nil {
                        map["PilotPublicEip"] = self.pilotPublicEip!
                    }
                    if self.pilotPublicEipId != nil {
                        map["PilotPublicEipId"] = self.pilotPublicEipId!
                    }
                    if self.pilotPublicLoadbalancerId != nil {
                        map["PilotPublicLoadbalancerId"] = self.pilotPublicLoadbalancerId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiServerLoadbalancerId"] as? String {
                        self.apiServerLoadbalancerId = value
                    }
                    if let value = dict["ApiServerPublicEip"] as? Bool {
                        self.apiServerPublicEip = value
                    }
                    if let value = dict["ApiServerPublicEipId"] as? String {
                        self.apiServerPublicEipId = value
                    }
                    if let value = dict["CanaryPilotLoadBalancerId"] as? String {
                        self.canaryPilotLoadBalancerId = value
                    }
                    if let value = dict["CanaryPilotPublicEipId"] as? String {
                        self.canaryPilotPublicEipId = value
                    }
                    if let value = dict["PilotPublicEip"] as? Bool {
                        self.pilotPublicEip = value
                    }
                    if let value = dict["PilotPublicEipId"] as? String {
                        self.pilotPublicEipId = value
                    }
                    if let value = dict["PilotPublicLoadbalancerId"] as? String {
                        self.pilotPublicLoadbalancerId = value
                    }
                }
            }
            public class MeshConfig : Tea.TeaModel {
                public class AccessLog : Tea.TeaModel {
                    public var enabled: Bool?

                    public var project: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.project != nil {
                            map["Project"] = self.project!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["Project"] as? String {
                            self.project = value
                        }
                    }
                }
                public class Audit : Tea.TeaModel {
                    public var auditProjectStatus: String?

                    public var enabled: Bool?

                    public var project: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.auditProjectStatus != nil {
                            map["AuditProjectStatus"] = self.auditProjectStatus!
                        }
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.project != nil {
                            map["Project"] = self.project!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AuditProjectStatus"] as? String {
                            self.auditProjectStatus = value
                        }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["Project"] as? String {
                            self.project = value
                        }
                    }
                }
                public class ControlPlaneLogInfo : Tea.TeaModel {
                    public var enabled: Bool?

                    public var logTTL: Int32?

                    public var project: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.logTTL != nil {
                            map["LogTTL"] = self.logTTL!
                        }
                        if self.project != nil {
                            map["Project"] = self.project!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["LogTTL"] as? Int32 {
                            self.logTTL = value
                        }
                        if let value = dict["Project"] as? String {
                            self.project = value
                        }
                    }
                }
                public class Edition : Tea.TeaModel {
                    public var istiodImageTag: String?

                    public var name: String?

                    public var proxyImageTag: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.istiodImageTag != nil {
                            map["IstiodImageTag"] = self.istiodImageTag!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.proxyImageTag != nil {
                            map["ProxyImageTag"] = self.proxyImageTag!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["IstiodImageTag"] as? String {
                            self.istiodImageTag = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["ProxyImageTag"] as? String {
                            self.proxyImageTag = value
                        }
                    }
                }
                public class ExtraConfiguration : Tea.TeaModel {
                    public class AccessLogExtraConf : Tea.TeaModel {
                        public var gatewayEnabled: Bool?

                        public var gatewayLifecycle: Int32?

                        public var sidecarEnabled: Bool?

                        public var sidecarLifecycle: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.gatewayEnabled != nil {
                                map["GatewayEnabled"] = self.gatewayEnabled!
                            }
                            if self.gatewayLifecycle != nil {
                                map["GatewayLifecycle"] = self.gatewayLifecycle!
                            }
                            if self.sidecarEnabled != nil {
                                map["SidecarEnabled"] = self.sidecarEnabled!
                            }
                            if self.sidecarLifecycle != nil {
                                map["SidecarLifecycle"] = self.sidecarLifecycle!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["GatewayEnabled"] as? Bool {
                                self.gatewayEnabled = value
                            }
                            if let value = dict["GatewayLifecycle"] as? Int32 {
                                self.gatewayLifecycle = value
                            }
                            if let value = dict["SidecarEnabled"] as? Bool {
                                self.sidecarEnabled = value
                            }
                            if let value = dict["SidecarLifecycle"] as? Int32 {
                                self.sidecarLifecycle = value
                            }
                        }
                    }
                    public class AdaptiveXdsConfiguration : Tea.TeaModel {
                        public class EgressHpaCpu : Tea.TeaModel {
                            public var targetAverageUtilization: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.targetAverageUtilization != nil {
                                    map["TargetAverageUtilization"] = self.targetAverageUtilization!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["TargetAverageUtilization"] as? Int32 {
                                    self.targetAverageUtilization = value
                                }
                            }
                        }
                        public class EgressHpaMemory : Tea.TeaModel {
                            public var targetAverageUtilization: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.targetAverageUtilization != nil {
                                    map["TargetAverageUtilization"] = self.targetAverageUtilization!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["TargetAverageUtilization"] as? Int32 {
                                    self.targetAverageUtilization = value
                                }
                            }
                        }
                        public class EgressResources : Tea.TeaModel {
                            public var limits: [String: Any]?

                            public var requests: [String: Any]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.limits != nil {
                                    map["Limits"] = self.limits!
                                }
                                if self.requests != nil {
                                    map["Requests"] = self.requests!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Limits"] as? [String: Any] {
                                    self.limits = value
                                }
                                if let value = dict["Requests"] as? [String: Any] {
                                    self.requests = value
                                }
                            }
                        }
                        public var egressAutoscaleEnabled: Bool?

                        public var egressHpaCpu: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressHpaCpu?

                        public var egressHpaMemory: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressHpaMemory?

                        public var egressMaxReplica: Int32?

                        public var egressMinReplica: Int32?

                        public var egressReplicaCount: Int32?

                        public var egressResources: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressResources?

                        public var enabled: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.egressHpaCpu?.validate()
                            try self.egressHpaMemory?.validate()
                            try self.egressResources?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.egressAutoscaleEnabled != nil {
                                map["EgressAutoscaleEnabled"] = self.egressAutoscaleEnabled!
                            }
                            if self.egressHpaCpu != nil {
                                map["EgressHpaCpu"] = self.egressHpaCpu?.toMap()
                            }
                            if self.egressHpaMemory != nil {
                                map["EgressHpaMemory"] = self.egressHpaMemory?.toMap()
                            }
                            if self.egressMaxReplica != nil {
                                map["EgressMaxReplica"] = self.egressMaxReplica!
                            }
                            if self.egressMinReplica != nil {
                                map["EgressMinReplica"] = self.egressMinReplica!
                            }
                            if self.egressReplicaCount != nil {
                                map["EgressReplicaCount"] = self.egressReplicaCount!
                            }
                            if self.egressResources != nil {
                                map["EgressResources"] = self.egressResources?.toMap()
                            }
                            if self.enabled != nil {
                                map["Enabled"] = self.enabled!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["EgressAutoscaleEnabled"] as? Bool {
                                self.egressAutoscaleEnabled = value
                            }
                            if let value = dict["EgressHpaCpu"] as? [String: Any?] {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressHpaCpu()
                                model.fromMap(value)
                                self.egressHpaCpu = model
                            }
                            if let value = dict["EgressHpaMemory"] as? [String: Any?] {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressHpaMemory()
                                model.fromMap(value)
                                self.egressHpaMemory = model
                            }
                            if let value = dict["EgressMaxReplica"] as? Int32 {
                                self.egressMaxReplica = value
                            }
                            if let value = dict["EgressMinReplica"] as? Int32 {
                                self.egressMinReplica = value
                            }
                            if let value = dict["EgressReplicaCount"] as? Int32 {
                                self.egressReplicaCount = value
                            }
                            if let value = dict["EgressResources"] as? [String: Any?] {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration.EgressResources()
                                model.fromMap(value)
                                self.egressResources = model
                            }
                            if let value = dict["Enabled"] as? Bool {
                                self.enabled = value
                            }
                        }
                    }
                    public class AutoDiagnosis : Tea.TeaModel {
                        public var autoDiagnosisEnabled: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.autoDiagnosisEnabled != nil {
                                map["AutoDiagnosisEnabled"] = self.autoDiagnosisEnabled!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["AutoDiagnosisEnabled"] as? Bool {
                                self.autoDiagnosisEnabled = value
                            }
                        }
                    }
                    public class CRAggregationConfiguration : Tea.TeaModel {
                        public var enabled: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enabled != nil {
                                map["Enabled"] = self.enabled!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Enabled"] as? Bool {
                                self.enabled = value
                            }
                        }
                    }
                    public class IstioCRHistory : Tea.TeaModel {
                        public var enableHistory: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enableHistory != nil {
                                map["EnableHistory"] = self.enableHistory!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["EnableHistory"] as? Bool {
                                self.enableHistory = value
                            }
                        }
                    }
                    public class IstiodExtraConfiguration : Tea.TeaModel {
                        public var labelsForOffloadedWorkloads: String?

                        public var pilotEnableQuicListeners: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.labelsForOffloadedWorkloads != nil {
                                map["LabelsForOffloadedWorkloads"] = self.labelsForOffloadedWorkloads!
                            }
                            if self.pilotEnableQuicListeners != nil {
                                map["PilotEnableQuicListeners"] = self.pilotEnableQuicListeners!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["LabelsForOffloadedWorkloads"] as? String {
                                self.labelsForOffloadedWorkloads = value
                            }
                            if let value = dict["PilotEnableQuicListeners"] as? Bool {
                                self.pilotEnableQuicListeners = value
                            }
                        }
                    }
                    public class Lifecycle : Tea.TeaModel {
                        public class PostStart : Tea.TeaModel {
                            public class Exec : Tea.TeaModel {
                                public var command: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.command != nil {
                                        map["command"] = self.command!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["command"] as? [String] {
                                        self.command = value
                                    }
                                }
                            }
                            public class HttpGet : Tea.TeaModel {
                                public class HttpHeaders : Tea.TeaModel {
                                    public var name: String?

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
                                        if self.name != nil {
                                            map["name"] = self.name!
                                        }
                                        if self.value != nil {
                                            map["value"] = self.value!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                        guard let dict else { return }
                                        if let value = dict["name"] as? String {
                                            self.name = value
                                        }
                                        if let value = dict["value"] as? String {
                                            self.value = value
                                        }
                                    }
                                }
                                public var host: String?

                                public var httpHeaders: [DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet.HttpHeaders]?

                                public var port: String?

                                public var scheme: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.host != nil {
                                        map["host"] = self.host!
                                    }
                                    if self.httpHeaders != nil {
                                        var tmp : [Any] = []
                                        for k in self.httpHeaders! {
                                            tmp.append(k.toMap())
                                        }
                                        map["httpHeaders"] = tmp
                                    }
                                    if self.port != nil {
                                        map["port"] = self.port!
                                    }
                                    if self.scheme != nil {
                                        map["scheme"] = self.scheme!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["host"] as? String {
                                        self.host = value
                                    }
                                    if let value = dict["httpHeaders"] as? [Any?] {
                                        var tmp : [DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet.HttpHeaders] = []
                                        for v in value {
                                            if v != nil {
                                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet.HttpHeaders()
                                                if v != nil {
                                                    model.fromMap(v as? [String: Any?])
                                                }
                                                tmp.append(model)
                                            }
                                        }
                                        self.httpHeaders = tmp
                                    }
                                    if let value = dict["port"] as? String {
                                        self.port = value
                                    }
                                    if let value = dict["scheme"] as? String {
                                        self.scheme = value
                                    }
                                }
                            }
                            public class TcpSocket : Tea.TeaModel {
                                public var host: String?

                                public var port: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.host != nil {
                                        map["host"] = self.host!
                                    }
                                    if self.port != nil {
                                        map["port"] = self.port!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["host"] as? String {
                                        self.host = value
                                    }
                                    if let value = dict["port"] as? String {
                                        self.port = value
                                    }
                                }
                            }
                            public var exec: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.Exec?

                            public var httpGet: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet?

                            public var tcpSocket: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.TcpSocket?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.exec?.validate()
                                try self.httpGet?.validate()
                                try self.tcpSocket?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.exec != nil {
                                    map["exec"] = self.exec?.toMap()
                                }
                                if self.httpGet != nil {
                                    map["httpGet"] = self.httpGet?.toMap()
                                }
                                if self.tcpSocket != nil {
                                    map["tcpSocket"] = self.tcpSocket?.toMap()
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["exec"] as? [String: Any?] {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.Exec()
                                    model.fromMap(value)
                                    self.exec = model
                                }
                                if let value = dict["httpGet"] as? [String: Any?] {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.HttpGet()
                                    model.fromMap(value)
                                    self.httpGet = model
                                }
                                if let value = dict["tcpSocket"] as? [String: Any?] {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart.TcpSocket()
                                    model.fromMap(value)
                                    self.tcpSocket = model
                                }
                            }
                        }
                        public class PreStop : Tea.TeaModel {
                            public class Exec : Tea.TeaModel {
                                public var command: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.command != nil {
                                        map["command"] = self.command!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["command"] as? [String] {
                                        self.command = value
                                    }
                                }
                            }
                            public class HttpGet : Tea.TeaModel {
                                public class HttpHeaders : Tea.TeaModel {
                                    public var name: String?

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
                                        if self.name != nil {
                                            map["name"] = self.name!
                                        }
                                        if self.value != nil {
                                            map["value"] = self.value!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                        guard let dict else { return }
                                        if let value = dict["name"] as? String {
                                            self.name = value
                                        }
                                        if let value = dict["value"] as? String {
                                            self.value = value
                                        }
                                    }
                                }
                                public var host: String?

                                public var httpHeaders: [DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet.HttpHeaders]?

                                public var port: String?

                                public var scheme: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.host != nil {
                                        map["host"] = self.host!
                                    }
                                    if self.httpHeaders != nil {
                                        var tmp : [Any] = []
                                        for k in self.httpHeaders! {
                                            tmp.append(k.toMap())
                                        }
                                        map["httpHeaders"] = tmp
                                    }
                                    if self.port != nil {
                                        map["port"] = self.port!
                                    }
                                    if self.scheme != nil {
                                        map["scheme"] = self.scheme!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["host"] as? String {
                                        self.host = value
                                    }
                                    if let value = dict["httpHeaders"] as? [Any?] {
                                        var tmp : [DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet.HttpHeaders] = []
                                        for v in value {
                                            if v != nil {
                                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet.HttpHeaders()
                                                if v != nil {
                                                    model.fromMap(v as? [String: Any?])
                                                }
                                                tmp.append(model)
                                            }
                                        }
                                        self.httpHeaders = tmp
                                    }
                                    if let value = dict["port"] as? String {
                                        self.port = value
                                    }
                                    if let value = dict["scheme"] as? String {
                                        self.scheme = value
                                    }
                                }
                            }
                            public class TcpSocket : Tea.TeaModel {
                                public var host: String?

                                public var port: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.host != nil {
                                        map["host"] = self.host!
                                    }
                                    if self.port != nil {
                                        map["port"] = self.port!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["host"] as? String {
                                        self.host = value
                                    }
                                    if let value = dict["port"] as? String {
                                        self.port = value
                                    }
                                }
                            }
                            public var exec: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.Exec?

                            public var httpGet: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet?

                            public var tcpSocket: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.TcpSocket?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.exec?.validate()
                                try self.httpGet?.validate()
                                try self.tcpSocket?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.exec != nil {
                                    map["exec"] = self.exec?.toMap()
                                }
                                if self.httpGet != nil {
                                    map["httpGet"] = self.httpGet?.toMap()
                                }
                                if self.tcpSocket != nil {
                                    map["tcpSocket"] = self.tcpSocket?.toMap()
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["exec"] as? [String: Any?] {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.Exec()
                                    model.fromMap(value)
                                    self.exec = model
                                }
                                if let value = dict["httpGet"] as? [String: Any?] {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.HttpGet()
                                    model.fromMap(value)
                                    self.httpGet = model
                                }
                                if let value = dict["tcpSocket"] as? [String: Any?] {
                                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop.TcpSocket()
                                    model.fromMap(value)
                                    self.tcpSocket = model
                                }
                            }
                        }
                        public var postStart: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart?

                        public var preStop: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.postStart?.validate()
                            try self.preStop?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.postStart != nil {
                                map["postStart"] = self.postStart?.toMap()
                            }
                            if self.preStop != nil {
                                map["preStop"] = self.preStop?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["postStart"] as? [String: Any?] {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PostStart()
                                model.fromMap(value)
                                self.postStart = model
                            }
                            if let value = dict["preStop"] as? [String: Any?] {
                                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle.PreStop()
                                model.fromMap(value)
                                self.preStop = model
                            }
                        }
                    }
                    public class MultiBuffer : Tea.TeaModel {
                        public var enabled: Bool?

                        public var pollDelay: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enabled != nil {
                                map["Enabled"] = self.enabled!
                            }
                            if self.pollDelay != nil {
                                map["PollDelay"] = self.pollDelay!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Enabled"] as? Bool {
                                self.enabled = value
                            }
                            if let value = dict["PollDelay"] as? String {
                                self.pollDelay = value
                            }
                        }
                    }
                    public class NFDConfiguration : Tea.TeaModel {
                        public var enabled: Bool?

                        public var NFDLabelPruned: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enabled != nil {
                                map["Enabled"] = self.enabled!
                            }
                            if self.NFDLabelPruned != nil {
                                map["NFDLabelPruned"] = self.NFDLabelPruned!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Enabled"] as? Bool {
                                self.enabled = value
                            }
                            if let value = dict["NFDLabelPruned"] as? Bool {
                                self.NFDLabelPruned = value
                            }
                        }
                    }
                    public class OPAScopeInjection : Tea.TeaModel {
                        public var OPAScopeInjected: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.OPAScopeInjected != nil {
                                map["OPAScopeInjected"] = self.OPAScopeInjected!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["OPAScopeInjected"] as? Bool {
                                self.OPAScopeInjected = value
                            }
                        }
                    }
                    public class Playground : Tea.TeaModel {
                        public var scene: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.scene != nil {
                                map["Scene"] = self.scene!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Scene"] as? String {
                                self.scene = value
                            }
                        }
                    }
                    public class SidecarProxyInitResourceLimit : Tea.TeaModel {
                        public var resourceCPULimit: String?

                        public var resourceMemoryLimit: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.resourceCPULimit != nil {
                                map["ResourceCPULimit"] = self.resourceCPULimit!
                            }
                            if self.resourceMemoryLimit != nil {
                                map["ResourceMemoryLimit"] = self.resourceMemoryLimit!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ResourceCPULimit"] as? String {
                                self.resourceCPULimit = value
                            }
                            if let value = dict["ResourceMemoryLimit"] as? String {
                                self.resourceMemoryLimit = value
                            }
                        }
                    }
                    public class SidecarProxyInitResourceRequest : Tea.TeaModel {
                        public var resourceCPURequest: String?

                        public var resourceMemoryRequest: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.resourceCPURequest != nil {
                                map["ResourceCPURequest"] = self.resourceCPURequest!
                            }
                            if self.resourceMemoryRequest != nil {
                                map["ResourceMemoryRequest"] = self.resourceMemoryRequest!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ResourceCPURequest"] as? String {
                                self.resourceCPURequest = value
                            }
                            if let value = dict["ResourceMemoryRequest"] as? String {
                                self.resourceMemoryRequest = value
                            }
                        }
                    }
                    public var accessLogExtraConf: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AccessLogExtraConf?

                    public var adaptiveXdsConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration?

                    public var autoDiagnosis: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AutoDiagnosis?

                    public var CRAggregationConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.CRAggregationConfiguration?

                    public var CRAggregationEnabled: Bool?

                    public var discoverySelectors: [[String: Any]]?

                    public var istioCRHistory: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.IstioCRHistory?

                    public var istiodExtraConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.IstiodExtraConfiguration?

                    public var lifecycle: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle?

                    public var multiBuffer: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.MultiBuffer?

                    public var NFDConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.NFDConfiguration?

                    public var OPAScopeInjection: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.OPAScopeInjection?

                    public var playground: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Playground?

                    public var sidecarProxyInitResourceLimit: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.SidecarProxyInitResourceLimit?

                    public var sidecarProxyInitResourceRequest: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.SidecarProxyInitResourceRequest?

                    public var terminationDrainDuration: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.accessLogExtraConf?.validate()
                        try self.adaptiveXdsConfiguration?.validate()
                        try self.autoDiagnosis?.validate()
                        try self.CRAggregationConfiguration?.validate()
                        try self.istioCRHistory?.validate()
                        try self.istiodExtraConfiguration?.validate()
                        try self.lifecycle?.validate()
                        try self.multiBuffer?.validate()
                        try self.NFDConfiguration?.validate()
                        try self.OPAScopeInjection?.validate()
                        try self.playground?.validate()
                        try self.sidecarProxyInitResourceLimit?.validate()
                        try self.sidecarProxyInitResourceRequest?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessLogExtraConf != nil {
                            map["AccessLogExtraConf"] = self.accessLogExtraConf?.toMap()
                        }
                        if self.adaptiveXdsConfiguration != nil {
                            map["AdaptiveXdsConfiguration"] = self.adaptiveXdsConfiguration?.toMap()
                        }
                        if self.autoDiagnosis != nil {
                            map["AutoDiagnosis"] = self.autoDiagnosis?.toMap()
                        }
                        if self.CRAggregationConfiguration != nil {
                            map["CRAggregationConfiguration"] = self.CRAggregationConfiguration?.toMap()
                        }
                        if self.CRAggregationEnabled != nil {
                            map["CRAggregationEnabled"] = self.CRAggregationEnabled!
                        }
                        if self.discoverySelectors != nil {
                            map["DiscoverySelectors"] = self.discoverySelectors!
                        }
                        if self.istioCRHistory != nil {
                            map["IstioCRHistory"] = self.istioCRHistory?.toMap()
                        }
                        if self.istiodExtraConfiguration != nil {
                            map["IstiodExtraConfiguration"] = self.istiodExtraConfiguration?.toMap()
                        }
                        if self.lifecycle != nil {
                            map["Lifecycle"] = self.lifecycle?.toMap()
                        }
                        if self.multiBuffer != nil {
                            map["MultiBuffer"] = self.multiBuffer?.toMap()
                        }
                        if self.NFDConfiguration != nil {
                            map["NFDConfiguration"] = self.NFDConfiguration?.toMap()
                        }
                        if self.OPAScopeInjection != nil {
                            map["OPAScopeInjection"] = self.OPAScopeInjection?.toMap()
                        }
                        if self.playground != nil {
                            map["Playground"] = self.playground?.toMap()
                        }
                        if self.sidecarProxyInitResourceLimit != nil {
                            map["SidecarProxyInitResourceLimit"] = self.sidecarProxyInitResourceLimit?.toMap()
                        }
                        if self.sidecarProxyInitResourceRequest != nil {
                            map["SidecarProxyInitResourceRequest"] = self.sidecarProxyInitResourceRequest?.toMap()
                        }
                        if self.terminationDrainDuration != nil {
                            map["TerminationDrainDuration"] = self.terminationDrainDuration!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessLogExtraConf"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AccessLogExtraConf()
                            model.fromMap(value)
                            self.accessLogExtraConf = model
                        }
                        if let value = dict["AdaptiveXdsConfiguration"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AdaptiveXdsConfiguration()
                            model.fromMap(value)
                            self.adaptiveXdsConfiguration = model
                        }
                        if let value = dict["AutoDiagnosis"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.AutoDiagnosis()
                            model.fromMap(value)
                            self.autoDiagnosis = model
                        }
                        if let value = dict["CRAggregationConfiguration"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.CRAggregationConfiguration()
                            model.fromMap(value)
                            self.CRAggregationConfiguration = model
                        }
                        if let value = dict["CRAggregationEnabled"] as? Bool {
                            self.CRAggregationEnabled = value
                        }
                        if let value = dict["DiscoverySelectors"] as? [[String: Any]] {
                            self.discoverySelectors = value
                        }
                        if let value = dict["IstioCRHistory"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.IstioCRHistory()
                            model.fromMap(value)
                            self.istioCRHistory = model
                        }
                        if let value = dict["IstiodExtraConfiguration"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.IstiodExtraConfiguration()
                            model.fromMap(value)
                            self.istiodExtraConfiguration = model
                        }
                        if let value = dict["Lifecycle"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Lifecycle()
                            model.fromMap(value)
                            self.lifecycle = model
                        }
                        if let value = dict["MultiBuffer"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.MultiBuffer()
                            model.fromMap(value)
                            self.multiBuffer = model
                        }
                        if let value = dict["NFDConfiguration"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.NFDConfiguration()
                            model.fromMap(value)
                            self.NFDConfiguration = model
                        }
                        if let value = dict["OPAScopeInjection"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.OPAScopeInjection()
                            model.fromMap(value)
                            self.OPAScopeInjection = model
                        }
                        if let value = dict["Playground"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.Playground()
                            model.fromMap(value)
                            self.playground = model
                        }
                        if let value = dict["SidecarProxyInitResourceLimit"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.SidecarProxyInitResourceLimit()
                            model.fromMap(value)
                            self.sidecarProxyInitResourceLimit = model
                        }
                        if let value = dict["SidecarProxyInitResourceRequest"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration.SidecarProxyInitResourceRequest()
                            model.fromMap(value)
                            self.sidecarProxyInitResourceRequest = model
                        }
                        if let value = dict["TerminationDrainDuration"] as? String {
                            self.terminationDrainDuration = value
                        }
                    }
                }
                public class K8sNewAPIsSupport : Tea.TeaModel {
                    public var gatewayAPIEnabled: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.gatewayAPIEnabled != nil {
                            map["GatewayAPIEnabled"] = self.gatewayAPIEnabled!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["GatewayAPIEnabled"] as? Bool {
                            self.gatewayAPIEnabled = value
                        }
                    }
                }
                public class Kiali : Tea.TeaModel {
                    public var enabled: Bool?

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
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["Url"] as? String {
                            self.url = value
                        }
                    }
                }
                public class LocalityLB : Tea.TeaModel {
                    public var distribute: [String: Any]?

                    public var enabled: Bool?

                    public var failover: [String: Any]?

                    public var failoverPriority: [String: Any]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.distribute != nil {
                            map["Distribute"] = self.distribute!
                        }
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.failover != nil {
                            map["Failover"] = self.failover!
                        }
                        if self.failoverPriority != nil {
                            map["FailoverPriority"] = self.failoverPriority!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Distribute"] as? [String: Any] {
                            self.distribute = value
                        }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["Failover"] as? [String: Any] {
                            self.failover = value
                        }
                        if let value = dict["FailoverPriority"] as? [String: Any] {
                            self.failoverPriority = value
                        }
                    }
                }
                public class MSE : Tea.TeaModel {
                    public var enabled: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                    }
                }
                public class OPA : Tea.TeaModel {
                    public var enabled: Bool?

                    public var limitCPU: String?

                    public var limitMemory: String?

                    public var logLevel: String?

                    public var requestCPU: String?

                    public var requestMemory: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.limitCPU != nil {
                            map["LimitCPU"] = self.limitCPU!
                        }
                        if self.limitMemory != nil {
                            map["LimitMemory"] = self.limitMemory!
                        }
                        if self.logLevel != nil {
                            map["LogLevel"] = self.logLevel!
                        }
                        if self.requestCPU != nil {
                            map["RequestCPU"] = self.requestCPU!
                        }
                        if self.requestMemory != nil {
                            map["RequestMemory"] = self.requestMemory!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["LimitCPU"] as? String {
                            self.limitCPU = value
                        }
                        if let value = dict["LimitMemory"] as? String {
                            self.limitMemory = value
                        }
                        if let value = dict["LogLevel"] as? String {
                            self.logLevel = value
                        }
                        if let value = dict["RequestCPU"] as? String {
                            self.requestCPU = value
                        }
                        if let value = dict["RequestMemory"] as? String {
                            self.requestMemory = value
                        }
                    }
                }
                public class Pilot : Tea.TeaModel {
                    public class ConfigSource : Tea.TeaModel {
                        public var enabled: Bool?

                        public var nacosID: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enabled != nil {
                                map["Enabled"] = self.enabled!
                            }
                            if self.nacosID != nil {
                                map["NacosID"] = self.nacosID!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Enabled"] as? Bool {
                                self.enabled = value
                            }
                            if let value = dict["NacosID"] as? String {
                                self.nacosID = value
                            }
                        }
                    }
                    public class Feature : Tea.TeaModel {
                        public var enableSDSServer: Bool?

                        public var filterGatewayClusterConfig: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enableSDSServer != nil {
                                map["EnableSDSServer"] = self.enableSDSServer!
                            }
                            if self.filterGatewayClusterConfig != nil {
                                map["FilterGatewayClusterConfig"] = self.filterGatewayClusterConfig!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["EnableSDSServer"] as? Bool {
                                self.enableSDSServer = value
                            }
                            if let value = dict["FilterGatewayClusterConfig"] as? Bool {
                                self.filterGatewayClusterConfig = value
                            }
                        }
                    }
                    public var configSource: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot.ConfigSource?

                    public var feature: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot.Feature?

                    public var http10Enabled: Bool?

                    public var traceSampling: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.configSource?.validate()
                        try self.feature?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configSource != nil {
                            map["ConfigSource"] = self.configSource?.toMap()
                        }
                        if self.feature != nil {
                            map["Feature"] = self.feature?.toMap()
                        }
                        if self.http10Enabled != nil {
                            map["Http10Enabled"] = self.http10Enabled!
                        }
                        if self.traceSampling != nil {
                            map["TraceSampling"] = self.traceSampling!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ConfigSource"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot.ConfigSource()
                            model.fromMap(value)
                            self.configSource = model
                        }
                        if let value = dict["Feature"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot.Feature()
                            model.fromMap(value)
                            self.feature = model
                        }
                        if let value = dict["Http10Enabled"] as? Bool {
                            self.http10Enabled = value
                        }
                        if let value = dict["TraceSampling"] as? Double {
                            self.traceSampling = value
                        }
                    }
                }
                public class Prometheus : Tea.TeaModel {
                    public var externalUrl: String?

                    public var useExternal: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.externalUrl != nil {
                            map["ExternalUrl"] = self.externalUrl!
                        }
                        if self.useExternal != nil {
                            map["UseExternal"] = self.useExternal!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ExternalUrl"] as? String {
                            self.externalUrl = value
                        }
                        if let value = dict["UseExternal"] as? Bool {
                            self.useExternal = value
                        }
                    }
                }
                public class ProtocolSupport : Tea.TeaModel {
                    public var dubboFilterEnabled: Bool?

                    public var mysqlFilterEnabled: Bool?

                    public var redisFilterEnabled: Bool?

                    public var thriftFilterEnabled: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.dubboFilterEnabled != nil {
                            map["DubboFilterEnabled"] = self.dubboFilterEnabled!
                        }
                        if self.mysqlFilterEnabled != nil {
                            map["MysqlFilterEnabled"] = self.mysqlFilterEnabled!
                        }
                        if self.redisFilterEnabled != nil {
                            map["RedisFilterEnabled"] = self.redisFilterEnabled!
                        }
                        if self.thriftFilterEnabled != nil {
                            map["ThriftFilterEnabled"] = self.thriftFilterEnabled!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DubboFilterEnabled"] as? Bool {
                            self.dubboFilterEnabled = value
                        }
                        if let value = dict["MysqlFilterEnabled"] as? Bool {
                            self.mysqlFilterEnabled = value
                        }
                        if let value = dict["RedisFilterEnabled"] as? Bool {
                            self.redisFilterEnabled = value
                        }
                        if let value = dict["ThriftFilterEnabled"] as? Bool {
                            self.thriftFilterEnabled = value
                        }
                    }
                }
                public class Proxy : Tea.TeaModel {
                    public var accessLogFile: String?

                    public var accessLogFormat: String?

                    public var accessLogServiceEnabled: Bool?

                    public var accessLogServiceHost: String?

                    public var accessLogServicePort: Int32?

                    public var clusterDomain: String?

                    public var enableDNSProxying: Bool?

                    public var limitCPU: String?

                    public var limitMemory: String?

                    public var requestCPU: String?

                    public var requestMemory: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessLogFile != nil {
                            map["AccessLogFile"] = self.accessLogFile!
                        }
                        if self.accessLogFormat != nil {
                            map["AccessLogFormat"] = self.accessLogFormat!
                        }
                        if self.accessLogServiceEnabled != nil {
                            map["AccessLogServiceEnabled"] = self.accessLogServiceEnabled!
                        }
                        if self.accessLogServiceHost != nil {
                            map["AccessLogServiceHost"] = self.accessLogServiceHost!
                        }
                        if self.accessLogServicePort != nil {
                            map["AccessLogServicePort"] = self.accessLogServicePort!
                        }
                        if self.clusterDomain != nil {
                            map["ClusterDomain"] = self.clusterDomain!
                        }
                        if self.enableDNSProxying != nil {
                            map["EnableDNSProxying"] = self.enableDNSProxying!
                        }
                        if self.limitCPU != nil {
                            map["LimitCPU"] = self.limitCPU!
                        }
                        if self.limitMemory != nil {
                            map["LimitMemory"] = self.limitMemory!
                        }
                        if self.requestCPU != nil {
                            map["RequestCPU"] = self.requestCPU!
                        }
                        if self.requestMemory != nil {
                            map["RequestMemory"] = self.requestMemory!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessLogFile"] as? String {
                            self.accessLogFile = value
                        }
                        if let value = dict["AccessLogFormat"] as? String {
                            self.accessLogFormat = value
                        }
                        if let value = dict["AccessLogServiceEnabled"] as? Bool {
                            self.accessLogServiceEnabled = value
                        }
                        if let value = dict["AccessLogServiceHost"] as? String {
                            self.accessLogServiceHost = value
                        }
                        if let value = dict["AccessLogServicePort"] as? Int32 {
                            self.accessLogServicePort = value
                        }
                        if let value = dict["ClusterDomain"] as? String {
                            self.clusterDomain = value
                        }
                        if let value = dict["EnableDNSProxying"] as? Bool {
                            self.enableDNSProxying = value
                        }
                        if let value = dict["LimitCPU"] as? String {
                            self.limitCPU = value
                        }
                        if let value = dict["LimitMemory"] as? String {
                            self.limitMemory = value
                        }
                        if let value = dict["RequestCPU"] as? String {
                            self.requestCPU = value
                        }
                        if let value = dict["RequestMemory"] as? String {
                            self.requestMemory = value
                        }
                    }
                }
                public class SidecarInjector : Tea.TeaModel {
                    public class InitCNIConfiguration : Tea.TeaModel {
                        public var enabled: Bool?

                        public var excludeNamespaces: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enabled != nil {
                                map["Enabled"] = self.enabled!
                            }
                            if self.excludeNamespaces != nil {
                                map["ExcludeNamespaces"] = self.excludeNamespaces!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Enabled"] as? Bool {
                                self.enabled = value
                            }
                            if let value = dict["ExcludeNamespaces"] as? String {
                                self.excludeNamespaces = value
                            }
                        }
                    }
                    public var autoInjectionPolicyEnabled: Bool?

                    public var enableNamespacesByDefault: Bool?

                    public var initCNIConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.SidecarInjector.InitCNIConfiguration?

                    public var limitCPU: String?

                    public var limitMemory: String?

                    public var requestCPU: String?

                    public var requestMemory: String?

                    public var sidecarInjectorNum: Int32?

                    public var sidecarInjectorWebhookAsYaml: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.initCNIConfiguration?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.autoInjectionPolicyEnabled != nil {
                            map["AutoInjectionPolicyEnabled"] = self.autoInjectionPolicyEnabled!
                        }
                        if self.enableNamespacesByDefault != nil {
                            map["EnableNamespacesByDefault"] = self.enableNamespacesByDefault!
                        }
                        if self.initCNIConfiguration != nil {
                            map["InitCNIConfiguration"] = self.initCNIConfiguration?.toMap()
                        }
                        if self.limitCPU != nil {
                            map["LimitCPU"] = self.limitCPU!
                        }
                        if self.limitMemory != nil {
                            map["LimitMemory"] = self.limitMemory!
                        }
                        if self.requestCPU != nil {
                            map["RequestCPU"] = self.requestCPU!
                        }
                        if self.requestMemory != nil {
                            map["RequestMemory"] = self.requestMemory!
                        }
                        if self.sidecarInjectorNum != nil {
                            map["SidecarInjectorNum"] = self.sidecarInjectorNum!
                        }
                        if self.sidecarInjectorWebhookAsYaml != nil {
                            map["SidecarInjectorWebhookAsYaml"] = self.sidecarInjectorWebhookAsYaml!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AutoInjectionPolicyEnabled"] as? Bool {
                            self.autoInjectionPolicyEnabled = value
                        }
                        if let value = dict["EnableNamespacesByDefault"] as? Bool {
                            self.enableNamespacesByDefault = value
                        }
                        if let value = dict["InitCNIConfiguration"] as? [String: Any?] {
                            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.SidecarInjector.InitCNIConfiguration()
                            model.fromMap(value)
                            self.initCNIConfiguration = model
                        }
                        if let value = dict["LimitCPU"] as? String {
                            self.limitCPU = value
                        }
                        if let value = dict["LimitMemory"] as? String {
                            self.limitMemory = value
                        }
                        if let value = dict["RequestCPU"] as? String {
                            self.requestCPU = value
                        }
                        if let value = dict["RequestMemory"] as? String {
                            self.requestMemory = value
                        }
                        if let value = dict["SidecarInjectorNum"] as? Int32 {
                            self.sidecarInjectorNum = value
                        }
                        if let value = dict["SidecarInjectorWebhookAsYaml"] as? String {
                            self.sidecarInjectorWebhookAsYaml = value
                        }
                    }
                }
                public class WebAssemblyFilterDeployment : Tea.TeaModel {
                    public var enabled: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                    }
                }
                public var accessLog: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.AccessLog?

                public var audit: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Audit?

                public var controlPlaneLogInfo: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ControlPlaneLogInfo?

                public var customizedZipkin: Bool?

                public var edition: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Edition?

                public var enableLocalityLB: Bool?

                public var excludeIPRanges: String?

                public var excludeInboundPorts: String?

                public var excludeOutboundPorts: String?

                public var extraConfiguration: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration?

                public var includeIPRanges: String?

                public var k8sNewAPIsSupport: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.K8sNewAPIsSupport?

                public var kiali: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Kiali?

                public var localityLB: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.LocalityLB?

                public var MSE: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.MSE?

                public var OPA: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.OPA?

                public var outboundTrafficPolicy: String?

                public var pilot: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot?

                public var prometheus: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Prometheus?

                public var protocolSupport: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ProtocolSupport?

                public var proxy: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Proxy?

                public var sidecarInjector: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.SidecarInjector?

                public var telemetry: Bool?

                public var tracing: Bool?

                public var webAssemblyFilterDeployment: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.WebAssemblyFilterDeployment?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.accessLog?.validate()
                    try self.audit?.validate()
                    try self.controlPlaneLogInfo?.validate()
                    try self.edition?.validate()
                    try self.extraConfiguration?.validate()
                    try self.k8sNewAPIsSupport?.validate()
                    try self.kiali?.validate()
                    try self.localityLB?.validate()
                    try self.MSE?.validate()
                    try self.OPA?.validate()
                    try self.pilot?.validate()
                    try self.prometheus?.validate()
                    try self.protocolSupport?.validate()
                    try self.proxy?.validate()
                    try self.sidecarInjector?.validate()
                    try self.webAssemblyFilterDeployment?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessLog != nil {
                        map["AccessLog"] = self.accessLog?.toMap()
                    }
                    if self.audit != nil {
                        map["Audit"] = self.audit?.toMap()
                    }
                    if self.controlPlaneLogInfo != nil {
                        map["ControlPlaneLogInfo"] = self.controlPlaneLogInfo?.toMap()
                    }
                    if self.customizedZipkin != nil {
                        map["CustomizedZipkin"] = self.customizedZipkin!
                    }
                    if self.edition != nil {
                        map["Edition"] = self.edition?.toMap()
                    }
                    if self.enableLocalityLB != nil {
                        map["EnableLocalityLB"] = self.enableLocalityLB!
                    }
                    if self.excludeIPRanges != nil {
                        map["ExcludeIPRanges"] = self.excludeIPRanges!
                    }
                    if self.excludeInboundPorts != nil {
                        map["ExcludeInboundPorts"] = self.excludeInboundPorts!
                    }
                    if self.excludeOutboundPorts != nil {
                        map["ExcludeOutboundPorts"] = self.excludeOutboundPorts!
                    }
                    if self.extraConfiguration != nil {
                        map["ExtraConfiguration"] = self.extraConfiguration?.toMap()
                    }
                    if self.includeIPRanges != nil {
                        map["IncludeIPRanges"] = self.includeIPRanges!
                    }
                    if self.k8sNewAPIsSupport != nil {
                        map["K8sNewAPIsSupport"] = self.k8sNewAPIsSupport?.toMap()
                    }
                    if self.kiali != nil {
                        map["Kiali"] = self.kiali?.toMap()
                    }
                    if self.localityLB != nil {
                        map["LocalityLB"] = self.localityLB?.toMap()
                    }
                    if self.MSE != nil {
                        map["MSE"] = self.MSE?.toMap()
                    }
                    if self.OPA != nil {
                        map["OPA"] = self.OPA?.toMap()
                    }
                    if self.outboundTrafficPolicy != nil {
                        map["OutboundTrafficPolicy"] = self.outboundTrafficPolicy!
                    }
                    if self.pilot != nil {
                        map["Pilot"] = self.pilot?.toMap()
                    }
                    if self.prometheus != nil {
                        map["Prometheus"] = self.prometheus?.toMap()
                    }
                    if self.protocolSupport != nil {
                        map["ProtocolSupport"] = self.protocolSupport?.toMap()
                    }
                    if self.proxy != nil {
                        map["Proxy"] = self.proxy?.toMap()
                    }
                    if self.sidecarInjector != nil {
                        map["SidecarInjector"] = self.sidecarInjector?.toMap()
                    }
                    if self.telemetry != nil {
                        map["Telemetry"] = self.telemetry!
                    }
                    if self.tracing != nil {
                        map["Tracing"] = self.tracing!
                    }
                    if self.webAssemblyFilterDeployment != nil {
                        map["WebAssemblyFilterDeployment"] = self.webAssemblyFilterDeployment?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AccessLog"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.AccessLog()
                        model.fromMap(value)
                        self.accessLog = model
                    }
                    if let value = dict["Audit"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Audit()
                        model.fromMap(value)
                        self.audit = model
                    }
                    if let value = dict["ControlPlaneLogInfo"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ControlPlaneLogInfo()
                        model.fromMap(value)
                        self.controlPlaneLogInfo = model
                    }
                    if let value = dict["CustomizedZipkin"] as? Bool {
                        self.customizedZipkin = value
                    }
                    if let value = dict["Edition"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Edition()
                        model.fromMap(value)
                        self.edition = model
                    }
                    if let value = dict["EnableLocalityLB"] as? Bool {
                        self.enableLocalityLB = value
                    }
                    if let value = dict["ExcludeIPRanges"] as? String {
                        self.excludeIPRanges = value
                    }
                    if let value = dict["ExcludeInboundPorts"] as? String {
                        self.excludeInboundPorts = value
                    }
                    if let value = dict["ExcludeOutboundPorts"] as? String {
                        self.excludeOutboundPorts = value
                    }
                    if let value = dict["ExtraConfiguration"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ExtraConfiguration()
                        model.fromMap(value)
                        self.extraConfiguration = model
                    }
                    if let value = dict["IncludeIPRanges"] as? String {
                        self.includeIPRanges = value
                    }
                    if let value = dict["K8sNewAPIsSupport"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.K8sNewAPIsSupport()
                        model.fromMap(value)
                        self.k8sNewAPIsSupport = model
                    }
                    if let value = dict["Kiali"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Kiali()
                        model.fromMap(value)
                        self.kiali = model
                    }
                    if let value = dict["LocalityLB"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.LocalityLB()
                        model.fromMap(value)
                        self.localityLB = model
                    }
                    if let value = dict["MSE"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.MSE()
                        model.fromMap(value)
                        self.MSE = model
                    }
                    if let value = dict["OPA"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.OPA()
                        model.fromMap(value)
                        self.OPA = model
                    }
                    if let value = dict["OutboundTrafficPolicy"] as? String {
                        self.outboundTrafficPolicy = value
                    }
                    if let value = dict["Pilot"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Pilot()
                        model.fromMap(value)
                        self.pilot = model
                    }
                    if let value = dict["Prometheus"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Prometheus()
                        model.fromMap(value)
                        self.prometheus = model
                    }
                    if let value = dict["ProtocolSupport"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.ProtocolSupport()
                        model.fromMap(value)
                        self.protocolSupport = model
                    }
                    if let value = dict["Proxy"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.Proxy()
                        model.fromMap(value)
                        self.proxy = model
                    }
                    if let value = dict["SidecarInjector"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.SidecarInjector()
                        model.fromMap(value)
                        self.sidecarInjector = model
                    }
                    if let value = dict["Telemetry"] as? Bool {
                        self.telemetry = value
                    }
                    if let value = dict["Tracing"] as? Bool {
                        self.tracing = value
                    }
                    if let value = dict["WebAssemblyFilterDeployment"] as? [String: Any?] {
                        var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig.WebAssemblyFilterDeployment()
                        model.fromMap(value)
                        self.webAssemblyFilterDeployment = model
                    }
                }
            }
            public class Network : Tea.TeaModel {
                public var securityGroupId: String?

                public var vSwitches: [String]?

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
                    if self.securityGroupId != nil {
                        map["SecurityGroupId"] = self.securityGroupId!
                    }
                    if self.vSwitches != nil {
                        map["VSwitches"] = self.vSwitches!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SecurityGroupId"] as? String {
                        self.securityGroupId = value
                    }
                    if let value = dict["VSwitches"] as? [String] {
                        self.vSwitches = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var loadBalancer: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.LoadBalancer?

            public var meshConfig: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig?

            public var network: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.Network?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.loadBalancer?.validate()
                try self.meshConfig?.validate()
                try self.network?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.loadBalancer != nil {
                    map["LoadBalancer"] = self.loadBalancer?.toMap()
                }
                if self.meshConfig != nil {
                    map["MeshConfig"] = self.meshConfig?.toMap()
                }
                if self.network != nil {
                    map["Network"] = self.network?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LoadBalancer"] as? [String: Any?] {
                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.LoadBalancer()
                    model.fromMap(value)
                    self.loadBalancer = model
                }
                if let value = dict["MeshConfig"] as? [String: Any?] {
                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.MeshConfig()
                    model.fromMap(value)
                    self.meshConfig = model
                }
                if let value = dict["Network"] as? [String: Any?] {
                    var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec.Network()
                    model.fromMap(value)
                    self.network = model
                }
            }
        }
        public var clusterSpec: String?

        public var clusters: [String]?

        public var endpoints: DescribeServiceMeshDetailResponseBody.ServiceMesh.Endpoints?

        public var ownerId: String?

        public var ownerType: String?

        public var serviceMeshInfo: DescribeServiceMeshDetailResponseBody.ServiceMesh.ServiceMeshInfo?

        public var spec: DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.endpoints?.validate()
            try self.serviceMeshInfo?.validate()
            try self.spec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterSpec != nil {
                map["ClusterSpec"] = self.clusterSpec!
            }
            if self.clusters != nil {
                map["Clusters"] = self.clusters!
            }
            if self.endpoints != nil {
                map["Endpoints"] = self.endpoints?.toMap()
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.serviceMeshInfo != nil {
                map["ServiceMeshInfo"] = self.serviceMeshInfo?.toMap()
            }
            if self.spec != nil {
                map["Spec"] = self.spec?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterSpec"] as? String {
                self.clusterSpec = value
            }
            if let value = dict["Clusters"] as? [String] {
                self.clusters = value
            }
            if let value = dict["Endpoints"] as? [String: Any?] {
                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Endpoints()
                model.fromMap(value)
                self.endpoints = model
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["OwnerType"] as? String {
                self.ownerType = value
            }
            if let value = dict["ServiceMeshInfo"] as? [String: Any?] {
                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.ServiceMeshInfo()
                model.fromMap(value)
                self.serviceMeshInfo = model
            }
            if let value = dict["Spec"] as? [String: Any?] {
                var model = DescribeServiceMeshDetailResponseBody.ServiceMesh.Spec()
                model.fromMap(value)
                self.spec = model
            }
        }
    }
    public var requestId: String?

    public var serviceMesh: DescribeServiceMeshDetailResponseBody.ServiceMesh?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceMesh?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceMesh != nil {
            map["ServiceMesh"] = self.serviceMesh?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceMesh"] as? [String: Any?] {
            var model = DescribeServiceMeshDetailResponseBody.ServiceMesh()
            model.fromMap(value)
            self.serviceMesh = model
        }
    }
}

public class DescribeServiceMeshDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshKubeconfigRequest : Tea.TeaModel {
    public var privateIpAddress: Bool?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrivateIpAddress"] as? Bool {
            self.privateIpAddress = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeServiceMeshKubeconfigResponseBody : Tea.TeaModel {
    public var expireTime: String?

    public var kubeconfig: String?

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
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.kubeconfig != nil {
            map["Kubeconfig"] = self.kubeconfig!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["Kubeconfig"] as? String {
            self.kubeconfig = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceMeshKubeconfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshKubeconfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshKubeconfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshLogsRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeServiceMeshLogsResponseBody : Tea.TeaModel {
    public class Logs : Tea.TeaModel {
        public var creationTime: String?

        public var log: String?

        public var serviceMeshId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.log != nil {
                map["Log"] = self.log!
            }
            if self.serviceMeshId != nil {
                map["ServiceMeshId"] = self.serviceMeshId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Log"] as? String {
                self.log = value
            }
            if let value = dict["ServiceMeshId"] as? String {
                self.serviceMeshId = value
            }
        }
    }
    public var logs: [DescribeServiceMeshLogsResponseBody.Logs]?

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
        if self.logs != nil {
            var tmp : [Any] = []
            for k in self.logs! {
                tmp.append(k.toMap())
            }
            map["Logs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Logs"] as? [Any?] {
            var tmp : [DescribeServiceMeshLogsResponseBody.Logs] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceMeshLogsResponseBody.Logs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceMeshLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshProxyStatusRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeServiceMeshProxyStatusResponseBody : Tea.TeaModel {
    public class ProxyStatus : Tea.TeaModel {
        public var clusterSynced: String?

        public var endpointPercent: String?

        public var endpointSynced: String?

        public var istioVersion: String?

        public var listenerSynced: String?

        public var proxyId: String?

        public var proxyVersion: String?

        public var routeSynced: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterSynced != nil {
                map["ClusterSynced"] = self.clusterSynced!
            }
            if self.endpointPercent != nil {
                map["EndpointPercent"] = self.endpointPercent!
            }
            if self.endpointSynced != nil {
                map["EndpointSynced"] = self.endpointSynced!
            }
            if self.istioVersion != nil {
                map["IstioVersion"] = self.istioVersion!
            }
            if self.listenerSynced != nil {
                map["ListenerSynced"] = self.listenerSynced!
            }
            if self.proxyId != nil {
                map["ProxyId"] = self.proxyId!
            }
            if self.proxyVersion != nil {
                map["ProxyVersion"] = self.proxyVersion!
            }
            if self.routeSynced != nil {
                map["RouteSynced"] = self.routeSynced!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterSynced"] as? String {
                self.clusterSynced = value
            }
            if let value = dict["EndpointPercent"] as? String {
                self.endpointPercent = value
            }
            if let value = dict["EndpointSynced"] as? String {
                self.endpointSynced = value
            }
            if let value = dict["IstioVersion"] as? String {
                self.istioVersion = value
            }
            if let value = dict["ListenerSynced"] as? String {
                self.listenerSynced = value
            }
            if let value = dict["ProxyId"] as? String {
                self.proxyId = value
            }
            if let value = dict["ProxyVersion"] as? String {
                self.proxyVersion = value
            }
            if let value = dict["RouteSynced"] as? String {
                self.routeSynced = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var proxyStatus: [DescribeServiceMeshProxyStatusResponseBody.ProxyStatus]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.proxyStatus != nil {
            var tmp : [Any] = []
            for k in self.proxyStatus! {
                tmp.append(k.toMap())
            }
            map["ProxyStatus"] = tmp
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
        if let value = dict["ProxyStatus"] as? [Any?] {
            var tmp : [DescribeServiceMeshProxyStatusResponseBody.ProxyStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceMeshProxyStatusResponseBody.ProxyStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.proxyStatus = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class DescribeServiceMeshProxyStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshProxyStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshProxyStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshUpgradeStatusRequest : Tea.TeaModel {
    public var allIstioGatewayFullNames: String?

    public var guestClusterIds: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allIstioGatewayFullNames != nil {
            map["AllIstioGatewayFullNames"] = self.allIstioGatewayFullNames!
        }
        if self.guestClusterIds != nil {
            map["GuestClusterIds"] = self.guestClusterIds!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllIstioGatewayFullNames"] as? String {
            self.allIstioGatewayFullNames = value
        }
        if let value = dict["GuestClusterIds"] as? String {
            self.guestClusterIds = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeServiceMeshUpgradeStatusResponseBody : Tea.TeaModel {
    public class UpgradeDetail : Tea.TeaModel {
        public var finishedGatewaysNum: Int64?

        public var gatewayStatusRecord: [String: UpgradeDetailGatewayStatusRecordValue]?

        public var meshStatus: String?

        public var totalGatewaysNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finishedGatewaysNum != nil {
                map["FinishedGatewaysNum"] = self.finishedGatewaysNum!
            }
            if self.gatewayStatusRecord != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.gatewayStatusRecord! {
                    tmp[k] = v.toMap()
                }
                map["GatewayStatusRecord"] = tmp
            }
            if self.meshStatus != nil {
                map["MeshStatus"] = self.meshStatus!
            }
            if self.totalGatewaysNum != nil {
                map["TotalGatewaysNum"] = self.totalGatewaysNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FinishedGatewaysNum"] as? Int64 {
                self.finishedGatewaysNum = value
            }
            if let value = dict["GatewayStatusRecord"] as? [String: Any?] {
                var tmp : [String: UpgradeDetailGatewayStatusRecordValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = UpgradeDetailGatewayStatusRecordValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.gatewayStatusRecord = tmp
            }
            if let value = dict["MeshStatus"] as? String {
                self.meshStatus = value
            }
            if let value = dict["TotalGatewaysNum"] as? Int64 {
                self.totalGatewaysNum = value
            }
        }
    }
    public var requestId: String?

    public var upgradeDetail: DescribeServiceMeshUpgradeStatusResponseBody.UpgradeDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.upgradeDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.upgradeDetail != nil {
            map["UpgradeDetail"] = self.upgradeDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpgradeDetail"] as? [String: Any?] {
            var model = DescribeServiceMeshUpgradeStatusResponseBody.UpgradeDetail()
            model.fromMap(value)
            self.upgradeDetail = model
        }
    }
}

public class DescribeServiceMeshUpgradeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshUpgradeStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshUpgradeStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshVMsRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeServiceMeshVMsResponseBody : Tea.TeaModel {
    public class VMs : Tea.TeaModel {
        public var hasTag: Bool?

        public var hostName: String?

        public var instanceId: String?

        public var ipAddress: String?

        public var region: String?

        public var securityGroupIds: String?

        public var serviceMeshId: String?

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
            if self.hasTag != nil {
                map["HasTag"] = self.hasTag!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.serviceMeshId != nil {
                map["ServiceMeshId"] = self.serviceMeshId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasTag"] as? Bool {
                self.hasTag = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IpAddress"] as? String {
                self.ipAddress = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SecurityGroupIds"] as? String {
                self.securityGroupIds = value
            }
            if let value = dict["ServiceMeshId"] as? String {
                self.serviceMeshId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var VMs: [DescribeServiceMeshVMsResponseBody.VMs]?

    public override init() {
        super.init()
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
        if self.VMs != nil {
            var tmp : [Any] = []
            for k in self.VMs! {
                tmp.append(k.toMap())
            }
            map["VMs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VMs"] as? [Any?] {
            var tmp : [DescribeServiceMeshVMsResponseBody.VMs] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceMeshVMsResponseBody.VMs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.VMs = tmp
        }
    }
}

public class DescribeServiceMeshVMsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshVMsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshVMsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMeshesRequest : Tea.TeaModel {
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
    public var tag: [DescribeServiceMeshesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeServiceMeshesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceMeshesRequest.Tag()
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

public class DescribeServiceMeshesResponseBody : Tea.TeaModel {
    public class ServiceMeshes : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var intranetApiServerEndpoint: String?

            public var intranetPilotEndpoint: String?

            public var publicApiServerEndpoint: String?

            public var publicPilotEndpoint: String?

            public var reverseTunnelEndpoint: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.intranetApiServerEndpoint != nil {
                    map["IntranetApiServerEndpoint"] = self.intranetApiServerEndpoint!
                }
                if self.intranetPilotEndpoint != nil {
                    map["IntranetPilotEndpoint"] = self.intranetPilotEndpoint!
                }
                if self.publicApiServerEndpoint != nil {
                    map["PublicApiServerEndpoint"] = self.publicApiServerEndpoint!
                }
                if self.publicPilotEndpoint != nil {
                    map["PublicPilotEndpoint"] = self.publicPilotEndpoint!
                }
                if self.reverseTunnelEndpoint != nil {
                    map["ReverseTunnelEndpoint"] = self.reverseTunnelEndpoint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IntranetApiServerEndpoint"] as? String {
                    self.intranetApiServerEndpoint = value
                }
                if let value = dict["IntranetPilotEndpoint"] as? String {
                    self.intranetPilotEndpoint = value
                }
                if let value = dict["PublicApiServerEndpoint"] as? String {
                    self.publicApiServerEndpoint = value
                }
                if let value = dict["PublicPilotEndpoint"] as? String {
                    self.publicPilotEndpoint = value
                }
                if let value = dict["ReverseTunnelEndpoint"] as? String {
                    self.reverseTunnelEndpoint = value
                }
            }
        }
        public class ServiceMeshInfo : Tea.TeaModel {
            public var creationTime: String?

            public var errorMessage: String?

            public var name: String?

            public var profile: String?

            public var regionId: String?

            public var serviceMeshId: String?

            public var state: String?

            public var updateTime: String?

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
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.serviceMeshId != nil {
                    map["ServiceMeshId"] = self.serviceMeshId!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Profile"] as? String {
                    self.profile = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ServiceMeshId"] as? String {
                    self.serviceMeshId = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class Spec : Tea.TeaModel {
            public class LoadBalancer : Tea.TeaModel {
                public var apiServerLoadbalancerId: String?

                public var apiServerPublicEip: Bool?

                public var pilotPublicEip: Bool?

                public var pilotPublicLoadbalancerId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiServerLoadbalancerId != nil {
                        map["ApiServerLoadbalancerId"] = self.apiServerLoadbalancerId!
                    }
                    if self.apiServerPublicEip != nil {
                        map["ApiServerPublicEip"] = self.apiServerPublicEip!
                    }
                    if self.pilotPublicEip != nil {
                        map["PilotPublicEip"] = self.pilotPublicEip!
                    }
                    if self.pilotPublicLoadbalancerId != nil {
                        map["PilotPublicLoadbalancerId"] = self.pilotPublicLoadbalancerId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiServerLoadbalancerId"] as? String {
                        self.apiServerLoadbalancerId = value
                    }
                    if let value = dict["ApiServerPublicEip"] as? Bool {
                        self.apiServerPublicEip = value
                    }
                    if let value = dict["PilotPublicEip"] as? Bool {
                        self.pilotPublicEip = value
                    }
                    if let value = dict["PilotPublicLoadbalancerId"] as? String {
                        self.pilotPublicLoadbalancerId = value
                    }
                }
            }
            public class MeshConfig : Tea.TeaModel {
                public class ExtraConfiguration : Tea.TeaModel {
                    public class Playground : Tea.TeaModel {
                        public var scene: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.scene != nil {
                                map["Scene"] = self.scene!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Scene"] as? String {
                                self.scene = value
                            }
                        }
                    }
                    public var playground: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.ExtraConfiguration.Playground?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.playground?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.playground != nil {
                            map["Playground"] = self.playground?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Playground"] as? [String: Any?] {
                            var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.ExtraConfiguration.Playground()
                            model.fromMap(value)
                            self.playground = model
                        }
                    }
                }
                public class Pilot : Tea.TeaModel {
                    public var http10Enabled: Bool?

                    public var traceSampling: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.http10Enabled != nil {
                            map["Http10Enabled"] = self.http10Enabled!
                        }
                        if self.traceSampling != nil {
                            map["TraceSampling"] = self.traceSampling!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Http10Enabled"] as? Bool {
                            self.http10Enabled = value
                        }
                        if let value = dict["TraceSampling"] as? Double {
                            self.traceSampling = value
                        }
                    }
                }
                public class SidecarInjector : Tea.TeaModel {
                    public class InitCNIConfiguration : Tea.TeaModel {
                        public var enabled: Bool?

                        public var excludeNamespaces: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.enabled != nil {
                                map["Enabled"] = self.enabled!
                            }
                            if self.excludeNamespaces != nil {
                                map["ExcludeNamespaces"] = self.excludeNamespaces!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Enabled"] as? Bool {
                                self.enabled = value
                            }
                            if let value = dict["ExcludeNamespaces"] as? String {
                                self.excludeNamespaces = value
                            }
                        }
                    }
                    public var autoInjectionPolicyEnabled: Bool?

                    public var enableNamespacesByDefault: Bool?

                    public var initCNIConfiguration: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.SidecarInjector.InitCNIConfiguration?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.initCNIConfiguration?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.autoInjectionPolicyEnabled != nil {
                            map["AutoInjectionPolicyEnabled"] = self.autoInjectionPolicyEnabled!
                        }
                        if self.enableNamespacesByDefault != nil {
                            map["EnableNamespacesByDefault"] = self.enableNamespacesByDefault!
                        }
                        if self.initCNIConfiguration != nil {
                            map["InitCNIConfiguration"] = self.initCNIConfiguration?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AutoInjectionPolicyEnabled"] as? Bool {
                            self.autoInjectionPolicyEnabled = value
                        }
                        if let value = dict["EnableNamespacesByDefault"] as? Bool {
                            self.enableNamespacesByDefault = value
                        }
                        if let value = dict["InitCNIConfiguration"] as? [String: Any?] {
                            var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.SidecarInjector.InitCNIConfiguration()
                            model.fromMap(value)
                            self.initCNIConfiguration = model
                        }
                    }
                }
                public var extraConfiguration: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.ExtraConfiguration?

                public var mtls: Bool?

                public var outboundTrafficPolicy: String?

                public var pilot: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.Pilot?

                public var sidecarInjector: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.SidecarInjector?

                public var strictMtls: Bool?

                public var telemetry: Bool?

                public var tracing: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.extraConfiguration?.validate()
                    try self.pilot?.validate()
                    try self.sidecarInjector?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.extraConfiguration != nil {
                        map["ExtraConfiguration"] = self.extraConfiguration?.toMap()
                    }
                    if self.mtls != nil {
                        map["Mtls"] = self.mtls!
                    }
                    if self.outboundTrafficPolicy != nil {
                        map["OutboundTrafficPolicy"] = self.outboundTrafficPolicy!
                    }
                    if self.pilot != nil {
                        map["Pilot"] = self.pilot?.toMap()
                    }
                    if self.sidecarInjector != nil {
                        map["SidecarInjector"] = self.sidecarInjector?.toMap()
                    }
                    if self.strictMtls != nil {
                        map["StrictMtls"] = self.strictMtls!
                    }
                    if self.telemetry != nil {
                        map["Telemetry"] = self.telemetry!
                    }
                    if self.tracing != nil {
                        map["Tracing"] = self.tracing!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExtraConfiguration"] as? [String: Any?] {
                        var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.ExtraConfiguration()
                        model.fromMap(value)
                        self.extraConfiguration = model
                    }
                    if let value = dict["Mtls"] as? Bool {
                        self.mtls = value
                    }
                    if let value = dict["OutboundTrafficPolicy"] as? String {
                        self.outboundTrafficPolicy = value
                    }
                    if let value = dict["Pilot"] as? [String: Any?] {
                        var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.Pilot()
                        model.fromMap(value)
                        self.pilot = model
                    }
                    if let value = dict["SidecarInjector"] as? [String: Any?] {
                        var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig.SidecarInjector()
                        model.fromMap(value)
                        self.sidecarInjector = model
                    }
                    if let value = dict["StrictMtls"] as? Bool {
                        self.strictMtls = value
                    }
                    if let value = dict["Telemetry"] as? Bool {
                        self.telemetry = value
                    }
                    if let value = dict["Tracing"] as? Bool {
                        self.tracing = value
                    }
                }
            }
            public class Network : Tea.TeaModel {
                public var securityGroupId: String?

                public var vSwitches: [String]?

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
                    if self.securityGroupId != nil {
                        map["SecurityGroupId"] = self.securityGroupId!
                    }
                    if self.vSwitches != nil {
                        map["VSwitches"] = self.vSwitches!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SecurityGroupId"] as? String {
                        self.securityGroupId = value
                    }
                    if let value = dict["VSwitches"] as? [String] {
                        self.vSwitches = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var loadBalancer: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.LoadBalancer?

            public var meshConfig: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig?

            public var network: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.Network?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.loadBalancer?.validate()
                try self.meshConfig?.validate()
                try self.network?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.loadBalancer != nil {
                    map["LoadBalancer"] = self.loadBalancer?.toMap()
                }
                if self.meshConfig != nil {
                    map["MeshConfig"] = self.meshConfig?.toMap()
                }
                if self.network != nil {
                    map["Network"] = self.network?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LoadBalancer"] as? [String: Any?] {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.LoadBalancer()
                    model.fromMap(value)
                    self.loadBalancer = model
                }
                if let value = dict["MeshConfig"] as? [String: Any?] {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.MeshConfig()
                    model.fromMap(value)
                    self.meshConfig = model
                }
                if let value = dict["Network"] as? [String: Any?] {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec.Network()
                    model.fromMap(value)
                    self.network = model
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
        public var clusterSpec: String?

        public var clusters: [String]?

        public var endpoints: DescribeServiceMeshesResponseBody.ServiceMeshes.Endpoints?

        public var ownerId: String?

        public var ownerType: String?

        public var serviceMeshInfo: DescribeServiceMeshesResponseBody.ServiceMeshes.ServiceMeshInfo?

        public var spec: DescribeServiceMeshesResponseBody.ServiceMeshes.Spec?

        public var tag: [DescribeServiceMeshesResponseBody.ServiceMeshes.Tag]?

        public var upgradable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.endpoints?.validate()
            try self.serviceMeshInfo?.validate()
            try self.spec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterSpec != nil {
                map["ClusterSpec"] = self.clusterSpec!
            }
            if self.clusters != nil {
                map["Clusters"] = self.clusters!
            }
            if self.endpoints != nil {
                map["Endpoints"] = self.endpoints?.toMap()
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.serviceMeshInfo != nil {
                map["ServiceMeshInfo"] = self.serviceMeshInfo?.toMap()
            }
            if self.spec != nil {
                map["Spec"] = self.spec?.toMap()
            }
            if self.tag != nil {
                var tmp : [Any] = []
                for k in self.tag! {
                    tmp.append(k.toMap())
                }
                map["Tag"] = tmp
            }
            if self.upgradable != nil {
                map["Upgradable"] = self.upgradable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterSpec"] as? String {
                self.clusterSpec = value
            }
            if let value = dict["Clusters"] as? [String] {
                self.clusters = value
            }
            if let value = dict["Endpoints"] as? [String: Any?] {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Endpoints()
                model.fromMap(value)
                self.endpoints = model
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["OwnerType"] as? String {
                self.ownerType = value
            }
            if let value = dict["ServiceMeshInfo"] as? [String: Any?] {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.ServiceMeshInfo()
                model.fromMap(value)
                self.serviceMeshInfo = model
            }
            if let value = dict["Spec"] as? [String: Any?] {
                var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Spec()
                model.fromMap(value)
                self.spec = model
            }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeServiceMeshesResponseBody.ServiceMeshes.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeServiceMeshesResponseBody.ServiceMeshes.Tag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tag = tmp
            }
            if let value = dict["Upgradable"] as? Bool {
                self.upgradable = value
            }
        }
    }
    public var requestId: String?

    public var serviceMeshes: [DescribeServiceMeshesResponseBody.ServiceMeshes]?

    public override init() {
        super.init()
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
        if self.serviceMeshes != nil {
            var tmp : [Any] = []
            for k in self.serviceMeshes! {
                tmp.append(k.toMap())
            }
            map["ServiceMeshes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceMeshes"] as? [Any?] {
            var tmp : [DescribeServiceMeshesResponseBody.ServiceMeshes] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceMeshesResponseBody.ServiceMeshes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceMeshes = tmp
        }
    }
}

public class DescribeServiceMeshesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMeshesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServiceMeshesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUpgradeVersionRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeUpgradeVersionResponseBody : Tea.TeaModel {
    public class Version : Tea.TeaModel {
        public var istioOperatorVersion: String?

        public var istioVersion: String?

        public var kubernetesVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.istioOperatorVersion != nil {
                map["IstioOperatorVersion"] = self.istioOperatorVersion!
            }
            if self.istioVersion != nil {
                map["IstioVersion"] = self.istioVersion!
            }
            if self.kubernetesVersion != nil {
                map["KubernetesVersion"] = self.kubernetesVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IstioOperatorVersion"] as? String {
                self.istioOperatorVersion = value
            }
            if let value = dict["IstioVersion"] as? String {
                self.istioVersion = value
            }
            if let value = dict["KubernetesVersion"] as? String {
                self.kubernetesVersion = value
            }
        }
    }
    public var requestId: String?

    public var version: DescribeUpgradeVersionResponseBody.Version?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.version?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.version != nil {
            map["Version"] = self.version?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Version"] as? [String: Any?] {
            var model = DescribeUpgradeVersionResponseBody.Version()
            model.fromMap(value)
            self.version = model
        }
    }
}

public class DescribeUpgradeVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUpgradeVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUpgradeVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserPermissionsRequest : Tea.TeaModel {
    public var subAccountUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subAccountUserId != nil {
            map["SubAccountUserId"] = self.subAccountUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SubAccountUserId"] as? String {
            self.subAccountUserId = value
        }
    }
}

public class DescribeUserPermissionsResponseBody : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public var isRamRole: String?

        public var parentId: String?

        public var resourceId: String?

        public var resourceType: String?

        public var roleName: String?

        public var roleType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isRamRole != nil {
                map["IsRamRole"] = self.isRamRole!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsRamRole"] as? String {
                self.isRamRole = value
            }
            if let value = dict["ParentId"] as? String {
                self.parentId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["RoleType"] as? String {
                self.roleType = value
            }
        }
    }
    public var permissions: [DescribeUserPermissionsResponseBody.Permissions]?

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
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["Permissions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Permissions"] as? [Any?] {
            var tmp : [DescribeUserPermissionsResponseBody.Permissions] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserPermissionsResponseBody.Permissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeUserPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUsersWithPermissionsRequest : Tea.TeaModel {
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
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
    }
}

public class DescribeUsersWithPermissionsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var UIDs: [String]?

    public override init() {
        super.init()
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
        if self.UIDs != nil {
            map["UIDs"] = self.UIDs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UIDs"] as? [String] {
            self.UIDs = value
        }
    }
}

public class DescribeUsersWithPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsersWithPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUsersWithPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVMsInServiceMeshRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class DescribeVMsInServiceMeshResponseBody : Tea.TeaModel {
    public class VMs : Tea.TeaModel {
        public var hasTag: Bool?

        public var hostName: String?

        public var instanceId: String?

        public var ipAddress: String?

        public var region: String?

        public var securityGroupIds: String?

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
            if self.hasTag != nil {
                map["HasTag"] = self.hasTag!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasTag"] as? Bool {
                self.hasTag = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IpAddress"] as? String {
                self.ipAddress = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SecurityGroupIds"] as? String {
                self.securityGroupIds = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var VMs: [DescribeVMsInServiceMeshResponseBody.VMs]?

    public override init() {
        super.init()
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
        if self.VMs != nil {
            var tmp : [Any] = []
            for k in self.VMs! {
                tmp.append(k.toMap())
            }
            map["VMs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VMs"] as? [Any?] {
            var tmp : [DescribeVMsInServiceMeshResponseBody.VMs] = []
            for v in value {
                if v != nil {
                    var model = DescribeVMsInServiceMeshResponseBody.VMs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.VMs = tmp
        }
    }
}

public class DescribeVMsInServiceMeshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVMsInServiceMeshResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVMsInServiceMeshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVSwitchesRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeVSwitchesResponseBody : Tea.TeaModel {
    public class VSwitches : Tea.TeaModel {
        public var isDefault: Bool?

        public var status: String?

        public var vSwitchId: String?

        public var vSwitchName: String?

        public var vpcId: String?

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
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vSwitchName != nil {
                map["VSwitchName"] = self.vSwitchName!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VSwitchName"] as? String {
                self.vSwitchName = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var vSwitches: [DescribeVSwitchesResponseBody.VSwitches]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vSwitches != nil {
            var tmp : [Any] = []
            for k in self.vSwitches! {
                tmp.append(k.toMap())
            }
            map["VSwitches"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["VSwitches"] as? [Any?] {
            var tmp : [DescribeVSwitchesResponseBody.VSwitches] = []
            for v in value {
                if v != nil {
                    var model = DescribeVSwitchesResponseBody.VSwitches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vSwitches = tmp
        }
    }
}

public class DescribeVSwitchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVSwitchesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVSwitchesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVersionsResponseBody : Tea.TeaModel {
    public class VersionInfo : Tea.TeaModel {
        public var edition: String?

        public var versions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.edition != nil {
                map["Edition"] = self.edition!
            }
            if self.versions != nil {
                map["Versions"] = self.versions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Edition"] as? String {
                self.edition = value
            }
            if let value = dict["Versions"] as? [String] {
                self.versions = value
            }
        }
    }
    public var requestId: String?

    public var versionInfo: [DescribeVersionsResponseBody.VersionInfo]?

    public override init() {
        super.init()
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
        if self.versionInfo != nil {
            var tmp : [Any] = []
            for k in self.versionInfo! {
                tmp.append(k.toMap())
            }
            map["VersionInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VersionInfo"] as? [Any?] {
            var tmp : [DescribeVersionsResponseBody.VersionInfo] = []
            for v in value {
                if v != nil {
                    var model = DescribeVersionsResponseBody.VersionInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.versionInfo = tmp
        }
    }
}

public class DescribeVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVpcsRequest : Tea.TeaModel {
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
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeVpcsResponseBody : Tea.TeaModel {
    public class Vpcs : Tea.TeaModel {
        public var isDefault: Bool?

        public var status: String?

        public var vpcId: String?

        public var vpcName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var vpcs: [DescribeVpcsResponseBody.Vpcs]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vpcs != nil {
            var tmp : [Any] = []
            for k in self.vpcs! {
                tmp.append(k.toMap())
            }
            map["Vpcs"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Vpcs"] as? [Any?] {
            var tmp : [DescribeVpcsResponseBody.Vpcs] = []
            for v in value {
                if v != nil {
                    var model = DescribeVpcsResponseBody.Vpcs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcs = tmp
        }
    }
}

public class DescribeVpcsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVpcsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVpcsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCaCertRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class GetCaCertResponseBody : Tea.TeaModel {
    public var caCert: String?

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
        if self.caCert != nil {
            map["CaCert"] = self.caCert!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CaCert"] as? String {
            self.caCert = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCaCertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCaCertResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCaCertResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeploymentBySelectorRequest : Tea.TeaModel {
    public var guestCluster: String?

    public var labelSelector: [String: String]?

    public var limit: Int64?

    public var mark: String?

    public var nameSpace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.guestCluster != nil {
            map["GuestCluster"] = self.guestCluster!
        }
        if self.labelSelector != nil {
            map["LabelSelector"] = self.labelSelector!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.mark != nil {
            map["Mark"] = self.mark!
        }
        if self.nameSpace != nil {
            map["NameSpace"] = self.nameSpace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GuestCluster"] as? String {
            self.guestCluster = value
        }
        if let value = dict["LabelSelector"] as? [String: String] {
            self.labelSelector = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Mark"] as? String {
            self.mark = value
        }
        if let value = dict["NameSpace"] as? String {
            self.nameSpace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class GetDeploymentBySelectorShrinkRequest : Tea.TeaModel {
    public var guestCluster: String?

    public var labelSelectorShrink: String?

    public var limit: Int64?

    public var mark: String?

    public var nameSpace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.guestCluster != nil {
            map["GuestCluster"] = self.guestCluster!
        }
        if self.labelSelectorShrink != nil {
            map["LabelSelector"] = self.labelSelectorShrink!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.mark != nil {
            map["Mark"] = self.mark!
        }
        if self.nameSpace != nil {
            map["NameSpace"] = self.nameSpace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GuestCluster"] as? String {
            self.guestCluster = value
        }
        if let value = dict["LabelSelector"] as? String {
            self.labelSelectorShrink = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Mark"] as? String {
            self.mark = value
        }
        if let value = dict["NameSpace"] as? String {
            self.nameSpace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class GetDeploymentBySelectorResponseBody : Tea.TeaModel {
    public var deploymentNameList: [[UInt8]]?

    public var mark: String?

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
        if self.deploymentNameList != nil {
            map["DeploymentNameList"] = self.deploymentNameList!
        }
        if self.mark != nil {
            map["Mark"] = self.mark!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeploymentNameList"] as? [[UInt8]] {
            self.deploymentNameList = value
        }
        if let value = dict["Mark"] as? String {
            self.mark = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDeploymentBySelectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeploymentBySelectorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeploymentBySelectorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGrafanaDashboardUrlRequest : Tea.TeaModel {
    public var k8sClusterId: String?

    public var serviceMeshId: String?

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
        if self.k8sClusterId != nil {
            map["K8sClusterId"] = self.k8sClusterId!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["K8sClusterId"] as? String {
            self.k8sClusterId = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class GetGrafanaDashboardUrlResponseBody : Tea.TeaModel {
    public class Dashboards : Tea.TeaModel {
        public var title: String?

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
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var dashboards: [GetGrafanaDashboardUrlResponseBody.Dashboards]?

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
        if self.dashboards != nil {
            var tmp : [Any] = []
            for k in self.dashboards! {
                tmp.append(k.toMap())
            }
            map["Dashboards"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dashboards"] as? [Any?] {
            var tmp : [GetGrafanaDashboardUrlResponseBody.Dashboards] = []
            for v in value {
                if v != nil {
                    var model = GetGrafanaDashboardUrlResponseBody.Dashboards()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dashboards = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGrafanaDashboardUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGrafanaDashboardUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGrafanaDashboardUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRegisteredServiceEndpointsRequest : Tea.TeaModel {
    public var clusterIds: String?

    public var name: String?

    public var namespace: String?

    public var serviceMeshId: String?

    public var serviceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterIds != nil {
            map["ClusterIds"] = self.clusterIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterIds"] as? String {
            self.clusterIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
    }
}

public class GetRegisteredServiceEndpointsResponseBody : Tea.TeaModel {
    public class EndPointSlice : Tea.TeaModel {
        public class EndpointsDetails : Tea.TeaModel {
            public var address: String?

            public var hostname: String?

            public var podName: String?

            public var ports: [Int32]?

            public var region: String?

            public var sidecarInjected: Bool?

            public override init() {
                super.init()
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
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.podName != nil {
                    map["PodName"] = self.podName!
                }
                if self.ports != nil {
                    map["Ports"] = self.ports!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.sidecarInjected != nil {
                    map["SidecarInjected"] = self.sidecarInjected!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Hostname"] as? String {
                    self.hostname = value
                }
                if let value = dict["PodName"] as? String {
                    self.podName = value
                }
                if let value = dict["Ports"] as? [Int32] {
                    self.ports = value
                }
                if let value = dict["Region"] as? String {
                    self.region = value
                }
                if let value = dict["SidecarInjected"] as? Bool {
                    self.sidecarInjected = value
                }
            }
        }
        public var endpointsDetails: [GetRegisteredServiceEndpointsResponseBody.EndPointSlice.EndpointsDetails]?

        public var location: String?

        public var namespace: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointsDetails != nil {
                var tmp : [Any] = []
                for k in self.endpointsDetails! {
                    tmp.append(k.toMap())
                }
                map["EndpointsDetails"] = tmp
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndpointsDetails"] as? [Any?] {
                var tmp : [GetRegisteredServiceEndpointsResponseBody.EndPointSlice.EndpointsDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetRegisteredServiceEndpointsResponseBody.EndPointSlice.EndpointsDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.endpointsDetails = tmp
            }
            if let value = dict["Location"] as? String {
                self.location = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
        }
    }
    public class ServiceEndpoints : Tea.TeaModel {
        public var address: String?

        public var clusterId: String?

        public override init() {
            super.init()
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
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
        }
    }
    public var endPointSlice: GetRegisteredServiceEndpointsResponseBody.EndPointSlice?

    public var requestId: String?

    public var serviceEndpoints: [GetRegisteredServiceEndpointsResponseBody.ServiceEndpoints]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.endPointSlice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endPointSlice != nil {
            map["EndPointSlice"] = self.endPointSlice?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceEndpoints != nil {
            var tmp : [Any] = []
            for k in self.serviceEndpoints! {
                tmp.append(k.toMap())
            }
            map["ServiceEndpoints"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndPointSlice"] as? [String: Any?] {
            var model = GetRegisteredServiceEndpointsResponseBody.EndPointSlice()
            model.fromMap(value)
            self.endPointSlice = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceEndpoints"] as? [Any?] {
            var tmp : [GetRegisteredServiceEndpointsResponseBody.ServiceEndpoints] = []
            for v in value {
                if v != nil {
                    var model = GetRegisteredServiceEndpointsResponseBody.ServiceEndpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceEndpoints = tmp
        }
    }
}

public class GetRegisteredServiceEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegisteredServiceEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRegisteredServiceEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRegisteredServiceNamespacesRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class GetRegisteredServiceNamespacesResponseBody : Tea.TeaModel {
    public var namespaces: [String]?

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
        if self.namespaces != nil {
            map["Namespaces"] = self.namespaces!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Namespaces"] as? [String] {
            self.namespaces = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRegisteredServiceNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegisteredServiceNamespacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRegisteredServiceNamespacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSwimLaneDetailRequest : Tea.TeaModel {
    public var groupName: String?

    public var serviceMeshId: String?

    public var swimLaneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.swimLaneName != nil {
            map["SwimLaneName"] = self.swimLaneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["SwimLaneName"] as? String {
            self.swimLaneName = value
        }
    }
}

public class GetSwimLaneDetailResponseBody : Tea.TeaModel {
    public var ingressRule: String?

    public var ingressService: String?

    public var labelSelectorKey: String?

    public var labelSelectorValue: String?

    public var requestId: String?

    public var servicesList: String?

    public var validationMessage: String?

    public var weightedIngressDestination: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ingressRule != nil {
            map["IngressRule"] = self.ingressRule!
        }
        if self.ingressService != nil {
            map["IngressService"] = self.ingressService!
        }
        if self.labelSelectorKey != nil {
            map["LabelSelectorKey"] = self.labelSelectorKey!
        }
        if self.labelSelectorValue != nil {
            map["LabelSelectorValue"] = self.labelSelectorValue!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.servicesList != nil {
            map["ServicesList"] = self.servicesList!
        }
        if self.validationMessage != nil {
            map["ValidationMessage"] = self.validationMessage!
        }
        if self.weightedIngressDestination != nil {
            map["WeightedIngressDestination"] = self.weightedIngressDestination!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IngressRule"] as? String {
            self.ingressRule = value
        }
        if let value = dict["IngressService"] as? String {
            self.ingressService = value
        }
        if let value = dict["LabelSelectorKey"] as? String {
            self.labelSelectorKey = value
        }
        if let value = dict["LabelSelectorValue"] as? String {
            self.labelSelectorValue = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServicesList"] as? String {
            self.servicesList = value
        }
        if let value = dict["ValidationMessage"] as? String {
            self.validationMessage = value
        }
        if let value = dict["WeightedIngressDestination"] as? String {
            self.weightedIngressDestination = value
        }
    }
}

public class GetSwimLaneDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSwimLaneDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSwimLaneDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSwimLaneGroupListRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class GetSwimLaneGroupListResponseBody : Tea.TeaModel {
    public class SwimLaneGroupList : Tea.TeaModel {
        public var fallbackTarget: String?

        public var groupName: String?

        public var ingressGatewayName: String?

        public var ingressRoutingStrategy: String?

        public var ingressType: String?

        public var isPermissive: Bool?

        public var routeHeader: String?

        public var serviceLevelFallbackTarget: String?

        public var serviceList: String?

        public var swimLaneLabels: String?

        public var traceHeader: String?

        public var weightedIngressRule: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fallbackTarget != nil {
                map["FallbackTarget"] = self.fallbackTarget!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.ingressGatewayName != nil {
                map["IngressGatewayName"] = self.ingressGatewayName!
            }
            if self.ingressRoutingStrategy != nil {
                map["IngressRoutingStrategy"] = self.ingressRoutingStrategy!
            }
            if self.ingressType != nil {
                map["IngressType"] = self.ingressType!
            }
            if self.isPermissive != nil {
                map["IsPermissive"] = self.isPermissive!
            }
            if self.routeHeader != nil {
                map["RouteHeader"] = self.routeHeader!
            }
            if self.serviceLevelFallbackTarget != nil {
                map["ServiceLevelFallbackTarget"] = self.serviceLevelFallbackTarget!
            }
            if self.serviceList != nil {
                map["ServiceList"] = self.serviceList!
            }
            if self.swimLaneLabels != nil {
                map["SwimLaneLabels"] = self.swimLaneLabels!
            }
            if self.traceHeader != nil {
                map["TraceHeader"] = self.traceHeader!
            }
            if self.weightedIngressRule != nil {
                map["WeightedIngressRule"] = self.weightedIngressRule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FallbackTarget"] as? String {
                self.fallbackTarget = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["IngressGatewayName"] as? String {
                self.ingressGatewayName = value
            }
            if let value = dict["IngressRoutingStrategy"] as? String {
                self.ingressRoutingStrategy = value
            }
            if let value = dict["IngressType"] as? String {
                self.ingressType = value
            }
            if let value = dict["IsPermissive"] as? Bool {
                self.isPermissive = value
            }
            if let value = dict["RouteHeader"] as? String {
                self.routeHeader = value
            }
            if let value = dict["ServiceLevelFallbackTarget"] as? String {
                self.serviceLevelFallbackTarget = value
            }
            if let value = dict["ServiceList"] as? String {
                self.serviceList = value
            }
            if let value = dict["SwimLaneLabels"] as? String {
                self.swimLaneLabels = value
            }
            if let value = dict["TraceHeader"] as? String {
                self.traceHeader = value
            }
            if let value = dict["WeightedIngressRule"] as? String {
                self.weightedIngressRule = value
            }
        }
    }
    public var requestId: String?

    public var swimLaneGroupList: [GetSwimLaneGroupListResponseBody.SwimLaneGroupList]?

    public override init() {
        super.init()
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
        if self.swimLaneGroupList != nil {
            var tmp : [Any] = []
            for k in self.swimLaneGroupList! {
                tmp.append(k.toMap())
            }
            map["SwimLaneGroupList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SwimLaneGroupList"] as? [Any?] {
            var tmp : [GetSwimLaneGroupListResponseBody.SwimLaneGroupList] = []
            for v in value {
                if v != nil {
                    var model = GetSwimLaneGroupListResponseBody.SwimLaneGroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.swimLaneGroupList = tmp
        }
    }
}

public class GetSwimLaneGroupListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSwimLaneGroupListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSwimLaneGroupListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSwimLaneListRequest : Tea.TeaModel {
    public var groupName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class GetSwimLaneListResponseBody : Tea.TeaModel {
    public class SwimLaneList : Tea.TeaModel {
        public var groupName: String?

        public var ingressRule: String?

        public var ingressService: String?

        public var labelSelectorKey: String?

        public var labelSelectorValue: String?

        public var name: String?

        public var serviceList: String?

        public var validationMessage: String?

        public var weightedIngressDestinatin: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.ingressRule != nil {
                map["IngressRule"] = self.ingressRule!
            }
            if self.ingressService != nil {
                map["IngressService"] = self.ingressService!
            }
            if self.labelSelectorKey != nil {
                map["LabelSelectorKey"] = self.labelSelectorKey!
            }
            if self.labelSelectorValue != nil {
                map["LabelSelectorValue"] = self.labelSelectorValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.serviceList != nil {
                map["ServiceList"] = self.serviceList!
            }
            if self.validationMessage != nil {
                map["ValidationMessage"] = self.validationMessage!
            }
            if self.weightedIngressDestinatin != nil {
                map["WeightedIngressDestinatin"] = self.weightedIngressDestinatin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["IngressRule"] as? String {
                self.ingressRule = value
            }
            if let value = dict["IngressService"] as? String {
                self.ingressService = value
            }
            if let value = dict["LabelSelectorKey"] as? String {
                self.labelSelectorKey = value
            }
            if let value = dict["LabelSelectorValue"] as? String {
                self.labelSelectorValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ServiceList"] as? String {
                self.serviceList = value
            }
            if let value = dict["ValidationMessage"] as? String {
                self.validationMessage = value
            }
            if let value = dict["WeightedIngressDestinatin"] as? String {
                self.weightedIngressDestinatin = value
            }
        }
    }
    public var requestId: String?

    public var swimLaneList: [GetSwimLaneListResponseBody.SwimLaneList]?

    public override init() {
        super.init()
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
        if self.swimLaneList != nil {
            var tmp : [Any] = []
            for k in self.swimLaneList! {
                tmp.append(k.toMap())
            }
            map["SwimLaneList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SwimLaneList"] as? [Any?] {
            var tmp : [GetSwimLaneListResponseBody.SwimLaneList] = []
            for v in value {
                if v != nil {
                    var model = GetSwimLaneListResponseBody.SwimLaneList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.swimLaneList = tmp
        }
    }
}

public class GetSwimLaneListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSwimLaneListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSwimLaneListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVmAppMeshInfoRequest : Tea.TeaModel {
    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class GetVmAppMeshInfoResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVmAppMeshInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVmAppMeshInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetVmAppMeshInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVmMetaRequest : Tea.TeaModel {
    public var namespace: String?

    public var serviceAccount: String?

    public var serviceMeshId: String?

    public var trustDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceAccount != nil {
            map["ServiceAccount"] = self.serviceAccount!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.trustDomain != nil {
            map["TrustDomain"] = self.trustDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceAccount"] as? String {
            self.serviceAccount = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["TrustDomain"] as? String {
            self.trustDomain = value
        }
    }
}

public class GetVmMetaResponseBody : Tea.TeaModel {
    public class VmMetaInfo : Tea.TeaModel {
        public var envoyEnvContent: String?

        public var hostsContent: String?

        public var tokenContent: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.envoyEnvContent != nil {
                map["EnvoyEnvContent"] = self.envoyEnvContent!
            }
            if self.hostsContent != nil {
                map["HostsContent"] = self.hostsContent!
            }
            if self.tokenContent != nil {
                map["TokenContent"] = self.tokenContent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnvoyEnvContent"] as? String {
                self.envoyEnvContent = value
            }
            if let value = dict["HostsContent"] as? String {
                self.hostsContent = value
            }
            if let value = dict["TokenContent"] as? String {
                self.tokenContent = value
            }
        }
    }
    public var requestId: String?

    public var vmMetaInfo: GetVmMetaResponseBody.VmMetaInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vmMetaInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vmMetaInfo != nil {
            map["VmMetaInfo"] = self.vmMetaInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VmMetaInfo"] as? [String: Any?] {
            var model = GetVmMetaResponseBody.VmMetaInfo()
            model.fromMap(value)
            self.vmMetaInfo = model
        }
    }
}

public class GetVmMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVmMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetVmMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantUserPermissionsRequest : Tea.TeaModel {
    public var permissions: String?

    public var subAccountUserId: String?

    public var subAccountUserIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.subAccountUserId != nil {
            map["SubAccountUserId"] = self.subAccountUserId!
        }
        if self.subAccountUserIds != nil {
            map["SubAccountUserIds"] = self.subAccountUserIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Permissions"] as? String {
            self.permissions = value
        }
        if let value = dict["SubAccountUserId"] as? String {
            self.subAccountUserId = value
        }
        if let value = dict["SubAccountUserIds"] as? [String] {
            self.subAccountUserIds = value
        }
    }
}

public class GrantUserPermissionsShrinkRequest : Tea.TeaModel {
    public var permissions: String?

    public var subAccountUserId: String?

    public var subAccountUserIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.subAccountUserId != nil {
            map["SubAccountUserId"] = self.subAccountUserId!
        }
        if self.subAccountUserIdsShrink != nil {
            map["SubAccountUserIds"] = self.subAccountUserIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Permissions"] as? String {
            self.permissions = value
        }
        if let value = dict["SubAccountUserId"] as? String {
            self.subAccountUserId = value
        }
        if let value = dict["SubAccountUserIds"] as? String {
            self.subAccountUserIdsShrink = value
        }
    }
}

public class GrantUserPermissionsResponseBody : Tea.TeaModel {
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

public class GrantUserPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantUserPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GrantUserPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceAccountsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var namespace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class ListServiceAccountsResponseBody : Tea.TeaModel {
    public class ServiceAccounts : Tea.TeaModel {
        public var name: String?

        public var namespace: String?

        public override init() {
            super.init()
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
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
        }
    }
    public var requestId: String?

    public var serviceAccounts: [ListServiceAccountsResponseBody.ServiceAccounts]?

    public override init() {
        super.init()
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
        if self.serviceAccounts != nil {
            var tmp : [Any] = []
            for k in self.serviceAccounts! {
                tmp.append(k.toMap())
            }
            map["ServiceAccounts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceAccounts"] as? [Any?] {
            var tmp : [ListServiceAccountsResponseBody.ServiceAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListServiceAccountsResponseBody.ServiceAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceAccounts = tmp
        }
    }
}

public class ListServiceAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
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

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagResources = tmp
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWaypointsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var continue_: String?

    public var limit: Int64?

    public var name: String?

    public var namespace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.continue_ != nil {
            map["Continue"] = self.continue_!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Continue"] as? String {
            self.continue_ = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class ListWaypointsResponseBody : Tea.TeaModel {
    public class Waypoints : Tea.TeaModel {
        public var HPAEnabled: String?

        public var HPAMaxReplicas: String?

        public var HPAMinReplicas: String?

        public var HPATargetCPU: String?

        public var HPATargetMemory: String?

        public var limitCPU: String?

        public var limitMemory: String?

        public var name: String?

        public var namespace: String?

        public var preferECI: String?

        public var replicas: String?

        public var requestCPU: String?

        public var requestMemory: String?

        public var serviceAccount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.HPAEnabled != nil {
                map["HPAEnabled"] = self.HPAEnabled!
            }
            if self.HPAMaxReplicas != nil {
                map["HPAMaxReplicas"] = self.HPAMaxReplicas!
            }
            if self.HPAMinReplicas != nil {
                map["HPAMinReplicas"] = self.HPAMinReplicas!
            }
            if self.HPATargetCPU != nil {
                map["HPATargetCPU"] = self.HPATargetCPU!
            }
            if self.HPATargetMemory != nil {
                map["HPATargetMemory"] = self.HPATargetMemory!
            }
            if self.limitCPU != nil {
                map["LimitCPU"] = self.limitCPU!
            }
            if self.limitMemory != nil {
                map["LimitMemory"] = self.limitMemory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.preferECI != nil {
                map["PreferECI"] = self.preferECI!
            }
            if self.replicas != nil {
                map["Replicas"] = self.replicas!
            }
            if self.requestCPU != nil {
                map["RequestCPU"] = self.requestCPU!
            }
            if self.requestMemory != nil {
                map["RequestMemory"] = self.requestMemory!
            }
            if self.serviceAccount != nil {
                map["ServiceAccount"] = self.serviceAccount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HPAEnabled"] as? String {
                self.HPAEnabled = value
            }
            if let value = dict["HPAMaxReplicas"] as? String {
                self.HPAMaxReplicas = value
            }
            if let value = dict["HPAMinReplicas"] as? String {
                self.HPAMinReplicas = value
            }
            if let value = dict["HPATargetCPU"] as? String {
                self.HPATargetCPU = value
            }
            if let value = dict["HPATargetMemory"] as? String {
                self.HPATargetMemory = value
            }
            if let value = dict["LimitCPU"] as? String {
                self.limitCPU = value
            }
            if let value = dict["LimitMemory"] as? String {
                self.limitMemory = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["PreferECI"] as? String {
                self.preferECI = value
            }
            if let value = dict["Replicas"] as? String {
                self.replicas = value
            }
            if let value = dict["RequestCPU"] as? String {
                self.requestCPU = value
            }
            if let value = dict["RequestMemory"] as? String {
                self.requestMemory = value
            }
            if let value = dict["ServiceAccount"] as? String {
                self.serviceAccount = value
            }
        }
    }
    public var continue_: String?

    public var requestId: String?

    public var waypoints: [ListWaypointsResponseBody.Waypoints]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.continue_ != nil {
            map["Continue"] = self.continue_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.waypoints != nil {
            var tmp : [Any] = []
            for k in self.waypoints! {
                tmp.append(k.toMap())
            }
            map["Waypoints"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Continue"] as? String {
            self.continue_ = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Waypoints"] as? [Any?] {
            var tmp : [ListWaypointsResponseBody.Waypoints] = []
            for v in value {
                if v != nil {
                    var model = ListWaypointsResponseBody.Waypoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.waypoints = tmp
        }
    }
}

public class ListWaypointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWaypointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListWaypointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyApiServerEipResourceRequest : Tea.TeaModel {
    public var apiServerEipId: String?

    public var operation: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiServerEipId != nil {
            map["ApiServerEipId"] = self.apiServerEipId!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiServerEipId"] as? String {
            self.apiServerEipId = value
        }
        if let value = dict["Operation"] as? String {
            self.operation = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class ModifyApiServerEipResourceResponseBody : Tea.TeaModel {
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

public class ModifyApiServerEipResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApiServerEipResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyApiServerEipResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPilotEipResourceRequest : Tea.TeaModel {
    public var eipId: String?

    public var isCanary: Bool?

    public var operation: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eipId != nil {
            map["EipId"] = self.eipId!
        }
        if self.isCanary != nil {
            map["IsCanary"] = self.isCanary!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EipId"] as? String {
            self.eipId = value
        }
        if let value = dict["IsCanary"] as? Bool {
            self.isCanary = value
        }
        if let value = dict["Operation"] as? String {
            self.operation = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class ModifyPilotEipResourceResponseBody : Tea.TeaModel {
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

public class ModifyPilotEipResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPilotEipResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPilotEipResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyServiceMeshNameRequest : Tea.TeaModel {
    public var name: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
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
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class ModifyServiceMeshNameResponseBody : Tea.TeaModel {
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

public class ModifyServiceMeshNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyServiceMeshNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyServiceMeshNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReActivateAuditRequest : Tea.TeaModel {
    public var enableAudit: Bool?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableAudit != nil {
            map["EnableAudit"] = self.enableAudit!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableAudit"] as? Bool {
            self.enableAudit = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class ReActivateAuditResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReActivateAuditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReActivateAuditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReActivateAuditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveClusterFromServiceMeshRequest : Tea.TeaModel {
    public var clusterId: String?

    public var reserveNamespace: Bool?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.reserveNamespace != nil {
            map["ReserveNamespace"] = self.reserveNamespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ReserveNamespace"] as? Bool {
            self.reserveNamespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class RemoveClusterFromServiceMeshResponseBody : Tea.TeaModel {
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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveClusterFromServiceMeshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveClusterFromServiceMeshResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveClusterFromServiceMeshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveVMFromServiceMeshRequest : Tea.TeaModel {
    public var ecsId: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsId != nil {
            map["EcsId"] = self.ecsId!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcsId"] as? String {
            self.ecsId = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class RemoveVMFromServiceMeshResponseBody : Tea.TeaModel {
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

public class RemoveVMFromServiceMeshResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveVMFromServiceMeshResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveVMFromServiceMeshResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeKubeconfigRequest : Tea.TeaModel {
    public var privateIpAddress: Bool?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrivateIpAddress"] as? Bool {
            self.privateIpAddress = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class RevokeKubeconfigResponseBody : Tea.TeaModel {
    public var kubeconfig: String?

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
        if self.kubeconfig != nil {
            map["Kubeconfig"] = self.kubeconfig!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Kubeconfig"] as? String {
            self.kubeconfig = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RevokeKubeconfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeKubeconfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RevokeKubeconfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
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

public class TagResourcesResponseBody : Tea.TeaModel {
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

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateASMGatewayRequest : Tea.TeaModel {
    public var body: String?

    public var istioGatewayName: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
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
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpdateASMGatewayResponseBody : Tea.TeaModel {
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

public class UpdateASMGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateASMGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateASMGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateASMGatewayImportedServicesRequest : Tea.TeaModel {
    public var ASMGatewayName: String?

    public var serviceMeshId: String?

    public var serviceNames: String?

    public var serviceNamespace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ASMGatewayName != nil {
            map["ASMGatewayName"] = self.ASMGatewayName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.serviceNames != nil {
            map["ServiceNames"] = self.serviceNames!
        }
        if self.serviceNamespace != nil {
            map["ServiceNamespace"] = self.serviceNamespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASMGatewayName"] as? String {
            self.ASMGatewayName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ServiceNames"] as? String {
            self.serviceNames = value
        }
        if let value = dict["ServiceNamespace"] as? String {
            self.serviceNamespace = value
        }
    }
}

public class UpdateASMGatewayImportedServicesResponseBody : Tea.TeaModel {
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

public class UpdateASMGatewayImportedServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateASMGatewayImportedServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateASMGatewayImportedServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateASMNamespaceFromGuestClusterRequest : Tea.TeaModel {
    public var k8sClusterId: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.k8sClusterId != nil {
            map["K8sClusterId"] = self.k8sClusterId!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["K8sClusterId"] as? String {
            self.k8sClusterId = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpdateASMNamespaceFromGuestClusterResponseBody : Tea.TeaModel {
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

public class UpdateASMNamespaceFromGuestClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateASMNamespaceFromGuestClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateASMNamespaceFromGuestClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateControlPlaneLogConfigRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var logTTLInDay: Int32?

    public var project: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.logTTLInDay != nil {
            map["LogTTLInDay"] = self.logTTLInDay!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["LogTTLInDay"] as? Int32 {
            self.logTTLInDay = value
        }
        if let value = dict["Project"] as? String {
            self.project = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpdateControlPlaneLogConfigResponseBody : Tea.TeaModel {
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

public class UpdateControlPlaneLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateControlPlaneLogConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateControlPlaneLogConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGuestClusterConfigRequest : Tea.TeaModel {
    public var guestClusterId: String?

    public var SMCEnabled: Bool?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.guestClusterId != nil {
            map["GuestClusterId"] = self.guestClusterId!
        }
        if self.SMCEnabled != nil {
            map["SMCEnabled"] = self.SMCEnabled!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GuestClusterId"] as? String {
            self.guestClusterId = value
        }
        if let value = dict["SMCEnabled"] as? Bool {
            self.SMCEnabled = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpdateGuestClusterConfigResponseBody : Tea.TeaModel {
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

public class UpdateGuestClusterConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGuestClusterConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateGuestClusterConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIstioGatewayRoutesRequest : Tea.TeaModel {
    public class GatewayRoute : Tea.TeaModel {
        public class HTTPAdvancedOptions : Tea.TeaModel {
            public class Delegate : Tea.TeaModel {
                public var name: String?

                public var namespace: String?

                public override init() {
                    super.init()
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
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Namespace"] as? String {
                        self.namespace = value
                    }
                }
            }
            public class Fault : Tea.TeaModel {
                public class Abort : Tea.TeaModel {
                    public class Percentage : Tea.TeaModel {
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
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Value"] as? Double {
                                self.value = value
                            }
                        }
                    }
                    public var httpStatus: Int32?

                    public var percentage: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort.Percentage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.percentage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.httpStatus != nil {
                            map["HttpStatus"] = self.httpStatus!
                        }
                        if self.percentage != nil {
                            map["Percentage"] = self.percentage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["HttpStatus"] as? Int32 {
                            self.httpStatus = value
                        }
                        if let value = dict["Percentage"] as? [String: Any?] {
                            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort.Percentage()
                            model.fromMap(value)
                            self.percentage = model
                        }
                    }
                }
                public class Delay : Tea.TeaModel {
                    public class Percentage : Tea.TeaModel {
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
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Value"] as? Double {
                                self.value = value
                            }
                        }
                    }
                    public var fixedDelay: String?

                    public var percentage: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay.Percentage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.percentage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.fixedDelay != nil {
                            map["FixedDelay"] = self.fixedDelay!
                        }
                        if self.percentage != nil {
                            map["Percentage"] = self.percentage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FixedDelay"] as? String {
                            self.fixedDelay = value
                        }
                        if let value = dict["Percentage"] as? [String: Any?] {
                            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay.Percentage()
                            model.fromMap(value)
                            self.percentage = model
                        }
                    }
                }
                public var abort: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort?

                public var delay: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.abort?.validate()
                    try self.delay?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.abort != nil {
                        map["Abort"] = self.abort?.toMap()
                    }
                    if self.delay != nil {
                        map["Delay"] = self.delay?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Abort"] as? [String: Any?] {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Abort()
                        model.fromMap(value)
                        self.abort = model
                    }
                    if let value = dict["Delay"] as? [String: Any?] {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault.Delay()
                        model.fromMap(value)
                        self.delay = model
                    }
                }
            }
            public class HTTPRedirect : Tea.TeaModel {
                public var authority: String?

                public var redirectCode: Int32?

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
                    if self.authority != nil {
                        map["Authority"] = self.authority!
                    }
                    if self.redirectCode != nil {
                        map["RedirectCode"] = self.redirectCode!
                    }
                    if self.uri != nil {
                        map["Uri"] = self.uri!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Authority"] as? String {
                        self.authority = value
                    }
                    if let value = dict["RedirectCode"] as? Int32 {
                        self.redirectCode = value
                    }
                    if let value = dict["Uri"] as? String {
                        self.uri = value
                    }
                }
            }
            public class Mirror : Tea.TeaModel {
                public var host: String?

                public var subset: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.subset != nil {
                        map["Subset"] = self.subset!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Subset"] as? String {
                        self.subset = value
                    }
                }
            }
            public class MirrorPercentage : Tea.TeaModel {
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
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Value"] as? Double {
                        self.value = value
                    }
                }
            }
            public class Retries : Tea.TeaModel {
                public class RetryRemoteLocalities : Tea.TeaModel {
                    public var value: Bool?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Value"] as? Bool {
                            self.value = value
                        }
                    }
                }
                public var attempts: Int32?

                public var perTryTimeout: String?

                public var retryOn: String?

                public var retryRemoteLocalities: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries.RetryRemoteLocalities?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.retryRemoteLocalities?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attempts != nil {
                        map["Attempts"] = self.attempts!
                    }
                    if self.perTryTimeout != nil {
                        map["PerTryTimeout"] = self.perTryTimeout!
                    }
                    if self.retryOn != nil {
                        map["RetryOn"] = self.retryOn!
                    }
                    if self.retryRemoteLocalities != nil {
                        map["RetryRemoteLocalities"] = self.retryRemoteLocalities?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Attempts"] as? Int32 {
                        self.attempts = value
                    }
                    if let value = dict["PerTryTimeout"] as? String {
                        self.perTryTimeout = value
                    }
                    if let value = dict["RetryOn"] as? String {
                        self.retryOn = value
                    }
                    if let value = dict["RetryRemoteLocalities"] as? [String: Any?] {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries.RetryRemoteLocalities()
                        model.fromMap(value)
                        self.retryRemoteLocalities = model
                    }
                }
            }
            public class Rewrite : Tea.TeaModel {
                public var authority: String?

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
                    if self.authority != nil {
                        map["Authority"] = self.authority!
                    }
                    if self.uri != nil {
                        map["Uri"] = self.uri!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Authority"] as? String {
                        self.authority = value
                    }
                    if let value = dict["Uri"] as? String {
                        self.uri = value
                    }
                }
            }
            public var delegate: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Delegate?

            public var fault: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault?

            public var HTTPRedirect: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.HTTPRedirect?

            public var mirror: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Mirror?

            public var mirrorPercentage: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.MirrorPercentage?

            public var retries: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries?

            public var rewrite: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Rewrite?

            public var timeout: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.delegate?.validate()
                try self.fault?.validate()
                try self.HTTPRedirect?.validate()
                try self.mirror?.validate()
                try self.mirrorPercentage?.validate()
                try self.retries?.validate()
                try self.rewrite?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.delegate != nil {
                    map["Delegate"] = self.delegate?.toMap()
                }
                if self.fault != nil {
                    map["Fault"] = self.fault?.toMap()
                }
                if self.HTTPRedirect != nil {
                    map["HTTPRedirect"] = self.HTTPRedirect?.toMap()
                }
                if self.mirror != nil {
                    map["Mirror"] = self.mirror?.toMap()
                }
                if self.mirrorPercentage != nil {
                    map["MirrorPercentage"] = self.mirrorPercentage?.toMap()
                }
                if self.retries != nil {
                    map["Retries"] = self.retries?.toMap()
                }
                if self.rewrite != nil {
                    map["Rewrite"] = self.rewrite?.toMap()
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Delegate"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Delegate()
                    model.fromMap(value)
                    self.delegate = model
                }
                if let value = dict["Fault"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Fault()
                    model.fromMap(value)
                    self.fault = model
                }
                if let value = dict["HTTPRedirect"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.HTTPRedirect()
                    model.fromMap(value)
                    self.HTTPRedirect = model
                }
                if let value = dict["Mirror"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Mirror()
                    model.fromMap(value)
                    self.mirror = model
                }
                if let value = dict["MirrorPercentage"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.MirrorPercentage()
                    model.fromMap(value)
                    self.mirrorPercentage = model
                }
                if let value = dict["Retries"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Retries()
                    model.fromMap(value)
                    self.retries = model
                }
                if let value = dict["Rewrite"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions.Rewrite()
                    model.fromMap(value)
                    self.rewrite = model
                }
                if let value = dict["Timeout"] as? String {
                    self.timeout = value
                }
            }
        }
        public class MatchRequest : Tea.TeaModel {
            public class Headers : Tea.TeaModel {
                public var matchingContent: String?

                public var matchingMode: String?

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
                    if self.matchingContent != nil {
                        map["MatchingContent"] = self.matchingContent!
                    }
                    if self.matchingMode != nil {
                        map["MatchingMode"] = self.matchingMode!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MatchingContent"] as? String {
                        self.matchingContent = value
                    }
                    if let value = dict["MatchingMode"] as? String {
                        self.matchingMode = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public class TLSMatchAttributes : Tea.TeaModel {
                public var SNIHosts: [String]?

                public var TLSPort: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.SNIHosts != nil {
                        map["SNIHosts"] = self.SNIHosts!
                    }
                    if self.TLSPort != nil {
                        map["TLSPort"] = self.TLSPort!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SNIHosts"] as? [String] {
                        self.SNIHosts = value
                    }
                    if let value = dict["TLSPort"] as? Int32 {
                        self.TLSPort = value
                    }
                }
            }
            public class URI : Tea.TeaModel {
                public var matchingContent: String?

                public var matchingMode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.matchingContent != nil {
                        map["MatchingContent"] = self.matchingContent!
                    }
                    if self.matchingMode != nil {
                        map["MatchingMode"] = self.matchingMode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MatchingContent"] as? String {
                        self.matchingContent = value
                    }
                    if let value = dict["MatchingMode"] as? String {
                        self.matchingMode = value
                    }
                }
            }
            public var headers: [UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers]?

            public var ports: [Int32]?

            public var TLSMatchAttributes: [UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes]?

            public var URI: UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.URI?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.URI?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.headers != nil {
                    var tmp : [Any] = []
                    for k in self.headers! {
                        tmp.append(k.toMap())
                    }
                    map["Headers"] = tmp
                }
                if self.ports != nil {
                    map["Ports"] = self.ports!
                }
                if self.TLSMatchAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.TLSMatchAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["TLSMatchAttributes"] = tmp
                }
                if self.URI != nil {
                    map["URI"] = self.URI?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Headers"] as? [Any?] {
                    var tmp : [UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.Headers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.headers = tmp
                }
                if let value = dict["Ports"] as? [Int32] {
                    self.ports = value
                }
                if let value = dict["TLSMatchAttributes"] as? [Any?] {
                    var tmp : [UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.TLSMatchAttributes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.TLSMatchAttributes = tmp
                }
                if let value = dict["URI"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest.URI()
                    model.fromMap(value)
                    self.URI = model
                }
            }
        }
        public class RouteDestinations : Tea.TeaModel {
            public class Destination : Tea.TeaModel {
                public class Port : Tea.TeaModel {
                    public var number: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.number != nil {
                            map["Number"] = self.number!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Number"] as? Int32 {
                            self.number = value
                        }
                    }
                }
                public var host: String?

                public var port: UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination.Port?

                public var subset: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.port?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.port != nil {
                        map["Port"] = self.port?.toMap()
                    }
                    if self.subset != nil {
                        map["Subset"] = self.subset!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Port"] as? [String: Any?] {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination.Port()
                        model.fromMap(value)
                        self.port = model
                    }
                    if let value = dict["Subset"] as? String {
                        self.subset = value
                    }
                }
            }
            public var destination: UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.destination?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destination != nil {
                    map["Destination"] = self.destination?.toMap()
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Destination"] as? [String: Any?] {
                    var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations.Destination()
                    model.fromMap(value)
                    self.destination = model
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var domains: [String]?

        public var HTTPAdvancedOptions: UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions?

        public var matchRequest: UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest?

        public var namespace: String?

        public var rawVSRoute: Any?

        public var routeDestinations: [UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations]?

        public var routeName: String?

        public var routeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.HTTPAdvancedOptions?.validate()
            try self.matchRequest?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.HTTPAdvancedOptions != nil {
                map["HTTPAdvancedOptions"] = self.HTTPAdvancedOptions?.toMap()
            }
            if self.matchRequest != nil {
                map["MatchRequest"] = self.matchRequest?.toMap()
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.rawVSRoute != nil {
                map["RawVSRoute"] = self.rawVSRoute!
            }
            if self.routeDestinations != nil {
                var tmp : [Any] = []
                for k in self.routeDestinations! {
                    tmp.append(k.toMap())
                }
                map["RouteDestinations"] = tmp
            }
            if self.routeName != nil {
                map["RouteName"] = self.routeName!
            }
            if self.routeType != nil {
                map["RouteType"] = self.routeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domains"] as? [String] {
                self.domains = value
            }
            if let value = dict["HTTPAdvancedOptions"] as? [String: Any?] {
                var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.HTTPAdvancedOptions()
                model.fromMap(value)
                self.HTTPAdvancedOptions = model
            }
            if let value = dict["MatchRequest"] as? [String: Any?] {
                var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.MatchRequest()
                model.fromMap(value)
                self.matchRequest = model
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["RawVSRoute"] as? Any {
                self.rawVSRoute = value
            }
            if let value = dict["RouteDestinations"] as? [Any?] {
                var tmp : [UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations] = []
                for v in value {
                    if v != nil {
                        var model = UpdateIstioGatewayRoutesRequest.GatewayRoute.RouteDestinations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.routeDestinations = tmp
            }
            if let value = dict["RouteName"] as? String {
                self.routeName = value
            }
            if let value = dict["RouteType"] as? String {
                self.routeType = value
            }
        }
    }
    public var description_: String?

    public var gatewayRoute: UpdateIstioGatewayRoutesRequest.GatewayRoute?

    public var istioGatewayName: String?

    public var priority: Int32?

    public var serviceMeshId: String?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gatewayRoute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gatewayRoute != nil {
            map["GatewayRoute"] = self.gatewayRoute?.toMap()
        }
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GatewayRoute"] as? [String: Any?] {
            var model = UpdateIstioGatewayRoutesRequest.GatewayRoute()
            model.fromMap(value)
            self.gatewayRoute = model
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class UpdateIstioGatewayRoutesShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var gatewayRouteShrink: String?

    public var istioGatewayName: String?

    public var priority: Int32?

    public var serviceMeshId: String?

    public var status: Int32?

    public override init() {
        super.init()
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
        if self.gatewayRouteShrink != nil {
            map["GatewayRoute"] = self.gatewayRouteShrink!
        }
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GatewayRoute"] as? String {
            self.gatewayRouteShrink = value
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class UpdateIstioGatewayRoutesResponseBody : Tea.TeaModel {
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

public class UpdateIstioGatewayRoutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIstioGatewayRoutesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateIstioGatewayRoutesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIstioInjectionConfigRequest : Tea.TeaModel {
    public var dataPlaneMode: String?

    public var enableIstioInjection: Bool?

    public var enableSidecarSetInjection: Bool?

    public var istioRev: String?

    public var namespace: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataPlaneMode != nil {
            map["DataPlaneMode"] = self.dataPlaneMode!
        }
        if self.enableIstioInjection != nil {
            map["EnableIstioInjection"] = self.enableIstioInjection!
        }
        if self.enableSidecarSetInjection != nil {
            map["EnableSidecarSetInjection"] = self.enableSidecarSetInjection!
        }
        if self.istioRev != nil {
            map["IstioRev"] = self.istioRev!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPlaneMode"] as? String {
            self.dataPlaneMode = value
        }
        if let value = dict["EnableIstioInjection"] as? Bool {
            self.enableIstioInjection = value
        }
        if let value = dict["EnableSidecarSetInjection"] as? Bool {
            self.enableSidecarSetInjection = value
        }
        if let value = dict["IstioRev"] as? String {
            self.istioRev = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpdateIstioInjectionConfigResponseBody : Tea.TeaModel {
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

public class UpdateIstioInjectionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIstioInjectionConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateIstioInjectionConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIstioRouteAdditionalStatusRequest : Tea.TeaModel {
    public var description_: String?

    public var istioGatewayName: String?

    public var priority: Int32?

    public var routeName: String?

    public var serviceMeshId: String?

    public var status: Int32?

    public override init() {
        super.init()
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
        if self.istioGatewayName != nil {
            map["IstioGatewayName"] = self.istioGatewayName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.routeName != nil {
            map["RouteName"] = self.routeName!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IstioGatewayName"] as? String {
            self.istioGatewayName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RouteName"] as? String {
            self.routeName = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class UpdateIstioRouteAdditionalStatusResponseBody : Tea.TeaModel {
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

public class UpdateIstioRouteAdditionalStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIstioRouteAdditionalStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateIstioRouteAdditionalStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMeshCRAggregationRequest : Tea.TeaModel {
    public var CPULimit: String?

    public var CPURequirement: String?

    public var enabled: Bool?

    public var memoryLimit: String?

    public var memoryRequirement: String?

    public var serviceMeshId: String?

    public var usePublicApiServer: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CPULimit != nil {
            map["CPULimit"] = self.CPULimit!
        }
        if self.CPURequirement != nil {
            map["CPURequirement"] = self.CPURequirement!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.memoryLimit != nil {
            map["MemoryLimit"] = self.memoryLimit!
        }
        if self.memoryRequirement != nil {
            map["MemoryRequirement"] = self.memoryRequirement!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.usePublicApiServer != nil {
            map["UsePublicApiServer"] = self.usePublicApiServer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPULimit"] as? String {
            self.CPULimit = value
        }
        if let value = dict["CPURequirement"] as? String {
            self.CPURequirement = value
        }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["MemoryLimit"] as? String {
            self.memoryLimit = value
        }
        if let value = dict["MemoryRequirement"] as? String {
            self.memoryRequirement = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["UsePublicApiServer"] as? Bool {
            self.usePublicApiServer = value
        }
    }
}

public class UpdateMeshCRAggregationResponseBody : Tea.TeaModel {
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

public class UpdateMeshCRAggregationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMeshCRAggregationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMeshCRAggregationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMeshFeatureRequest : Tea.TeaModel {
    public var accessLogEnabled: Bool?

    public var accessLogFile: String?

    public var accessLogFormat: String?

    public var accessLogGatewayEnabled: Bool?

    public var accessLogGatewayLifecycle: Int32?

    public var accessLogProject: String?

    public var accessLogServiceEnabled: Bool?

    public var accessLogServiceHost: String?

    public var accessLogServicePort: Int32?

    public var accessLogSidecarEnabled: Bool?

    public var accessLogSidecarLifecycle: Int32?

    public var auditProject: String?

    public var autoInjectionPolicyEnabled: Bool?

    public var CRAggregationEnabled: Bool?

    public var certChain: String?

    public var clusterSpec: String?

    public var cniEnabled: Bool?

    public var cniExcludeNamespaces: String?

    public var concurrency: Int32?

    public var configSourceEnabled: Bool?

    public var configSourceNacosID: String?

    public var customizedPrometheus: Bool?

    public var customizedZipkin: Bool?

    public var DNSProxyingEnabled: Bool?

    public var defaultComponentsScheduleConfig: String?

    public var discoverySelectors: String?

    public var dubboFilterEnabled: Bool?

    public var enableAudit: Bool?

    public var enableAutoDiagnosis: Bool?

    public var enableBootstrapXdsAgent: Bool?

    public var enableCRHistory: Bool?

    public var enableNamespacesByDefault: Bool?

    public var enableSDSServer: Bool?

    public var excludeIPRanges: String?

    public var excludeInboundPorts: String?

    public var excludeOutboundPorts: String?

    public var existingCaCert: String?

    public var existingCaKey: String?

    public var existingRootCaCert: String?

    public var filterGatewayClusterConfig: Bool?

    public var gatewayAPIEnabled: Bool?

    public var holdApplicationUntilProxyStarts: Bool?

    public var http10Enabled: Bool?

    public var includeIPRanges: String?

    public var includeInboundPorts: String?

    public var includeOutboundPorts: String?

    public var integrateKiali: Bool?

    public var interceptionMode: String?

    public var kialiArmsAuthTokens: String?

    public var kialiEnabled: Bool?

    public var kialiServiceAnnotations: String?

    public var labelsForOffloadedWorkloads: String?

    public var lifecycle: String?

    public var localityLBConf: String?

    public var localityLoadBalancing: Bool?

    public var logLevel: String?

    public var MSEEnabled: Bool?

    public var multiBufferEnabled: Bool?

    public var multiBufferPollDelay: String?

    public var mysqlFilterEnabled: Bool?

    public var NFDEnabled: Bool?

    public var NFDLabelPruned: Bool?

    public var OPAInjectorCPULimit: String?

    public var OPAInjectorCPURequirement: String?

    public var OPAInjectorMemoryLimit: String?

    public var OPAInjectorMemoryRequirement: String?

    public var OPALimitCPU: String?

    public var OPALimitMemory: String?

    public var OPALogLevel: String?

    public var OPARequestCPU: String?

    public var OPARequestMemory: String?

    public var OPAScopeInjected: Bool?

    public var opaEnabled: Bool?

    public var openAgentPolicy: Bool?

    public var outboundTrafficPolicy: String?

    public var pilotEnableQuicListeners: Bool?

    public var prometheusUrl: String?

    public var proxyInitCPUResourceLimit: String?

    public var proxyInitCPUResourceRequest: String?

    public var proxyInitMemoryResourceLimit: String?

    public var proxyInitMemoryResourceRequest: String?

    public var proxyLimitCPU: String?

    public var proxyLimitMemory: String?

    public var proxyRequestCPU: String?

    public var proxyRequestMemory: String?

    public var proxyStatsMatcher: String?

    public var redisFilterEnabled: Bool?

    public var SMCEnabled: Bool?

    public var serviceMeshId: String?

    public var sidecarInjectorLimitCPU: String?

    public var sidecarInjectorLimitMemory: String?

    public var sidecarInjectorRequestCPU: String?

    public var sidecarInjectorRequestMemory: String?

    public var sidecarInjectorWebhookAsYaml: String?

    public var telemetry: Bool?

    public var terminationDrainDuration: String?

    public var thriftFilterEnabled: Bool?

    public var traceCustomTags: String?

    public var traceMaxPathTagLength: String?

    public var traceSampling: Double?

    public var tracing: Bool?

    public var tracingOnExtZipkinLimitCPU: String?

    public var tracingOnExtZipkinLimitMemory: String?

    public var tracingOnExtZipkinReplicaCount: String?

    public var tracingOnExtZipkinRequestCPU: String?

    public var tracingOnExtZipkinRequestMemory: String?

    public var webAssemblyFilterEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLogEnabled != nil {
            map["AccessLogEnabled"] = self.accessLogEnabled!
        }
        if self.accessLogFile != nil {
            map["AccessLogFile"] = self.accessLogFile!
        }
        if self.accessLogFormat != nil {
            map["AccessLogFormat"] = self.accessLogFormat!
        }
        if self.accessLogGatewayEnabled != nil {
            map["AccessLogGatewayEnabled"] = self.accessLogGatewayEnabled!
        }
        if self.accessLogGatewayLifecycle != nil {
            map["AccessLogGatewayLifecycle"] = self.accessLogGatewayLifecycle!
        }
        if self.accessLogProject != nil {
            map["AccessLogProject"] = self.accessLogProject!
        }
        if self.accessLogServiceEnabled != nil {
            map["AccessLogServiceEnabled"] = self.accessLogServiceEnabled!
        }
        if self.accessLogServiceHost != nil {
            map["AccessLogServiceHost"] = self.accessLogServiceHost!
        }
        if self.accessLogServicePort != nil {
            map["AccessLogServicePort"] = self.accessLogServicePort!
        }
        if self.accessLogSidecarEnabled != nil {
            map["AccessLogSidecarEnabled"] = self.accessLogSidecarEnabled!
        }
        if self.accessLogSidecarLifecycle != nil {
            map["AccessLogSidecarLifecycle"] = self.accessLogSidecarLifecycle!
        }
        if self.auditProject != nil {
            map["AuditProject"] = self.auditProject!
        }
        if self.autoInjectionPolicyEnabled != nil {
            map["AutoInjectionPolicyEnabled"] = self.autoInjectionPolicyEnabled!
        }
        if self.CRAggregationEnabled != nil {
            map["CRAggregationEnabled"] = self.CRAggregationEnabled!
        }
        if self.certChain != nil {
            map["CertChain"] = self.certChain!
        }
        if self.clusterSpec != nil {
            map["ClusterSpec"] = self.clusterSpec!
        }
        if self.cniEnabled != nil {
            map["CniEnabled"] = self.cniEnabled!
        }
        if self.cniExcludeNamespaces != nil {
            map["CniExcludeNamespaces"] = self.cniExcludeNamespaces!
        }
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.configSourceEnabled != nil {
            map["ConfigSourceEnabled"] = self.configSourceEnabled!
        }
        if self.configSourceNacosID != nil {
            map["ConfigSourceNacosID"] = self.configSourceNacosID!
        }
        if self.customizedPrometheus != nil {
            map["CustomizedPrometheus"] = self.customizedPrometheus!
        }
        if self.customizedZipkin != nil {
            map["CustomizedZipkin"] = self.customizedZipkin!
        }
        if self.DNSProxyingEnabled != nil {
            map["DNSProxyingEnabled"] = self.DNSProxyingEnabled!
        }
        if self.defaultComponentsScheduleConfig != nil {
            map["DefaultComponentsScheduleConfig"] = self.defaultComponentsScheduleConfig!
        }
        if self.discoverySelectors != nil {
            map["DiscoverySelectors"] = self.discoverySelectors!
        }
        if self.dubboFilterEnabled != nil {
            map["DubboFilterEnabled"] = self.dubboFilterEnabled!
        }
        if self.enableAudit != nil {
            map["EnableAudit"] = self.enableAudit!
        }
        if self.enableAutoDiagnosis != nil {
            map["EnableAutoDiagnosis"] = self.enableAutoDiagnosis!
        }
        if self.enableBootstrapXdsAgent != nil {
            map["EnableBootstrapXdsAgent"] = self.enableBootstrapXdsAgent!
        }
        if self.enableCRHistory != nil {
            map["EnableCRHistory"] = self.enableCRHistory!
        }
        if self.enableNamespacesByDefault != nil {
            map["EnableNamespacesByDefault"] = self.enableNamespacesByDefault!
        }
        if self.enableSDSServer != nil {
            map["EnableSDSServer"] = self.enableSDSServer!
        }
        if self.excludeIPRanges != nil {
            map["ExcludeIPRanges"] = self.excludeIPRanges!
        }
        if self.excludeInboundPorts != nil {
            map["ExcludeInboundPorts"] = self.excludeInboundPorts!
        }
        if self.excludeOutboundPorts != nil {
            map["ExcludeOutboundPorts"] = self.excludeOutboundPorts!
        }
        if self.existingCaCert != nil {
            map["ExistingCaCert"] = self.existingCaCert!
        }
        if self.existingCaKey != nil {
            map["ExistingCaKey"] = self.existingCaKey!
        }
        if self.existingRootCaCert != nil {
            map["ExistingRootCaCert"] = self.existingRootCaCert!
        }
        if self.filterGatewayClusterConfig != nil {
            map["FilterGatewayClusterConfig"] = self.filterGatewayClusterConfig!
        }
        if self.gatewayAPIEnabled != nil {
            map["GatewayAPIEnabled"] = self.gatewayAPIEnabled!
        }
        if self.holdApplicationUntilProxyStarts != nil {
            map["HoldApplicationUntilProxyStarts"] = self.holdApplicationUntilProxyStarts!
        }
        if self.http10Enabled != nil {
            map["Http10Enabled"] = self.http10Enabled!
        }
        if self.includeIPRanges != nil {
            map["IncludeIPRanges"] = self.includeIPRanges!
        }
        if self.includeInboundPorts != nil {
            map["IncludeInboundPorts"] = self.includeInboundPorts!
        }
        if self.includeOutboundPorts != nil {
            map["IncludeOutboundPorts"] = self.includeOutboundPorts!
        }
        if self.integrateKiali != nil {
            map["IntegrateKiali"] = self.integrateKiali!
        }
        if self.interceptionMode != nil {
            map["InterceptionMode"] = self.interceptionMode!
        }
        if self.kialiArmsAuthTokens != nil {
            map["KialiArmsAuthTokens"] = self.kialiArmsAuthTokens!
        }
        if self.kialiEnabled != nil {
            map["KialiEnabled"] = self.kialiEnabled!
        }
        if self.kialiServiceAnnotations != nil {
            map["KialiServiceAnnotations"] = self.kialiServiceAnnotations!
        }
        if self.labelsForOffloadedWorkloads != nil {
            map["LabelsForOffloadedWorkloads"] = self.labelsForOffloadedWorkloads!
        }
        if self.lifecycle != nil {
            map["Lifecycle"] = self.lifecycle!
        }
        if self.localityLBConf != nil {
            map["LocalityLBConf"] = self.localityLBConf!
        }
        if self.localityLoadBalancing != nil {
            map["LocalityLoadBalancing"] = self.localityLoadBalancing!
        }
        if self.logLevel != nil {
            map["LogLevel"] = self.logLevel!
        }
        if self.MSEEnabled != nil {
            map["MSEEnabled"] = self.MSEEnabled!
        }
        if self.multiBufferEnabled != nil {
            map["MultiBufferEnabled"] = self.multiBufferEnabled!
        }
        if self.multiBufferPollDelay != nil {
            map["MultiBufferPollDelay"] = self.multiBufferPollDelay!
        }
        if self.mysqlFilterEnabled != nil {
            map["MysqlFilterEnabled"] = self.mysqlFilterEnabled!
        }
        if self.NFDEnabled != nil {
            map["NFDEnabled"] = self.NFDEnabled!
        }
        if self.NFDLabelPruned != nil {
            map["NFDLabelPruned"] = self.NFDLabelPruned!
        }
        if self.OPAInjectorCPULimit != nil {
            map["OPAInjectorCPULimit"] = self.OPAInjectorCPULimit!
        }
        if self.OPAInjectorCPURequirement != nil {
            map["OPAInjectorCPURequirement"] = self.OPAInjectorCPURequirement!
        }
        if self.OPAInjectorMemoryLimit != nil {
            map["OPAInjectorMemoryLimit"] = self.OPAInjectorMemoryLimit!
        }
        if self.OPAInjectorMemoryRequirement != nil {
            map["OPAInjectorMemoryRequirement"] = self.OPAInjectorMemoryRequirement!
        }
        if self.OPALimitCPU != nil {
            map["OPALimitCPU"] = self.OPALimitCPU!
        }
        if self.OPALimitMemory != nil {
            map["OPALimitMemory"] = self.OPALimitMemory!
        }
        if self.OPALogLevel != nil {
            map["OPALogLevel"] = self.OPALogLevel!
        }
        if self.OPARequestCPU != nil {
            map["OPARequestCPU"] = self.OPARequestCPU!
        }
        if self.OPARequestMemory != nil {
            map["OPARequestMemory"] = self.OPARequestMemory!
        }
        if self.OPAScopeInjected != nil {
            map["OPAScopeInjected"] = self.OPAScopeInjected!
        }
        if self.opaEnabled != nil {
            map["OpaEnabled"] = self.opaEnabled!
        }
        if self.openAgentPolicy != nil {
            map["OpenAgentPolicy"] = self.openAgentPolicy!
        }
        if self.outboundTrafficPolicy != nil {
            map["OutboundTrafficPolicy"] = self.outboundTrafficPolicy!
        }
        if self.pilotEnableQuicListeners != nil {
            map["PilotEnableQuicListeners"] = self.pilotEnableQuicListeners!
        }
        if self.prometheusUrl != nil {
            map["PrometheusUrl"] = self.prometheusUrl!
        }
        if self.proxyInitCPUResourceLimit != nil {
            map["ProxyInitCPUResourceLimit"] = self.proxyInitCPUResourceLimit!
        }
        if self.proxyInitCPUResourceRequest != nil {
            map["ProxyInitCPUResourceRequest"] = self.proxyInitCPUResourceRequest!
        }
        if self.proxyInitMemoryResourceLimit != nil {
            map["ProxyInitMemoryResourceLimit"] = self.proxyInitMemoryResourceLimit!
        }
        if self.proxyInitMemoryResourceRequest != nil {
            map["ProxyInitMemoryResourceRequest"] = self.proxyInitMemoryResourceRequest!
        }
        if self.proxyLimitCPU != nil {
            map["ProxyLimitCPU"] = self.proxyLimitCPU!
        }
        if self.proxyLimitMemory != nil {
            map["ProxyLimitMemory"] = self.proxyLimitMemory!
        }
        if self.proxyRequestCPU != nil {
            map["ProxyRequestCPU"] = self.proxyRequestCPU!
        }
        if self.proxyRequestMemory != nil {
            map["ProxyRequestMemory"] = self.proxyRequestMemory!
        }
        if self.proxyStatsMatcher != nil {
            map["ProxyStatsMatcher"] = self.proxyStatsMatcher!
        }
        if self.redisFilterEnabled != nil {
            map["RedisFilterEnabled"] = self.redisFilterEnabled!
        }
        if self.SMCEnabled != nil {
            map["SMCEnabled"] = self.SMCEnabled!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.sidecarInjectorLimitCPU != nil {
            map["SidecarInjectorLimitCPU"] = self.sidecarInjectorLimitCPU!
        }
        if self.sidecarInjectorLimitMemory != nil {
            map["SidecarInjectorLimitMemory"] = self.sidecarInjectorLimitMemory!
        }
        if self.sidecarInjectorRequestCPU != nil {
            map["SidecarInjectorRequestCPU"] = self.sidecarInjectorRequestCPU!
        }
        if self.sidecarInjectorRequestMemory != nil {
            map["SidecarInjectorRequestMemory"] = self.sidecarInjectorRequestMemory!
        }
        if self.sidecarInjectorWebhookAsYaml != nil {
            map["SidecarInjectorWebhookAsYaml"] = self.sidecarInjectorWebhookAsYaml!
        }
        if self.telemetry != nil {
            map["Telemetry"] = self.telemetry!
        }
        if self.terminationDrainDuration != nil {
            map["TerminationDrainDuration"] = self.terminationDrainDuration!
        }
        if self.thriftFilterEnabled != nil {
            map["ThriftFilterEnabled"] = self.thriftFilterEnabled!
        }
        if self.traceCustomTags != nil {
            map["TraceCustomTags"] = self.traceCustomTags!
        }
        if self.traceMaxPathTagLength != nil {
            map["TraceMaxPathTagLength"] = self.traceMaxPathTagLength!
        }
        if self.traceSampling != nil {
            map["TraceSampling"] = self.traceSampling!
        }
        if self.tracing != nil {
            map["Tracing"] = self.tracing!
        }
        if self.tracingOnExtZipkinLimitCPU != nil {
            map["TracingOnExtZipkinLimitCPU"] = self.tracingOnExtZipkinLimitCPU!
        }
        if self.tracingOnExtZipkinLimitMemory != nil {
            map["TracingOnExtZipkinLimitMemory"] = self.tracingOnExtZipkinLimitMemory!
        }
        if self.tracingOnExtZipkinReplicaCount != nil {
            map["TracingOnExtZipkinReplicaCount"] = self.tracingOnExtZipkinReplicaCount!
        }
        if self.tracingOnExtZipkinRequestCPU != nil {
            map["TracingOnExtZipkinRequestCPU"] = self.tracingOnExtZipkinRequestCPU!
        }
        if self.tracingOnExtZipkinRequestMemory != nil {
            map["TracingOnExtZipkinRequestMemory"] = self.tracingOnExtZipkinRequestMemory!
        }
        if self.webAssemblyFilterEnabled != nil {
            map["WebAssemblyFilterEnabled"] = self.webAssemblyFilterEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessLogEnabled"] as? Bool {
            self.accessLogEnabled = value
        }
        if let value = dict["AccessLogFile"] as? String {
            self.accessLogFile = value
        }
        if let value = dict["AccessLogFormat"] as? String {
            self.accessLogFormat = value
        }
        if let value = dict["AccessLogGatewayEnabled"] as? Bool {
            self.accessLogGatewayEnabled = value
        }
        if let value = dict["AccessLogGatewayLifecycle"] as? Int32 {
            self.accessLogGatewayLifecycle = value
        }
        if let value = dict["AccessLogProject"] as? String {
            self.accessLogProject = value
        }
        if let value = dict["AccessLogServiceEnabled"] as? Bool {
            self.accessLogServiceEnabled = value
        }
        if let value = dict["AccessLogServiceHost"] as? String {
            self.accessLogServiceHost = value
        }
        if let value = dict["AccessLogServicePort"] as? Int32 {
            self.accessLogServicePort = value
        }
        if let value = dict["AccessLogSidecarEnabled"] as? Bool {
            self.accessLogSidecarEnabled = value
        }
        if let value = dict["AccessLogSidecarLifecycle"] as? Int32 {
            self.accessLogSidecarLifecycle = value
        }
        if let value = dict["AuditProject"] as? String {
            self.auditProject = value
        }
        if let value = dict["AutoInjectionPolicyEnabled"] as? Bool {
            self.autoInjectionPolicyEnabled = value
        }
        if let value = dict["CRAggregationEnabled"] as? Bool {
            self.CRAggregationEnabled = value
        }
        if let value = dict["CertChain"] as? String {
            self.certChain = value
        }
        if let value = dict["ClusterSpec"] as? String {
            self.clusterSpec = value
        }
        if let value = dict["CniEnabled"] as? Bool {
            self.cniEnabled = value
        }
        if let value = dict["CniExcludeNamespaces"] as? String {
            self.cniExcludeNamespaces = value
        }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["ConfigSourceEnabled"] as? Bool {
            self.configSourceEnabled = value
        }
        if let value = dict["ConfigSourceNacosID"] as? String {
            self.configSourceNacosID = value
        }
        if let value = dict["CustomizedPrometheus"] as? Bool {
            self.customizedPrometheus = value
        }
        if let value = dict["CustomizedZipkin"] as? Bool {
            self.customizedZipkin = value
        }
        if let value = dict["DNSProxyingEnabled"] as? Bool {
            self.DNSProxyingEnabled = value
        }
        if let value = dict["DefaultComponentsScheduleConfig"] as? String {
            self.defaultComponentsScheduleConfig = value
        }
        if let value = dict["DiscoverySelectors"] as? String {
            self.discoverySelectors = value
        }
        if let value = dict["DubboFilterEnabled"] as? Bool {
            self.dubboFilterEnabled = value
        }
        if let value = dict["EnableAudit"] as? Bool {
            self.enableAudit = value
        }
        if let value = dict["EnableAutoDiagnosis"] as? Bool {
            self.enableAutoDiagnosis = value
        }
        if let value = dict["EnableBootstrapXdsAgent"] as? Bool {
            self.enableBootstrapXdsAgent = value
        }
        if let value = dict["EnableCRHistory"] as? Bool {
            self.enableCRHistory = value
        }
        if let value = dict["EnableNamespacesByDefault"] as? Bool {
            self.enableNamespacesByDefault = value
        }
        if let value = dict["EnableSDSServer"] as? Bool {
            self.enableSDSServer = value
        }
        if let value = dict["ExcludeIPRanges"] as? String {
            self.excludeIPRanges = value
        }
        if let value = dict["ExcludeInboundPorts"] as? String {
            self.excludeInboundPorts = value
        }
        if let value = dict["ExcludeOutboundPorts"] as? String {
            self.excludeOutboundPorts = value
        }
        if let value = dict["ExistingCaCert"] as? String {
            self.existingCaCert = value
        }
        if let value = dict["ExistingCaKey"] as? String {
            self.existingCaKey = value
        }
        if let value = dict["ExistingRootCaCert"] as? String {
            self.existingRootCaCert = value
        }
        if let value = dict["FilterGatewayClusterConfig"] as? Bool {
            self.filterGatewayClusterConfig = value
        }
        if let value = dict["GatewayAPIEnabled"] as? Bool {
            self.gatewayAPIEnabled = value
        }
        if let value = dict["HoldApplicationUntilProxyStarts"] as? Bool {
            self.holdApplicationUntilProxyStarts = value
        }
        if let value = dict["Http10Enabled"] as? Bool {
            self.http10Enabled = value
        }
        if let value = dict["IncludeIPRanges"] as? String {
            self.includeIPRanges = value
        }
        if let value = dict["IncludeInboundPorts"] as? String {
            self.includeInboundPorts = value
        }
        if let value = dict["IncludeOutboundPorts"] as? String {
            self.includeOutboundPorts = value
        }
        if let value = dict["IntegrateKiali"] as? Bool {
            self.integrateKiali = value
        }
        if let value = dict["InterceptionMode"] as? String {
            self.interceptionMode = value
        }
        if let value = dict["KialiArmsAuthTokens"] as? String {
            self.kialiArmsAuthTokens = value
        }
        if let value = dict["KialiEnabled"] as? Bool {
            self.kialiEnabled = value
        }
        if let value = dict["KialiServiceAnnotations"] as? String {
            self.kialiServiceAnnotations = value
        }
        if let value = dict["LabelsForOffloadedWorkloads"] as? String {
            self.labelsForOffloadedWorkloads = value
        }
        if let value = dict["Lifecycle"] as? String {
            self.lifecycle = value
        }
        if let value = dict["LocalityLBConf"] as? String {
            self.localityLBConf = value
        }
        if let value = dict["LocalityLoadBalancing"] as? Bool {
            self.localityLoadBalancing = value
        }
        if let value = dict["LogLevel"] as? String {
            self.logLevel = value
        }
        if let value = dict["MSEEnabled"] as? Bool {
            self.MSEEnabled = value
        }
        if let value = dict["MultiBufferEnabled"] as? Bool {
            self.multiBufferEnabled = value
        }
        if let value = dict["MultiBufferPollDelay"] as? String {
            self.multiBufferPollDelay = value
        }
        if let value = dict["MysqlFilterEnabled"] as? Bool {
            self.mysqlFilterEnabled = value
        }
        if let value = dict["NFDEnabled"] as? Bool {
            self.NFDEnabled = value
        }
        if let value = dict["NFDLabelPruned"] as? Bool {
            self.NFDLabelPruned = value
        }
        if let value = dict["OPAInjectorCPULimit"] as? String {
            self.OPAInjectorCPULimit = value
        }
        if let value = dict["OPAInjectorCPURequirement"] as? String {
            self.OPAInjectorCPURequirement = value
        }
        if let value = dict["OPAInjectorMemoryLimit"] as? String {
            self.OPAInjectorMemoryLimit = value
        }
        if let value = dict["OPAInjectorMemoryRequirement"] as? String {
            self.OPAInjectorMemoryRequirement = value
        }
        if let value = dict["OPALimitCPU"] as? String {
            self.OPALimitCPU = value
        }
        if let value = dict["OPALimitMemory"] as? String {
            self.OPALimitMemory = value
        }
        if let value = dict["OPALogLevel"] as? String {
            self.OPALogLevel = value
        }
        if let value = dict["OPARequestCPU"] as? String {
            self.OPARequestCPU = value
        }
        if let value = dict["OPARequestMemory"] as? String {
            self.OPARequestMemory = value
        }
        if let value = dict["OPAScopeInjected"] as? Bool {
            self.OPAScopeInjected = value
        }
        if let value = dict["OpaEnabled"] as? Bool {
            self.opaEnabled = value
        }
        if let value = dict["OpenAgentPolicy"] as? Bool {
            self.openAgentPolicy = value
        }
        if let value = dict["OutboundTrafficPolicy"] as? String {
            self.outboundTrafficPolicy = value
        }
        if let value = dict["PilotEnableQuicListeners"] as? Bool {
            self.pilotEnableQuicListeners = value
        }
        if let value = dict["PrometheusUrl"] as? String {
            self.prometheusUrl = value
        }
        if let value = dict["ProxyInitCPUResourceLimit"] as? String {
            self.proxyInitCPUResourceLimit = value
        }
        if let value = dict["ProxyInitCPUResourceRequest"] as? String {
            self.proxyInitCPUResourceRequest = value
        }
        if let value = dict["ProxyInitMemoryResourceLimit"] as? String {
            self.proxyInitMemoryResourceLimit = value
        }
        if let value = dict["ProxyInitMemoryResourceRequest"] as? String {
            self.proxyInitMemoryResourceRequest = value
        }
        if let value = dict["ProxyLimitCPU"] as? String {
            self.proxyLimitCPU = value
        }
        if let value = dict["ProxyLimitMemory"] as? String {
            self.proxyLimitMemory = value
        }
        if let value = dict["ProxyRequestCPU"] as? String {
            self.proxyRequestCPU = value
        }
        if let value = dict["ProxyRequestMemory"] as? String {
            self.proxyRequestMemory = value
        }
        if let value = dict["ProxyStatsMatcher"] as? String {
            self.proxyStatsMatcher = value
        }
        if let value = dict["RedisFilterEnabled"] as? Bool {
            self.redisFilterEnabled = value
        }
        if let value = dict["SMCEnabled"] as? Bool {
            self.SMCEnabled = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["SidecarInjectorLimitCPU"] as? String {
            self.sidecarInjectorLimitCPU = value
        }
        if let value = dict["SidecarInjectorLimitMemory"] as? String {
            self.sidecarInjectorLimitMemory = value
        }
        if let value = dict["SidecarInjectorRequestCPU"] as? String {
            self.sidecarInjectorRequestCPU = value
        }
        if let value = dict["SidecarInjectorRequestMemory"] as? String {
            self.sidecarInjectorRequestMemory = value
        }
        if let value = dict["SidecarInjectorWebhookAsYaml"] as? String {
            self.sidecarInjectorWebhookAsYaml = value
        }
        if let value = dict["Telemetry"] as? Bool {
            self.telemetry = value
        }
        if let value = dict["TerminationDrainDuration"] as? String {
            self.terminationDrainDuration = value
        }
        if let value = dict["ThriftFilterEnabled"] as? Bool {
            self.thriftFilterEnabled = value
        }
        if let value = dict["TraceCustomTags"] as? String {
            self.traceCustomTags = value
        }
        if let value = dict["TraceMaxPathTagLength"] as? String {
            self.traceMaxPathTagLength = value
        }
        if let value = dict["TraceSampling"] as? Double {
            self.traceSampling = value
        }
        if let value = dict["Tracing"] as? Bool {
            self.tracing = value
        }
        if let value = dict["TracingOnExtZipkinLimitCPU"] as? String {
            self.tracingOnExtZipkinLimitCPU = value
        }
        if let value = dict["TracingOnExtZipkinLimitMemory"] as? String {
            self.tracingOnExtZipkinLimitMemory = value
        }
        if let value = dict["TracingOnExtZipkinReplicaCount"] as? String {
            self.tracingOnExtZipkinReplicaCount = value
        }
        if let value = dict["TracingOnExtZipkinRequestCPU"] as? String {
            self.tracingOnExtZipkinRequestCPU = value
        }
        if let value = dict["TracingOnExtZipkinRequestMemory"] as? String {
            self.tracingOnExtZipkinRequestMemory = value
        }
        if let value = dict["WebAssemblyFilterEnabled"] as? Bool {
            self.webAssemblyFilterEnabled = value
        }
    }
}

public class UpdateMeshFeatureResponseBody : Tea.TeaModel {
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

public class UpdateMeshFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMeshFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMeshFeatureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMeshMultiClusterNetworkRequest : Tea.TeaModel {
    public var multiClusterNetworks: [String: MultiClusterNetworksValue]?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.multiClusterNetworks != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.multiClusterNetworks! {
                tmp[k] = v.toMap()
            }
            map["MultiClusterNetworks"] = tmp
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MultiClusterNetworks"] as? [String: Any?] {
            var tmp : [String: MultiClusterNetworksValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = MultiClusterNetworksValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.multiClusterNetworks = tmp
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpdateMeshMultiClusterNetworkShrinkRequest : Tea.TeaModel {
    public var multiClusterNetworksShrink: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.multiClusterNetworksShrink != nil {
            map["MultiClusterNetworks"] = self.multiClusterNetworksShrink!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MultiClusterNetworks"] as? String {
            self.multiClusterNetworksShrink = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpdateMeshMultiClusterNetworkResponseBody : Tea.TeaModel {
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

public class UpdateMeshMultiClusterNetworkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMeshMultiClusterNetworkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMeshMultiClusterNetworkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNamespaceScopeSidecarConfigRequest : Tea.TeaModel {
    public class ScaledSidecarResource : Tea.TeaModel {
        public var containerRef: String?

        public var resourceCalculationStrategy: String?

        public var resourcePercentage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerRef != nil {
                map["ContainerRef"] = self.containerRef!
            }
            if self.resourceCalculationStrategy != nil {
                map["ResourceCalculationStrategy"] = self.resourceCalculationStrategy!
            }
            if self.resourcePercentage != nil {
                map["ResourcePercentage"] = self.resourcePercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContainerRef"] as? String {
                self.containerRef = value
            }
            if let value = dict["ResourceCalculationStrategy"] as? String {
                self.resourceCalculationStrategy = value
            }
            if let value = dict["ResourcePercentage"] as? Int32 {
                self.resourcePercentage = value
            }
        }
    }
    public var concurrency: Int32?

    public var enableCoreDump: Bool?

    public var excludeIPRanges: String?

    public var excludeInboundPorts: String?

    public var excludeOutboundPorts: String?

    public var holdApplicationUntilProxyStarts: Bool?

    public var includeIPRanges: String?

    public var includeInboundPorts: String?

    public var includeOutboundPorts: String?

    public var interceptionMode: String?

    public var istioDNSProxyEnabled: Bool?

    public var lifecycle: String?

    public var logLevel: String?

    public var namespace: String?

    public var postStart: String?

    public var preStop: String?

    public var privileged: Bool?

    public var proxyInitAckSloCPUResourceLimit: String?

    public var proxyInitAckSloCPUResourceRequest: String?

    public var proxyInitAckSloMemoryResourceLimit: String?

    public var proxyInitAckSloMemoryResourceRequest: String?

    public var proxyInitCPUResourceLimit: String?

    public var proxyInitCPUResourceRequest: String?

    public var proxyInitMemoryResourceLimit: String?

    public var proxyInitMemoryResourceRequest: String?

    public var proxyMetadata: String?

    public var proxyStatsMatcher: String?

    public var readinessFailureThreshold: Int32?

    public var readinessInitialDelaySeconds: Int32?

    public var readinessPeriodSeconds: Int32?

    public var runtimeValues: String?

    public var SMCEnabled: Bool?

    public var scaledSidecarResource: UpdateNamespaceScopeSidecarConfigRequest.ScaledSidecarResource?

    public var serviceMeshId: String?

    public var sidecarProxyAckSloCPUResourceLimit: String?

    public var sidecarProxyAckSloCPUResourceRequest: String?

    public var sidecarProxyAckSloMemoryResourceLimit: String?

    public var sidecarProxyAckSloMemoryResourceRequest: String?

    public var sidecarProxyCPUResourceLimit: String?

    public var sidecarProxyCPUResourceRequest: String?

    public var sidecarProxyMemoryResourceLimit: String?

    public var sidecarProxyMemoryResourceRequest: String?

    public var terminationDrainDuration: String?

    public var tracing: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scaledSidecarResource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.enableCoreDump != nil {
            map["EnableCoreDump"] = self.enableCoreDump!
        }
        if self.excludeIPRanges != nil {
            map["ExcludeIPRanges"] = self.excludeIPRanges!
        }
        if self.excludeInboundPorts != nil {
            map["ExcludeInboundPorts"] = self.excludeInboundPorts!
        }
        if self.excludeOutboundPorts != nil {
            map["ExcludeOutboundPorts"] = self.excludeOutboundPorts!
        }
        if self.holdApplicationUntilProxyStarts != nil {
            map["HoldApplicationUntilProxyStarts"] = self.holdApplicationUntilProxyStarts!
        }
        if self.includeIPRanges != nil {
            map["IncludeIPRanges"] = self.includeIPRanges!
        }
        if self.includeInboundPorts != nil {
            map["IncludeInboundPorts"] = self.includeInboundPorts!
        }
        if self.includeOutboundPorts != nil {
            map["IncludeOutboundPorts"] = self.includeOutboundPorts!
        }
        if self.interceptionMode != nil {
            map["InterceptionMode"] = self.interceptionMode!
        }
        if self.istioDNSProxyEnabled != nil {
            map["IstioDNSProxyEnabled"] = self.istioDNSProxyEnabled!
        }
        if self.lifecycle != nil {
            map["Lifecycle"] = self.lifecycle!
        }
        if self.logLevel != nil {
            map["LogLevel"] = self.logLevel!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.postStart != nil {
            map["PostStart"] = self.postStart!
        }
        if self.preStop != nil {
            map["PreStop"] = self.preStop!
        }
        if self.privileged != nil {
            map["Privileged"] = self.privileged!
        }
        if self.proxyInitAckSloCPUResourceLimit != nil {
            map["ProxyInitAckSloCPUResourceLimit"] = self.proxyInitAckSloCPUResourceLimit!
        }
        if self.proxyInitAckSloCPUResourceRequest != nil {
            map["ProxyInitAckSloCPUResourceRequest"] = self.proxyInitAckSloCPUResourceRequest!
        }
        if self.proxyInitAckSloMemoryResourceLimit != nil {
            map["ProxyInitAckSloMemoryResourceLimit"] = self.proxyInitAckSloMemoryResourceLimit!
        }
        if self.proxyInitAckSloMemoryResourceRequest != nil {
            map["ProxyInitAckSloMemoryResourceRequest"] = self.proxyInitAckSloMemoryResourceRequest!
        }
        if self.proxyInitCPUResourceLimit != nil {
            map["ProxyInitCPUResourceLimit"] = self.proxyInitCPUResourceLimit!
        }
        if self.proxyInitCPUResourceRequest != nil {
            map["ProxyInitCPUResourceRequest"] = self.proxyInitCPUResourceRequest!
        }
        if self.proxyInitMemoryResourceLimit != nil {
            map["ProxyInitMemoryResourceLimit"] = self.proxyInitMemoryResourceLimit!
        }
        if self.proxyInitMemoryResourceRequest != nil {
            map["ProxyInitMemoryResourceRequest"] = self.proxyInitMemoryResourceRequest!
        }
        if self.proxyMetadata != nil {
            map["ProxyMetadata"] = self.proxyMetadata!
        }
        if self.proxyStatsMatcher != nil {
            map["ProxyStatsMatcher"] = self.proxyStatsMatcher!
        }
        if self.readinessFailureThreshold != nil {
            map["ReadinessFailureThreshold"] = self.readinessFailureThreshold!
        }
        if self.readinessInitialDelaySeconds != nil {
            map["ReadinessInitialDelaySeconds"] = self.readinessInitialDelaySeconds!
        }
        if self.readinessPeriodSeconds != nil {
            map["ReadinessPeriodSeconds"] = self.readinessPeriodSeconds!
        }
        if self.runtimeValues != nil {
            map["RuntimeValues"] = self.runtimeValues!
        }
        if self.SMCEnabled != nil {
            map["SMCEnabled"] = self.SMCEnabled!
        }
        if self.scaledSidecarResource != nil {
            map["ScaledSidecarResource"] = self.scaledSidecarResource?.toMap()
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.sidecarProxyAckSloCPUResourceLimit != nil {
            map["SidecarProxyAckSloCPUResourceLimit"] = self.sidecarProxyAckSloCPUResourceLimit!
        }
        if self.sidecarProxyAckSloCPUResourceRequest != nil {
            map["SidecarProxyAckSloCPUResourceRequest"] = self.sidecarProxyAckSloCPUResourceRequest!
        }
        if self.sidecarProxyAckSloMemoryResourceLimit != nil {
            map["SidecarProxyAckSloMemoryResourceLimit"] = self.sidecarProxyAckSloMemoryResourceLimit!
        }
        if self.sidecarProxyAckSloMemoryResourceRequest != nil {
            map["SidecarProxyAckSloMemoryResourceRequest"] = self.sidecarProxyAckSloMemoryResourceRequest!
        }
        if self.sidecarProxyCPUResourceLimit != nil {
            map["SidecarProxyCPUResourceLimit"] = self.sidecarProxyCPUResourceLimit!
        }
        if self.sidecarProxyCPUResourceRequest != nil {
            map["SidecarProxyCPUResourceRequest"] = self.sidecarProxyCPUResourceRequest!
        }
        if self.sidecarProxyMemoryResourceLimit != nil {
            map["SidecarProxyMemoryResourceLimit"] = self.sidecarProxyMemoryResourceLimit!
        }
        if self.sidecarProxyMemoryResourceRequest != nil {
            map["SidecarProxyMemoryResourceRequest"] = self.sidecarProxyMemoryResourceRequest!
        }
        if self.terminationDrainDuration != nil {
            map["TerminationDrainDuration"] = self.terminationDrainDuration!
        }
        if self.tracing != nil {
            map["Tracing"] = self.tracing!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["EnableCoreDump"] as? Bool {
            self.enableCoreDump = value
        }
        if let value = dict["ExcludeIPRanges"] as? String {
            self.excludeIPRanges = value
        }
        if let value = dict["ExcludeInboundPorts"] as? String {
            self.excludeInboundPorts = value
        }
        if let value = dict["ExcludeOutboundPorts"] as? String {
            self.excludeOutboundPorts = value
        }
        if let value = dict["HoldApplicationUntilProxyStarts"] as? Bool {
            self.holdApplicationUntilProxyStarts = value
        }
        if let value = dict["IncludeIPRanges"] as? String {
            self.includeIPRanges = value
        }
        if let value = dict["IncludeInboundPorts"] as? String {
            self.includeInboundPorts = value
        }
        if let value = dict["IncludeOutboundPorts"] as? String {
            self.includeOutboundPorts = value
        }
        if let value = dict["InterceptionMode"] as? String {
            self.interceptionMode = value
        }
        if let value = dict["IstioDNSProxyEnabled"] as? Bool {
            self.istioDNSProxyEnabled = value
        }
        if let value = dict["Lifecycle"] as? String {
            self.lifecycle = value
        }
        if let value = dict["LogLevel"] as? String {
            self.logLevel = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["PostStart"] as? String {
            self.postStart = value
        }
        if let value = dict["PreStop"] as? String {
            self.preStop = value
        }
        if let value = dict["Privileged"] as? Bool {
            self.privileged = value
        }
        if let value = dict["ProxyInitAckSloCPUResourceLimit"] as? String {
            self.proxyInitAckSloCPUResourceLimit = value
        }
        if let value = dict["ProxyInitAckSloCPUResourceRequest"] as? String {
            self.proxyInitAckSloCPUResourceRequest = value
        }
        if let value = dict["ProxyInitAckSloMemoryResourceLimit"] as? String {
            self.proxyInitAckSloMemoryResourceLimit = value
        }
        if let value = dict["ProxyInitAckSloMemoryResourceRequest"] as? String {
            self.proxyInitAckSloMemoryResourceRequest = value
        }
        if let value = dict["ProxyInitCPUResourceLimit"] as? String {
            self.proxyInitCPUResourceLimit = value
        }
        if let value = dict["ProxyInitCPUResourceRequest"] as? String {
            self.proxyInitCPUResourceRequest = value
        }
        if let value = dict["ProxyInitMemoryResourceLimit"] as? String {
            self.proxyInitMemoryResourceLimit = value
        }
        if let value = dict["ProxyInitMemoryResourceRequest"] as? String {
            self.proxyInitMemoryResourceRequest = value
        }
        if let value = dict["ProxyMetadata"] as? String {
            self.proxyMetadata = value
        }
        if let value = dict["ProxyStatsMatcher"] as? String {
            self.proxyStatsMatcher = value
        }
        if let value = dict["ReadinessFailureThreshold"] as? Int32 {
            self.readinessFailureThreshold = value
        }
        if let value = dict["ReadinessInitialDelaySeconds"] as? Int32 {
            self.readinessInitialDelaySeconds = value
        }
        if let value = dict["ReadinessPeriodSeconds"] as? Int32 {
            self.readinessPeriodSeconds = value
        }
        if let value = dict["RuntimeValues"] as? String {
            self.runtimeValues = value
        }
        if let value = dict["SMCEnabled"] as? Bool {
            self.SMCEnabled = value
        }
        if let value = dict["ScaledSidecarResource"] as? [String: Any?] {
            var model = UpdateNamespaceScopeSidecarConfigRequest.ScaledSidecarResource()
            model.fromMap(value)
            self.scaledSidecarResource = model
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["SidecarProxyAckSloCPUResourceLimit"] as? String {
            self.sidecarProxyAckSloCPUResourceLimit = value
        }
        if let value = dict["SidecarProxyAckSloCPUResourceRequest"] as? String {
            self.sidecarProxyAckSloCPUResourceRequest = value
        }
        if let value = dict["SidecarProxyAckSloMemoryResourceLimit"] as? String {
            self.sidecarProxyAckSloMemoryResourceLimit = value
        }
        if let value = dict["SidecarProxyAckSloMemoryResourceRequest"] as? String {
            self.sidecarProxyAckSloMemoryResourceRequest = value
        }
        if let value = dict["SidecarProxyCPUResourceLimit"] as? String {
            self.sidecarProxyCPUResourceLimit = value
        }
        if let value = dict["SidecarProxyCPUResourceRequest"] as? String {
            self.sidecarProxyCPUResourceRequest = value
        }
        if let value = dict["SidecarProxyMemoryResourceLimit"] as? String {
            self.sidecarProxyMemoryResourceLimit = value
        }
        if let value = dict["SidecarProxyMemoryResourceRequest"] as? String {
            self.sidecarProxyMemoryResourceRequest = value
        }
        if let value = dict["TerminationDrainDuration"] as? String {
            self.terminationDrainDuration = value
        }
        if let value = dict["Tracing"] as? String {
            self.tracing = value
        }
    }
}

public class UpdateNamespaceScopeSidecarConfigShrinkRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var enableCoreDump: Bool?

    public var excludeIPRanges: String?

    public var excludeInboundPorts: String?

    public var excludeOutboundPorts: String?

    public var holdApplicationUntilProxyStarts: Bool?

    public var includeIPRanges: String?

    public var includeInboundPorts: String?

    public var includeOutboundPorts: String?

    public var interceptionMode: String?

    public var istioDNSProxyEnabled: Bool?

    public var lifecycle: String?

    public var logLevel: String?

    public var namespace: String?

    public var postStart: String?

    public var preStop: String?

    public var privileged: Bool?

    public var proxyInitAckSloCPUResourceLimit: String?

    public var proxyInitAckSloCPUResourceRequest: String?

    public var proxyInitAckSloMemoryResourceLimit: String?

    public var proxyInitAckSloMemoryResourceRequest: String?

    public var proxyInitCPUResourceLimit: String?

    public var proxyInitCPUResourceRequest: String?

    public var proxyInitMemoryResourceLimit: String?

    public var proxyInitMemoryResourceRequest: String?

    public var proxyMetadata: String?

    public var proxyStatsMatcher: String?

    public var readinessFailureThreshold: Int32?

    public var readinessInitialDelaySeconds: Int32?

    public var readinessPeriodSeconds: Int32?

    public var runtimeValues: String?

    public var SMCEnabled: Bool?

    public var scaledSidecarResourceShrink: String?

    public var serviceMeshId: String?

    public var sidecarProxyAckSloCPUResourceLimit: String?

    public var sidecarProxyAckSloCPUResourceRequest: String?

    public var sidecarProxyAckSloMemoryResourceLimit: String?

    public var sidecarProxyAckSloMemoryResourceRequest: String?

    public var sidecarProxyCPUResourceLimit: String?

    public var sidecarProxyCPUResourceRequest: String?

    public var sidecarProxyMemoryResourceLimit: String?

    public var sidecarProxyMemoryResourceRequest: String?

    public var terminationDrainDuration: String?

    public var tracing: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.enableCoreDump != nil {
            map["EnableCoreDump"] = self.enableCoreDump!
        }
        if self.excludeIPRanges != nil {
            map["ExcludeIPRanges"] = self.excludeIPRanges!
        }
        if self.excludeInboundPorts != nil {
            map["ExcludeInboundPorts"] = self.excludeInboundPorts!
        }
        if self.excludeOutboundPorts != nil {
            map["ExcludeOutboundPorts"] = self.excludeOutboundPorts!
        }
        if self.holdApplicationUntilProxyStarts != nil {
            map["HoldApplicationUntilProxyStarts"] = self.holdApplicationUntilProxyStarts!
        }
        if self.includeIPRanges != nil {
            map["IncludeIPRanges"] = self.includeIPRanges!
        }
        if self.includeInboundPorts != nil {
            map["IncludeInboundPorts"] = self.includeInboundPorts!
        }
        if self.includeOutboundPorts != nil {
            map["IncludeOutboundPorts"] = self.includeOutboundPorts!
        }
        if self.interceptionMode != nil {
            map["InterceptionMode"] = self.interceptionMode!
        }
        if self.istioDNSProxyEnabled != nil {
            map["IstioDNSProxyEnabled"] = self.istioDNSProxyEnabled!
        }
        if self.lifecycle != nil {
            map["Lifecycle"] = self.lifecycle!
        }
        if self.logLevel != nil {
            map["LogLevel"] = self.logLevel!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.postStart != nil {
            map["PostStart"] = self.postStart!
        }
        if self.preStop != nil {
            map["PreStop"] = self.preStop!
        }
        if self.privileged != nil {
            map["Privileged"] = self.privileged!
        }
        if self.proxyInitAckSloCPUResourceLimit != nil {
            map["ProxyInitAckSloCPUResourceLimit"] = self.proxyInitAckSloCPUResourceLimit!
        }
        if self.proxyInitAckSloCPUResourceRequest != nil {
            map["ProxyInitAckSloCPUResourceRequest"] = self.proxyInitAckSloCPUResourceRequest!
        }
        if self.proxyInitAckSloMemoryResourceLimit != nil {
            map["ProxyInitAckSloMemoryResourceLimit"] = self.proxyInitAckSloMemoryResourceLimit!
        }
        if self.proxyInitAckSloMemoryResourceRequest != nil {
            map["ProxyInitAckSloMemoryResourceRequest"] = self.proxyInitAckSloMemoryResourceRequest!
        }
        if self.proxyInitCPUResourceLimit != nil {
            map["ProxyInitCPUResourceLimit"] = self.proxyInitCPUResourceLimit!
        }
        if self.proxyInitCPUResourceRequest != nil {
            map["ProxyInitCPUResourceRequest"] = self.proxyInitCPUResourceRequest!
        }
        if self.proxyInitMemoryResourceLimit != nil {
            map["ProxyInitMemoryResourceLimit"] = self.proxyInitMemoryResourceLimit!
        }
        if self.proxyInitMemoryResourceRequest != nil {
            map["ProxyInitMemoryResourceRequest"] = self.proxyInitMemoryResourceRequest!
        }
        if self.proxyMetadata != nil {
            map["ProxyMetadata"] = self.proxyMetadata!
        }
        if self.proxyStatsMatcher != nil {
            map["ProxyStatsMatcher"] = self.proxyStatsMatcher!
        }
        if self.readinessFailureThreshold != nil {
            map["ReadinessFailureThreshold"] = self.readinessFailureThreshold!
        }
        if self.readinessInitialDelaySeconds != nil {
            map["ReadinessInitialDelaySeconds"] = self.readinessInitialDelaySeconds!
        }
        if self.readinessPeriodSeconds != nil {
            map["ReadinessPeriodSeconds"] = self.readinessPeriodSeconds!
        }
        if self.runtimeValues != nil {
            map["RuntimeValues"] = self.runtimeValues!
        }
        if self.SMCEnabled != nil {
            map["SMCEnabled"] = self.SMCEnabled!
        }
        if self.scaledSidecarResourceShrink != nil {
            map["ScaledSidecarResource"] = self.scaledSidecarResourceShrink!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.sidecarProxyAckSloCPUResourceLimit != nil {
            map["SidecarProxyAckSloCPUResourceLimit"] = self.sidecarProxyAckSloCPUResourceLimit!
        }
        if self.sidecarProxyAckSloCPUResourceRequest != nil {
            map["SidecarProxyAckSloCPUResourceRequest"] = self.sidecarProxyAckSloCPUResourceRequest!
        }
        if self.sidecarProxyAckSloMemoryResourceLimit != nil {
            map["SidecarProxyAckSloMemoryResourceLimit"] = self.sidecarProxyAckSloMemoryResourceLimit!
        }
        if self.sidecarProxyAckSloMemoryResourceRequest != nil {
            map["SidecarProxyAckSloMemoryResourceRequest"] = self.sidecarProxyAckSloMemoryResourceRequest!
        }
        if self.sidecarProxyCPUResourceLimit != nil {
            map["SidecarProxyCPUResourceLimit"] = self.sidecarProxyCPUResourceLimit!
        }
        if self.sidecarProxyCPUResourceRequest != nil {
            map["SidecarProxyCPUResourceRequest"] = self.sidecarProxyCPUResourceRequest!
        }
        if self.sidecarProxyMemoryResourceLimit != nil {
            map["SidecarProxyMemoryResourceLimit"] = self.sidecarProxyMemoryResourceLimit!
        }
        if self.sidecarProxyMemoryResourceRequest != nil {
            map["SidecarProxyMemoryResourceRequest"] = self.sidecarProxyMemoryResourceRequest!
        }
        if self.terminationDrainDuration != nil {
            map["TerminationDrainDuration"] = self.terminationDrainDuration!
        }
        if self.tracing != nil {
            map["Tracing"] = self.tracing!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["EnableCoreDump"] as? Bool {
            self.enableCoreDump = value
        }
        if let value = dict["ExcludeIPRanges"] as? String {
            self.excludeIPRanges = value
        }
        if let value = dict["ExcludeInboundPorts"] as? String {
            self.excludeInboundPorts = value
        }
        if let value = dict["ExcludeOutboundPorts"] as? String {
            self.excludeOutboundPorts = value
        }
        if let value = dict["HoldApplicationUntilProxyStarts"] as? Bool {
            self.holdApplicationUntilProxyStarts = value
        }
        if let value = dict["IncludeIPRanges"] as? String {
            self.includeIPRanges = value
        }
        if let value = dict["IncludeInboundPorts"] as? String {
            self.includeInboundPorts = value
        }
        if let value = dict["IncludeOutboundPorts"] as? String {
            self.includeOutboundPorts = value
        }
        if let value = dict["InterceptionMode"] as? String {
            self.interceptionMode = value
        }
        if let value = dict["IstioDNSProxyEnabled"] as? Bool {
            self.istioDNSProxyEnabled = value
        }
        if let value = dict["Lifecycle"] as? String {
            self.lifecycle = value
        }
        if let value = dict["LogLevel"] as? String {
            self.logLevel = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["PostStart"] as? String {
            self.postStart = value
        }
        if let value = dict["PreStop"] as? String {
            self.preStop = value
        }
        if let value = dict["Privileged"] as? Bool {
            self.privileged = value
        }
        if let value = dict["ProxyInitAckSloCPUResourceLimit"] as? String {
            self.proxyInitAckSloCPUResourceLimit = value
        }
        if let value = dict["ProxyInitAckSloCPUResourceRequest"] as? String {
            self.proxyInitAckSloCPUResourceRequest = value
        }
        if let value = dict["ProxyInitAckSloMemoryResourceLimit"] as? String {
            self.proxyInitAckSloMemoryResourceLimit = value
        }
        if let value = dict["ProxyInitAckSloMemoryResourceRequest"] as? String {
            self.proxyInitAckSloMemoryResourceRequest = value
        }
        if let value = dict["ProxyInitCPUResourceLimit"] as? String {
            self.proxyInitCPUResourceLimit = value
        }
        if let value = dict["ProxyInitCPUResourceRequest"] as? String {
            self.proxyInitCPUResourceRequest = value
        }
        if let value = dict["ProxyInitMemoryResourceLimit"] as? String {
            self.proxyInitMemoryResourceLimit = value
        }
        if let value = dict["ProxyInitMemoryResourceRequest"] as? String {
            self.proxyInitMemoryResourceRequest = value
        }
        if let value = dict["ProxyMetadata"] as? String {
            self.proxyMetadata = value
        }
        if let value = dict["ProxyStatsMatcher"] as? String {
            self.proxyStatsMatcher = value
        }
        if let value = dict["ReadinessFailureThreshold"] as? Int32 {
            self.readinessFailureThreshold = value
        }
        if let value = dict["ReadinessInitialDelaySeconds"] as? Int32 {
            self.readinessInitialDelaySeconds = value
        }
        if let value = dict["ReadinessPeriodSeconds"] as? Int32 {
            self.readinessPeriodSeconds = value
        }
        if let value = dict["RuntimeValues"] as? String {
            self.runtimeValues = value
        }
        if let value = dict["SMCEnabled"] as? Bool {
            self.SMCEnabled = value
        }
        if let value = dict["ScaledSidecarResource"] as? String {
            self.scaledSidecarResourceShrink = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["SidecarProxyAckSloCPUResourceLimit"] as? String {
            self.sidecarProxyAckSloCPUResourceLimit = value
        }
        if let value = dict["SidecarProxyAckSloCPUResourceRequest"] as? String {
            self.sidecarProxyAckSloCPUResourceRequest = value
        }
        if let value = dict["SidecarProxyAckSloMemoryResourceLimit"] as? String {
            self.sidecarProxyAckSloMemoryResourceLimit = value
        }
        if let value = dict["SidecarProxyAckSloMemoryResourceRequest"] as? String {
            self.sidecarProxyAckSloMemoryResourceRequest = value
        }
        if let value = dict["SidecarProxyCPUResourceLimit"] as? String {
            self.sidecarProxyCPUResourceLimit = value
        }
        if let value = dict["SidecarProxyCPUResourceRequest"] as? String {
            self.sidecarProxyCPUResourceRequest = value
        }
        if let value = dict["SidecarProxyMemoryResourceLimit"] as? String {
            self.sidecarProxyMemoryResourceLimit = value
        }
        if let value = dict["SidecarProxyMemoryResourceRequest"] as? String {
            self.sidecarProxyMemoryResourceRequest = value
        }
        if let value = dict["TerminationDrainDuration"] as? String {
            self.terminationDrainDuration = value
        }
        if let value = dict["Tracing"] as? String {
            self.tracing = value
        }
    }
}

public class UpdateNamespaceScopeSidecarConfigResponseBody : Tea.TeaModel {
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

public class UpdateNamespaceScopeSidecarConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNamespaceScopeSidecarConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateNamespaceScopeSidecarConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSwimLaneRequest : Tea.TeaModel {
    public var groupName: String?

    public var labelSelectorKey: String?

    public var labelSelectorValue: String?

    public var serviceMeshId: String?

    public var servicesList: String?

    public var swimLaneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.labelSelectorKey != nil {
            map["LabelSelectorKey"] = self.labelSelectorKey!
        }
        if self.labelSelectorValue != nil {
            map["LabelSelectorValue"] = self.labelSelectorValue!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.servicesList != nil {
            map["ServicesList"] = self.servicesList!
        }
        if self.swimLaneName != nil {
            map["SwimLaneName"] = self.swimLaneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["LabelSelectorKey"] as? String {
            self.labelSelectorKey = value
        }
        if let value = dict["LabelSelectorValue"] as? String {
            self.labelSelectorValue = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ServicesList"] as? String {
            self.servicesList = value
        }
        if let value = dict["SwimLaneName"] as? String {
            self.swimLaneName = value
        }
    }
}

public class UpdateSwimLaneResponseBody : Tea.TeaModel {
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

public class UpdateSwimLaneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSwimLaneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSwimLaneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSwimLaneGroupRequest : Tea.TeaModel {
    public var fallbackTarget: String?

    public var groupName: String?

    public var ingressRoutingStrategy: String?

    public var serviceLevelFallbackTarget: String?

    public var serviceMeshId: String?

    public var servicesList: String?

    public var weightedIngressRule: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fallbackTarget != nil {
            map["FallbackTarget"] = self.fallbackTarget!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.ingressRoutingStrategy != nil {
            map["IngressRoutingStrategy"] = self.ingressRoutingStrategy!
        }
        if self.serviceLevelFallbackTarget != nil {
            map["ServiceLevelFallbackTarget"] = self.serviceLevelFallbackTarget!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.servicesList != nil {
            map["ServicesList"] = self.servicesList!
        }
        if self.weightedIngressRule != nil {
            map["WeightedIngressRule"] = self.weightedIngressRule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FallbackTarget"] as? String {
            self.fallbackTarget = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["IngressRoutingStrategy"] as? String {
            self.ingressRoutingStrategy = value
        }
        if let value = dict["ServiceLevelFallbackTarget"] as? String {
            self.serviceLevelFallbackTarget = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["ServicesList"] as? String {
            self.servicesList = value
        }
        if let value = dict["WeightedIngressRule"] as? String {
            self.weightedIngressRule = value
        }
    }
}

public class UpdateSwimLaneGroupResponseBody : Tea.TeaModel {
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

public class UpdateSwimLaneGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSwimLaneGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSwimLaneGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWaypointRequest : Tea.TeaModel {
    public var clusterId: String?

    public var HPAEnabled: Bool?

    public var HPAMaxReplicas: Int32?

    public var HPAMinReplicas: Int32?

    public var HPATargetCPU: Int32?

    public var HPATargetMemory: Int32?

    public var limitCPU: String?

    public var limitMemory: String?

    public var name: String?

    public var namespace: String?

    public var preferECI: Bool?

    public var replicas: Int32?

    public var requestCPU: String?

    public var requestMemory: String?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.HPAEnabled != nil {
            map["HPAEnabled"] = self.HPAEnabled!
        }
        if self.HPAMaxReplicas != nil {
            map["HPAMaxReplicas"] = self.HPAMaxReplicas!
        }
        if self.HPAMinReplicas != nil {
            map["HPAMinReplicas"] = self.HPAMinReplicas!
        }
        if self.HPATargetCPU != nil {
            map["HPATargetCPU"] = self.HPATargetCPU!
        }
        if self.HPATargetMemory != nil {
            map["HPATargetMemory"] = self.HPATargetMemory!
        }
        if self.limitCPU != nil {
            map["LimitCPU"] = self.limitCPU!
        }
        if self.limitMemory != nil {
            map["LimitMemory"] = self.limitMemory!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.preferECI != nil {
            map["PreferECI"] = self.preferECI!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["HPAEnabled"] as? Bool {
            self.HPAEnabled = value
        }
        if let value = dict["HPAMaxReplicas"] as? Int32 {
            self.HPAMaxReplicas = value
        }
        if let value = dict["HPAMinReplicas"] as? Int32 {
            self.HPAMinReplicas = value
        }
        if let value = dict["HPATargetCPU"] as? Int32 {
            self.HPATargetCPU = value
        }
        if let value = dict["HPATargetMemory"] as? Int32 {
            self.HPATargetMemory = value
        }
        if let value = dict["LimitCPU"] as? String {
            self.limitCPU = value
        }
        if let value = dict["LimitMemory"] as? String {
            self.limitMemory = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["PreferECI"] as? Bool {
            self.preferECI = value
        }
        if let value = dict["Replicas"] as? Int32 {
            self.replicas = value
        }
        if let value = dict["RequestCPU"] as? String {
            self.requestCPU = value
        }
        if let value = dict["RequestMemory"] as? String {
            self.requestMemory = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpdateWaypointResponseBody : Tea.TeaModel {
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

public class UpdateWaypointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWaypointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateWaypointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeMeshEditionPartiallyRequest : Tea.TeaModel {
    public var ASMGatewayContinue: Bool?

    public var expectedVersion: String?

    public var preCheck: Bool?

    public var serviceMeshId: String?

    public var switchToPro: Bool?

    public var upgradeGatewayRecords: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ASMGatewayContinue != nil {
            map["ASMGatewayContinue"] = self.ASMGatewayContinue!
        }
        if self.expectedVersion != nil {
            map["ExpectedVersion"] = self.expectedVersion!
        }
        if self.preCheck != nil {
            map["PreCheck"] = self.preCheck!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        if self.switchToPro != nil {
            map["SwitchToPro"] = self.switchToPro!
        }
        if self.upgradeGatewayRecords != nil {
            map["UpgradeGatewayRecords"] = self.upgradeGatewayRecords!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ASMGatewayContinue"] as? Bool {
            self.ASMGatewayContinue = value
        }
        if let value = dict["ExpectedVersion"] as? String {
            self.expectedVersion = value
        }
        if let value = dict["PreCheck"] as? Bool {
            self.preCheck = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
        if let value = dict["SwitchToPro"] as? Bool {
            self.switchToPro = value
        }
        if let value = dict["UpgradeGatewayRecords"] as? String {
            self.upgradeGatewayRecords = value
        }
    }
}

public class UpgradeMeshEditionPartiallyResponseBody : Tea.TeaModel {
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

public class UpgradeMeshEditionPartiallyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeMeshEditionPartiallyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeMeshEditionPartiallyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeMeshVersionRequest : Tea.TeaModel {
    public var preCheck: Bool?

    public var serviceMeshId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.preCheck != nil {
            map["PreCheck"] = self.preCheck!
        }
        if self.serviceMeshId != nil {
            map["ServiceMeshId"] = self.serviceMeshId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PreCheck"] as? Bool {
            self.preCheck = value
        }
        if let value = dict["ServiceMeshId"] as? String {
            self.serviceMeshId = value
        }
    }
}

public class UpgradeMeshVersionResponseBody : Tea.TeaModel {
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

public class UpgradeMeshVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeMeshVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeMeshVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
